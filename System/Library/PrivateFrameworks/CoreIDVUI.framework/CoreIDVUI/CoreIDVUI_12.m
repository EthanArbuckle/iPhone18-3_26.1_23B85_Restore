id sub_2458A8C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2458A8F00()
{
  v1 = [v0 navigationController];

  return v1;
}

id sub_2458A8FD8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView] = 0;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView] = 0;
  v15 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  *&a2[v15] = v16;
  *&a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView] = 0;
  sub_2457ACB24(v21, &a2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for IdentityProofingViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

void sub_2458A9284()
{
  v1 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButtonTargetAction);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButtonTargetAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_privacyLinkButtonTargetAction);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTrayBackground) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___bottomTray) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___textContainerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___mainStackView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___linkButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___primaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___secondaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___tertiaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaption) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___footerCaptionWithLink) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___privacyLinkButtonSpacer) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_checkmarkView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_backButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView) = 0;
  v8 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_cardContainerView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView) = 0;
  sub_2459115D4();
  __break(1u);
}

uint64_t sub_2458A953C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_2458A9584(void *a1)
{
  v3 = sub_24590D124();
  v440 = *(v3 - 8);
  v441 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v439 = &v414 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v435 = &v414 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v431 = &v414 - v9;
  MEMORY[0x28223BE20](v8);
  v428 = &v414 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v438 = &v414 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v433 = &v414 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v430 = &v414 - v17;
  MEMORY[0x28223BE20](v16);
  v427 = &v414 - v18;
  v437 = sub_24590D1B4();
  v434 = *(v437 - 8);
  v19 = MEMORY[0x28223BE20](v437);
  v436 = &v414 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v432 = &v414 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v429 = &v414 - v24;
  MEMORY[0x28223BE20](v23);
  v426 = &v414 - v25;
  v26 = sub_24590EA74();
  v418 = *(v26 - 8);
  v419 = v26;
  MEMORY[0x28223BE20](v26);
  v421 = &v414 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24590EA84();
  v424 = *(v28 - 8);
  v425 = v28;
  MEMORY[0x28223BE20](v28);
  v423 = &v414 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = type metadata accessor for IdentityProofingProgressViewConfiguration();
  v30 = MEMORY[0x28223BE20](v442);
  v443 = &v414 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v446 = &v414 - v33;
  MEMORY[0x28223BE20](v32);
  v444 = &v414 - v34;
  v458 = sub_24590F354();
  v35 = *(v458 - 1);
  v36 = MEMORY[0x28223BE20](v458);
  v422 = &v414 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v420 = &v414 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v417 = &v414 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v415 = &v414 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v414 = &v414 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v416 = &v414 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v445 = &v414 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v447 = &v414 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v448 = &v414 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v449 = &v414 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v450 = &v414 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v451 = &v414 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v414 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v452 = &v414 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v414 - v66;
  v68 = MEMORY[0x28223BE20](v65);
  v70 = &v414 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v453 = &v414 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v75 = &v414 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v414 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = &v414 - v79;
  v454 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v456 = Strong;
    v457 = v35;
    v455 = a1;
    v83 = sub_24590D5D4();
    v84 = v82;
    if (v83 == 1919968359 && v82 == 0xE400000000000000 || (sub_245911714() & 1) != 0)
    {

      v86 = v456;
      v85 = v457;
      sub_24590C714();
      v87 = sub_24590F344();
      v88 = sub_245910F54();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_245767000, v87, v88, "Showing Hero View", v89, 2u);
        MEMORY[0x245D77B40](v89, -1, -1);
      }

      (*(v85 + 8))(v80, v458);
      type metadata accessor for IdentityProofingCardArtResolutionHelper();
      v90 = swift_allocObject();
      *(&v468 + 1) = sub_24590D1E4();
      *&v469 = MEMORY[0x277CFF460];
      __swift_allocate_boxed_opaque_existential_1(&v467);

      sub_24590D1D4();
      type metadata accessor for IdentityHeroViewControllerProvider();
      v91 = swift_allocObject();
      type metadata accessor for IdentityProofingEligibilityHelper();
      v92 = swift_allocObject();
      sub_24590C8C4();
      swift_allocObject();
      *(v92 + 16) = sub_24590C8B4();
      *(v91 + 48) = v92;
      *(v91 + 56) = 1;
      *(v91 + 64) = 0;
      v93 = v455;
      *(v91 + 16) = v455;
      *(v91 + 24) = v86;
      *(v91 + 32) = v90;
      *(v91 + 40) = *(v86 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
      type metadata accessor for IdentityProofingImageAssetProvider();
      v94 = swift_allocObject();
      v94[3] = v90;
      v94[4] = v93;
      v94[2] = v86;
      *(v91 + 72) = v94;
      sub_245771B9C(&v467, v91 + 80);
      v95 = v93;

      v96 = v95;

      v97 = sub_2457C3D60();

      return v97;
    }

    v99 = v456;
    if (v83 == 0x72466E6163536469 && v84 == 0xEB00000000746E6FLL || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v100 = sub_24590F344();
      v101 = sub_245910F54();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_245767000, v100, v101, "Showing ID Scan front UI", v102, 2u);
        MEMORY[0x245D77B40](v102, -1, -1);
      }

      (*(v457 + 8))(v78, v458);
      v103 = qword_27EE286A0;

      if (v103 != -1)
      {
        swift_once();
      }

      v104 = qword_27EE32B48;
      type metadata accessor for IDScanInteractor();
      v105 = swift_allocObject();
      v105[2] = v104;
      type metadata accessor for ImageQualityManager();
      swift_allocObject();
      swift_retain_n();

      v105[3] = sub_245793B60(v104, v99);
      v105[4] = v99;
      v106 = *(v454 + 40);
      type metadata accessor for IDScanCameraReader();
      v107 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v108 = v106;
      v109 = [v107 init];
      if (qword_27EE286C0 != -1)
      {
        swift_once();
      }

      v110 = qword_27EE32BC0;
      v111 = objc_allocWithZone(type metadata accessor for IDScanViewController(0));
      v112 = &v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_autoCapturePath];
      *v112 = 0xD000000000000028;
      *(v112 + 1) = 0x80000002459268D0;
      v113 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docInfo;
      v114 = sub_24590C454();
      (*(*(v114 - 8) + 56))(&v111[v113], 1, 1, v114);
      v115 = &v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastSpokenAlertMessage];
      *v115 = 0;
      *(v115 + 1) = 0;
      v116 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_eligibilityHelper;
      type metadata accessor for IdentityProofingEligibilityHelper();
      v117 = swift_allocObject();
      sub_24590C8C4();
      swift_allocObject();
      *(v117 + 16) = sub_24590C8B4();
      *&v111[v116] = v117;
      v118 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastResult;
      v119 = sub_24590E9D4();
      (*(*(v119 - 8) + 56))(&v111[v118], 1, 1, v119);
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_resultCount] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_repeatCount] = 3;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameCount] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_timeoutTask] = 0;
      v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_shouldPersistIMQError] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidanceContainer] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePromptFont] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_interactor] = v105;
      v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docScanConfig] = v108;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_cameraReader] = v109;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_idScanResult] = v110;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_proofingFlowManager] = v99;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_analyticsReporter] = *(v99 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
      v120 = v105[2] + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idScanFrameRate;
      v121 = *v120;
      v122 = *(v120 + 8) == 0;
      v123 = 5;
      if (v122)
      {
        v123 = v121;
      }

      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameRate] = v123;

      v124 = v455;

      v125 = v124;
      v126 = v99;
      return sub_24588DE38(v125, v126, v111);
    }

    if (v83 == 0xD000000000000013 && 0x800000024592CBD0 == v84 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v128 = sub_24590F344();
      v129 = sub_245910F54();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_245767000, v128, v129, "Showing ID Front Confirmation UI", v130, 2u);
        MEMORY[0x245D77B40](v130, -1, -1);
      }

      v131 = *(v457 + 8);
      v457 += 8;
      v131(v75, v458);
      v132 = qword_27EE286A0;

      if (v132 != -1)
      {
        swift_once();
      }

      v133 = qword_27EE32B48;
      type metadata accessor for IDScanInteractor();
      v134 = swift_allocObject();
      v134[2] = v133;
      type metadata accessor for ImageQualityManager();
      swift_allocObject();
      swift_retain_n();

      v134[3] = sub_245793B60(v133, v99);
      v134[4] = v99;
      v135 = qword_27EE286C0;
      v136 = *(v454 + 40);
      if (v135 != -1)
      {
        swift_once();
      }

      v137 = qword_27EE32BC0;
      v138 = objc_allocWithZone(type metadata accessor for IDScanConfirmationViewController());
      v139 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper;
      type metadata accessor for IdentityProofingEligibilityHelper();
      v140 = swift_allocObject();
      sub_24590C8C4();
      swift_allocObject();
      *(v140 + 16) = sub_24590C8B4();
      *&v138[v139] = v140;
      v138[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide] = 0;
      *&v138[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] = v99;
      *&v138[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult] = v137;
      *&v138[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_interactor] = v134;
      *&v138[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_docScanConfig] = v136;
      *&v138[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_analyticsReporter] = *(v99 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);

      v141 = v136;

      v142 = sub_24590D224();
      if (v143)
      {
        v144 = 1;
      }

      else
      {
        v145 = *(v137 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_rescanCount);
        v144 = 1;
        if ((v145 & 0x8000000000000000) == 0 && v145 >= v142)
        {
          v146 = v142;
          sub_24590C714();
          v147 = sub_24590F344();
          v148 = sub_245910F54();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            *v149 = 134217984;
            *(v149 + 4) = v146;
            _os_log_impl(&dword_245767000, v147, v148, "Max retake count of %lu has been reached, hiding rescan button.", v149, 0xCu);
            MEMORY[0x245D77B40](v149, -1, -1);
          }

          v131(v453, v458);
          v144 = 0;
          v99 = v456;
        }
      }

      v150 = *(v137 + 16);
      if (v150)
      {
        v151 = *(v137 + 16);
      }

      else
      {
        v151 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      *(&v463 + 1) = &type metadata for IDScanFrontConfirmationViewConfiguration;
      *&v464 = &off_285885C28;
      v152 = swift_allocObject();
      *&v462 = v152;
      v153 = v455;
      *(v152 + 16) = v455;
      *(v152 + 24) = v151;
      *(v152 + 32) = v144;
      *(v152 + 40) = v99;
      *(v152 + 48) = 1;
      sub_245771B9C(&v462, &v467);
      sub_2457ACB24(&v467, &v138[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_configuration]);
      sub_2457ACB24(&v467, &v462);
      v154 = __swift_mutable_project_boxed_opaque_existential_1(&v462, *(&v463 + 1));
      MEMORY[0x28223BE20](v154);
      v156 = &v414 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v157 + 16))(v156);
      v158 = *(v156 + 1);
      v459 = *v156;
      v460 = v158;
      v461 = v156[32];

      v159 = v153;
      v160 = v150;
      v97 = sub_24588E9C8(&v459, v138);

      __swift_destroy_boxed_opaque_existential_1(&v467);
      __swift_destroy_boxed_opaque_existential_1(&v462);
      return v97;
    }

    if (v83 == 0x61426E6163536469 && v84 == 0xEA00000000006B63 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v161 = sub_24590F344();
      v162 = sub_245910F54();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_245767000, v161, v162, "Showing ID Scan Back UI", v163, 2u);
        MEMORY[0x245D77B40](v163, -1, -1);
      }

      (*(v457 + 8))(v70, v458);
      v164 = qword_27EE286A0;

      if (v164 != -1)
      {
        swift_once();
      }

      v165 = qword_27EE32B48;
      type metadata accessor for IDScanInteractor();
      v166 = swift_allocObject();
      v166[2] = v165;
      type metadata accessor for ImageQualityManager();
      swift_allocObject();
      swift_retain_n();

      v166[3] = sub_245793B60(v165, v99);
      v166[4] = v99;
      v167 = *(v454 + 40);
      type metadata accessor for IDScanCameraReader();
      v168 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v458 = v167;
      v169 = [v168 init];
      v170 = v99;
      if (qword_27EE286C0 != -1)
      {
        swift_once();
      }

      v171 = qword_27EE32BC0;
      v111 = objc_allocWithZone(type metadata accessor for IDScanViewController(0));
      v172 = &v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_autoCapturePath];
      *v172 = 0xD000000000000028;
      *(v172 + 1) = 0x80000002459268D0;
      v173 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docInfo;
      v174 = sub_24590C454();
      (*(*(v174 - 8) + 56))(&v111[v173], 1, 1, v174);
      v175 = &v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastSpokenAlertMessage];
      *v175 = 0;
      *(v175 + 1) = 0;
      v176 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_eligibilityHelper;
      type metadata accessor for IdentityProofingEligibilityHelper();
      v177 = swift_allocObject();
      sub_24590C8C4();
      swift_allocObject();
      *(v177 + 16) = sub_24590C8B4();
      *&v111[v176] = v177;
      v178 = OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_lastResult;
      v179 = sub_24590E9D4();
      (*(*(v179 - 8) + 56))(&v111[v178], 1, 1, v179);
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_resultCount] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_repeatCount] = 3;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameCount] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_timeoutTask] = 0;
      v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_shouldPersistIMQError] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidanceContainer] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePrompt] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController____lazy_storage___guidancePromptFont] = 0;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_interactor] = v166;
      v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_scanSide] = 1;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_docScanConfig] = v458;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_cameraReader] = v169;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_idScanResult] = v171;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_proofingFlowManager] = v170;
      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_analyticsReporter] = *(v170 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);
      v180 = v166[2] + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idScanFrameRate;
      v181 = *v180;
      v122 = *(v180 + 8) == 0;
      v182 = 5;
      if (v122)
      {
        v182 = v181;
      }

      *&v111[OBJC_IVAR____TtC9CoreIDVUI20IDScanViewController_frameRate] = v182;

      v183 = v455;

      v125 = v183;
      v126 = v170;
      return sub_24588DE38(v125, v126, v111);
    }

    if (v83 == 0xD000000000000012 && 0x800000024592CBB0 == v84 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v184 = sub_24590F344();
      v185 = sub_245910F54();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        *v186 = 0;
        _os_log_impl(&dword_245767000, v184, v185, "Showing ID Back Confirmation UI", v186, 2u);
        MEMORY[0x245D77B40](v186, -1, -1);
      }

      v187 = *(v457 + 8);
      v457 += 8;
      v187(v67, v458);
      v188 = qword_27EE286A0;

      if (v188 != -1)
      {
        swift_once();
      }

      v189 = qword_27EE32B48;
      type metadata accessor for IDScanInteractor();
      v190 = swift_allocObject();
      v190[2] = v189;
      type metadata accessor for ImageQualityManager();
      swift_allocObject();
      swift_retain_n();

      v190[3] = sub_245793B60(v189, v99);
      v190[4] = v99;
      v191 = qword_27EE286C0;
      v192 = *(v454 + 40);
      if (v191 != -1)
      {
        swift_once();
      }

      v193 = qword_27EE32BC0;
      v194 = objc_allocWithZone(type metadata accessor for IDScanConfirmationViewController());
      v195 = OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_eligibilityHelper;
      type metadata accessor for IdentityProofingEligibilityHelper();
      v196 = swift_allocObject();
      sub_24590C8C4();
      swift_allocObject();
      *(v196 + 16) = sub_24590C8B4();
      *&v194[v195] = v196;
      v197 = 1;
      v194[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_scanSide] = 1;
      *&v194[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_proofingFlowManager] = v99;
      *&v194[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_idScanResult] = v193;
      *&v194[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_interactor] = v190;
      *&v194[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_docScanConfig] = v192;
      *&v194[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_analyticsReporter] = *(v99 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_analyticsReporter);

      v198 = v192;

      v199 = sub_24590D224();
      if ((v200 & 1) == 0)
      {
        v201 = *(v193 + OBJC_IVAR____TtC9CoreIDVUI12IDScanResult_rescanCount);
        if ((v201 & 0x8000000000000000) == 0 && v201 >= v199)
        {
          v202 = v199;
          sub_24590C714();
          v203 = sub_24590F344();
          v204 = sub_245910F54();
          if (os_log_type_enabled(v203, v204))
          {
            v205 = swift_slowAlloc();
            *v205 = 134217984;
            *(v205 + 4) = v202;
            _os_log_impl(&dword_245767000, v203, v204, "Max retake count of %lu has been reached, hiding rescan button.", v205, 0xCu);
            MEMORY[0x245D77B40](v205, -1, -1);
          }

          v187(v452, v458);
          v197 = 0;
          v99 = v456;
        }
      }

      v206 = *(v193 + 16);
      if (v206)
      {
        v207 = *(v193 + 16);
      }

      else
      {
        v207 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      *(&v463 + 1) = &type metadata for IDScanBackConfirmationViewConfiguration;
      *&v464 = &off_285885670;
      v208 = swift_allocObject();
      *&v462 = v208;
      v209 = v455;
      *(v208 + 16) = v455;
      *(v208 + 24) = v207;
      *(v208 + 32) = v197;
      *(v208 + 40) = v99;
      *(v208 + 48) = 1;
      sub_245771B9C(&v462, &v467);
      sub_2457ACB24(&v467, &v194[OBJC_IVAR____TtC9CoreIDVUI32IDScanConfirmationViewController_configuration]);
      sub_2457ACB24(&v467, &v462);
      v210 = __swift_mutable_project_boxed_opaque_existential_1(&v462, *(&v463 + 1));
      MEMORY[0x28223BE20](v210);
      v212 = &v414 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v213 + 16))(v212);
      v214 = *(v212 + 1);
      v459 = *v212;
      v460 = v214;
      v461 = v212[32];

      v215 = v209;
      v216 = v206;
      v97 = sub_24588E9E4(&v459, v194);

      __swift_destroy_boxed_opaque_existential_1(&v467);
      __swift_destroy_boxed_opaque_existential_1(&v462);
      return v97;
    }

    if (v83 == 0x6569666C6573 && v84 == 0xE600000000000000 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v217 = sub_24590F344();
      v218 = sub_245910F54();
      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        *v219 = 0;
        _os_log_impl(&dword_245767000, v217, v218, "Showing Selfie UI", v219, 2u);
        MEMORY[0x245D77B40](v219, -1, -1);
      }

      (*(v457 + 8))(v62, v458);
      v220 = objc_allocWithZone(type metadata accessor for RGBCaptureViewController());
      return sub_24585F334(v455, v99);
    }

    if (v83 == 0x65646F4368747561 && v84 == 0xE800000000000000 || (sub_245911714() & 1) != 0)
    {

      v221 = v451;
      sub_24590C714();
      v222 = sub_24590F344();
      v223 = sub_245910F54();
      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        *v224 = 0;
        _os_log_impl(&dword_245767000, v222, v223, "Showing Auth Code Entry UI", v224, 2u);
        MEMORY[0x245D77B40](v224, -1, -1);
      }

      (*(v457 + 8))(v221, v458);
      v225 = objc_allocWithZone(type metadata accessor for IdentityProofingAuthCodeViewController());
      v226 = v455;
      v227 = v456;
      v228 = 0;
      return sub_2457B3124(v226, v227, v228);
    }

    if (v83 == 0xD000000000000010 && 0x800000024592CB50 == v84 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v229 = sub_24590F344();
      v230 = sub_245910F54();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        *v231 = 0;
        _os_log_impl(&dword_245767000, v229, v230, "Showing Auth Code Readonly Entry UI", v231, 2u);
        MEMORY[0x245D77B40](v231, -1, -1);
      }

      (*(v457 + 8))(v450, v458);
      v232 = objc_allocWithZone(type metadata accessor for IdentityProofingAuthCodeViewController());
      v226 = v455;
      v227 = v456;
      v228 = 1;
      return sub_2457B3124(v226, v227, v228);
    }

    if (v83 == 0xD000000000000010 && 0x800000024592CB70 == v84 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v233 = sub_24590F344();
      v234 = sub_245910F54();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        *v235 = 0;
        _os_log_impl(&dword_245767000, v233, v234, "Showing review submission UI", v235, 2u);
        MEMORY[0x245D77B40](v235, -1, -1);
      }

      (*(v457 + 8))(v449, v458);
LABEL_104:
      v236 = objc_allocWithZone(type metadata accessor for IdentityProofingReviewSubmissionViewController());
      v237 = v455;
      return sub_2458516F0(v237, v456);
    }

    if (v83 == 0xD00000000000001ELL && 0x800000024592CB90 == v84 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v238 = sub_24590F344();
      v239 = sub_245910F54();
      if (os_log_type_enabled(v238, v239))
      {
        v240 = swift_slowAlloc();
        *v240 = 0;
        _os_log_impl(&dword_245767000, v238, v239, "Showing review submission with biobinding UI", v240, 2u);
        MEMORY[0x245D77B40](v240, -1, -1);
      }

      (*(v457 + 8))(v448, v458);
      goto LABEL_104;
    }

    if (v83 == 0x64656464416469 && v84 == 0xE700000000000000 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v241 = sub_24590F344();
      v242 = sub_245910F54();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        *v243 = 0;
        _os_log_impl(&dword_245767000, v241, v242, "Showing ID Added UI", v243, 2u);
        MEMORY[0x245D77B40](v243, -1, -1);
      }

      (*(v457 + 8))(v447, v458);
      v244 = objc_allocWithZone(type metadata accessor for IdentityProofingAddedToWalletViewController());
      *&v244[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAddedToWalletViewController_proofingFlowManager] = v456;
      v245 = swift_retain_n();
      sub_245868D5C(v245, &v462);
      v246 = &v244[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAddedToWalletViewController_viewConfig];
      v247 = v463;
      *(v246 + 1) = v463;
      v248 = v464;
      *(v246 + 2) = v464;
      v249 = v465[0];
      *(v246 + 3) = v465[0];
      v250 = *(v465 + 12);
      *(v246 + 60) = *(v465 + 12);
      v251 = v462;
      *v246 = v462;
      *(v470 + 12) = v250;
      v469 = v248;
      v470[0] = v249;
      v467 = v251;
      v468 = v247;
      sub_2458B0044(&v467, &v459);
      v252 = sub_24588E3DC(&v467, v244);
      goto LABEL_117;
    }

    if (v83 == 0x416F547964616572 && v84 == 0xEC00000044496464 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v253 = sub_24590F344();
      v254 = sub_245910F54();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&dword_245767000, v253, v254, "Showing Ready to add ID UI", v255, 2u);
        MEMORY[0x245D77B40](v255, -1, -1);
      }

      v256 = *(v457 + 8);
      v256(v445, v458);
      type metadata accessor for IdentityProofingCardArtResolutionHelper();
      v257 = swift_allocObject();
      v258 = v446;
      *(v446 + 32) = 1;
      v260 = v455;
      v259 = v456;
      *v258 = v455;
      v258[1] = v259;
      v258[2] = v257;
      type metadata accessor for IdentityProofingImageAssetProvider();
      v261 = swift_allocObject();
      v261[3] = v257;
      v261[4] = v260;
      v261[2] = v259;
      v258[3] = v261;
      v262 = *(v259 + 232);
      if (v262)
      {
        v263 = *(v442 + 36);
        if (*(v262 + 16))
        {
          swift_retain_n();
          v264 = v455;
          swift_retain_n();
          v265 = v264;

          v266 = sub_24588C5BC(0x6F54676E69646461, 0xEE0074656C6C6157);
          if (v267)
          {
            v268 = v266;
            v269 = *(v262 + 56);
            v270 = sub_24590E544();
            v271 = *(v270 - 8);
            v272 = v271;
            v273 = v269 + *(v271 + 72) * v268;
            v274 = v446;
            (*(v271 + 16))(v446 + v263, v273, v270);

            (*(v272 + 56))(v274 + v263, 0, 1, v270);
          }

          else
          {

            v292 = sub_24590E544();
            (*(*(v292 - 8) + 56))(v446 + v263, 1, 1, v292);
          }
        }

        else
        {
          v288 = sub_24590E544();
          v289 = *(*(v288 - 8) + 56);
          swift_retain_n();
          v290 = v455;
          swift_retain_n();
          v291 = v290;
          v289(v446 + v263, 1, 1, v288);
        }
      }

      else
      {
        swift_retain_n();
        v275 = v455;
        swift_retain_n();
        v276 = v275;
        sub_24590C714();
        v277 = sub_24590F344();
        v278 = sub_245910F54();
        if (os_log_type_enabled(v277, v278))
        {
          v279 = swift_slowAlloc();
          *v279 = 0;
          _os_log_impl(&dword_245767000, v277, v278, "IdentityProofingProgressViewConfiguration Unordered UI doesn't exist, cannot update progress UI", v279, 2u);
          MEMORY[0x245D77B40](v279, -1, -1);
        }

        v256(v416, v458);
        v280 = *(v442 + 36);
        v281 = sub_24590E544();
        (*(*(v281 - 8) + 56))(v446 + v280, 1, 1, v281);
      }

      v293 = v444;
      sub_2458963BC(v446, v444);
      v294 = objc_allocWithZone(type metadata accessor for IdentityProofingProgressViewController());
      sub_245895E9C(v293, &v294[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingProgressViewController_config]);
      v295 = v443;
      sub_245895E9C(v293, v443);
      v97 = sub_24588D8B4(v295, v294);

      sub_245895F00(v293);
      return v97;
    }

    if (v83 == 0x676E69646E6570 && v84 == 0xE700000000000000 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v282 = sub_24590F344();
      v283 = sub_245910F54();
      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        *v284 = 0;
        _os_log_impl(&dword_245767000, v282, v283, "Showing Verification In Progress UI", v284, 2u);
        MEMORY[0x245D77B40](v284, -1, -1);
      }

      (*(v457 + 8))(v414, v458);
      v285 = objc_allocWithZone(type metadata accessor for IdentityProofingPendingViewController());
      *&v285[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager] = v456;
      type metadata accessor for IdentityProofingCardArtResolutionHelper();
      swift_allocObject();
      type metadata accessor for IdentityProofingPendingViewConfiguration();
      swift_allocObject();
      v286 = swift_retain_n();
      *&v285[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_configuration] = sub_24584D444(v286);
      v285[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_isRetryProvisioningFlow] = 0;
      v287 = swift_retain_n();
      v97 = sub_24588E6A8(v287, v285);

      return v97;
    }

    if (v83 == 0x46676E6974696177 && v84 == 0xEE0069666957726FLL || (sub_245911714() & 1) != 0 || v83 == 0xD000000000000018 && 0x800000024592CB10 == v84 || (sub_245911714() & 1) != 0)
    {

      v296 = objc_allocWithZone(type metadata accessor for IdentityProofingWaitingForWifiViewController());
      type metadata accessor for IdentityProofingWaitingForWifiViewConfiguration();
      swift_allocObject();
      v297 = v456;

      v299 = sub_2458B2754(v298);

      *&v296[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController_viewConfig] = v299;
      *&v296[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController_proofingFlowManager] = v297;

      return sub_24588D894(v300, v296);
    }

    if (v83 == 0xD000000000000012 && 0x8000000245924630 == v84 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v301 = sub_24590F344();
      v302 = sub_245910F54();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        *v303 = 0;
        _os_log_impl(&dword_245767000, v301, v302, "Showing terms and conditions UI", v303, 2u);
        MEMORY[0x245D77B40](v303, -1, -1);
      }

      (*(v457 + 8))(v415, v458);
      type metadata accessor for IdentityProofingTCViewController();
      v97 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

      return v97;
    }

    if (v83 == 0xD000000000000016 && 0x800000024592CB30 == v84 || (sub_245911714() & 1) != 0)
    {

      v304 = sub_245910D34();
      MEMORY[0x28223BE20](v304);
      v412 = v456;
      v413 = v455;
      v97 = sub_245809110(sub_2458B0028, &v410, "CoreIDVUI/IdentityProofingFlowManager.swift", 43);

      return v97;
    }

    if (v83 == 0x726F727265 && v84 == 0xE500000000000000 || (sub_245911714() & 1) != 0)
    {

      sub_24590C714();
      v305 = sub_24590F344();
      v306 = sub_245910F54();
      if (os_log_type_enabled(v305, v306))
      {
        v307 = swift_slowAlloc();
        *v307 = 0;
        _os_log_impl(&dword_245767000, v305, v306, "Received a terminal state error. Will show Unable to Add ID UI", v307, 2u);
        MEMORY[0x245D77B40](v307, -1, -1);
      }

      (*(v457 + 8))(v417, v458);
      (*(v418 + 104))(v421, *MEMORY[0x277CFF930], v419);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      v411 = 0x800000024592CC50;
      v412 = 178;
      v410 = 0xD000000000000013;
      v308 = v423;
      sub_24590EA94();
      sub_2458B00A0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v309 = v425;
      v310 = swift_allocError();
      v311 = v424;
      (*(v424 + 16))(v312, v308, v309);
      v313 = sub_245910D34();
      MEMORY[0x28223BE20](v313);
      v412 = v456;
      v413 = v310;
      v314 = sub_2458B00E8;
      goto LABEL_164;
    }

    if (v83 == 0x7972746572 && v84 == 0xE500000000000000 || (sub_245911714() & 1) != 0)
    {

      v315 = objc_allocWithZone(type metadata accessor for IdentityProofingAuthCodeRetryViewController());
      *&v315[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAuthCodeRetryViewController_proofingFlowManager] = v456;
      swift_retain_n();
      sub_2457B1CA4(v455, &v467);
      v252 = sub_24588D5C0(&v467, v315);
LABEL_117:
      v97 = v252;

      return v97;
    }

    if (v83 == 0x6464417972746572 && v84 == 0xED00004449676E69 || (sub_245911714() & 1) != 0)
    {

      v316 = objc_allocWithZone(type metadata accessor for IdentityProofingRetryProvisioningViewController());
      type metadata accessor for IdentityProofingRetryProvisioningViewConfiguration();
      swift_allocObject();

      *&v316[OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingRetryProvisioningViewController_viewConfig] = sub_24584E8D4(v317);
      v318 = swift_retain_n();
      v319 = sub_24588E6C8(v318, v316);

      return v319;
    }

    if (v83 == 0x6441746F6E6E6163 && v84 == 0xEB00000000444964 || (sub_245911714() & 1) != 0)
    {

      (*(v418 + 104))(v421, *MEMORY[0x277CFFB28], v419);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      v411 = 0x800000024592CC50;
      v412 = 185;
      v410 = 0xD000000000000013;
      v308 = v423;
      sub_24590EA94();
      sub_2458B00A0(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v309 = v425;
      v310 = swift_allocError();
      v311 = v424;
      (*(v424 + 16))(v320, v308, v309);
      v321 = sub_245910D34();
      MEMORY[0x28223BE20](v321);
      v412 = v456;
      v413 = v310;
      v314 = sub_2457F7CA8;
LABEL_164:
      v97 = sub_245809110(v314, &v410, "CoreIDVUI/IdentityProofingFlowManager.swift", 43);

      (*(v311 + 8))(v308, v309);
      return v97;
    }

    if (v83 == 0x6465646E65747865 && v84 == 0xEE00776569766552 || (sub_245911714() & 1) != 0)
    {

      v322 = objc_allocWithZone(type metadata accessor for IdentityProofingExtendedReviewViewController());
      v323 = v455;
      return sub_2457BA0CC(v323, v456);
    }

    if (v83 == 0x7374617453646566 && v84 == 0xED00006E4974704FLL || (sub_245911714() & 1) != 0)
    {

      v324 = objc_allocWithZone(type metadata accessor for IdentityProofingFedStatsOptinViewController());
      v252 = sub_2457C1270(v456, 0);
      goto LABEL_117;
    }

    if (v83 == 0xD00000000000001BLL && 0x800000024592CAD0 == v84 || (sub_245911714() & 1) != 0)
    {
      goto LABEL_188;
    }

    if (v83 == 8024685 && v84 == 0xE300000000000000 || (sub_245911714() & 1) != 0)
    {

      type metadata accessor for PassportSceneViewLoader();
      v326 = swift_allocObject();
      *(v326 + 16) = 0;
      v327 = v454;
      *(v454 + 56) = v326;
      v457 = v326;

      v328 = *(v327 + 48);
      v330 = *(v456 + 320);
      v329 = *(v456 + 328);
      v331 = objc_allocWithZone(type metadata accessor for PassportMRZReaderViewController());
      v458 = OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_documentsRepository;
      v332 = qword_27EE286A0;
      v450 = v330;

      v451 = v329;

      if (v332 != -1)
      {
        swift_once();
      }

      v333 = qword_27EE32B48;
      *(v458 + v331) = qword_27EE32B48;
      v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedExitTransition] = 0;
      v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_hasCompletedProofingRequest] = 0;
      v334 = &v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_lastSpokenAlertMessage];
      *v334 = 0;
      *(v334 + 1) = 0;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_networkTask] = 0;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_checkGetPendingCommandsReadinessAttempts] = 0;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___previewView] = 0;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___backgroundView] = 0;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidanceContainer] = 0;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController____lazy_storage___guidancePrompt] = 0;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_passportScanResult] = v328;
      v335 = v457;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_proofingFlowManager] = v456;
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_passportSceneViewLoader] = v335;
      v336 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
      swift_beginAccess();
      v452 = v333;
      v337 = v333 + v336;
      v338 = v427;
      sub_245778F2C(v337, v427, &qword_27EE28ED0);
      v339 = *(v434 + 48);
      if (v339(v338, 1, v437) == 1)
      {
        v340 = v437;
        (*(v434 + 16))(v426, &v452[OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings], v437);
        LODWORD(v340) = v339(v427, 1, v340);
        swift_retain_n();

        if (v340 != 1)
        {
          sub_245778F94(v427, &qword_27EE28ED0);
        }
      }

      else
      {
        (*(v434 + 32))(v426, v427, v437);
        swift_retain_n();
      }

      v341 = v428;
      v342 = v426;
      sub_24590D184();
      v343 = v437;
      v454 = *(v434 + 8);
      (v454)(v342, v437);
      v344 = sub_24590D054();
      v346 = v345;
      v347 = *(v440 + 8);
      v440 += 8;
      v453 = v347;
      (v347)(v341, v441);
      v348 = 7;
      if ((v346 & 1) == 0)
      {
        v348 = v344;
      }

      v449 = v348;
      v349 = *(v458 + v331);
      v350 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
      swift_beginAccess();
      v351 = v349 + v350;
      v352 = v430;
      sub_245778F2C(v351, v430, &qword_27EE28ED0);
      if (v339(v352, 1, v343) == 1)
      {
        v353 = v437;
        (*(v434 + 16))(v429, v349 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v437);
        LODWORD(v353) = v339(v430, 1, v353);

        if (v353 != 1)
        {
          sub_245778F94(v430, &qword_27EE28ED0);
        }
      }

      else
      {
        (*(v434 + 32))(v429, v430, v437);
      }

      v354 = v431;
      v355 = v429;
      sub_24590D184();
      v356 = v437;
      (v454)(v355, v437);
      v357 = sub_24590D064();
      v359 = v358;

      (v453)(v354, v441);
      v360 = 7;
      if ((v359 & 1) == 0)
      {
        v360 = v357;
      }

      v448 = v360;
      v361 = *(v458 + v331);
      v362 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
      swift_beginAccess();
      v363 = v361 + v362;
      v364 = v433;
      sub_245778F2C(v363, v433, &qword_27EE28ED0);
      if (v339(v364, 1, v356) == 1)
      {
        v365 = v437;
        (*(v434 + 16))(v432, v361 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v437);
        LODWORD(v365) = v339(v433, 1, v365);

        if (v365 != 1)
        {
          sub_245778F94(v433, &qword_27EE28ED0);
        }
      }

      else
      {
        (*(v434 + 32))(v432, v433, v437);
      }

      v366 = v435;
      v367 = v432;
      sub_24590D184();
      v368 = v437;
      (v454)(v367, v437);
      sub_24590D0D4();

      (v453)(v366, v441);
      v369 = *(v458 + v331);
      v370 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
      swift_beginAccess();
      v371 = v369 + v370;
      v372 = v438;
      sub_245778F2C(v371, v438, &qword_27EE28ED0);
      if (v339(v372, 1, v368) == 1)
      {
        v373 = v437;
        (*(v434 + 16))(v436, v369 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v437);
        LODWORD(v373) = v339(v438, 1, v373);

        if (v373 != 1)
        {
          sub_245778F94(v438, &qword_27EE28ED0);
        }
      }

      else
      {
        (*(v434 + 32))(v436, v438, v437);
      }

      v374 = v439;
      v375 = v436;
      sub_24590D184();
      (v454)(v375, v437);
      sub_24590D0F4();

      (v453)(v374, v441);
      sub_24590CA94();
      swift_allocObject();
      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_mrzParser] = sub_24590CA34();
      type metadata accessor for ImageQualityManager();
      swift_allocObject();
      v376 = v456;

      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_imageQualityManager] = sub_245793B60(v452, v376);
      type metadata accessor for PassportMRZReaderViewConfiguration();
      swift_allocObject();

      v377 = v455;
      v378 = sub_2457EF8E0(v377, v376);

      *&v331[OBJC_IVAR____TtC9CoreIDVUI31PassportMRZReaderViewController_configuration] = v378;
      v379 = swift_retain_n();
      v97 = sub_24588E9A8(v379, v331);

      return v97;
    }

    if (v83 == 1885956195 && v84 == 0xE400000000000000 || (sub_245911714() & 1) != 0)
    {

      v380 = *(v454 + 48);
      swift_beginAccess();
      v381 = *(v380 + 16);
      v382 = *(v380 + 32);
      v383 = *(v380 + 64);
      v469 = *(v380 + 48);
      v470[0] = v383;
      v384 = *(v380 + 80);
      v385 = *(v380 + 112);
      v470[2] = *(v380 + 96);
      v470[3] = v385;
      v471 = *(v380 + 128);
      v470[1] = v384;
      v467 = v381;
      v468 = v382;
      v386 = v381;
      v387 = *(v380 + 48);
      v472 = *(v380 + 32);
      v473 = v387;
      v388 = *(v380 + 64);
      v389 = *(v380 + 80);
      v390 = *(v380 + 96);
      v391 = *(v380 + 112);
      v478 = *(v380 + 128);
      v476 = v390;
      v477 = v391;
      v474 = v388;
      v475 = v389;
      if (*(&v386 + 1))
      {
        if (*(v454 + 56))
        {
          v392 = *(v454 + 56);
        }

        else
        {
          type metadata accessor for PassportSceneViewLoader();
          v392 = swift_allocObject();
          *(v392 + 16) = 0;
        }

        v462 = v386;
        v465[2] = v476;
        v465[3] = v477;
        v466 = v478;
        v463 = v472;
        v464 = v473;
        v465[0] = v474;
        v465[1] = v475;
        sub_245778F2C(&v467, &v459, &qword_27EE29C10);

        v97 = sub_24580E4BC(&v462, v380, v455, v456, v392);

        sub_245778F94(&v467, &qword_27EE29C10);
        return v97;
      }

      sub_24590C714();
      v404 = sub_24590F344();
      v405 = sub_245910F54();
      if (os_log_type_enabled(v404, v405))
      {
        v406 = swift_slowAlloc();
        *v406 = 0;
        _os_log_impl(&dword_245767000, v404, v405, "Unable to retrieve MRZ information. Will show the error view", v406, 2u);
        MEMORY[0x245D77B40](v406, -1, -1);
      }

      (*(v457 + 8))(v420, v458);
      v402 = v456;

      v403 = v455;
    }

    else
    {
      if (v83 == 0xD000000000000014 && 0x800000024592CAF0 == v84)
      {
LABEL_188:

LABEL_189:
        if (qword_27EE286A0 != -1)
        {
          swift_once();
        }

        v325 = qword_27EE32B48;
        objc_allocWithZone(type metadata accessor for IdentityProofingLivenessConsentViewController());

        return sub_2457D4C7C(v456, v325);
      }

      v393 = sub_245911714();

      if (v393)
      {
        goto LABEL_189;
      }

      sub_24590C714();
      v394 = v455;
      v395 = sub_24590F344();
      v396 = sub_245910F54();

      if (os_log_type_enabled(v395, v396))
      {
        v397 = swift_slowAlloc();
        v398 = swift_slowAlloc();
        *&v467 = v398;
        *v397 = 136446210;
        v399 = sub_24590D5D4();
        v401 = sub_2458CC378(v399, v400, &v467);

        *(v397 + 4) = v401;
        _os_log_impl(&dword_245767000, v395, v396, "unable to map the server returned page (%{public}s to a proofing view. Will show the error view.)", v397, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v398);
        MEMORY[0x245D77B40](v398, -1, -1);
        MEMORY[0x245D77B40](v397, -1, -1);
      }

      (*(v457 + 8))(v422, v458);
      v402 = v456;

      v403 = v394;
    }

    v407 = sub_24586B8EC(v402, v403, 0);
    v408 = objc_allocWithZone(type metadata accessor for IdentityProofingErrorViewController());
    *&v408[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] = v407;
    *&v408[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager] = v402;

    v97 = sub_24588DB78(v409, v408);
    *(*&v97[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] + 24) = &off_28588B5F8;
    swift_unknownObjectWeakAssign();
    return v97;
  }

  return sub_2458AFD80(a1);
}

uint64_t sub_2458AD408()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "reset page iterator", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + 16) = 0;
  return result;
}

void sub_2458AD54C()
{
  v1 = v0;
  v67 = type metadata accessor for IdentityProofingProgressViewConfiguration();
  v2 = MEMORY[0x28223BE20](v67);
  v68 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v67 - v5;
  MEMORY[0x28223BE20](v4);
  v69 = &v67 - v7;
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  sub_24590C714();

  v18 = sub_24590F344();
  v19 = sub_245910F54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134349312;
    v21 = *(v1 + 24);
    *(v20 + 4) = *(v1 + 16);
    *(v20 + 12) = 2050;
    if (v21 >> 62)
    {
      v22 = sub_245911424();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 14) = v22;

    _os_log_impl(&dword_245767000, v18, v19, "CurrentPage: %{public}ld proofingView.count: %{public}ld", v20, 0x16u);
    MEMORY[0x245D77B40](v20, -1, -1);
  }

  else
  {
  }

  v23 = *(v9 + 8);
  v23(v17, v8);
  v25 = *(v1 + 16);
  v24 = *(v1 + 24);
  if (!(v24 >> 62))
  {
    if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_24590C714();
    v32 = sub_24590F344();
    v33 = sub_245910F54();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245767000, v32, v33, "Will show proofing progress UI", v34, 2u);
      MEMORY[0x245D77B40](v34, -1, -1);
    }

    v23(v15, v8);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      sub_2458AFD80(0);
      return;
    }

    v36 = Strong;
    v37 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager;
    v38 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_livenessVideoUploadsManager);
    if (v38)
    {
      v39 = *(v38 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_queue);

      v40 = v39;
      sub_245911044();

      if (v71 == 1)
      {
        v41 = *(v36 + v37);
        if (v41)
        {
          v42 = *(v41 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingUploadsManager_queue);

          v43 = v42;
          sub_245911044();

          if ((v70 & 1) == 0)
          {
            v63 = objc_allocWithZone(type metadata accessor for IdentityProofingWaitingForWifiViewController());
            type metadata accessor for IdentityProofingWaitingForWifiViewConfiguration();
            swift_allocObject();

            v65 = sub_2458B2754(v64);

            *&v63[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController_viewConfig] = v65;
            *&v63[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController_proofingFlowManager] = v36;

            sub_24588D894(v66, v63);
            return;
          }
        }
      }
    }

    type metadata accessor for IdentityProofingCardArtResolutionHelper();
    v44 = swift_allocObject();
    v6[32] = 0;
    *v6 = 0;
    *(v6 + 1) = v36;
    *(v6 + 2) = v44;
    type metadata accessor for IdentityProofingImageAssetProvider();
    v45 = swift_allocObject();
    v45[3] = v44;
    v45[4] = 0;
    v45[2] = v36;
    *(v6 + 3) = v45;
    v46 = *(v36 + 232);
    if (v46)
    {
      v47 = *(v67 + 36);
      if (!*(v46 + 16))
      {
        v57 = sub_24590E544();
        v58 = *(*(v57 - 8) + 56);
        swift_retain_n();
        swift_retain_n();
        v58(&v6[v47], 1, 1, v57);
        goto LABEL_33;
      }

      swift_retain_n();
      swift_retain_n();

      v48 = sub_24588C5BC(0x54676E69646E6573, 0xEF7265757373496FLL);
      if (v49)
      {
        v50 = v48;
        v51 = *(v46 + 56);
        v52 = sub_24590E544();
        v53 = *(v52 - 8);
        (*(v53 + 16))(&v6[v47], v51 + *(v53 + 72) * v50, v52);

        (*(v53 + 56))(&v6[v47], 0, 1, v52);
LABEL_33:
        v60 = v69;
        sub_2458963BC(v6, v69);
        v61 = objc_allocWithZone(type metadata accessor for IdentityProofingProgressViewController());
        sub_245895E9C(v60, &v61[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingProgressViewController_config]);
        v62 = v68;
        sub_245895E9C(v60, v68);
        sub_24588D8B4(v62, v61);

        sub_245895F00(v60);
        return;
      }
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      sub_24590C714();
      v54 = sub_24590F344();
      v55 = sub_245910F54();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_245767000, v54, v55, "IdentityProofingProgressViewConfiguration Unordered UI doesn't exist, cannot update progress UI", v56, 2u);
        MEMORY[0x245D77B40](v56, -1, -1);
      }

      v23(v12, v8);
      v47 = *(v67 + 36);
    }

    v59 = sub_24590E544();
    (*(*(v59 - 8) + 56))(&v6[v47], 1, 1, v59);
    goto LABEL_33;
  }

  if (v25 >= sub_245911424())
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = *(v1 + 16);
  v26 = *(v1 + 24);
  if ((v26 & 0xC000000000000001) != 0)
  {

    v28 = MEMORY[0x245D76B30](v27, v26);

LABEL_12:
    sub_2458A9584(v28);

    v29 = *(v1 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v1 + 16) = v31;
      return;
    }

    goto LABEL_38;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v27 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v26 + 8 * v27 + 32);
    goto LABEL_12;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_2458ADD90()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_23:
    v2 = sub_245911424();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x245D76B30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (sub_24590D5D4() == 0x6569666C6573 && v6 == 0xE600000000000000)
    {
      break;
    }

    v7 = sub_245911714();

    if (v7)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_22;
    }
  }

LABEL_19:

  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v3 + 1;
  }

  return result;
}

void sub_2458ADF14()
{
  v18 = MEMORY[0x277D84FA0];
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_245911424();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 >= 1)
  {

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D76B30](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v7 = sub_24590D5D4();
      v8 = v6;
      if (v7 == 0x72466E6163536469 && v6 == 0xEB00000000746E6FLL || (sub_245911714() & 1) != 0)
      {

        v9 = &v14;
        v10 = 0;
      }

      else if (v7 == 0x61426E6163536469 && v8 == 0xEA00000000006B63 || (sub_245911714() & 1) != 0)
      {

        v9 = &v15;
        v10 = 1;
      }

      else if (v7 == 0x6569666C6573 && v8 == 0xE600000000000000 || (sub_245911714() & 1) != 0)
      {

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v12 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_selfieImageIsRequired);

          if (v12 != 1)
          {
            goto LABEL_13;
          }
        }

        v9 = &v16;
        v10 = 2;
      }

      else
      {
        if (v7 == 8024685 && v8 == 0xE300000000000000)
        {
        }

        else
        {
          v13 = sub_245911714();

          if ((v13 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v9 = &v17;
        v10 = 3;
      }

      sub_2458AEA38(v9, v10);
LABEL_13:

      if (v2 == ++v3)
      {

        return;
      }
    }
  }

  __break(1u);
}

BOOL sub_2458AE1C0()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_245911424();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v5 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D76B30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (sub_24590D5D4() == 0x72466E6163536469 && v8 == 0xEB00000000746E6FLL)
    {

      break;
    }

    v4 = sub_245911714();

    v3 = v5 + 1;
  }

  while ((v4 & 1) == 0);

  return v2 != v5;
}

BOOL sub_2458AE30C()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_245911424();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v5 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D76B30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (sub_24590D5D4() == 0xD000000000000012 && 0x8000000245924630 == v8)
    {

      break;
    }

    v4 = sub_245911714();

    v3 = v5 + 1;
  }

  while ((v4 & 1) == 0);

  return v2 != v5;
}

uint64_t sub_2458AE45C()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *sub_2458AE4D8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = 0;
  v0[3] = v2;
  swift_weakInit();
  sub_24590D274();
  v0[5] = sub_24590D204();
  sub_2457F80D0(&v33);
  type metadata accessor for PassportScanResult();
  v3 = swift_allocObject();
  v4 = v46;
  *(v3 + 328) = v45;
  *(v3 + 344) = v4;
  *(v3 + 360) = v47;
  v5 = v42;
  *(v3 + 264) = v41;
  *(v3 + 280) = v5;
  v6 = v44;
  *(v3 + 296) = v43;
  *(v3 + 312) = v6;
  v7 = v38;
  *(v3 + 200) = v37;
  *(v3 + 216) = v7;
  v8 = v40;
  *(v3 + 232) = v39;
  *(v3 + 248) = v8;
  v9 = v34;
  *(v3 + 136) = v33;
  *(v3 + 152) = v9;
  v10 = v36;
  *(v3 + 168) = v35;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  *(v3 + 16) = 0u;
  v11 = v48;
  *(v3 + 184) = v10;
  *(v3 + 376) = v11;
  *(v3 + 384) = 0;
  swift_beginAccess();
  v12 = *(v3 + 96);
  v13 = *(v3 + 112);
  v14 = *(v3 + 64);
  v49[4] = *(v3 + 80);
  v49[5] = v12;
  v49[6] = v13;
  v15 = *(v3 + 32);
  v16 = *(v3 + 48);
  v49[0] = *(v3 + 16);
  v49[1] = v15;
  v50 = *(v3 + 128);
  v49[2] = v16;
  v49[3] = v14;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  sub_245778F94(v49, &qword_27EE29C10);
  swift_beginAccess();
  v17 = *(v3 + 344);
  v51[12] = *(v3 + 328);
  v51[13] = v17;
  v51[14] = *(v3 + 360);
  v18 = *(v3 + 280);
  v51[8] = *(v3 + 264);
  v51[9] = v18;
  v19 = *(v3 + 312);
  v51[10] = *(v3 + 296);
  v51[11] = v19;
  v20 = *(v3 + 216);
  v51[4] = *(v3 + 200);
  v51[5] = v20;
  v21 = *(v3 + 248);
  v51[6] = *(v3 + 232);
  v51[7] = v21;
  v22 = *(v3 + 152);
  v51[0] = *(v3 + 136);
  v51[1] = v22;
  v23 = *(v3 + 184);
  v51[2] = *(v3 + 168);
  v51[3] = v23;
  v24 = v46;
  *(v3 + 328) = v45;
  *(v3 + 344) = v24;
  *(v3 + 360) = v47;
  v25 = v42;
  *(v3 + 264) = v41;
  *(v3 + 280) = v25;
  v26 = v44;
  *(v3 + 296) = v43;
  *(v3 + 312) = v26;
  v27 = v38;
  *(v3 + 200) = v37;
  *(v3 + 216) = v27;
  v28 = v40;
  *(v3 + 232) = v39;
  *(v3 + 248) = v28;
  v29 = v34;
  *(v3 + 136) = v33;
  *(v3 + 152) = v29;
  v30 = v36;
  *(v3 + 168) = v35;
  v52 = *(v3 + 376);
  *(v3 + 376) = v48;
  *(v3 + 184) = v30;
  sub_245778F94(v51, &qword_27EE29C18);
  swift_beginAccess();
  v31 = *(v3 + 384);
  *(v3 + 384) = 0;

  v1[6] = v3;
  v1[7] = 0;
  return v1;
}

uint64_t sub_2458AE758(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24590E9D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2458B00A0(&qword_27EE28EB8, MEMORY[0x277CFF850]);
  v33 = a2;
  v11 = sub_245910904();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2458B00A0(&unk_27EE29C00, MEMORY[0x277CFF850]);
      v21 = sub_245910934();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2458AF0DC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2458AEA38(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_245911824();
  MEMORY[0x245D76E70](a2);
  v6 = sub_245911864();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2458AF380(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2458AEB30()
{
  v1 = v0;
  v35 = sub_24590E9D4();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B068);
  result = sub_2459114A4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_2458B00A0(&qword_27EE28EB8, MEMORY[0x277CFF850]);
      result = sub_245910904();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_2458AEE8C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DF8);
  result = sub_2459114A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_245911824();
      MEMORY[0x245D76E70](v16);
      result = sub_245911864();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2458AF0DC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24590E9D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2458AEB30();
  }

  else
  {
    if (v11 > v10)
    {
      sub_2458AF4CC();
      goto LABEL_12;
    }

    sub_2458AF844();
  }

  v12 = *v3;
  sub_2458B00A0(&qword_27EE28EB8, MEMORY[0x277CFF850]);
  v13 = sub_245910904();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2458B00A0(&unk_27EE29C00, MEMORY[0x277CFF850]);
      v21 = sub_245910934();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_245911764();
  __break(1u);
  return result;
}

uint64_t sub_2458AF380(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2458AEE8C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2458AF704();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2458AFB60();
  }

  v8 = *v3;
  sub_245911824();
  MEMORY[0x245D76E70](v4);
  result = sub_245911864();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_245911764();
  __break(1u);
  return result;
}

void *sub_2458AF4CC()
{
  v1 = v0;
  v2 = sub_24590E9D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B068);
  v6 = *v0;
  v7 = sub_245911494();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2458AF704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DF8);
  v2 = *v0;
  v3 = sub_245911494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2458AF844()
{
  v1 = v0;
  v32 = sub_24590E9D4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B068);
  v6 = sub_2459114A4();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_2458B00A0(&qword_27EE28EB8, MEMORY[0x277CFF850]);
      result = sub_245910904();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2458AFB60()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DF8);
  result = sub_2459114A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_245911824();
      MEMORY[0x245D76E70](v15);
      result = sub_245911864();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

char *sub_2458AFD80(uint64_t a1)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2459109B4();
  MEMORY[0x28223BE20](v3 - 8);
  if (a1)
  {
    v4 = sub_24590D5E4();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0xD000000000000010;

      v7 = 0x800000024592AE90;
    }

    v8 = sub_24590D634();
    v9 = v10;
    v11 = sub_24590D584();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0xD000000000000010;

    v8 = 0;
    v9 = 0;
    v7 = 0x800000024592AE90;
  }

  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE32B38;
  sub_24590C224();
  v13 = sub_245910A54();
  v14 = v16;

LABEL_11:
  type metadata accessor for IdentityProofingErrorViewConfiguration();
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 64) = 1;
  *(v17 + 72) = sub_24590D534();
  *(v17 + 80) = v18;
  *(v17 + 88) = 0;
  *(v17 + 112) = 259;
  *(v17 + 32) = v6;
  *(v17 + 40) = v7;
  *(v17 + 48) = v8;
  *(v17 + 56) = v9;
  *(v17 + 96) = v13;
  *(v17 + 104) = v14;
  *(v17 + 114) = 0;
  v19 = objc_allocWithZone(type metadata accessor for IdentityProofingErrorViewController());
  *&v19[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] = v17;
  *&v19[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_proofingFlowManager] = 0;

  v21 = sub_24588DB78(v20, v19);
  *(*&v21[OBJC_IVAR____TtC9CoreIDVUI35IdentityProofingErrorViewController_configuration] + 24) = &off_28588B5F8;
  swift_unknownObjectWeakAssign();
  return v21;
}

uint64_t sub_2458B00A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2458B0100()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  result = sub_245910A54();
  qword_27EE2B070 = result;
  *algn_27EE2B078 = v4;
  return result;
}

uint64_t sub_2458B0248()
{
  result = sub_24590D534();
  qword_27EE2B080 = result;
  *algn_27EE2B088 = v1;
  return result;
}

uint64_t sub_2458B0274()
{
  v1 = *(v0 + 56);

  return v1;
}

void *sub_2458B02AC()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_2458B02EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590F2F4();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590E544();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v85 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v94 = &v85 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v96 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v85 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v85 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v85 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v85 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v85 - v28;
  v95 = v7;
  v30 = *(v7 + 56);
  v30(&v85 - v28, 1, 1, v6);
  v31 = *(a1 + 144);
  v93 = a1;
  v32 = *(a1 + 232);
  if (v31 == 2)
  {
    v27 = v24;
    if (!v32 || !*(v32 + 16))
    {
      goto LABEL_16;
    }

    v36 = "usingYourIDWatch";
    goto LABEL_13;
  }

  if (v31 != 3)
  {
    v27 = v21;
    if (!v32 || !*(v32 + 16))
    {
      goto LABEL_16;
    }

    v36 = "usingYourIDPhone";
LABEL_13:
    v37 = v36 - 32;

    v33 = sub_24588C5BC(0xD000000000000010, v37 | 0x8000000000000000);
    if ((v38 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  if (v32 && *(v32 + 16))
  {

    v33 = sub_24588C5BC(0x756F59676E697375, 0xEF68746F42444972);
    if ((v34 & 1) == 0)
    {
LABEL_6:
      v35 = 1;
LABEL_15:

      goto LABEL_17;
    }

LABEL_14:
    (*(v95 + 16))(v27, *(v32 + 56) + *(v95 + 72) * v33, v6);
    v35 = 0;
    goto LABEL_15;
  }

LABEL_16:
  v35 = 1;
LABEL_17:
  v30(v27, v35, 1, v6);
  sub_245869774(v27, v29);
  v39 = v95;
  v40 = *(v95 + 48);
  v41 = v40(v29, 1, v6);
  v42 = v93;
  if (v41)
  {
    v97 = 0;
    v43 = 0;
  }

  else
  {
    (*(v39 + 16))(v15, v29, v6);
    v97 = sub_24590E504();
    v43 = v44;
    (*(v39 + 8))(v15, v6);
  }

  if (v40(v29, 1, v6))
  {
    goto LABEL_21;
  }

  v49 = v96;
  (*(v39 + 16))(v96, v29, v6);
  v50 = sub_24590E534();
  (*(v39 + 8))(v49, v6);
  if (!v50)
  {
    goto LABEL_21;
  }

  if (!v50[2])
  {

LABEL_21:
    v96 = 0;
    v45 = 0;
    goto LABEL_22;
  }

  v45 = v50[5];
  v96 = v50[4];

LABEL_22:
  if (v40(v29, 1, v6))
  {
    v94 = 0;
    v46 = 0;
    if (v43)
    {
      goto LABEL_24;
    }

LABEL_36:
    v91 = 0;
    if (v45)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

  v51 = v94;
  (*(v39 + 16))(v94, v29, v6);
  v52 = sub_24590E514();
  (*(v39 + 8))(v51, v6);
  if (!v52)
  {
    goto LABEL_35;
  }

  if (!v52[2])
  {

LABEL_35:
    v94 = 0;
    v46 = 0;
    v42 = v93;
    if (!v43)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v46 = v52[5];
  v94 = v52[4];

  v42 = v93;
  if (!v43)
  {
    goto LABEL_36;
  }

LABEL_24:

  v97 = sub_24586C880(v97, v43);
  v91 = v47;
  swift_bridgeObjectRelease_n();
  if (v45)
  {
LABEL_25:

    v96 = sub_24586C880(v96, v45);
    v90 = v48;
    swift_bridgeObjectRelease_n();
    goto LABEL_38;
  }

LABEL_37:
  v90 = 0;
LABEL_38:
  v53 = v92;
  if (qword_27EE286F8 != -1)
  {
    swift_once();
  }

  v54 = *algn_27EE2B088;
  v92 = qword_27EE2B080;

  if (sub_2457C1E4C())
  {

    if (qword_27EE286F0 != -1)
    {
      swift_once();
    }

    v94 = qword_27EE2B070;
    v89 = *algn_27EE2B078;
  }

  else if (v46)
  {

    v94 = sub_24586C880(v94, v46);
    v89 = v55;
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v89 = 0;
  }

  v56 = v95;
  sub_2457934F4(v29, v53);
  if (v40(v53, 1, v6) == 1)
  {
    goto LABEL_65;
  }

  v57 = v85;
  (*(v56 + 32))(v85, v53, v6);
  v58 = sub_24590E4E4();
  if (!v58)
  {
    goto LABEL_54;
  }

  if (!*(v58 + 16))
  {

LABEL_54:
    (*(v56 + 8))(v57, v6);
    goto LABEL_65;
  }

  (*(v56 + 8))(v57, v6);

  v59 = sub_24590E634();
  v61 = v60;

  if (v61)
  {
    v98 = v59;
    v99 = v61;
    MEMORY[0x245D76160](46, 0xE100000000000000);
    if (*(v42 + 288))
    {
      v62 = sub_245910A84();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0xE000000000000000;
    }

    MEMORY[0x245D76160](v62, v64);
    swift_bridgeObjectRelease_n();

    v65 = v98;
    v66 = v99;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v65 = 0;
    v66 = 0xE000000000000000;
  }

  v67 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
  swift_beginAccess();
  v68 = *(v42 + v67);
  if (*(v68 + 16))
  {

    v69 = sub_24588C5BC(v65, v66);
    if (v70)
    {
      v71 = (*(v68 + 56) + 16 * v69);
      v73 = *v71;
      v72 = v71[1];
      sub_24578FB80(*v71, v72);

      v74 = objc_allocWithZone(MEMORY[0x277D755B8]);
      sub_24578FB80(v73, v72);
      v75 = sub_24590C144();
      v76 = [v74 initWithData_];

      sub_24578FC28(v73, v72);
      v77 = v73;
      v42 = v93;
      sub_24578FC28(v77, v72);
      if (v76)
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }
  }

LABEL_65:
  sub_245893A00();
  if (qword_27EE28720 != -1)
  {
    swift_once();
  }

  v78 = v88;
  v79 = __swift_project_value_buffer(v88, qword_27EE32CD8);
  (*(v87 + 16))(v86, v79, v78);
  v76 = sub_245911244();
LABEL_68:
  v80 = *(v42 + 144);

  result = sub_245793564(v29);
  v82 = v91;
  *a2 = v97;
  *(a2 + 8) = v82;
  v83 = v90;
  *(a2 + 16) = v96;
  *(a2 + 24) = v83;
  v84 = v89;
  *(a2 + 32) = v94;
  *(a2 + 40) = v84;
  *(a2 + 48) = 1;
  *(a2 + 56) = v92;
  *(a2 + 64) = v54;
  *(a2 + 72) = 1;
  *(a2 + 80) = v76;
  *(a2 + 88) = 2;
  *(a2 + 90) = 0;
  *(a2 + 91) = (v80 & 3) == 2;
  return result;
}

__n128 __swift_memcpy92_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2458B0D44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 92))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2458B0DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 92) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 92) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2458B0E78()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v2 = sub_2458B1484;
  v2[1] = v1;

  sub_245771C34(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  v6 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v5 = sub_2458B148C;
  v5[1] = v4;

  sub_245771C34(v6);
}

void sub_2458B0F98(void (*a1)())
{
  if (sub_2457C1E4C())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationController];
    }

    else
    {
      v6 = 0;
    }

    v8 = *&v3[OBJC_IVAR____TtC9CoreIDVUI25UsingYourIDViewController_proofingFlowManager];
    v9 = objc_allocWithZone(type metadata accessor for ProvideFeedbackViewController());
    *&v9[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_proofingManager] = v8;
    v10 = &v9[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_continuation];
    *v10 = sub_2458B1494;
    v10[1] = a1;
    swift_retain_n();

    v11 = sub_24588ECB0(v9);
    sub_24586D558(v11, v6);
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v6 = v7;
    sub_245883548(0);
  }
}

void sub_2458B1108()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_245883548(0);
  }
}

uint64_t sub_2458B116C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_24590C094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC9CoreIDVUI25UsingYourIDViewController_proofingFlowManager);
    v9 = result;

    if (*(v8 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL + 8))
    {

      sub_24590C084();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {
        sub_2457B2590(v2);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        v10 = [objc_opt_self() sharedApplication];
        v11 = sub_24590C034();
        sub_2458B880C(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_2457B25F8();
        v12 = sub_2459108E4();

        [v10 openURL:v11 options:v12 completionHandler:0];

        (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

void sub_2458B149C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v28 = [Strong navigationController];
    sub_24588520C();
    sub_2457904A0(v28);
    if ((v4 & 1) == 0)
    {
      if (!v28)
      {
        goto LABEL_10;
      }

      v8 = v28;
      v9 = [v8 viewControllers];
      sub_245790840();
      v10 = sub_245910C44();

      if (v10 >> 62)
      {
        goto LABEL_28;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }

    v5 = sub_2457909BC();
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v5;
      *(v1 + 32) = sub_24590D5E4();
      *(v1 + 40) = v12;

      v13 = sub_24590D624();
      if (!v13)
      {
        break;
      }

      if (v13[2])
      {
        v15 = v13[4];
        v14 = v13[5];

        goto LABEL_15;
      }

      __break(1u);
LABEL_28:
      v11 = sub_245911424();
LABEL_8:

      if (v11 == 1)
      {
        v5 = sub_2457918A4();
        v6 = 0;
        v7 = 2;
      }

      else
      {
LABEL_10:
        v5 = sub_24579109C();
        v7 = 1;
        v6 = 2;
      }
    }

    v15 = 0;
    v14 = 0;
LABEL_15:
    *(v1 + 48) = v15;
    *(v1 + 56) = v14;

    *(v1 + 64) = sub_24590D584();
    *(v1 + 72) = v16;

    sub_24590D584();
    v18 = v17;
    if (v17)
    {
    }

    *(v1 + 80) = v18 != 0;
    *(v1 + 88) = sub_24590D5A4();
    *(v1 + 96) = v19;

    sub_24590D5A4();
    v21 = v20;
    if (v20)
    {
    }

    *(v1 + 104) = v21 != 0;
    *(v1 + 112) = sub_24590D594();
    *(v1 + 120) = v22;

    sub_24590D594();
    v24 = v23;
    if (v23)
    {
    }

    *(v1 + 128) = v24 != 0;
    *(v1 + 168) = v6;
    *(v1 + 169) = v7;
    v25 = *(v1 + 152);
    if (v25)
    {

      v25(v26);

      sub_245771C34(v25);

      v27 = v28;
    }

    else
    {

      v27 = v5;
    }
  }
}

void sub_2458B1780()
{
  v1 = sub_24590D1E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2457C1E4C())
  {
    v5 = *(v0 + 16);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = objc_allocWithZone(type metadata accessor for ProvideFeedbackViewController());
    *&v7[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_proofingManager] = v5;
    v8 = &v7[OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_continuation];
    *v8 = sub_2458B274C;
    v8[1] = v6;

    v9 = sub_24588ECB0(v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v17 = [Strong navigationController];
    }

    else
    {
      v17 = 0;
    }

    sub_24586D558(v9, v17);

LABEL_18:
    v15 = v17;

    return;
  }

  v12 = *(v0 + 169);
  v17 = sub_24590E3B4();
  if (!v12)
  {
    sub_24590DFB4();

    sub_24590E0A4();
    if (*(v0 + 146) == 1)
    {
      sub_24590E1C4();
    }

    else
    {
      sub_24590E1B4();
    }

    sub_24590E484();

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v17 = [v13 navigationController];
    }

    else
    {
      v17 = 0;
    }

    sub_24586E734(v17);
    goto LABEL_18;
  }

  v16 = sub_24590E0F4();

  sub_24590E0A4();
  if (*(v0 + 146) == 1)
  {
    sub_24590E1C4();
  }

  else
  {
    sub_24590E1B4();
  }

  sub_24590E484();

  sub_24590D1D4();
  sub_24590D1C4();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_2458B1B68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_245883548(0);
  }

  return result;
}

void sub_2458B1BD8()
{
  sub_24590E3B4();
  sub_24590E234();

  sub_24590E0A4();
  if (*(v0 + 146) == 1)
  {
    v1 = sub_24590E1C4();
  }

  else
  {
    v1 = sub_24590E1B4();
  }

  BYTE2(v8) = 2;
  LOWORD(v8) = 514;
  v6 = v1;
  v7 = v2;
  LOBYTE(v5) = 2;
  sub_24590E484();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v9 = [Strong navigationController];
  }

  else
  {
    v9 = 0;
  }

  sub_2458B1D50(v9, 1);
}

uint64_t sub_2458B1D50(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    v27 = a1;
    v13 = *(v3 + 16);
    v14 = objc_allocWithZone(type metadata accessor for IdentityProofingPendingViewController());
    *&v14[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager] = v13;
    type metadata accessor for IdentityProofingCardArtResolutionHelper();
    swift_initStackObject();
    type metadata accessor for IdentityProofingPendingViewConfiguration();
    swift_allocObject();
    v15 = swift_retain_n();
    *&v14[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_configuration] = sub_24584D444(v15);
    v14[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_isRetryProvisioningFlow] = 0;

    v17 = sub_24588E6A8(v16, v14);
    [v27 pushViewController:v17 animated:0];
  }

  sub_24590C714();
  v18 = sub_24590F344();
  v19 = sub_245910F54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245767000, v18, v19, "IdentityProofingWaitingForWifiViewConfiguration starting file uploads", v20, 2u);
    MEMORY[0x245D77B40](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21 = sub_245910D64();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_245910D34();

  v22 = sub_245910D24();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v3;
  *(v23 + 40) = a2 & 1;
  sub_2458B90EC(0, 0, v8, &unk_24591C8B8, v23);
}

void sub_2458B20A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2AE98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];
  }

  else
  {
    v7 = 0;
  }

  sub_2457904A0(v7);
  v9 = v8;

  if ((v9 & 1) != 0 || (v10 = *(v1 + 16), (*(v10 + 144) & 3) != 2))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_isPerformingLivenessStepUp) ^ 1;
  }

  sub_24590C794();
  sub_24590C784();
  sub_24590C764();

  v12 = sub_24590F554();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_245778F94(v4, &qword_27EE2AE98);
  }

  else
  {
    v14 = sub_24590F534();
    (*(v13 + 8))(v4, v12);
    if (!(v11 & 1 | ((v14 & 1) == 0)))
    {
      return;
    }
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationController];
  }

  else
  {
    v17 = 0;
  }

  sub_2458B1D50(v17, v11 & 1);
}

uint64_t sub_2458B22AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  sub_245910D34();
  *(v5 + 24) = sub_245910D24();
  v7 = sub_245910CD4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_2458B2348, v7, v6);
}

uint64_t sub_2458B2348()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24585368C;
  v2 = *(v0 + 56);

  return sub_24587C994(v2);
}

uint64_t sub_2458B23E4()
{

  MEMORY[0x245D77C60](v0 + 24);

  sub_245771C34(*(v0 + 152));
  return v0;
}

uint64_t sub_2458B2444()
{
  sub_2458B23E4();

  return swift_deallocClassInstance();
}

unint64_t sub_2458B24B0()
{
  result = qword_27EE2B098;
  if (!qword_27EE2B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B098);
  }

  return result;
}

uint64_t sub_2458B2510()
{
  v1 = *(*v0 + 88);

  return v1;
}

void *sub_2458B2550()
{
  v1 = *(*v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t sub_2458B25A0()
{
  v1 = *(*v0 + 112);

  return v1;
}

uint64_t sub_2458B25D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  return sub_245771C34(v4);
}

void sub_2458B25EC()
{
  if ((sub_24590F534() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = [Strong navigationController];
    }

    else
    {
      v2 = 0;
    }

    sub_2458B1D50(v2, 0);
  }
}

uint64_t sub_2458B2688(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_2458B22AC(a1, v4, v5, v6, v7);
}

uint64_t sub_2458B2754(void *a1)
{
  v2 = v1;
  v4 = sub_24590E544();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 144) = 2;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 16) = a1;
  v14 = a1[29];
  if (v14)
  {
    if (v14[2])
    {

      v15 = sub_24588C5BC(0xD000000000000016, 0x8000000245929F50);
      if (v16)
      {
        (*(v5 + 16))(v13, v14[7] + *(v5 + 72) * v15, v4);

        (*(v5 + 56))(v13, 0, 1, v4);
      }

      else
      {

        (*(v5 + 56))(v13, 1, 1, v4);
      }
    }

    else
    {
      (*(v5 + 56))(v13, 1, 1, v4);
    }

    sub_2457934F4(v13, v11);
    if ((*(v5 + 48))(v11, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v11, v4);
      v17 = sub_24590E4E4();
      if (v17)
      {
        if (*(v17 + 16))
        {

          (*(v5 + 8))(v7, v4);
          sub_245778F94(v13, &qword_27EE28F30);

          v18 = sub_24590E634();
          v20 = v19;

          if (v20)
          {
            v38 = v18;
            v39 = v20;
            MEMORY[0x245D76160](46, 0xE100000000000000);
            if (a1[36])
            {
              v21 = sub_245910A84();
              v23 = v22;
            }

            else
            {
              v21 = 0;
              v23 = 0xE000000000000000;
            }

            MEMORY[0x245D76160](v21, v23);
            swift_bridgeObjectRelease_n();

            v26 = v38;
            v27 = v39;
          }

          else
          {
            swift_bridgeObjectRelease_n();
            v26 = 0;
            v27 = 0xE000000000000000;
          }

          v28 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_cardArtData;
          swift_beginAccess();
          v29 = *(a1 + v28);
          if (*(v29 + 16))
          {

            v30 = sub_24588C5BC(v26, v27);
            if (v31)
            {
              v32 = (*(v29 + 56) + 16 * v30);
              v33 = *v32;
              v34 = v32[1];
              sub_24578FB80(*v32, v34);

              v35 = objc_allocWithZone(MEMORY[0x277D755B8]);
              sub_24578FB80(v33, v34);
              v36 = sub_24590C144();
              v14 = [v35 initWithData_];

              sub_24578FC28(v33, v34);
              sub_24578FC28(v33, v34);
              goto LABEL_18;
            }
          }

          goto LABEL_17;
        }
      }

      (*(v5 + 8))(v7, v4);
    }

    sub_245778F94(v13, &qword_27EE28F30);
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

LABEL_18:
  *(v2 + 136) = v14;
  *(v2 + 146) = (a1[18] & 3) == 2;
  sub_24590C794();
  v24 = v14;
  sub_24590C784();
  sub_2458B2CA4();

  sub_24590C774();

  return v2;
}

unint64_t sub_2458B2CA4()
{
  result = qword_27EE2B0A0;
  if (!qword_27EE2B0A0)
  {
    type metadata accessor for IdentityProofingWaitingForWifiViewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B0A0);
  }

  return result;
}

void sub_2458B2D54()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for IdentityProofingWaitingForWifiViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  swift_unknownObjectWeakAssign();
  sub_2458B149C();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v4 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v3 = sub_2458B322C;
  v3[1] = v2;

  sub_245771C34(v4);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v7 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v6 = sub_2458B325C;
  v6[1] = v5;

  sub_245771C34(v7);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  v10 = *&v1[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_tertiaryButtonTargetAction];
  *v9 = sub_2458B328C;
  v9[1] = v8;

  sub_245771C34(v10);

  v11 = [v1 navigationController];
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2458B2F3C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    a2();
  }

  return result;
}

uint64_t sub_2458B2FBC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingWaitingForWifiViewController_viewConfig);
    v2 = result;

    if (*(v1 + 169) >= 2u)
    {
      sub_245883548(0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_245887AB8(Strong, 0x6E61437472656C61, 0xEB000000006C6563, 1, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_2458B3148()
{
}

id sub_2458B3188()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingWaitingForWifiViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2458B3294()
{
  sub_245771C34(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2458B32F8()
{
  result = sub_24590F534();
  if ((result & 1) == 0)
  {
    v2 = *(v0 + 16);
    if (v2)
    {

      v2(v3);

      return sub_245771C34(v2);
    }
  }

  return result;
}

uint64_t sub_2458B3370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField);
  sub_2457DA9C0(a1, v14);
  v7 = v15;
  if (v15)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_245911704();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  [v6 addTarget:v12 action:a2 forControlEvents:a3];
  return swift_unknownObjectRelease();
}

id sub_2458B34CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  [v2 pointSize];
  v3 = [v1 systemFontOfSize_weight_];

  [v0 setFont_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setMaximumContentSizeCategory_];

  [v0 setLineBreakMode_];
  [v0 setNumberOfLines_];
  return v0;
}

id sub_2458B3614()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAutocorrectionType_];
  v5 = [v4 heightAnchor];

  v6 = [v5 constraintEqualToConstant_];
  [v6 setActive_];

  [v4 setClearButtonMode_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setAdjustsFontForContentSizeCategory_];
  v8 = [v4 layer];
  sub_24579D5E0(0, &qword_27EE2B020);
  v9 = sub_24590D8B4();
  LOBYTE(v7) = MEMORY[0x245D76600](v9);

  if (v7)
  {
    sub_24590C714();
    v10 = sub_24590F344();
    v11 = sub_245910F54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245767000, v10, v11, "CALayer internal setting is enabled to allow screen capture on redacted layer", v12, 2u);
      MEMORY[0x245D77B40](v12, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    [v8 setDisableUpdateMask_];
  }

  return v4;
}

id sub_2458B38E0()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_2458B3944(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458B3944(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setLayoutMarginsRelativeArrangement_];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setDistribution_];
  [v2 setSpacing_];
  [v2 setLayoutMargins_];
  [v2 addArrangedSubview_];
  [v2 addArrangedSubview_];

  return v2;
}

uint64_t sub_2458B3A60()
{
  v1 = v0;
  sub_2458509F4();
  v2 = [v0 layer];
  [v2 setCornerRadius_];

  [v1 setClipsToBounds_];
  v3 = sub_2458B38E0();
  [v1 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24591C5A0;
  v6 = OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField____lazy_storage___stackView;
  v7 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField____lazy_storage___stackView] topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v5 + 32) = v9;
  v10 = [*&v1[v6] bottomAnchor];
  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v5 + 40) = v12;
  v13 = [*&v1[v6] leadingAnchor];
  v14 = [v1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v5 + 48) = v15;
  v16 = [*&v1[v6] trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v5 + 56) = v18;
  v19 = [*&v1[OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textFieldLabel] topAnchor];
  v20 = [*&v1[v6] topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20 constant:10.0];

  *(v5 + 64) = v21;
  sub_24579D5E0(0, &qword_27EE291F0);
  v22 = sub_245910C34();

  [v4 activateConstraints_];

  sub_24579D5E0(0, &qword_27EE2A9A0);
  v23 = sub_2459110A4();
  MEMORY[0x245D76800](v23, sel_configureTextFieldViewScheme);
  swift_unknownObjectRelease();
}

id sub_2458B4004()
{
  ObjectType = swift_getObjectType();
  v19 = sub_2459107D4();
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2459107B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277D76A20];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle_];
  [v10 pointSize];
  v11 = [v9 systemFontOfSize_weight_];

  v12 = [objc_opt_self() configurationWithFont_];
  v13 = sub_2459109C4();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  v20.receiver = v0;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithImage_, v14);

  v16 = v15;
  [v16 setContentMode_];
  sub_2459107A4();
  sub_2459107C4();
  sub_2458B4424();
  sub_245910F34();

  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  return v16;
}

unint64_t sub_2458B4424()
{
  result = qword_27EE2B0D0;
  if (!qword_27EE2B0D0)
  {
    sub_2459107B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B0D0);
  }

  return result;
}

id sub_2458B447C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_blackColor;
  if (v1 != 2)
  {
    v3 = &selRef_whiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_2458B44E8(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBF730]) initWithColor_];
  v4 = [objc_allocWithZone(MEMORY[0x277CBF730]) initWithColor_];
  [v4 alpha];
  v6 = v5;
  [v3 red];
  v8 = (1.0 - v6) * v7;
  [v4 red];
  v10 = v8 + v6 * v9;
  [v3 green];
  v12 = (1.0 - v6) * v11;
  [v4 green];
  v14 = v12 + v6 * v13;
  [v3 blue];
  v16 = (1.0 - v6) * v15;
  [v4 blue];
  v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v10 green:v14 blue:v16 + v6 * v17 alpha:1.0];

  return v18;
}

id sub_2458B4628(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_2458B4690(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_systemOrangeColor;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_systemBlueColor;
  }

  v4 = [v2 *v3];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v22[4] = sub_2458B447C;
  v22[5] = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_2458B4628;
  v22[3] = &block_descriptor_29;
  v6 = _Block_copy(v22);
  v7 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  v8 = [v7 colorWithAlphaComponent_];

  v9 = sub_2458B44E8(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2459186C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = v9;
  sub_2458B4970();
  v11 = v4;
  v12 = v9;
  v13 = sub_245910C34();

  v14 = objc_opt_self();
  v15 = [v14 configurationWithPaletteColors_];

  v16 = [v14 configurationWithPointSize_];
  v17 = [v15 configurationByApplyingConfiguration_];

  v18 = v17;
  v19 = sub_2459109C4();
  v20 = [objc_opt_self() systemImageNamed:v19 withConfiguration:v17];

  return v20;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2458B4970()
{
  result = qword_27EE29668;
  if (!qword_27EE29668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE29668);
  }

  return result;
}

id sub_2458B49BC()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator;
  v2 = *&v0[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator];
  }

  else
  {
    v4 = sub_2458B4A20(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2458B4A20(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setColor_];

  [v2 setHidden_];
  [a1 addSubview_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2459186C0;
  v6 = [v2 centerYAnchor];
  v7 = [a1 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v2 centerXAnchor];

  v10 = [a1 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  sub_2457B191C();
  v12 = sub_245910C34();

  [v4 activateConstraints_];

  return v2;
}

id sub_2458B4C50(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CoreIDVUIButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_2458B4C9C(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for CoreIDVUIButton();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_2458B51B8();
}

id sub_2458B4D04(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_originalButtonText];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator] = 0;
  v4[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_style] = 5;
  v4[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme] = 0;
  v4[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_isNeutralButtonColorScheme] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CoreIDVUIButton();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setAdjustsFontSizeToFitWidth_];
  }

  v13 = [v10 titleLabel];

  if (v13)
  {
    [v13 setMaximumContentSizeCategory_];
  }

  return v10;
}

void sub_2458B4FCC(int a1)
{
  v3 = sub_2458B49BC();
  v4 = [v3 isHidden];

  if (((v4 ^ a1) & 1) == 0)
  {
    if (a1)
    {
      v5 = [v1 titleLabel];
      if (v5 && (v6 = v5, v7 = [v5 text], v6, v7))
      {
        v8 = sub_245910A04();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v12 = &v1[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_originalButtonText];
      *v12 = v8;
      v12[1] = v10;

      v13 = sub_2459109C4();
      [v1 setTitle:v13 forState:0];

      v14 = OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator;
      [*&v1[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator] setHidden_];
      [*&v1[v14] startAnimating];
    }

    else
    {
      if (*&v1[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_originalButtonText + 8])
      {

        v11 = sub_2459109C4();
      }

      else
      {
        v11 = 0;
      }

      [v1 setTitle:v11 forState:0];

      v15 = OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator;
      [*&v1[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator] stopAnimating];
      [*&v1[v15] setHidden_];
    }

    [v1 setEnabled_];
  }
}

void sub_2458B51B8()
{
  v1 = v0;
  v2 = sub_24590F404();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24590F424();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isEnabled] || (v7 = objc_msgSend(v0, sel_isHighlighted), v8 = 1.0, v7))
  {
    v8 = 0.75;
  }

  [v0 setAlpha_];
  v9 = v0[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_style];
  if (v9 <= 1)
  {
    if (v0[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_style])
    {
      sub_24590F3F4();
      sub_24590F434();
      v17 = objc_opt_self();
      v30 = [v17 systemFillColor];
      v54 = v3;
      v55 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_24590F414();

      (*(v4 + 8))(v6, v3);
      sub_2459111B4();
      if (v0[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme])
      {
        v31 = &selRef_systemOrangeColor;
      }

      else
      {
        v31 = &selRef_labelColor;
      }

      v32 = [v17 *v31];
      [v1 setTitleColor:v32 forState:0];

      v33 = [v1 titleLabel];
      if (v33)
      {
        v34 = v33;
        v35 = [objc_opt_self() preferredFontForTextStyle_];
        [v34 setFont_];
      }
    }

    else
    {
      if (![v0 isEnabled] || v0[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_isNeutralButtonColorScheme] != 1)
      {
        if (([v0 isEnabled] & 1) != 0 || (v37 = sub_2458B49BC(), v38 = objc_msgSend(v37, sel_isHidden), v37, (v38 & 1) == 0))
        {
          v43 = v1[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme];
          v44 = objc_opt_self();
          v45 = &selRef_tertiarySystemFillColor;
          if (!v43)
          {
            v45 = &selRef_systemBlueColor;
          }

          v46 = [v44 *v45];
          [v1 setBackgroundColor_];

          v41 = objc_opt_self();
          v42 = &selRef_whiteColor;
        }

        else
        {
          v39 = objc_opt_self();
          v40 = [v39 tertiarySystemFillColor];
          [v1 setBackgroundColor_];

          v41 = v39;
          v42 = &selRef_tertiaryLabelColor;
        }

        v47 = [v41 *v42];
        [v1 setTitleColor:v47 forState:0];

        v48 = [v1 titleLabel];
        if (v48)
        {
          v49 = v48;
          v50 = [objc_opt_self() preferredFontForTextStyle_];
          [v49 setFont_];
        }

        sub_24590F3F4();
        sub_24590F434();
        v51 = [objc_opt_self() systemFillColor];
        v54 = v3;
        v55 = MEMORY[0x277D74E20];
        __swift_allocate_boxed_opaque_existential_1(v53);
        sub_24590F414();

        (*(v4 + 8))(v6, v3);
        sub_2459111B4();
        return;
      }

      sub_24590F3F4();
      sub_24590F434();
      v17 = objc_opt_self();
      v18 = [v17 systemFillColor];
      v54 = v3;
      v55 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_24590F414();

      (*(v4 + 8))(v6, v3);
      sub_2459111B4();
      if (v0[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme])
      {
        v19 = &selRef_systemOrangeColor;
      }

      else
      {
        v19 = &selRef_labelColor;
      }

      v20 = [v17 *v19];
      [v1 setTitleColor:v20 forState:0];

      v21 = [v1 titleLabel];
      if (v21)
      {
        v22 = v21;
        v23 = [objc_opt_self() preferredFontForTextStyle_];
        [v22 setFont_];
      }
    }

    v36 = [v17 clearColor];
    [v1 setBackgroundColor_];

    return;
  }

  if (v9 - 2 >= 2)
  {
    if (v9 == 4)
    {
      v24 = objc_opt_self();
      v25 = [v24 clearColor];
      [v1 setBackgroundColor_];

      v26 = (v1[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme] ? &selRef_systemOrangeColor : &selRef_systemBlueColor);
      v27 = [v24 *v26];
      [v1 setTitleColor:v27 forState:0];

      v28 = [v1 titleLabel];
      if (v28)
      {
        v15 = v28;
        v16 = [objc_opt_self() preferredFontForTextStyle_];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 clearColor];
    [v1 setBackgroundColor_];

    if (v1[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme])
    {
      v12 = &selRef_systemOrangeColor;
    }

    else
    {
      v12 = &selRef_systemBlueColor;
    }

    v13 = [v10 *v12];
    [v1 setTitleColor:v13 forState:0];

    v14 = [v1 titleLabel];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_26:
      v52 = v16;
      [v15 setFont_];

      v29 = v52;
    }
  }
}

id sub_2458B5A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreIDVUIButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2458B5B18()
{
  result = qword_27EE2B100;
  if (!qword_27EE2B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B100);
  }

  return result;
}

id sub_2458B5B6C()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v2 + 56) + 48 * (v10 | (v8 << 6));
    if ((*(v11 + 40) & 1) == 0)
    {
      v12 = *(v11 + 32);

      v13 = v12;
      [v13 removeFromSuperview];
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      *&v0[v1] = MEMORY[0x277D84F98];

      v14 = &v0[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize];
      *v14 = 0;
      *(v14 + 1) = 0;
      sub_2458B5E24();
      return [v0 setNeedsLayout];
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_2458B5CD0(void *a1, uint64_t a2, uint64_t a3, float64_t a4, float64_t a5)
{
  v9 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  if (!*(*&v5[v9] + 16) || (, sub_24588C5BC(a2, a3), v11 = v10, result = , (v11 & 1) == 0))
  {
    *&v19 = a2;
    *(&v19 + 1) = a3;
    v20 = a4;
    v21 = a5;
    v22 = a1;
    v23 = 0;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v13 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v5[v9];
    *&v5[v9] = 0x8000000000000000;
    sub_2458B7AFC(&v19, a2, a3, isUniquelyReferenced_nonNull_native);

    *&v5[v9] = v18;
    swift_endAccess();
    v15.f64[0] = a4;
    v15.f64[1] = a5;
    *&v5[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize] = vbslq_s8(vcgeq_f64(v15, *&v5[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize]), v15, *&v5[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize]);
    return [v5 addSubview_];
  }

  return result;
}

void sub_2458B5E24()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_attributedText);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v3 = v1;
    v4 = &off_278E87000;
    v5 = [v2 init];
    v35 = v3;
    [v5 appendAttributedString_];
    v6 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_registeredAccessories;
    swift_beginAccess();
    v7 = *(v0 + v6);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    if (!v10)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(v7 + 56) + 48 * (v14 | (v12 << 6));
        if (*(v15 + 40) == 1)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v36 = *v15;
      v37 = v5;
      v18 = *(v15 + 8);
      v17 = *(v15 + 16);

      v34 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_24580A284(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      v21 = v13;
      if (v20 >= v19 >> 1)
      {
        v21 = sub_24580A284((v19 > 1), v20 + 1, 1, v13);
      }

      *(v21 + 2) = v20 + 1;
      v13 = v21;
      v22 = &v21[24 * v20];
      *(v22 + 4) = v36;
      *(v22 + 5) = v18;
      *(v22 + 6) = v34;
      v4 = 0x1FB2FA000;
      v5 = v37;
    }

    while (v10);
    while (1)
    {
LABEL_7:
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v11)
      {
        break;
      }

      v10 = *(v7 + 64 + 8 * v16);
      ++v12;
      if (v10)
      {
        v12 = v16;
        goto LABEL_5;
      }
    }

    v23 = *(v13 + 2);
    if (v23)
    {
      v24 = v4;
      v38 = objc_opt_self();
      v25 = (v13 + 48);
      do
      {
        v26 = *v25;
        v27 = objc_allocWithZone(MEMORY[0x277D74270]);

        v28 = v26;
        v29 = [v27 (v24 + 2936)];
        [v29 setImage_];
        v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v31 = sub_2459109C4();
        v32 = [v30 initWithString_];

        [v5 appendAttributedString_];
        v33 = [v38 attributedStringWithAttachment_];
        [v5 appendAttributedString_];

        v25 += 3;
        --v23;
      }

      while (v23);
    }

    [*(v0 + OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView) setAttributedText_];
  }
}

char *sub_2458B617C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_attributedText] = 0;
  *&v4[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_trailingMargin] = 0x4043000000000000;
  v10 = &v4[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets];
  v11 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 8);
  v13 = *(MEMORY[0x277D768C8] + 16);
  v14 = *(MEMORY[0x277D768C8] + 24);
  *v10 = *MEMORY[0x277D768C8];
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_registeredAccessories;
  *&v4[v15] = sub_2458B8F6C(MEMORY[0x277D84F90]);
  v16 = &v4[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView] = v17;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView;
  v20 = *&v18[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView];
  v21 = v18;
  [v20 setAdjustsFontForContentSizeCategory_];
  [*&v18[v19] setEditable_];
  [*&v18[v19] setSelectable_];
  [*&v18[v19] setTextAlignment_];
  [*&v18[v19] setTextContainerInset_];
  [*&v18[v19] setContentInsetAdjustmentBehavior_];
  v22 = *&v18[v19];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 clearColor];
  [v24 setBackgroundColor_];

  v26 = [*&v18[v19] textContainer];
  [v26 setLineFragmentPadding_];

  v27 = *&v18[v19];
  v28 = v21;
  [v28 addSubview_];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_245917DC0;
  v31 = [*&v18[v19] topAnchor];
  v32 = [v28 topAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [*&v18[v19] bottomAnchor];
  v35 = [v28 bottomAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v30 + 40) = v36;
  v37 = [*&v18[v19] leadingAnchor];
  v38 = [v28 leadingAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v30 + 48) = v39;
  v40 = [*&v18[v19] trailingAnchor];
  v41 = [v28 trailingAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v30 + 56) = v42;
  sub_24579D5E0(0, &qword_27EE291F0);
  v43 = sub_245910C34();

  [v29 activateConstraints_];

  v44 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v45 = *&v28[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_trailingMargin];
  if (v44 == 1)
  {
    v46 = *&v28[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_trailingMargin];
  }

  else
  {
    v46 = 0.0;
  }

  if (v44 == 1)
  {
    v45 = 0.0;
  }

  v47 = &v28[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets];
  *v47 = 0.0;
  v47[1] = v46;
  v47[2] = 0.0;
  v47[3] = v45;
  [v28 setNeedsLayout];
  sub_2458B6688();

  return v28;
}

uint64_t sub_2458B6688()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29480);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_245916930;
  v2 = sub_24590F394();
  v3 = MEMORY[0x277D74B90];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = ObjectType;
  sub_2459111D4();
  swift_unknownObjectRelease();
}

double sub_2458B6870(char a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5)
{
  v11 = sub_2458B6C48(v5, a4);
  v12 = [v5 effectiveUserInterfaceLayoutDirection];
  v13 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView;
  v14 = [*&v5[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView] textAlignment];
  if (v14 != 4)
  {
    if (v14 != 2)
    {
      if (v14 == 1)
      {
        v25.origin.x = a2;
        v25.origin.y = a3;
        v25.size.width = a4;
        v25.size.height = a5;
        v15 = floor(CGRectGetMidX(v25) + v11 * -0.5);
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    v15 = CGRectGetMaxX(v26) - *&v5[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets + 24] - v11;
    goto LABEL_8;
  }

  if (v12 == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v15 = *&v5[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets + 8] + a2;
LABEL_8:
  v16 = [*&v5[v13] attributedText];
  if (v16)
  {
    v17 = v16;
    if ([v16 length] >= 1)
    {
      v18 = *&v5[v13];
      [v18 sizeThatFits_];
      v20 = v19;

      goto LABEL_13;
    }
  }

  v20 = *&v5[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize + 8];
LABEL_13:
  v27.origin.x = v15;
  v27.origin.y = a3;
  v27.size.width = v11;
  v27.size.height = v20;
  MaxY = CGRectGetMaxY(v27);
  if ((a1 & 1) == 0)
  {
    [*&v5[v13] setFrame_];
    v22 = [*&v5[v13] textContainer];
    [v22 setSize_];
  }

  sub_2458B6D94(v15, a3, v11, v20, v24, a1 & 1);
  return MaxY;
}

double sub_2458B6C48(char *a1, double a2)
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v5 = *&a1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets + 8] + *&a1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets + 24];
  if (*(*&a1[v4] + 16))
  {
    v6 = [*&a1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView] textAlignment];
    v7 = [a1 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    v9 = sub_245911104();
    if (v6 == 1)
    {
      v10 = 6.0;
      if (v9)
      {
        v10 = 18.0;
      }

      v11 = v10 + *&a1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize] + v10 + *&a1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize];
      if (v5 <= v11)
      {
        v5 = v11;
      }
    }

    else
    {
      v12 = 6.0;
      if (v5 > 6.0)
      {
        v12 = v5;
      }

      v13 = 18.0;
      if (v5 > 18.0)
      {
        v13 = v5;
      }

      if (v9)
      {
        v5 = v13;
      }

      else
      {
        v5 = v12;
      }
    }
  }

  return a2 - v5;
}

void sub_2458B6D94(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    v7 = sub_2458B6FE8(v6, 0, a1, a2, a3, a4);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_registeredAccessories;
    swift_beginAccess();
    v15 = *&v6[v14];
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    if (!v18)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = *(v15 + 56) + 48 * (v22 | (v20 << 6));
        if ((*(v23 + 40) & 1) == 0)
        {
          break;
        }

        if (!v18)
        {
          goto LABEL_7;
        }
      }

      v25 = *(v23 + 8);
      v26 = *(v23 + 24);
      v39 = *v23;
      v40 = *(v23 + 16);
      v27 = *(v23 + 32);

      v38 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24580B258(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v32 = sub_24580B258((v28 > 1), v29 + 1, 1, v21);
        v30 = v29 + 1;
        v21 = v32;
      }

      *(v21 + 2) = v30;
      v31 = &v21[40 * v29];
      *(v31 + 4) = v39;
      *(v31 + 5) = v25;
      *(v31 + 6) = v40;
      *(v31 + 7) = v26;
      *(v31 + 8) = v38;
    }

    while (v18);
    while (1)
    {
LABEL_7:
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return;
      }

      if (v24 >= v19)
      {
        break;
      }

      v18 = *(v15 + 64 + 8 * v24);
      ++v20;
      if (v18)
      {
        v20 = v24;
        goto LABEL_5;
      }
    }

    v33 = *(v21 + 2);
    if (v33)
    {
      v34 = (v21 + 64);
      do
      {
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        v34 += 5;
        [v37 setFrame_];
        --v33;
      }

      while (v33);
    }
  }
}

CGFloat sub_2458B6FE8(char *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [a1 _shouldReverseLayoutDirection];
  v13 = sub_2458B7204(a1, a2, a3, a4, a5, a6);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    [v14 typographicBounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v15 layoutFragmentFrame];
    v26 = v25;
    v28 = v27;
    v29 = OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize;
    v30 = *&a1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_maxAccessorySize];
    v51.origin.x = v18;
    v51.origin.y = v20;
    v51.size.width = v22;
    v51.size.height = v24;
    Height = CGRectGetHeight(v51);
    v32 = v18;
    v33 = v20;
    v34 = v22;
    v35 = v24;
    if (v12)
    {
      MinX = CGRectGetMinX(*&v32);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v32);
    }

    v37 = v20;
    v38 = v30;
    v39 = Height;
    v52 = CGRectOffset(*&MinX, v26, v28);
    x = v52.origin.x;
    y = v52.origin.y;
    v42 = v52.size.height;
    v43 = *&a1[v29];
    v44 = [a1 traitCollection];
    v45 = [v44 preferredContentSizeCategory];

    LOBYTE(v44) = sub_245911104();
    v46 = 6.0;
    if (v44)
    {
      v46 = 18.0;
    }

    if (v12)
    {
      v46 = -(v43 + v46);
    }

    v47 = x + v46;
    v48 = *&a1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView];
    [v48 convertRect:a1 toCoordinateSpace:{v47, y, v43, v42}];
    a3 = v49;
  }

  return a3;
}

unint64_t sub_2458B7204(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = [*(a1 + OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_textView) textLayoutManager];
  if (!result)
  {
    return result;
  }

  v12 = result;
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  [result ensureLayoutForBounds_];
  v29 = 0;
  v13 = [v12 documentRange];
  v14 = [v13 endLocation];

  v15 = swift_allocObject();
  *(v15 + 16) = &v29;
  v16 = swift_allocObject();
  v16[2] = sub_2458B81E8;
  v16[3] = v15;
  aBlock[4] = sub_2458B821C;
  v28 = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458B75E4;
  aBlock[3] = &block_descriptor_30;
  v17 = _Block_copy(aBlock);
  v18 = v28;

  v19 = [v12 enumerateTextLayoutFragmentsFromLocation:v14 options:1 usingBlock:v17];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (!v29)
    {
      if (a2)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v18 = v29;
    v16 = v29;
    v21 = [v16 textLineFragments];
    sub_24579D5E0(0, &qword_27EE2B138);
    isEscapingClosureAtFileLocation = sub_245910C44();

    if (!(isEscapingClosureAtFileLocation >> 62))
    {
      v22 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_6;
      }

LABEL_19:

      if (a2)
      {
LABEL_20:
        v26 = [v12 documentRange];
        [v12 invalidateLayoutForRange_];

LABEL_22:
        return 0;
      }

LABEL_21:

      goto LABEL_22;
    }
  }

  v22 = sub_245911424();
  if (!v22)
  {
    goto LABEL_19;
  }

LABEL_6:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
LABEL_25:
    MEMORY[0x245D76B30](result, isEscapingClosureAtFileLocation);
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v24 = *(isEscapingClosureAtFileLocation + 8 * result + 32);
LABEL_11:

  if (a2)
  {
    v25 = [v12 documentRange];
    [v12 invalidateLayoutForRange_];
  }

  else
  {
  }

  return v18;
}

uint64_t sub_2458B75E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_2458B7628()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
    v3 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_trailingMargin];
    if (v2 == 1)
    {
      v4 = *&v1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_trailingMargin];
    }

    else
    {
      v4 = 0.0;
    }

    if (v2 == 1)
    {
      v3 = 0.0;
    }

    v5 = &v1[OBJC_IVAR____TtC9CoreIDVUI25IDVTrailingAccessoryLabel_contentInsets];
    *v5 = 0.0;
    v5[1] = v4;
    v5[2] = 0.0;
    v5[3] = v3;
    [v1 setNeedsLayout];
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2458B7794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2458B77DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_OWORD *sub_2458B7848(_OWORD *a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24588C7B4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24580C8E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24580B378(v14, a3 & 1);
    v9 = sub_24588C7B4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_245911774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_2457AA3F0(a1, v20);
  }

  else
  {

    return sub_2458B80DC(v9, a2, a1, v19);
  }
}

uint64_t sub_2458B7974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24588C5BC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_24580B5F4(v18, a5 & 1);
      v13 = sub_24588C5BC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_245911774();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_24580CA60();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_24578FC28(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t sub_2458B7AFC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24588C5BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24580B8B0(v16, a4 & 1);
      v11 = sub_24588C5BC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_245911774();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24580CBE4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_2458B81B0(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 25) = *(a1 + 25);
  *v25 = v26;
  v25[1] = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

_OWORD *sub_2458B7C8C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24588C5BC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24580CDB8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24580BBE0(v16, a4 & 1);
    v11 = sub_24588C5BC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_245911774();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_2457AA3F0(a1, v22);
  }

  else
  {
    sub_2458B8144(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2458B7DDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24588C5BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24580C11C(v16, a4 & 1);
      v11 = sub_24588C5BC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_245911774();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24580D0A8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2458B7F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24588C5BC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_24580C624(v18, a5 & 1);
      v13 = sub_24588C5BC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_245911774();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_24580D364();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_2458B80DC(unint64_t a1, int a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_2457AA3F0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_2458B8144(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2457AA3F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2458B81E8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
  v4 = a1;

  return 0;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2458B8260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B158);
    v3 = sub_245911624();
    v4 = a1 + 32;

    while (1)
    {
      sub_245778F2C(v4, &v11, &unk_27EE2B050);
      v5 = v11;
      result = sub_2458935E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2457AA3F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DA8);
    v3 = sub_245911624();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24588C5BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B849C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D90);
    v3 = sub_245911624();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_24578FB80(v7, v8);
      result = sub_24588C5BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B85B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D98);
    v3 = sub_245911624();
    for (i = a1 + 32; ; i += 40)
    {
      sub_245778F2C(i, &v11, &qword_27EE29058);
      v5 = v11;
      result = sub_24588C7B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_2457AA3F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B86D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29060);
    v3 = sub_245911624();
    v4 = a1 + 32;

    while (1)
    {
      sub_245778F2C(v4, v13, &qword_27EE29010);
      result = sub_24588C770(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2457AA3F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B880C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B140);
    v3 = sub_245911624();
    v4 = a1 + 32;

    while (1)
    {
      sub_245778F2C(v4, &v11, &qword_27EE2B148);
      v5 = v11;
      result = sub_2458935E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2457AA3F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B168);
    v3 = sub_245911624();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_24588C9D8(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8A24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B160);
    v3 = sub_245911624();
    v4 = a1 + 32;

    while (1)
    {
      sub_245778F2C(v4, &v11, &qword_27EE29660);
      v5 = v11;
      result = sub_24588C924(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2457AA3F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8B4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DF0);
    v3 = sub_245911624();
    v4 = a1 + 32;

    while (1)
    {
      sub_245778F2C(v4, &v13, &qword_27EE29BC8);
      v5 = v13;
      v6 = v14;
      result = sub_24588C5BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2457AA3F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8C7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B150);
    v3 = sub_245911624();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_24588C5BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DE0);
    v3 = sub_245911624();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24588C5BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29DB8);
    v3 = sub_245911624();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_24588CB14(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2458B8F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D40);
    v3 = sub_245911624();

    for (i = a1 + 48; ; i += 64)
    {
      v20 = v1;
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i + 8);
      v9 = *(i + 16);
      v10 = *(i + 24);
      v11 = *(i + 32);
      v12 = *(i + 40);

      sub_24580DBF8(v7, v8, v9, v10, v11, v12);
      result = sub_24588C5BC(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 48 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2458B90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_2457AA338(a3, v24 - v9);
  v11 = sub_245910D64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_245778F94(v10, &unk_27EE297B0);
  }

  else
  {
    sub_245910D54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_245910CD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_245910AA4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_245778F94(a3, &unk_27EE297B0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_245778F94(a3, &unk_27EE297B0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2458B93DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2457AA338(a3, v25 - v10);
  v12 = sub_245910D64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_245778F94(v11, &unk_27EE297B0);
  }

  else
  {
    sub_245910D54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_245910CD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_245910AA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B178);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_245778F94(a3, &unk_27EE297B0);

      return v22;
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

  sub_245778F94(a3, &unk_27EE297B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B178);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2458B96E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2457AA338(a3, v25 - v10);
  v12 = sub_245910D64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_245778F94(v11, &unk_27EE297B0);
  }

  else
  {
    sub_245910D54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_245910CD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_245910AA4() + 32;
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

      sub_245778F94(a3, &unk_27EE297B0);

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

  sub_245778F94(a3, &unk_27EE297B0);
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

uint64_t sub_2458B99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_24590F354();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_2458B9AE4;

  return sub_2457A1DB0();
}

uint64_t sub_2458B9AE4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2458B9C68;
  }

  else
  {
    v2 = sub_2458B9BF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458B9BF8()
{
  (*(v0 + 16))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458B9C68()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  sub_24590C714();
  sub_24590C724();
  (*(v3 + 8))(v2, v4);
  sub_24579D5E0(0, &qword_27EE290E0);
  sub_245910A04();
  v6 = sub_245911224();

  v5(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2458B9DB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_2458B99E8(a1, v4, v5, v6, v7, v8);
}

void sub_2458B9EBC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_24590BF94();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2458B9F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_245910D64();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v4;

  sub_2458B90EC(0, 0, v10, a4, v12);
}

uint64_t sub_2458BA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_24590F354();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_2458BA150;

  return sub_2457A6FF0();
}

uint64_t sub_2458BA150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v6[12] = v4;

  if (v4)
  {
    v7 = sub_2458BA36C;
  }

  else
  {
    v7 = sub_2458BA26C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2458BA26C()
{
  v1 = v0[9];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_24590C144();
    v1 = v0[9];
  }

  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[2];
  v7 = [objc_allocWithZone(CIDVUIBiometricBindingAttestations) initWithProgenitorKeyAttestation_];

  v6(v7, 0);
  sub_245771C44(v5, v1);
  sub_245771C44(v4, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2458BA36C()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  sub_24590C714();
  sub_24590C724();
  (*(v3 + 8))(v2, v4);
  sub_24579D5E0(0, &qword_27EE290E0);
  sub_245910A04();
  v6 = sub_245911224();

  v5(0, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2458BA4C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_2458BA054(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2458BA5C4(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_245910D64();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  sub_2458B90EC(0, 0, v13, a7, v17);
}

void sub_2458BA704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24590BF94();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t CIDVUIInternalBiometricBindingEnrollmentProvider.fetchBiometricEnrollmentACLType()()
{
  v0 = sub_24590F354();
  MEMORY[0x28223BE20](v0);
  return sub_2457A7A78();
}

uint64_t sub_2458BA9BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_24590EA74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if (sub_24590EA44() == a1 && v14 == a2)
  {
  }

  else
  {
    v15 = sub_245911714();

    if ((v15 & 1) == 0)
    {
      return -1;
    }
  }

  sub_24590EA54();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_245778F94(v6, &qword_27EE2A800);
    return -1;
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 88))(v11, v7);
  if (v16 == *MEMORY[0x277CFFC00])
  {
    (*(v8 + 8))(v13, v7);
    return -2;
  }

  if (v16 == *MEMORY[0x277CFFA88])
  {
    (*(v8 + 8))(v13, v7);
    return -3;
  }

  else
  {
    if (v16 != *MEMORY[0x277CFFAD8])
    {
      v18 = *(v8 + 8);
      v18(v13, v7);
      v18(v11, v7);
      return -1;
    }

    (*(v8 + 8))(v13, v7);
    return -4;
  }
}

id CIDVUIInternalBiometricBindingEnrollmentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CIDVUIInternalBiometricBindingEnrollmentProvider.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC9CoreIDVUI48CIDVUIInternalBiometricBindingEnrollmentProvider_provider];
  v4 = [objc_allocWithZone(MEMORY[0x277CFEE60]) init];
  v20 = sub_24579D5E0(0, &qword_27EE2A978);
  v21 = &off_285884710;
  *&v19 = v4;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v5 = swift_allocObject();
  v6 = sub_24590C8C4();
  swift_allocObject();
  *(v5 + 16) = sub_24590C8B4();
  v7 = sub_24590CD84();
  v8 = [objc_allocWithZone(v7) init];
  v17 = v7;
  v18 = MEMORY[0x277CFF438];
  *&v16 = v8;
  swift_allocObject();
  v9 = sub_24590C8B4();
  v14 = v6;
  v15 = MEMORY[0x277CFF418];
  *&v13 = v9;
  v10 = [objc_allocWithZone(sub_24590D674()) init];
  *v3 = v5;
  sub_245771B9C(&v19, (v3 + 1));
  v3[6] = sub_2457A1D5C;
  v3[7] = 0;
  sub_245771B9C(&v16, (v3 + 8));
  sub_245771B9C(&v13, (v3 + 13));
  v3[18] = v10;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id CIDVUIInternalBiometricBindingEnrollmentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2458BAF98(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2458BB08C;

  return v5(v2 + 32);
}

uint64_t sub_2458BB08C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2458BB1A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457AA49C;

  return sub_2458BAF98(a1, v4);
}

uint64_t sub_2458BB260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457A18F4;

  return sub_2458BA054(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2458BB378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457AA49C;

  return sub_2458BAF98(a1, v4);
}

uint64_t sub_2458BB430(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457A18F4;

  return sub_2458BAF98(a1, v4);
}

void *sub_2458BB4E8()
{
  type metadata accessor for IdentityProofingViewProvider();
  swift_allocObject();
  v0 = sub_2458AE4D8();
  type metadata accessor for IdentityProofingConnectionProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  swift_weakInit();
  type metadata accessor for IdentityProofingEligibilityHelper();
  v2 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v2 + 16) = sub_24590C8B4();
  if (qword_27EE286A0 != -1)
  {
    swift_once();
  }

  v3 = qword_27EE32B48;
  sub_24590E654();
  swift_allocObject();

  v4 = sub_24590E644();
  type metadata accessor for PassProvisioningManager();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for IdentityProofingFlowManager();
  swift_allocObject();
  return sub_24586FE68(v0, v1, v2, v3, v4, v5);
}

uint64_t sub_2458BB648()
{
  v0[2] = sub_245910D34();
  v0[3] = sub_245910D24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2458BB6F4;

  return sub_2458BCD30();
}

uint64_t sub_2458BB6F4(char a1)
{
  *(*v1 + 40) = a1;

  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458BB838, v3, v2);
}

uint64_t sub_2458BB838()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_2458BBA10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_245910D34();
  v2[5] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458BBAAC, v4, v3);
}

uint64_t sub_2458BBAAC()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_245910D24();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2458BBB68;

  return sub_2458BCD30();
}

uint64_t sub_2458BBB68(char a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458BBCAC, v3, v2);
}

uint64_t sub_2458BBCAC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);

  v2[2](v2, v1);
  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2458BBD3C()
{
  v1[2] = v0;
  sub_245910D34();
  v1[3] = sub_245910D24();
  v3 = sub_245910CD4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2458BBDD4, v3, v2);
}

uint64_t sub_2458BBDD4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2458BBE70;

  return sub_24579E724();
}

uint64_t sub_2458BBE70()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_2458002E8;
  }

  else
  {
    v5 = sub_2457B5318;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458BC120(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_245910D34();
  v2[5] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458BC1BC, v4, v3);
}

uint64_t sub_2458BC1BC()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_245910D24();
  v5 = sub_245910CD4();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x2822009F8](sub_2458BC268, v5, v4);
}

uint64_t sub_2458BC268()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2458BC304;

  return sub_24579E724();
}

uint64_t sub_2458BC304()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_2458BC4C4;
  }

  else
  {
    v5 = sub_2458BC440;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458BC440()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 48));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2458BC4C4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);

  v4 = sub_24590BF94();
  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 48));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2458BC56C()
{
  v1[2] = v0;
  sub_245910D34();
  v1[3] = sub_245910D24();
  v3 = sub_245910CD4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2458BC604, v3, v2);
}

uint64_t sub_2458BC604()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2458BC6A0;

  return sub_24579EA50();
}

uint64_t sub_2458BC6A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_2458002E8;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_2458BC7C8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2458BC7C8()
{
  v1 = *(v0 + 64);

  v2 = [objc_allocWithZone(CIDVUIBindingDetails) init];
  sub_24590D3B4();
  v3 = sub_245910C34();

  [v2 setPassDescriptions_];

  sub_24590D3A4();
  sub_24590C1F4();
  v4 = sub_245910C34();

  [v2 setTemplateUUIDs_];

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_2458BCA48(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_245910D34();
  v2[4] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458BCAE0, v4, v3);
}

uint64_t sub_2458BCAE0()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2458BCB90;

  return sub_2458BC56C();
}

uint64_t sub_2458BCB90(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 40);
  if (v3)
  {
    v9 = sub_24590BF94();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2458BCD30()
{
  v1[22] = v0;
  v2 = sub_24590EA74();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_24590EA84();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v1[30] = swift_task_alloc();
  v4 = sub_24590F354();
  v1[31] = v4;
  v1[32] = *(v4 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  sub_245910D34();
  v1[39] = sub_245910D24();
  v6 = sub_245910CD4();
  v1[40] = v6;
  v1[41] = v5;

  return MEMORY[0x2822009F8](sub_2458BCF5C, v6, v5);
}

uint64_t sub_2458BCF5C()
{
  v16 = v0;
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  v5 = v0[31];
  v6 = v0[32];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2458CC378(0xD000000000000016, 0x800000024592D6A0, &v15);
    _os_log_impl(&dword_245767000, v1, v2, "%s - begin", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  v9 = *(v6 + 8);
  v9(v4, v5);
  v0[42] = v9;
  v10 = v0[22];
  v11 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v12 = OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_context;
  v0[43] = OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_context;
  v13 = *(v10 + v12);
  *(v10 + v12) = v11;

  v0[44] = *(v10 + OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_bioBindingController);

  return MEMORY[0x2822009F8](sub_2458BD10C, 0, 0);
}

uint64_t sub_2458BD10C()
{
  v0[45] = *(*(v0[44] + 32) + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2458BD238;
  v1 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579E694;
  v0[13] = &block_descriptor_102;
  v0[14] = v1;
  [swift_unknownObjectRetain() retrieveBoundACLWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2458BD238()
{

  return MEMORY[0x2822009F8](sub_2458BD318, 0, 0);
}

uint64_t sub_2458BD318()
{
  *(v0 + 368) = *(v0 + 144);
  swift_unknownObjectRelease();
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_2458BD384, v1, v2);
}

uint64_t sub_2458BD384()
{
  if (*(v0 + 376) >> 60 == 15)
  {

    sub_24590C714();
    v1 = sub_24590F344();
    v2 = sub_245910F64();
    if (os_log_type_enabled(v1, v2))
    {
      v4 = *(v0 + 368);
      v3 = *(v0 + 376);
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_245767000, v1, v2, "Missing bound ACL data", v5, 2u);
      MEMORY[0x245D77B40](v5, -1, -1);

      sub_245771C44(v4, v3);
    }

    else
    {
    }

    (*(v0 + 336))(*(v0 + 296), *(v0 + 248));
    sub_2458BE5A8();

    v21 = *(v0 + 8);

    return v21(0);
  }

  else
  {
    type metadata accessor for SecAccessControl(0);
    v6 = sub_2459110B4();
    *(v0 + 384) = v6;
    v7 = v6;
    v8 = *(v0 + 344);
    v9 = *(v0 + 240);
    v10 = *(v0 + 176);
    v11 = sub_245910D64();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = *(v10 + v8);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    v13[5] = v7;
    v14 = v7;
    v15 = v12;
    v16 = sub_2458BED6C(0, 0, v9, &unk_24591CDD8, v13);
    *(v0 + 392) = v16;
    sub_245778F94(v9, &unk_27EE297B0);
    v17 = swift_task_alloc();
    *(v0 + 400) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    *v17 = v0;
    v17[1] = sub_2458BD998;
    v19 = MEMORY[0x277D839B0];
    v20 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 440, v16, v19, v18, v20);
  }
}

uint64_t sub_2458BD998()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_2458BDC04;
  }

  else
  {
    v5 = sub_2458BDAEC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458BDAEC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);

  sub_245771C44(v2, v1);

  v5 = *(v0 + 440);
  sub_2458BE5A8();

  v3 = *(v0 + 8);

  return v3(v5);
}

uint64_t sub_2458BDC04()
{
  v1 = *(v0 + 408);
  type metadata accessor for Code(0);
  *(v0 + 160) = -8;
  v2 = v1;
  sub_2458C195C(&qword_27EE28948, type metadata accessor for Code);
  v3 = sub_24590BEF4();

  if (v3)
  {

    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "Bio lockout occurred validating bound ACL. Prompting user for passcode.", v6, 2u);
      MEMORY[0x245D77B40](v6, -1, -1);
    }

    v7 = *(v0 + 336);
    v8 = *(v0 + 280);
    v9 = *(v0 + 248);

    v7(v8, v9);
    v10 = swift_task_alloc();
    *(v0 + 416) = v10;
    *v10 = v0;
    v10[1] = sub_2458BE0E4;

    return sub_24579FEB0();
  }

  else
  {
    v12 = *(v0 + 408);

    *(v0 + 168) = -2;
    v13 = v12;
    v14 = sub_24590BEF4();

    v15 = *(v0 + 408);
    if (v14)
    {

      sub_24590C714();
      v16 = sub_24590F344();
      v17 = sub_245910F64();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_245767000, v16, v17, "User canceled bound ACL authentication manually.", v18, 2u);
        MEMORY[0x245D77B40](v18, -1, -1);
      }

      v19 = *(v0 + 376);
      v20 = *(v0 + 368);
      v21 = *(v0 + 336);
      v22 = *(v0 + 272);
      v23 = *(v0 + 248);

      sub_245771C44(v20, v19);
      v21(v22, v23);
    }

    else
    {
      sub_24590C714();
      v24 = v15;
      v25 = sub_24590F344();
      v26 = sub_245910F64();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 408);
      v29 = *(v0 + 376);
      v30 = *(v0 + 384);
      v31 = *(v0 + 368);
      if (v27)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = v28;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_245767000, v25, v26, "Authenticating bound ACL failed with error: %@", v32, 0xCu);
        sub_245778F94(v33, &qword_27EE297C0);
        MEMORY[0x245D77B40](v33, -1, -1);
        MEMORY[0x245D77B40](v32, -1, -1);

        sub_245771C44(v31, v29);
      }

      else
      {

        sub_245771C44(v31, v29);
      }

      (*(v0 + 336))(*(v0 + 264), *(v0 + 248));
    }

    sub_2458BE5A8();

    v36 = *(v0 + 8);

    return v36(0);
  }
}

uint64_t sub_2458BE0E4()
{
  v2 = *v1;
  v2[53] = v0;

  if (v0)
  {
    v3 = v2[40];
    v4 = v2[41];

    return MEMORY[0x2822009F8](sub_2458BE48C, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v2;
    v5[1] = sub_2458BE24C;

    return sub_2458BCD30();
  }
}

uint64_t sub_2458BE24C(char a1)
{
  v2 = *v1;
  *(*v1 + 441) = a1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return MEMORY[0x2822009F8](sub_2458BE374, v4, v3);
}

uint64_t sub_2458BE374()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);

  sub_245771C44(v2, v1);

  v5 = *(v0 + 441);
  sub_2458BE5A8();

  v3 = *(v0 + 8);

  return v3(v5);
}

uint64_t sub_2458BE48C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  v3 = *(v0 + 368);

  sub_245771C44(v3, v2);

  sub_2458BE5A8();

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_2458BE5A8()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2458CC378(0xD000000000000016, 0x800000024592D6A0, &v10);
    _os_log_impl(&dword_245767000, v4, v5, "%s - end", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2458BE740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[41] = a1;
  sub_24590C234();
  v5[44] = swift_task_alloc();
  sub_2459109B4();
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458BE800, 0, 0);
}

uint64_t sub_2458BE800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916CE0;
  *(v0 + 384) = 1030;
  sub_245911484();
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 336);
  v13 = *(v0 + 344);
  v3 = qword_27EE32B38;
  sub_24590C224();
  v4 = v3;
  v5 = sub_245910A54();
  v6 = MEMORY[0x277D837D0];
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = v5;
  *(inited + 80) = v7;
  *(v0 + 388) = 2;
  sub_245911484();
  sub_245910944();
  sub_24590C224();
  v8 = sub_245910A54();
  *(inited + 168) = v6;
  *(inited + 144) = v8;
  *(inited + 152) = v9;
  sub_2458B86D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29010);
  swift_arrayDestroy();
  v10 = sub_2459108E4();
  *(v0 + 368) = v10;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_2458BEB30;
  v11 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29018);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_24579F894;
  *(v0 + 280) = &block_descriptor_112_0;
  *(v0 + 288) = v11;
  [v2 evaluateAccessControl:v13 operation:3 options:v10 reply:v0 + 256];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2458BEB30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_2458BECE0;
  }

  else
  {
    v2 = sub_2458BEC40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458BEC40()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  *v2 = v1 != 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2458BECE0()
{
  v1 = *(v0 + 368);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2458BED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2457AA338(a3, v22 - v9);
  v11 = sub_245910D64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_245778F94(v10, &unk_27EE297B0);
  }

  else
  {
    sub_245910D54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_245910CD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_245910AA4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2458BEFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24590F354();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_24590EA74();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_24590EA84();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  sub_245910D34();
  v6[14] = sub_245910D24();
  v11 = sub_245910CD4();
  v6[15] = v11;
  v6[16] = v10;

  return MEMORY[0x2822009F8](sub_2458BF170, v11, v10);
}

uint64_t sub_2458BF170()
{
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_2458BF214;
  v3 = v0[3];
  v2 = v0[4];

  return sub_24579D628(v3, v2);
}

uint64_t sub_2458BF214()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_2458BF3D8;
  }

  else
  {
    v5 = sub_2458BF350;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458BF350()
{

  sub_2458BFA14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458BF3D8()
{
  v1 = v0[18];
  v16 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v17 = v0[12];
  v18 = v0[5];

  (*(v3 + 104))(v4, *MEMORY[0x277CFF920], v6);
  v8 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_2458C195C(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v9 = swift_allocError();
  v10 = *(v17 + 16);
  v10(v11, v16, v2);
  sub_24590C714();
  sub_24590C724();
  (*(v7 + 8))(v5, v18);

  v12 = swift_allocError();
  v10(v13, v16, v2);
  sub_2458C0FF4(&unk_28588BFD0, sub_2458C129C, &block_descriptor_31);

  (*(v17 + 8))(v16, v2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2458BF670(void *a1)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2459109B4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE32B38;
  sub_24590C224();
  v5 = v4;
  v6 = sub_245910A54();
  v8 = v7;
  sub_245910944();
  sub_24590C224();
  v9 = sub_245910A54();
  v11 = v10;
  sub_245910944();
  sub_24590C224();
  v12 = sub_245910A54();
  v14 = v13;
  type metadata accessor for IdentityProofingErrorViewConfiguration();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 64) = 1;
  *(v15 + 72) = sub_24590D534();
  *(v15 + 80) = v16;
  *(v15 + 88) = 0;
  *(v15 + 112) = 259;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v9;
  *(v15 + 56) = v11;
  *(v15 + 96) = v12;
  *(v15 + 104) = v14;
  *(v15 + 114) = 0;
  v17 = objc_allocWithZone(type metadata accessor for IdentityProofingViewController());

  v19 = sub_24588DB78(v18, v17);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = &v19[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v22 = *&v19[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v21 = sub_2458C12BC;
  v21[1] = v20;
  v23 = a1;
  sub_245771C34(v22);
  v24 = OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController;
  v25 = *&v23[OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController];
  if (v25)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      v28 = v25;
      [v27 pushViewController:v19 animated:1];
    }

    else
    {
      v29 = [v25 navigationController];
      if (v29)
      {
        v28 = v29;
        [v29 pushViewController:v19 animated:1];
      }

      else
      {
        v31 = *&v23[v24];
        if (!v31)
        {
          goto LABEL_9;
        }

        v28 = v31;
        [v28 presentViewController:v19 animated:1 completion:0];
      }
    }
  }

LABEL_9:
}

void sub_2458BFA3C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController];
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v7[4] = sub_2458C13B0;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2458935A8;
    v7[3] = &block_descriptor_41_1;
    v4 = _Block_copy(v7);
    v5 = v1;
    v6 = a1;

    [v5 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_2458BFB34()
{
  v1[2] = v0;
  sub_245910D34();
  v1[3] = sub_245910D24();
  v3 = sub_245910CD4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2458BFBCC, v3, v2);
}

uint64_t sub_2458BFBCC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2458BFC68;

  return sub_24579F990();
}

uint64_t sub_2458BFC68(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = v6[4];
    v8 = v6[5];
    v9 = sub_2458002E8;
  }

  else
  {
    v6[8] = a2;
    v6[9] = a1;
    v7 = v6[4];
    v8 = v6[5];
    v9 = sub_2458BFD9C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2458BFD9C()
{

  v1 = v0[1];
  v3 = v0[8];
  v2 = v0[9];

  return v1(v2, v3);
}

uint64_t sub_2458BFF78(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_245910D34();
  v2[5] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458C0014, v4, v3);
}

uint64_t sub_2458C0014()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_245910D24();
  v5 = sub_245910CD4();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x2822009F8](sub_2458C00C0, v5, v4);
}

uint64_t sub_2458C00C0()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2458C015C;

  return sub_24579F990();
}

uint64_t sub_2458C015C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_2458C034C;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_2458C0290;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2458C0290()
{

  sub_24590C1F4();
  v1 = sub_245910C34();

  v2 = *(v0 + 48);
  (v2)[2](v2, v1, *(v0 + 96), 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2458C034C()
{
  v1 = v0[11];
  v2 = v0[3];

  v3 = sub_24590BF94();
  v4 = v0[6];
  (v4)[2](v4, 0, 0, v3);

  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2458C03F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  if (a3 >> 60 != 15)
  {
    v10 = sub_245910D64();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_245910D34();
    sub_24578FB6C(a2, a3);
    v11 = v3;
    v12 = sub_245910D24();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    v13[5] = a2;
    v13[6] = a3;
    sub_2458B90EC(0, 0, v9, &unk_24591CD40, v13);
  }

  return result;
}

id CIDVUIInternalBiometricFlowManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CIDVUIInternalBiometricFlowManager.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_context;
  *&v1[v2] = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *&v1[OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController] = 0;
  v3 = OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_bioBindingController;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v4 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v4 + 16) = sub_24590C8B4();
  v5 = sub_2458BB4E8();
  type metadata accessor for BiometricBindingController();
  v6 = swift_allocObject();
  swift_allocObject();
  v6[2] = sub_24590C8B4();
  v6[3] = v4;
  v6[4] = v5;
  *&v1[v3] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CIDVUIInternalBiometricFlowManager();
  return objc_msgSendSuper2(&v8, sel_init);
}

id CIDVUIInternalBiometricFlowManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CIDVUIInternalBiometricFlowManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2458C07B4(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    sub_2458C0FF4(&unk_28588BFD0, sub_2458C129C, &block_descriptor_31);
  }

  else
  {
    sub_2458BFA14();
  }
}

uint64_t dispatch thunk of CIDVUIInternalBiometricFlowManager.evaluateBoundACL()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2458C0968;

  return v5();
}

uint64_t sub_2458C0968(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CIDVUIInternalBiometricFlowManager.deleteBoundACL()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2457A18F4;

  return v5();
}

uint64_t dispatch thunk of CIDVUIInternalBiometricFlowManager.fetchBiometricBindingDetails()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2458C0CA4;

  return v5();
}

uint64_t sub_2458C0CA4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CIDVUIInternalBiometricFlowManager.globalAuthACLTemplateUUIDs()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2458C0EC0;

  return v5();
}

uint64_t sub_2458C0EC0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_2458C0FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_2459107E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_245910814();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2457809BC();
  v12 = sub_245911034();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2458C195C(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2458C12E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_2458BEFC0(a1, v4, v5, v6, v7, v8);
}

void sub_2458C13B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController);
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController) = 0;
}

uint64_t sub_2458C13C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_2458BFF78(v2, v3);
}

uint64_t sub_2458C1474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_245908FE8(a1, v4, v5, v6);
}

uint64_t sub_2458C1540()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457A18F4;

  return sub_2458BCA48(v2, v3);
}

uint64_t sub_2458C15EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457AA49C;

  return sub_245908F00(v2, v3, v4);
}

uint64_t sub_2458C16AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_2458BC120(v2, v3);
}

uint64_t objectdestroy_43Tm()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2458C1798()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_2458BBA10(v2, v3);
}

uint64_t objectdestroy_47Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2458C189C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457AA49C;

  return sub_2458BE740(a1, v4, v5, v7, v6);
}

uint64_t sub_2458C195C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2458C19BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_245910D64();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_245910D34();
  v15 = v5;

  sub_245771BB4(a4);
  v16 = sub_245910D24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a1;
  v17[8] = a4;
  v17[9] = a5;
  sub_2458B90EC(0, 0, v13, &unk_24591CE00, v17);
}