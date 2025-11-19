id BucketsViewController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void BucketsViewController.init(coder:)()
{
  *(OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionViewLayout = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource = 0;
  v6 = OBJC_IVAR____TtC6MailUI21BucketsViewController_cellRegistration;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35508);
  (*(*(v0 - 8) + 56))(v6, 1);
  v1 = OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSize;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSize = 0;
  *(v1 + 8) = 0;
  v2 = *(MEMORY[0x277D768C8] + 8);
  v3 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
  v5 = OBJC_IVAR____TtC6MailUI21BucketsViewController_previousLayoutMargins;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_previousLayoutMargins = *MEMORY[0x277D768C8];
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v4;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_contentSizeToken = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_preferredFontToken = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneForegroundToken = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneBackgroundToken = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSelectedItem = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_dropSessionHelper = 0;
  *OBJC_IVAR____TtC6MailUI21BucketsViewController_dropToChangeCategoriesInternalSettingsObservationToken = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

id BucketsViewController.__deallocating_deinit()
{
  v2.super_class = swift_getObjectType();
  v4 = v0;
  sub_214B3D0E4();
  v3 = v2;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_214B3D0E4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_contentSizeToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  sub_214B40110(v3);
  swift_unknownObjectRelease();
  v4 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferredFontToken);
  swift_beginAccess();
  v5 = *v4;
  swift_unknownObjectRetain();
  swift_endAccess();
  sub_214B40110(v5);
  swift_unknownObjectRelease();
  v6 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneForegroundToken);
  swift_beginAccess();
  v7 = *v6;
  swift_unknownObjectRetain();
  swift_endAccess();
  sub_214B40110(v7);
  swift_unknownObjectRelease();
  v8 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneBackgroundToken);
  swift_beginAccess();
  v9 = *v8;
  swift_unknownObjectRetain();
  swift_endAccess();
  sub_214B40110(v9);
  swift_unknownObjectRelease();
  v10 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_contentSizeToken);
  swift_beginAccess();
  *v10 = 0;
  swift_unknownObjectRelease();
  swift_endAccess();
  v11 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferredFontToken);
  swift_beginAccess();
  *v11 = 0;
  swift_unknownObjectRelease();
  swift_endAccess();
  v12 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneForegroundToken);
  swift_beginAccess();
  *v12 = 0;
  swift_unknownObjectRelease();
  swift_endAccess();
  v13 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneBackgroundToken);
  swift_beginAccess();
  *v13 = 0;
  swift_unknownObjectRelease();
  return swift_endAccess();
}

double sub_214B3D538(void *a1)
{
  sub_214B3D668();
  MEMORY[0x277D82BE0](a1);
  v8 = [a1 view];
  *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0];
  if (v8)
  {
    v6 = v8;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 147;
    LODWORD(v5) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v6 setNeedsLayout];
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

double sub_214B3D668()
{
  v21 = [objc_opt_self() mf_isPadIdiom];
  (MEMORY[0x277D82BE0])();
  if (v21)
  {
    (MEMORY[0x277D82BE0])();
    v18 = [v20 traitCollection];
    [v18 horizontalSizeClass];
    MEMORY[0x277D82BD8](v18);
    type metadata accessor for UIUserInterfaceSizeClass();
    sub_214B43FE0();
    v19 = sub_214CD03F4();
  }

  else
  {
    v19 = 0;
  }

  (MEMORY[0x277D82BD8])();
  (MEMORY[0x277D82BE0])();
  v17 = [v20 view];
  *&v0 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v17)
  {
    v16 = v17;
  }

  else
  {
    LOBYTE(v4) = 2;
    v6 = 498;
    LODWORD(v8) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v16 directionalLayoutMargins];
  v14 = v1;
  v15 = v2;
  MEMORY[0x277D82BD8](v16);
  if (v19)
  {
    v13 = 16.0;
  }

  else
  {
    v13 = 12.0;
  }

  if (v19)
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 12.0;
  }

  (MEMORY[0x277D82BE0])();
  v11 = [v20 view];
  (MEMORY[0x277D82BD8])();
  if (v11)
  {
    v10 = v11;
  }

  else
  {
    LOBYTE(v5) = 2;
    v7 = 501;
    LODWORD(v9) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v10 setDirectionalLayoutMargins_];
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

void sub_214B3DA50()
{
  ObjectType = swift_getObjectType();
  v85 = 0;
  v131 = v0;
  v84 = [objc_opt_self() defaultCenter];
  v130 = v84;
  v86 = *MEMORY[0x277D76810];
  v1 = v86;
  v87 = v86;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v81 = 0;
  v74 = 0;
  v73 = [objc_opt_self() mainQueue];
  v71 = swift_allocObject();
  v70 = v71 + 16;
  v2 = v82;
  swift_unknownObjectWeakInit();

  v124 = sub_214B44060;
  v125 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v120 = 1107296256;
  v121 = 0;
  v122 = sub_214B3F008;
  v123 = &block_descriptor_2;
  v72 = _Block_copy(&aBlock);

  v76 = [v84 addObserverForName:v87 object:v74 queue:v73 usingBlock:v72];
  _Block_release(v72);

  swift_unknownObjectRelease();
  v75 = &v82[OBJC_IVAR____TtC6MailUI21BucketsViewController_contentSizeToken];
  v77 = &v118;
  v78 = 0;
  swift_beginAccess();
  *v75 = v76;
  swift_unknownObjectRelease();
  swift_endAccess();
  v79 = *MEMORY[0x277D76E80];
  v3 = v79;
  v80 = v79;
  v116[0] = v78;
  v116[1] = v78;
  v116[2] = v78;
  v117 = v78;
  if (v78)
  {
    v64 = v117;
    v67 = v116;
    __swift_project_boxed_opaque_existential_0(v116, v117);
    v62 = *(v64 - 8);
    v63 = v62;
    v66 = &v16;
    v4 = MEMORY[0x28223BE20](&v16);
    v65 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v4);
    v68 = sub_214CD03D4();
    (*(v63 + 8))(v65, v64);
    __swift_destroy_boxed_opaque_existential_0(v67);
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v55 = v69;
  v54 = [objc_opt_self() mainQueue];
  v51 = 7;
  v52 = swift_allocObject();
  v50 = v52 + 16;
  v6 = v82;
  swift_unknownObjectUnownedInit();

  v7 = swift_allocObject();
  v8 = ObjectType;
  *(v7 + 16) = v52;
  *(v7 + 24) = v8;
  v114 = sub_214B44068;
  v115 = v7;
  v109 = MEMORY[0x277D85DD0];
  v110 = 1107296256;
  v111 = 0;
  v112 = sub_214B3F008;
  v113 = &block_descriptor_20;
  v53 = _Block_copy(&v109);

  v57 = [v84 addObserverForName:v80 object:v55 queue:v54 usingBlock:v53];
  _Block_release(v53);

  swift_unknownObjectRelease();
  v56 = &v82[OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneForegroundToken];
  v58 = &v108;
  v59 = 0;
  swift_beginAccess();
  *v56 = v57;
  swift_unknownObjectRelease();
  swift_endAccess();
  v60 = *MEMORY[0x277D76E58];
  v9 = v60;
  v61 = v60;
  v106[0] = v59;
  v106[1] = v59;
  v106[2] = v59;
  v107 = v59;
  if (v59)
  {
    v44 = v107;
    v47 = v106;
    __swift_project_boxed_opaque_existential_0(v106, v107);
    v42 = *(v44 - 8);
    v43 = v42;
    v46 = &v16;
    v10 = MEMORY[0x28223BE20](&v16);
    v45 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v10);
    v48 = sub_214CD03D4();
    (*(v43 + 8))(v45, v44);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v35 = v49;
  v34 = [objc_opt_self() mainQueue];
  v32 = swift_allocObject();
  v31 = v32 + 16;
  v12 = v82;
  swift_unknownObjectUnownedInit();

  v104 = sub_214B44090;
  v105 = v32;
  v99 = MEMORY[0x277D85DD0];
  v100 = 1107296256;
  v101 = 0;
  v102 = sub_214B3F008;
  v103 = &block_descriptor_24;
  v33 = _Block_copy(&v99);

  v37 = [v84 addObserverForName:v61 object:v35 queue:v34 usingBlock:v33];
  _Block_release(v33);

  swift_unknownObjectRelease();
  v36 = &v82[OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneBackgroundToken];
  v38 = &v98;
  v39 = 0;
  swift_beginAccess();
  *v36 = v37;
  swift_unknownObjectRelease();
  swift_endAccess();
  v40 = *MEMORY[0x277D76810];
  v13 = v40;
  v41 = v40;
  v96[0] = v39;
  v96[1] = v39;
  v96[2] = v39;
  v97 = v39;
  if (v39)
  {
    v25 = v97;
    v28 = v96;
    __swift_project_boxed_opaque_existential_0(v96, v97);
    v23 = *(v25 - 8);
    v24 = v23;
    v27 = &v16;
    v14 = MEMORY[0x28223BE20](&v16);
    v26 = &v16 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v14);
    v29 = sub_214CD03D4();
    (*(v24 + 8))(v26, v25);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v18 = v30;
  v17 = [objc_opt_self() mainQueue];
  v94 = sub_214B400D4;
  v19 = 0;
  v95 = 0;
  v89 = MEMORY[0x277D85DD0];
  v90 = 1107296256;
  v91 = 0;
  v92 = sub_214B3F008;
  v93 = &block_descriptor_27;
  v16 = _Block_copy(&v89);
  v21 = [v84 addObserverForName:v41 object:v18 queue:v17 usingBlock:?];
  _Block_release(v16);

  swift_unknownObjectRelease();
  v20 = &v82[OBJC_IVAR____TtC6MailUI21BucketsViewController_preferredFontToken];
  v22 = &v88;
  swift_beginAccess();
  *v20 = v21;
  swift_unknownObjectRelease();
  swift_endAccess();
}

Swift::Void __swiftcall BucketsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  v6 = v1;
  *&v2 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1, v2);
  (MEMORY[0x277D82BD8])();
  sub_214B3D0E4();
}

void BucketsViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v20 = v3;
  MEMORY[0x277D82BE0](v3);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v17 = a2;
  v18 = a3;
  objc_msgSendSuper2(&v19, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  MEMORY[0x277D82BD8](v3);
  swift_getObjectType();
  MEMORY[0x277D82BE0](v3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v15 = sub_214B440D0;
  v16 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_214B3E9A0;
  v14 = &block_descriptor_33;
  v9 = _Block_copy(&aBlock);

  [a1 animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
}

uint64_t sub_214B3E890(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  if (!v4)
  {
    sub_214CD01F4();
    __break(1u);
  }

  BucketsDataSource.reconfigureVisibleBuckets()();
}

uint64_t sub_214B3E9A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  swift_unknownObjectRetain();
  v3(a2);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall BucketsViewController.didMove(toParent:)(UIViewController_optional *toParent)
{
  ObjectType = swift_getObjectType();
  v23 = toParent;
  v22 = v1;
  *&v2 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  [(UIViewController_optional *)&v21 didMoveToParentViewController:toParent, v2];
  (MEMORY[0x277D82BD8])();
  v20 = [v19 splitViewController];
  *&v3 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v20)
  {
    v15 = [v20 viewControllerForColumn_];
    MEMORY[0x277D82BD8](v20);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      MEMORY[0x277D82BD8](v16);
      v13 = 0;
    }

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v4 = [v12 interactiveContentPopGestureRecognizer];
    v11 = v4;
    if (v4)
    {
      v9 = &v19[OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer];
      swift_beginAccess();
      v10 = *v9;
      MEMORY[0x277D82BE0](*v9);
      swift_endAccess();
      if (v10)
      {
        v8 = v10;
      }

      else
      {
        LOBYTE(v5) = 2;
        v6 = 182;
        LODWORD(v7) = 0;
        sub_214CD01F4();
        __break(1u);
      }

      [v11 requireGestureRecognizerToFail_];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v11);
    }

    MEMORY[0x277D82BD8](v12);
  }
}

uint64_t sub_214B3EE58(uint64_t a1, uint64_t a2)
{
  v6[5] = a1;
  v6[4] = a2 + 16;
  type metadata accessor for BucketCellContentView();
  static BucketCellContentView.resetCache()();
  swift_beginAccess();
  v6[0] = swift_unknownObjectWeakLoadStrong();
  if (v6[0])
  {
    v4 = v6[0];
    MEMORY[0x277D82BE0](v6[0]);
    sub_214A671E8(v6);
    swift_endAccess();
    v3 = (v4 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
    swift_beginAccess();
    v5 = *v3;

    swift_endAccess();
    MEMORY[0x277D82BD8](v4);
    if (!v5)
    {
      sub_214CD01F4();
      __break(1u);
    }

    BucketsDataSource.reconfigureVisibleBuckets()();
  }

  else
  {
    sub_214A671E8(v6);
    return swift_endAccess();
  }
}

uint64_t sub_214B3F008(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v12 = a2;
  v11 = sub_214CCCE94();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v10 = &v4 - v6;
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);

  MEMORY[0x277D82BE0](v12);
  sub_214CCCE74();
  v7(v10);
  (*(v8 + 8))(v10, v11);
  MEMORY[0x277D82BD8](v12);
}

void sub_214B3F128(uint64_t a1, uint64_t a2)
{
  v114 = a1;
  v126 = a2;
  v130 = 0;
  v125 = sub_214B4C4CC;
  v97 = sub_214B4C110;
  v98 = sub_214B4C140;
  v99 = sub_214A662DC;
  v100 = sub_214A662DC;
  v101 = sub_214B4C1B8;
  v102 = "Fatal error";
  v103 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v104 = "MailUI/BucketsViewController.swift";
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v150 = 0;
  v149 = 0;
  v147 = 0.0;
  v142 = 0;
  v105 = 0;
  v111 = 0;
  v106 = sub_214CCDA74();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v106);
  v110 = &v30 - v109;
  v112 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111);
  v113 = &v30 - v112;
  v115 = sub_214CCD254();
  v116 = *(v115 - 8);
  v117 = v115 - 8;
  v118 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v119 = &v30 - v118;
  v120 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v121 = &v30 - v120;
  v155 = &v30 - v120;
  v154 = v4;
  v128 = v5 + 16;
  v153 = v5 + 16;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v122 = (Strong + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferences);
  v123 = &v152;
  v129 = 32;
  swift_beginAccess();
  v127 = *v122;

  swift_endAccess();
  MEMORY[0x277D82BD8](Strong);

  BucketsViewControllerPreferences.updatePreferences(_:)(v125, v126);
  sub_214A6B584(v125);

  v131 = swift_unknownObjectUnownedLoadStrong();
  v132 = (v131 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  v133 = &v151;
  swift_beginAccess();
  v134 = *v132;

  swift_endAccess();
  if (v134)
  {
    v96 = v134;
    v94 = v134;
    v150 = v134;
    MEMORY[0x277D82BD8](v131);
    sub_214A6A428();
    sub_214A706A8();
    v95 = v6;
    if (v7)
    {
    }

    else
    {
      v93 = v95;
      v88 = v95;
      v149 = v95;
      v91 = swift_unknownObjectUnownedLoadStrong();
      v89 = (v91 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
      v90 = &v148;
      swift_beginAccess();
      v92 = *v89;
      MEMORY[0x277D82BE0](v92);
      swift_endAccess();
      MEMORY[0x277D82BD8](v91);
      if (v92)
      {
        v87 = v92;
      }

      else
      {
        sub_214CD01F4();
        __break(1u);
      }

      v86 = v87;
      MUILastSeenBucketHelper.lastSelectedDate(for:)();
      v8 = MEMORY[0x277D82BD8](v86);
      if ((*(v116 + 48))(v113, 1, v115, v8) == 1)
      {
        sub_214A871C0(v113);
      }

      else
      {
        (*(v116 + 32))(v121, v113, v115);
        sub_214CCD234();
        sub_214CCD1B4();
        v85 = v9;
        v83 = *(v116 + 8);
        v84 = v116 + 8;
        v83(v119, v115);
        v147 = v85;
        v10.n128_u64[0] = 0x407E000000000000;
        if (v85 > 480.0)
        {
          v11 = v110;
          v12 = sub_214B38080();
          (*(v107 + 16))(v11, v12, v106);
          v72 = 7;
          v73 = swift_allocObject();
          *(v73 + 16) = v85;
          v81 = sub_214CCDA54();
          v82 = sub_214CCFBB4();
          v70 = 17;
          v75 = swift_allocObject();
          *(v75 + 16) = 0;
          v76 = swift_allocObject();
          *(v76 + 16) = 8;
          v71 = 32;
          v13 = swift_allocObject();
          v14 = v73;
          v74 = v13;
          *(v13 + 16) = v97;
          *(v13 + 24) = v14;
          v15 = swift_allocObject();
          v16 = v74;
          v78 = v15;
          *(v15 + 16) = v98;
          *(v15 + 24) = v16;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
          v77 = sub_214CD03C4();
          v79 = v17;

          v18 = v75;
          v19 = v79;
          *v79 = v99;
          v19[1] = v18;

          v20 = v76;
          v21 = v79;
          v79[2] = v100;
          v21[3] = v20;

          v22 = v78;
          v23 = v79;
          v79[4] = v101;
          v23[5] = v22;
          sub_214A63280();

          if (os_log_type_enabled(v81, v82))
          {
            v24 = v105;
            v63 = sub_214CCFF24();
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
            v62 = 0;
            v64 = sub_214A632C4(0);
            v65 = sub_214A632C4(v62);
            v66 = &v139;
            v139 = v63;
            v67 = &v138;
            v138 = v64;
            v68 = &v137;
            v137 = v65;
            sub_214A6627C(0, &v139);
            sub_214A6627C(1, v66);
            v135 = v99;
            v136 = v75;
            sub_214A66290(&v135, v66, v67, v68);
            v69 = v24;
            if (v24)
            {

              __break(1u);
            }

            else
            {
              v135 = v100;
              v136 = v76;
              sub_214A66290(&v135, &v139, &v138, &v137);
              v60 = 0;
              v135 = v101;
              v136 = v78;
              sub_214A66290(&v135, &v139, &v138, &v137);
              _os_log_impl(&dword_214A5E000, v81, v82, "Returning to foreground after %f seconds, updating New/Older section divisions", v63, 0xCu);
              v59 = 0;
              sub_214A669DC(v64);
              sub_214A669DC(v65);
              sub_214CCFF04();
            }
          }

          else
          {
          }

          v25 = MEMORY[0x277D82BD8](v81);
          (*(v107 + 8))(v110, v106, v25);
          v57 = swift_unknownObjectUnownedLoadStrong();
          v55 = (v57 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
          v56 = &v146;
          swift_beginAccess();
          v58 = *v55;
          MEMORY[0x277D82BE0](v58);
          swift_endAccess();
          MEMORY[0x277D82BD8](v57);
          if (v58)
          {
            v54 = v58;
          }

          else
          {
            sub_214CD01F4();
            __break(1u);
          }

          v50 = v54;
          MUILastSeenBucketHelper.updateSessionLastSeenDates(for:)(v88);
          MEMORY[0x277D82BD8](v50);
          v53 = &v145;
          v145 = v88;
          v51 = &v144;
          v144 = 1;
          v52 = type metadata accessor for MUIBucket();
          sub_214A694CC();
          if (sub_214CD03F4())
          {
            v49 = 0;
          }

          else
          {
            v44 = sub_214B10198();
            v47 = swift_unknownObjectUnownedLoadStrong();
            v45 = (v47 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
            v46 = &v143;
            swift_beginAccess();
            v48 = *v45;
            MEMORY[0x277D82BE0](v48);
            swift_endAccess();
            MEMORY[0x277D82BD8](v47);
            if (v48)
            {
              v43 = v48;
            }

            else
            {
              sub_214CD01F4();
              __break(1u);
            }

            v41 = v43;
            v26 = sub_214A6BC90();
            v42 = MUILastSeenBucketHelper.unseenPredicates(for:usingCurrentLastSeenDates:)(v88, v26 & 1);
            MEMORY[0x277D82BD8](v41);
            v49 = sub_214B101FC();
          }

          v38 = v49;
          v142 = v49;
          v39 = swift_unknownObjectUnownedLoadStrong();
          v40 = v39 + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
          swift_beginAccess();
          v27 = swift_unknownObjectWeakLoadStrong();
          v28 = *(v40 + 8);
          v140 = v27;
          v141 = v28;
          if (v27)
          {
            v34 = &v140;
            v35 = v140;
            v33 = v141;
            swift_unknownObjectRetain();
            sub_214A759F4();
            swift_endAccess();
            MEMORY[0x277D82BD8](v39);
            ObjectType = swift_getObjectType();
            v37 = swift_unknownObjectUnownedLoadStrong();
            v29 = MEMORY[0x277D82BE0](v38);
            if (v38)
            {
              v32 = v38;
              v31 = v38;
            }

            else
            {
              v31 = 0;
            }

            v30 = v31;
            (*(v33 + 8))(v37, &protocol witness table for BucketsViewController, v88, v29);
            MEMORY[0x277D82BD8](v30);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            sub_214A759F4();
            swift_endAccess();
            MEMORY[0x277D82BD8](v39);
          }

          v10 = MEMORY[0x277D82BD8](v38);
        }

        (v83)(v121, v115, v10);
      }
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v131);
  }
}

uint64_t sub_214B3FF50()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = (Strong + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  swift_beginAccess();
  v3 = *v1;

  swift_endAccess();
  MEMORY[0x277D82BD8](Strong);
  if (!v3)
  {
    sub_214CD01F4();
    __break(1u);
  }

  BucketsDataSource.reconfigureVisibleBuckets()();
}

double sub_214B40078()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_214B39ACC();
  *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  return result;
}

uint64_t sub_214B40110(uint64_t a1)
{
  swift_unknownObjectRetain();
  result = a1;
  if (a1)
  {
    v2 = [objc_opt_self() defaultCenter];
    swift_unknownObjectRetain();
    swift_getObjectType();
    [v2 removeObserver_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall BucketsViewController.refreshSession()()
{
  v75 = 0;
  v93 = 0;
  v90 = 0;
  v89 = 0;
  v85 = 0;
  v64 = 0;
  v72 = sub_214CCDA74();
  v66 = v72;
  v67 = *(v72 - 8);
  v71 = v67;
  v68 = v67;
  v69 = *(v67 + 64);
  MEMORY[0x28223BE20](v72 - 8);
  v0 = &v14 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  v93 = v1;
  v2 = sub_214B38080();
  (*(v71 + 16))(v0, v2, v72);
  v77 = sub_214CCDA54();
  v73 = v77;
  v76 = sub_214CCFBB4();
  v74 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v78 = sub_214CD03C4();
  if (os_log_type_enabled(v77, v76))
  {
    v3 = v64;
    v55 = sub_214CCFF24();
    v51 = v55;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v53 = 0;
    v56 = sub_214A632C4(0);
    v54 = v56;
    v57 = sub_214A632C4(v53);
    v82 = v55;
    v81 = v56;
    v80 = v57;
    v58 = 0;
    v59 = &v82;
    sub_214A6627C(0, &v82);
    sub_214A6627C(v58, v59);
    v79 = v78;
    v60 = &v14;
    MEMORY[0x28223BE20](&v14);
    v61 = &v14 - 6;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v63 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v73, v74, "Updating New/Older section divisions after pull-to-refresh.", v51, 2u);
      v49 = 0;
      sub_214A669DC(v54);
      sub_214A669DC(v57);
      sub_214CCFF04();

      v50 = v63;
    }
  }

  else
  {

    v50 = v64;
  }

  (*(v68 + 8))(v70, v66);
  v45 = &v65[OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper];
  v47 = &v92;
  swift_beginAccess();
  v48 = *v45;
  v46 = v48;
  v4 = v48;
  swift_endAccess();
  if (v48)
  {
    v44 = v46;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v39 = v44;
  MUILastSeenBucketHelper.updateSessionLastSeenDates()();

  v40 = &v65[OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem];
  v42 = &v91;
  swift_beginAccess();
  v43 = *v40;
  v41 = v43;

  swift_endAccess();
  if (!v43)
  {
    goto LABEL_28;
  }

  v38 = v41;
  v36 = v41;
  v90 = v41;
  sub_214A6A428();
  sub_214A706A8();
  v37 = v5;
  if (v6)
  {

LABEL_28:
    sub_214B11080();
    sub_214CD0204();
    __break(1u);
    return;
  }

  v35 = v37;
  v33 = v37;
  v89 = v37;
  v88 = v37;
  v87 = 1;
  v34 = type metadata accessor for MUIBucket();
  sub_214A694CC();
  v7 = sub_214CD03F4();
  if (v7)
  {
    v32 = 0;
  }

  else
  {
    v26 = 0;
    v27 = sub_214B10198();
    v28 = &v65[OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper];
    v30 = &v86;
    swift_beginAccess();
    v31 = *v28;
    v29 = v31;
    v8 = v31;
    swift_endAccess();
    if (v31)
    {
      v25 = v29;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v23 = v25;
    v9 = sub_214A6BC90();
    v24 = MUILastSeenBucketHelper.unseenPredicates(for:usingCurrentLastSeenDates:)(v33, v9 & 1);

    v32 = sub_214B101FC();
  }

  v21 = v32;
  v85 = v32;
  v22 = &v65[OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *(v22 + 1);
  v83 = Strong;
  v84 = v11;
  if (Strong)
  {
    v19 = v83;
    v17 = v83;
    v18 = v84;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v12 = v65;
    v13 = v21;
    if (v21)
    {
      v16 = v21;
      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

    v14 = v15;
    (*(v18 + 8))(v65, &protocol witness table for BucketsViewController, v33);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
  }
}

uint64_t sub_214B40C1C(uint64_t a1)
{
  v116 = a1;
  v93 = "Fatal error";
  v94 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v95 = "MailUI/BucketsViewController.swift";
  v115 = 0;
  v96 = sub_214B4BF30;
  v97 = sub_214A7E854;
  v98 = sub_214A662DC;
  v99 = sub_214A662DC;
  v100 = sub_214A7E40C;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v135 = 0;
  v101 = 0;
  v123 = 0;
  v122[4] = 0;
  v122[5] = 0;
  v102 = 0;
  v103 = sub_214CCDA74();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v107 = v21 - v106;
  v108 = sub_214CCD374();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108);
  v112 = v21 - v111;
  v113 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21 - v111);
  v114 = v21 - v113;
  v139 = v21 - v113;
  v117 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v116);
  v118 = v21 - v117;
  v138 = v3;
  v137 = v1;
  v119 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  v120 = &v136;
  swift_beginAccess();
  v121 = *v119;
  MEMORY[0x277D82BE0](v121);
  swift_endAccess();
  if (v121)
  {
    v91 = v121;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v89 = v91;
  v90 = [v91 indexPathsForSelectedItems];
  if (v90)
  {
    v88 = v90;
    v85 = v90;
    v86 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v85);
    v87 = v86;
  }

  else
  {
    v87 = 0;
  }

  v84 = v87;
  v135 = v87;
  MEMORY[0x277D82BD8](v89);

  if (v84)
  {
    v83 = v84;
    v79 = v84;
    v123 = v84;

    v122[3] = v79;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA354E0);
    sub_214A6D6C8();
    sub_214CCFAC4();
    for (i = v101; ; i = v78)
    {
      v78 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA354F0);
      sub_214CD01B4();
      if ((*(v109 + 48))(v118, 1, v108) == 1)
      {
        break;
      }

      (*(v109 + 32))(v114, v118, v108);
      v75 = (v92 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
      v76 = v122;
      swift_beginAccess();
      v77 = *v75;
      MEMORY[0x277D82BE0](v77);
      swift_endAccess();
      if (v77)
      {
        v74 = v77;
      }

      else
      {
        sub_214CD01F4();
        __break(1u);
      }

      v71 = v74;
      (*(v109 + 16))(v112, v114, v108);
      v70 = sub_214CCD304();
      v73 = *(v109 + 8);
      v72 = v109 + 8;
      v73(v112, v108);
      [v71 deselectItemAtIndexPath:v70 animated:0];
      MEMORY[0x277D82BD8](v70);
      v4 = MEMORY[0x277D82BD8](v71);
      (v73)(v114, v108, v4);
    }

    sub_214A62278();

    v82 = v78;
  }

  else
  {
    v82 = v101;
  }

  v59 = v82;
  v60 = (v92 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  v61 = &v134;
  v65 = 32;
  v66 = 0;
  swift_beginAccess();
  v63 = *v60;

  swift_endAccess();
  v62 = (v92 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSelectedItem);
  v64 = &v133;
  swift_beginAccess();
  *v62 = v63;

  swift_endAccess();
  v67 = (v92 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  v68 = &v132;
  swift_beginAccess();
  v69 = *v67;
  MEMORY[0x277D82BE0](v69);
  swift_endAccess();
  if (v69)
  {
    v58 = v69;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v54 = v58;
  (*(v109 + 16))(v112, v116, v108);
  v53 = sub_214CCD304();
  (*(v109 + 8))(v112, v108);
  v51 = 0;
  type metadata accessor for ScrollPosition();
  v52 = sub_214CD03C4();
  sub_214A70374();
  sub_214CD0084();
  [v54 selectItemAtIndexPath:v53 animated:0 scrollPosition:v131];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  v55 = (v92 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v56 = &v130;
  swift_beginAccess();
  v57 = *v55;

  swift_endAccess();
  if (v57)
  {
    v50 = v57;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v35 = v50;
  v36 = BucketsDataSource.item(at:)();

  sub_214A6A140(v36);
  v5 = v107;
  v6 = sub_214B38080();
  (*(v104 + 16))(v5, v6, v103);
  MEMORY[0x277D82BE0](v92);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v92;
  v48 = sub_214CCDA54();
  v49 = sub_214CCFBB4();
  v37 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v38 = 32;
  v7 = swift_allocObject();
  v8 = v40;
  v41 = v7;
  *(v7 + 16) = v96;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v41;
  v45 = v9;
  *(v9 + 16) = v97;
  *(v9 + 24) = v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v44 = sub_214CD03C4();
  v46 = v11;

  v12 = v42;
  v13 = v46;
  *v46 = v98;
  v13[1] = v12;

  v14 = v43;
  v15 = v46;
  v46[2] = v99;
  v15[3] = v14;

  v16 = v45;
  v17 = v46;
  v46[4] = v100;
  v17[5] = v16;
  sub_214A63280();

  if (os_log_type_enabled(v48, v49))
  {
    v18 = v59;
    v28 = sub_214CCFF24();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v29 = sub_214A632C4(0);
    v30 = sub_214A632C4(1);
    v31 = &v128;
    v128 = v28;
    v32 = &v127;
    v127 = v29;
    v33 = &v126;
    v126 = v30;
    sub_214A6627C(2, &v128);
    sub_214A6627C(1, v31);
    v124 = v98;
    v125 = v42;
    sub_214A66290(&v124, v31, v32, v33);
    v34 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v124 = v99;
      v125 = v43;
      sub_214A66290(&v124, &v128, &v127, &v126);
      v26 = 0;
      v124 = v100;
      v125 = v45;
      sub_214A66290(&v124, &v128, &v127, &v126);
      _os_log_impl(&dword_214A5E000, v48, v49, "Updating selectedItem: %s", v28, 0xCu);
      sub_214A669DC(v29);
      sub_214A669DC(v30);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v19 = MEMORY[0x277D82BD8](v48);
  (*(v104 + 8))(v107, v103, v19);
  v23 = (v92 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v24 = &v129;
  swift_beginAccess();
  v25 = *v23;

  swift_endAccess();
  if (v25)
  {
    v22 = v25;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v21[1] = v22;
  BucketsDataSource.reconfigureVisibleBuckets()();

  sub_214B41EBC();
}

uint64_t sub_214B41AC4(uint64_t a1)
{
  v12 = a1;
  v7 = "Fatal error";
  v8 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v9 = "MailUI/BucketsViewController.swift";
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v11 = v5 - v10;
  v13 = sub_214CCD374();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v17 = v5 - v16;
  v24 = v5 - v16;
  v23 = v3;
  v22 = v1;
  v18 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v19 = &v21;
  swift_beginAccess();
  v20 = *v18;

  swift_endAccess();
  if (v20)
  {
    v6 = v20;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v5[1] = v6;
  BucketsDataSource.indexPath(for:)();

  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    return sub_214A6A480(v11);
  }

  (*(v14 + 32))(v17, v11, v13);
  sub_214B40C1C(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_214B41D7C(uint64_t a1)
{
  v7 = (a1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  if (*v7)
  {

    swift_endAccess();
    v3 = sub_214A7658C();
    v4 = v1;

    v5 = v3;
    v6 = v4;
  }

  else
  {
    swift_endAccess();
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return sub_214CCF614();
  }
}

uint64_t sub_214B41EBC()
{
  v160 = "Fatal error";
  v161 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v162 = "MailUI/BucketsViewController.swift";
  v229 = 0;
  v228 = 0;
  v226 = 0;
  v213 = 0u;
  *v214 = 0u;
  v211 = 0;
  v205 = 0u;
  v206 = 0u;
  v200 = 0.0;
  v199 = 0.0;
  v194 = 0;
  v190 = 0.0;
  v182 = 0.0;
  v178 = 0.0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v163 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v164 = &v50 - v163;
  v165 = sub_214CCD374();
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v165);
  v169 = &v50 - v168;
  v170 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v50 - v168);
  v171 = &v50 - v170;
  v229 = &v50 - v170;
  v228 = v0;
  v172 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  v173 = &v227;
  swift_beginAccess();
  v174 = *v172;

  result = swift_endAccess();
  if (v174)
  {
    v158 = v174;
    v154 = v174;
    v226 = v174;
    v155 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource];
    v156 = &v225;
    swift_beginAccess();
    v157 = *v155;

    swift_endAccess();
    if (v157)
    {
      v153 = v157;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v152 = v153;
    BucketsDataSource.indexPath(for:)();

    if ((*(v166 + 48))(v164, 1, v165) == 1)
    {
      sub_214A6A480(v164);
    }

    else
    {
      (*(v166 + 32))(v171, v164, v165);
      v149 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
      v150 = &v224;
      swift_beginAccess();
      v151 = *v149;
      MEMORY[0x277D82BE0](v151);
      swift_endAccess();
      if (v151)
      {
        v148 = v151;
      }

      else
      {
        sub_214CD01F4();
        __break(1u);
      }

      v146 = v148;
      v147 = [v148 isScrollEnabled];
      MEMORY[0x277D82BD8](v146);
      if (v147)
      {
        v143 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
        v144 = &v223;
        swift_beginAccess();
        v145 = *v143;
        MEMORY[0x277D82BE0](v145);
        swift_endAccess();
        if (v145)
        {
          v142 = v145;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v137 = v142;
        [v142 contentOffset];
        v221 = v4;
        v222 = v5;
        v138 = v4;
        MEMORY[0x277D82BD8](v137);
        v139 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
        v140 = &v220;
        swift_beginAccess();
        v141 = *v139;
        MEMORY[0x277D82BE0](v141);
        swift_endAccess();
        if (v141)
        {
          v136 = v141;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v129 = v136;
        [v136 bounds];
        *&v219[11] = v6;
        *&v219[12] = v7;
        *&v219[13] = v8;
        *&v219[14] = v9;
        v130 = v6;
        v131 = v7;
        v132 = v8;
        v133 = v9;
        MEMORY[0x277D82BD8](v129);
        v134 = sub_214B2FA3C(v130, v131, v132, v133);
        MEMORY[0x277D82BE0](v159);
        v135 = [v159 view];
        *&v10 = MEMORY[0x277D82BD8](v159).n128_u64[0];
        if (v135)
        {
          v128 = v135;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v124 = v128;
        [v128 directionalLayoutMargins];
        v219[7] = v11;
        *&v219[8] = v12;
        v219[9] = v13;
        v219[10] = v14;
        v125 = v12;
        MEMORY[0x277D82BD8](v124);
        v126 = v134 - v125;
        MEMORY[0x277D82BE0](v159);
        v127 = [v159 view];
        *&v15 = MEMORY[0x277D82BD8](v159).n128_u64[0];
        if (v127)
        {
          v123 = v127;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v117 = v123;
        [v123 directionalLayoutMargins];
        v219[3] = v16;
        v219[4] = v17;
        v219[5] = v18;
        *&v219[6] = v19;
        v118 = v19;
        MEMORY[0x277D82BD8](v117);
        v119 = v126 - v118;
        v120 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
        v121 = v219;
        swift_beginAccess();
        v122 = *v120;
        MEMORY[0x277D82BE0](v122);
        swift_endAccess();
        if (v122)
        {
          v116 = v122;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v107 = v116;
        [v116 bounds];
        v215 = v20;
        v216 = v21;
        v217 = v22;
        v218 = v23;
        v108 = v20;
        v109 = v21;
        v110 = v22;
        v111 = v23;
        MEMORY[0x277D82BD8](v107);
        v112 = sub_214B2F8EC(v108, v109, v110, v111);
        v213 = *&v138;
        v214[0] = v119;
        v214[1] = v112;
        v113 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
        v114 = &v212;
        swift_beginAccess();
        v115 = *v113;
        MEMORY[0x277D82BE0](v115);
        swift_endAccess();
        if (v115)
        {
          v106 = v115;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v104 = v106;
        (*(v166 + 16))(v169, v171, v165);
        v103 = sub_214CCD304();
        v101 = *(v166 + 8);
        v102 = v166 + 8;
        v101(v169, v165);
        v105 = [v104 layoutAttributesForItemAtIndexPath_];
        MEMORY[0x277D82BD8](v103);
        v24 = MEMORY[0x277D82BD8](v104);
        if (v105)
        {
          v100 = v105;
          v95 = v105;
          v211 = v105;
          [v105 frame];
          v207 = v25;
          v208 = v26;
          v209 = v27;
          v210 = v28;
          v96 = v25;
          v97 = v26;
          v98 = v27;
          v99 = v28;
          *&v205 = v25;
          *(&v205 + 1) = v26;
          *&v206 = v27;
          *(&v206 + 1) = v28;
          if (!sub_214B2F92C(v25, v26, v27, v28, v138, 0.0, v119, v112))
          {
            v94 = sub_214B2F9BC(v96, v97, v98, v99);
            v29 = sub_214B2F9BC(v138, 0.0, v119, v112);
            if (v94 >= v29)
            {
              v81 = sub_214B2F9FC(v96, v97, v98, v99);
              v36 = sub_214B2F9FC(v138, 0.0, v119, v112);
              if (v36 < v81)
              {
                MEMORY[0x277D82BE0](v159);
                v80 = [v159 view];
                *&v37 = MEMORY[0x277D82BD8](v159).n128_u64[0];
                if (v80)
                {
                  v79 = v80;
                }

                else
                {
                  sub_214CD01F4();
                  __break(1u);
                }

                v71 = v79;
                [v79 directionalLayoutMargins];
                v201 = v38;
                v202 = v39;
                v203 = v40;
                v204 = v41;
                v73 = v41;
                v200 = v41;
                MEMORY[0x277D82BD8](v71);
                v72 = sub_214B2F9FC(v96, v97, v98, v99);
                v74 = 0;
                v42 = sub_214B2FA3C(v138, 0.0, v119, v112);
                v75 = v72 - v42 - v73;
                v199 = v75;
                v197[3] = v74;
                v76 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
                v77 = v197;
                swift_beginAccess();
                v78 = *v76;
                MEMORY[0x277D82BE0](v78);
                swift_endAccess();
                if (v78)
                {
                  v70 = v78;
                }

                else
                {
                  sub_214CD01F4();
                  __break(1u);
                }

                v65 = v70;
                [v70 contentSize];
                *&v196[3] = v43;
                v196[4] = v44;
                v66 = v43;
                MEMORY[0x277D82BD8](v65);
                v67 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
                v68 = v196;
                swift_beginAccess();
                v69 = *v67;
                MEMORY[0x277D82BE0](v69);
                swift_endAccess();
                if (v69)
                {
                  v64 = v69;
                }

                else
                {
                  sub_214CD01F4();
                  __break(1u);
                }

                v52 = v64;
                [v64 bounds];
                v195[1] = v45;
                v195[2] = v46;
                v195[3] = v47;
                v195[4] = v48;
                v53 = v45;
                v54 = v46;
                v55 = v47;
                v56 = v48;
                MEMORY[0x277D82BD8](v52);
                v49 = sub_214B2FA3C(v53, v54, v55, v56);
                v57 = v195;
                v195[0] = v66 - v49;
                v59 = sub_214A75FAC();
                v58 = MEMORY[0x277D85048];
                sub_214CD0444();
                v194 = v198;
                v192 = v75;
                v191 = v198;
                sub_214CD0464();
                v60 = v193;
                v190 = v193;
                v61 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
                v62 = &v189;
                swift_beginAccess();
                v63 = *v61;
                MEMORY[0x277D82BE0](v63);
                swift_endAccess();
                if (v63)
                {
                  v51 = v63;
                }

                else
                {
                  sub_214CD01F4();
                  __break(1u);
                }

                v187 = v60;
                v188 = 0;
                [v51 setContentOffset:1 animated:{v60, 0.0, v51}];
                MEMORY[0x277D82BD8](v50);
              }
            }

            else
            {
              MEMORY[0x277D82BE0](v159);
              v93 = [v159 view];
              *&v30 = MEMORY[0x277D82BD8](v159).n128_u64[0];
              if (v93)
              {
                v92 = v93;
              }

              else
              {
                sub_214CD01F4();
                __break(1u);
              }

              v84 = v92;
              [v92 directionalLayoutMargins];
              v183 = v31;
              v184 = v32;
              v185 = v33;
              v186 = v34;
              v85 = v32;
              v182 = v32;
              MEMORY[0x277D82BD8](v84);
              v87 = &v180;
              v180 = 0;
              v35 = sub_214B2F9BC(v96, v97, v98, v99);
              v86 = &v179;
              v179 = v35 - v85;
              sub_214A75FAC();
              sub_214CD0444();
              v88 = v181;
              v178 = v181;
              v89 = &v159[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
              v90 = &v177;
              swift_beginAccess();
              v91 = *v89;
              MEMORY[0x277D82BE0](v91);
              swift_endAccess();
              if (v91)
              {
                v83 = v91;
              }

              else
              {
                sub_214CD01F4();
                __break(1u);
              }

              v82 = v83;
              v175 = v88;
              v176 = 0;
              [v83 setContentOffset:1 animated:{v88, 0.0}];
              MEMORY[0x277D82BD8](v82);
            }
          }

          v24 = MEMORY[0x277D82BD8](v95);
        }

        (v101)(v171, v165, v24);
      }

      else
      {
        (*(v166 + 8))(v171, v165);
      }
    }
  }

  return result;
}

id sub_214B4329C()
{
  type metadata accessor for BucketCollectionViewLayout();
  v1 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  v2 = BucketCollectionViewLayout.__allocating_init(sectionProvider:)(sub_214B4BF38, v1);

  v3 = [v2 configuration];
  [v3 setScrollDirection_];
  [v2 setConfiguration_];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  return v2;
}

double sub_214B4341C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v29 = a1;
  v28 = a2;
  v16 = *a3;
  v27 = *a3;
  v26 = a4 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v25 = Strong;
    v14 = (Strong + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
    swift_beginAccess();
    v15 = *v14;

    swift_endAccess();

    v23 = v15;
    v24 = v16;
    if (v15)
    {
      sub_214A75F48(&v23, &v20);
      if (v24)
      {
        v19 = v20;
        v18 = v24;
        type metadata accessor for BucketItem();
        v12 = static BucketItem.== infix(_:_:)(v19, v18);

        sub_214A75F80();
        v13 = v12;
LABEL_10:

        v9 = sub_214B39D1C(v16);

        v5 = (Strong + OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration);
        swift_beginAccess();
        v6 = *v5;
        swift_endAccess();
        v22 = v6;
        v21 = 3;
        v10 = static BucketCollectionViewLayout.Configuration.== infix(_:_:)(&v22, &v21);
        v7 = (Strong + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferences);
        swift_beginAccess();
        v8 = *v7;

        swift_endAccess();
        swift_beginAccess();
        v11 = *(v8 + 16);
        swift_endAccess();

        BucketCollectionViewCell.update(item:isPreselected:isExpanded:isStacked:shouldHighlightBadge:)(v16, v13 & 1, v9, v10, v11 & 1);
        *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
        return result;
      }
    }

    else if (!v24)
    {
      sub_214A75F80();
      v13 = 1;
      goto LABEL_10;
    }

    sub_214A75F10();
    v13 = 0;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_214B43758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v27 = "Fatal error";
  v28 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v29 = "MailUI/BucketsViewController.swift";
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v35 = v9 - v34;
  v47 = v4;
  v46 = v5;
  v45 = v6;
  v36 = v7 + 16;
  v44 = v7 + 16;
  v37 = &v43;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  v19 = Strong;
  v42 = Strong;
  v20 = (Strong + OBJC_IVAR____TtC6MailUI21BucketsViewController_cellRegistration);
  v21 = &v41;
  swift_beginAccess();
  sub_214A77D2C(v20, v35);
  swift_endAccess();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35508);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v35, 1) == 1)
  {
    sub_214CD01F4();
    __break(1u);
  }

  v16 = (v19 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v17 = &v40;
  swift_beginAccess();
  v18 = *v16;

  swift_endAccess();
  if (v18)
  {
    v15 = v18;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v9[1] = v15;
  sub_214CCD354();
  v10 = BucketsDataSource.item(at:)();

  v13 = &v39;
  v39 = v10;
  v11 = 0;
  v12 = type metadata accessor for BucketCollectionViewCell();
  type metadata accessor for BucketItem();
  v14 = sub_214CCFBE4();
  sub_214A75F80();
  (*(v23 + 8))(v35, v22);
  MEMORY[0x277D82BD8](v19);
  return v14;
}

double sub_214B43BB4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = sub_214A6BC90();
  BucketsViewController.select(bucket:notifyObserver:)(a2, v2 & 1);
  *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  return result;
}

id sub_214B43C30(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v16 = a1;
  v15 = v1;
  sub_214A6B5B8();
  (MEMORY[0x277D82BE0])();
  v14[3] = ObjectType;
  v14[0] = v12;
  v11 = sub_214A6B61C(v14, sel_didRecognizeSwipeGesture_);
  MEMORY[0x277D82BE0](v11);
  [v11 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v11);
  v13 = [v12 view];
  *&v2 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v13)
  {
    v8 = v13;
  }

  else
  {
    LOBYTE(v4) = 2;
    v5 = 433;
    LODWORD(v6) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v7 = [v8 effectiveUserInterfaceLayoutDirection];
  MEMORY[0x277D82BD8](v8);
  [v11 setDirection_];
  return v11;
}

double sub_214B43E2C()
{
  v15 = 0;
  v4 = objc_opt_self();
  v3 = swift_allocObject();
  MEMORY[0x277D82BE0](v0);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v0);

  v13 = sub_214B4BF40;
  v14 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = 0;
  v11 = sub_214B44BA4;
  v12 = &block_descriptor_54;
  v5 = _Block_copy(&aBlock);

  v7 = [v4 observeChangesForPreference:42 autoCancelToken:1 usingBlock:v5];
  _Block_release(v5);
  v6 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dropToChangeCategoriesInternalSettingsObservationToken);
  swift_beginAccess();
  *v6 = v7;
  swift_unknownObjectRelease();
  swift_endAccess();
  v1 = sub_214A6BC90();
  return sub_214B4484C(v1 & 1);
}

unint64_t sub_214B43FE0()
{
  v2 = qword_27CA35538;
  if (!qword_27CA35538)
  {
    type metadata accessor for UIUserInterfaceSizeClass();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35538);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_214B4413C(uint64_t a1, int a2, uint64_t a3)
{
  v37 = a2;
  v49 = 0;
  v38 = 0;
  v45 = 0;
  v44 = 0;
  v53 = a1;
  v52 = a2;
  v39 = a3 + 16;
  v51 = a3 + 16;
  v40 = &v50;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v41 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v36 = v41;
    v30 = v41;
    v49 = v41;
    v31 = &v41[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
    v33 = &v47;
    swift_beginAccess();
    v34 = *v31;
    v32 = v34;
    v3 = v34;
    swift_endAccess();
    if (v34)
    {
      v29 = v32;
    }

    else
    {
      LODWORD(v10) = 0;
      v9 = 393;
      v8 = 2;
      sub_214CD01F4();
      __break(1u);
    }

    v4 = v38;
    v23 = v29;
    v22 = [v29 interactions];
    v21 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35648);
    v24 = sub_214CCF7E4();

    v46 = v24;
    v5 = v30;
    v25 = &v11;
    MEMORY[0x28223BE20](&v11);
    v26 = &v8;
    v10 = v6;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35650);
    sub_214B4C43C();
    sub_214CCF724();
    v28 = v4;

    sub_214A62278();
    v20 = v48;
    v45 = v48;
    swift_unknownObjectRetain();
    if (v37)
    {
      if (v20)
      {
        v19 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        sub_214B4484C(1);
      }
    }

    else if (v20)
    {
      v18 = v20;
      v13 = v20;
      v44 = v20;
      v14 = &v30[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
      v16 = &v43;
      swift_beginAccess();
      v17 = *v14;
      v15 = v17;
      v7 = v17;
      swift_endAccess();
      if (v17)
      {
        v12 = v15;
      }

      else
      {
        sub_214CD01F4();
        __break(1u);
      }

      v11 = v12;
      [v12 removeInteraction_];

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v35 = v38;
  }
}

uint64_t sub_214B44668(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v7 = v9;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
  }

  if (v7)
  {
    if ([v7 delegate])
    {
      swift_getObjectType();
    }

    v5 = (a2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dropSessionHelper);
    swift_beginAccess();
    MEMORY[0x277D82BE0](*v5);
    swift_endAccess();
    v4 = sub_214CD0434();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v7);
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

double sub_214B4484C(char a1)
{
  if ([objc_opt_self() preferenceEnabled_])
  {
    v12 = 1;
  }

  else
  {
    v12 = a1;
  }

  if (v12)
  {
    type metadata accessor for BucketsViewControllerDropSessionHelper();
    v10 = (v14 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
    swift_beginAccess();
    v11 = *v10;
    MEMORY[0x277D82BE0](*v10);
    swift_endAccess();
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    (MEMORY[0x277D82BE0])();
    v5 = sub_214B4C5CC(v9, v14, &off_2826E4228);
    MEMORY[0x277D82BE0](v5);
    v4 = (v14 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dropSessionHelper);
    swift_beginAccess();
    v2 = *v4;
    *v4 = v5;
    MEMORY[0x277D82BD8](v2);
    swift_endAccess();
    sub_214B4BFB0();
    MEMORY[0x277D82BE0](v5);
    v6 = sub_214B44C04();
    v7 = (v14 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
    swift_beginAccess();
    v8 = *v7;
    MEMORY[0x277D82BE0](*v7);
    swift_endAccess();
    if (v8)
    {
      v3 = v8;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    [v3 addInteraction_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v6);
    *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  return result;
}

uint64_t sub_214B44BA4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 32);

  v6(a2, a3);
}

uint64_t sub_214B44C44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIUserInterfaceLayoutDirection();
  sub_214A6B96C();
  v7 = sub_214CD03F4();
  type metadata accessor for Direction();
  sub_214A6BA84();
  if (sub_214CCF4A4() & 1) != 0 || (sub_214CCF4A4())
  {
    return a2;
  }

  if (sub_214CCF4A4())
  {
    if (v7)
    {
      return a2;
    }

    else
    {
      return 1;
    }
  }

  else if (sub_214CCF4A4())
  {
    if (v7)
    {
      return a2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return a2;
  }
}

Swift::Void __swiftcall BucketsViewController.updateUnseenCountQueries()()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  MUILastSeenBucketHelper.updateUnseenCountQueries()();
  MEMORY[0x277D82BD8](v1);
}

id sub_214B44F5C(uint64_t a1, void *a2, uint64_t a3)
{
  v80 = 0;
  v74 = 0u;
  v75 = 0u;
  v70 = 0;
  v69 = 0;
  v63 = 0;
  memset(__b, 0, sizeof(__b));
  v83 = a1;
  v82 = a2;
  v81 = a3 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  v80 = Strong;
  v49 = [Strong view];
  *&v3 = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  if (v49)
  {
    v48 = v49;
  }

  else
  {
    LOBYTE(v12) = 2;
    v14 = 445;
    LODWORD(v16) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v48 directionalLayoutMargins];
  v76 = v4;
  v77 = v5;
  v78 = v6;
  v79 = v7;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  *&v74 = v4;
  *(&v74 + 1) = v5;
  *&v75 = v6;
  *(&v75 + 1) = v7;
  MEMORY[0x277D82BD8](v48);
  v47 = &Strong[OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate];
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v47 + 1);
  v72 = v8;
  v73 = v9;
  if (v8)
  {
    v40 = v73;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v10 = MEMORY[0x277D82BE0](Strong);
    v41 = (*(v40 + 32))(Strong, &protocol witness table for BucketsViewController, ObjectType, v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v42 = v41 & 1;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v42 = 2;
  }

  v71 = v42;
  if (v42 == 2)
  {
    v38 = 0;
  }

  else
  {
    v38 = v71;
  }

  v70 = v38 & 1;
  v36 = &Strong[OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource];
  swift_beginAccess();
  v37 = *v36;

  swift_endAccess();
  if (!v37)
  {
    LOBYTE(v13) = 2;
    v15 = 448;
    LODWORD(v17) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v35 = BucketsDataSource.bucketItems()();

  v69 = v35;
  v34 = (MUISolariumFeatureEnabled() & 1) == 0 && sub_214B3A394();
  v31 = &Strong[OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem];
  swift_beginAccess();
  v32 = *v31;

  swift_endAccess();

  v33 = *&Strong[OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem];

  v64 = v32;
  v65 = v33;
  if (!v32)
  {
    if (!v65)
    {
      sub_214A75F80();
      v30 = 1;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  sub_214A75F48(&v64, &v57);
  if (!v65)
  {

LABEL_26:
    sub_214A75F10();
    v30 = 0;
    goto LABEL_24;
  }

  v56 = v57;
  v55 = v65;
  type metadata accessor for BucketItem();
  v29 = static BucketItem.== infix(_:_:)(v56, v55);

  sub_214A75F80();
  v30 = v29;
LABEL_24:

  v22 = swift_allocObject();
  MEMORY[0x277D82BE0](Strong);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](Strong);

  v23 = static BucketCollectionViewLayoutFactory.layoutSection(environment:layoutMargins:items:isStacked:isAllMailSelected:prefersEqualItemWidth:sizeProvider:)(v66, a2, v35, v34, v30 & 1, v38 & 1, sub_214B4C4C4, v22, v43, v44, v45, v46);

  v63 = v23;
  v24 = LOBYTE(v66[0]);
  v25 = v67;
  v26 = v68;
  *__b = v66[0];
  *&__b[1] = v66[1];
  *&__b[2] = v66[2];
  __b[3] = v67;
  __b[4] = v68;
  v27 = &Strong[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  swift_beginAccess();
  v28 = *v27;
  MEMORY[0x277D82BE0](*v27);
  swift_endAccess();
  if (v28)
  {
    v21 = v28;
  }

  else
  {
    LOBYTE(v13) = 2;
    v15 = 470;
    LODWORD(v17) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  if (v26)
  {

    v20 = v25 & 1;
  }

  else
  {
    v20 = 2;
  }

  v61 = v20;
  if (v20 == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = v61;
  }

  [v21 setScrollEnabled_];
  MEMORY[0x277D82BD8](v21);

  if (v26)
  {

    v18 = v24;
  }

  else
  {
    v18 = 4;
  }

  v59 = v18;
  if (v18 == 4)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59;
  }

  v58 = v60;
  sub_214B39128(&v58);

  MEMORY[0x277D82BD8](Strong);
  return v23;
}

double sub_214B45898@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, MailUI::BucketCollectionViewLayoutFactory::ItemSize *a3@<X8>)
{
  v61 = 0;
  memset(__b, 0, 0x29uLL);
  width = 0.0;
  v49 = 0.0;
  memset(v41, 0, 0x29uLL);
  v63 = a1;
  v62 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v61 = Strong;
    v17 = sub_214A76148();
    v13 = sub_214A7658C();
    v14 = v6;
    v16 = sub_214B3A394();
    v15 = sub_214A7334C();
    v7 = sub_214A73344();
    sub_214A73354(v17, v13, v14, v15, v7, v16, &v55);
    v28 = v55;
    v18 = v56;
    v29 = v57;
    v19 = v58;
    v30 = v59;
    v20 = v60;
    __b[0] = v55;
    __b[1] = v56;
    __b[2] = v57;
    LOBYTE(__b[3]) = v58;
    __b[4] = v59;
    LOBYTE(__b[5]) = v60;
    type metadata accessor for BucketCellContentView();
    v50[0] = v28;
    v50[1] = v18;
    v50[2] = v29;
    v51 = v19;
    v52 = v30;
    v53 = v20;
    v25.width = static BucketCellContentView.preferredSize(withConfiguration:)(v50);
    v25.height = v8;
    width = v25.width;
    v49 = v8;
    v23 = sub_214A76148();
    v22 = sub_214B3A394();
    v21 = sub_214A7334C();
    v9 = sub_214A73344();
    sub_214A73354(v23, 0, 0, v21, v9, v22, &v42);
    v26 = v42;
    v27 = v46;
    v41[0] = v42;
    v41[1] = v43;
    v41[2] = v44;
    LOBYTE(v41[3]) = v45;
    v41[4] = v46;
    LOBYTE(v41[5]) = v47;
    v37[0] = v42;
    v37[1] = v43;
    v37[2] = v44;
    v38 = v45;
    v39 = v46;
    v40 = v47;
    v24.width = static BucketCellContentView.preferredSize(withConfiguration:)(v37);
    v24.height = v10;
    v11 = sub_214B3A3F0();
    BucketCollectionViewLayoutFactory.ItemSize.init(min:max:isSelected:)(a3, v24, v25, v11);
    MEMORY[0x277D82BD8](v26);

    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);

    MEMORY[0x277D82BD8](v30);
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  else
  {
    min.width = sub_214B33C94();
    min.height = v3;
    max.width = sub_214B33C94();
    max.height = v4;
    v5 = sub_214A6BC90();
    BucketCollectionViewLayoutFactory.ItemSize.init(min:max:isSelected:)(a3, min, max, v5 & 1);
  }

  return result;
}

id BucketsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_214CCF544();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

void *BucketsViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v53 = a2;
  v61 = sub_214B4C014;
  v64 = sub_214A7E51C;
  v68 = sub_214A7E854;
  v70 = sub_214A662DC;
  v72 = sub_214A662DC;
  v75 = sub_214A7E40C;
  v40 = "Fatal error";
  v41 = "MailUI/BucketsViewController.swift";
  v42 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v85[1] = 0;
  v43 = 0;
  v44 = 0;
  v60 = sub_214CCD374();
  v56 = *(v60 - 8);
  v57 = v60 - 8;
  v54 = v56;
  v55 = *(v56 + 64);
  v45 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v59 = v25 - v45;
  v52 = sub_214CCDA74();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v2 = v25 - v48;
  v49 = v25 - v48;
  v89 = v3;
  v88 = v4;
  v87 = v5;
  v6 = sub_214B38080();
  (*(v50 + 16))(v2, v6, v52);
  (*(v56 + 16))(v59, v53, v60);
  v58 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v66 = 7;
  v62 = swift_allocObject();
  (*(v56 + 32))(v62 + v58, v59, v60);

  v65 = 32;
  v7 = swift_allocObject();
  v8 = v62;
  v67 = v7;
  *(v7 + 16) = v61;
  *(v7 + 24) = v8;

  v79 = sub_214CCDA54();
  v80 = sub_214CCFBB4();
  v63 = 17;
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v67;
  v69 = v9;
  *(v9 + 16) = v64;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v69;
  v76 = v11;
  *(v11 + 16) = v68;
  *(v11 + 24) = v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v74 = sub_214CD03C4();
  v77 = v13;

  v14 = v71;
  v15 = v77;
  *v77 = v70;
  v15[1] = v14;

  v16 = v73;
  v17 = v77;
  v77[2] = v72;
  v17[3] = v16;

  v18 = v76;
  v19 = v77;
  v77[4] = v75;
  v19[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v79, v80))
  {
    v20 = v43;
    v33 = sub_214CCFF24();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v34 = sub_214A632C4(0);
    v35 = sub_214A632C4(1);
    v36 = v85;
    v85[0] = v33;
    v37 = &v84;
    v84 = v34;
    v38 = &v83;
    v83 = v35;
    sub_214A6627C(2, v85);
    sub_214A6627C(1, v36);
    v81 = v70;
    v82 = v71;
    sub_214A66290(&v81, v36, v37, v38);
    v39 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v81 = v72;
      v82 = v73;
      sub_214A66290(&v81, v85, &v84, &v83);
      v31 = 0;
      v81 = v75;
      v82 = v76;
      sub_214A66290(&v81, v85, &v84, &v83);
      _os_log_impl(&dword_214A5E000, v79, v80, "Select item at %s", v33, 0xCu);
      sub_214A669DC(v34);
      sub_214A669DC(v35);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D82BD8](v79);
  (*(v50 + 8))(v49, v52, v21);
  sub_214B40C1C(v53);
  v28 = (v46 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v29 = &v86;
  swift_beginAccess();
  v30 = *v28;

  swift_endAccess();
  if (v30)
  {
    v27 = v30;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v25[1] = v27;
  v25[2] = BucketsDataSource.item(at:)();

  v25[3] = sub_214A6A428();

  sub_214A706A8();
  v26 = v22;
  if ((v23 & 1) == 0)
  {
    return sub_214B46894(v26);
  }

  sub_214B11080();
  result = sub_214CD0204();
  __break(1u);
  return result;
}

void *sub_214B46894(uint64_t a1)
{
  v209 = a1;
  v211 = sub_214B4C108;
  v215 = sub_214A7E854;
  v217 = sub_214A662DC;
  v219 = sub_214A662DC;
  v222 = sub_214A7E40C;
  v167 = sub_214B4C108;
  v168 = sub_214A7E854;
  v169 = sub_214A662DC;
  v170 = sub_214A662DC;
  v171 = sub_214A7E40C;
  v172 = "Fatal error";
  v173 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v174 = "MailUI/BucketsViewController.swift";
  v175 = sub_214B4C108;
  v176 = sub_214A7E854;
  v177 = sub_214B4C110;
  v178 = sub_214B4C140;
  v179 = sub_214A662DC;
  v180 = sub_214A662DC;
  v181 = sub_214A7E40C;
  v182 = sub_214A662DC;
  v183 = sub_214A662DC;
  v184 = sub_214B4C1B8;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v185 = 0;
  v239 = 0.0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v186 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v187 = &v66 - v186;
  v188 = 0;
  v189 = sub_214CCD254();
  v190 = *(v189 - 8);
  v191 = v189 - 8;
  v192 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v188);
  v193 = &v66 - v192;
  v194 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v195 = &v66 - v194;
  v255 = &v66 - v194;
  v206 = sub_214CCDA74();
  v204 = *(v206 - 8);
  v205 = v206 - 8;
  v200 = v204[8];
  v197 = (v200 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v209);
  v198 = &v66 - v197;
  v199 = (v200 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v201 = &v66 - v199;
  v202 = (v200 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v7 = &v66 - v202;
  v203 = &v66 - v202;
  v254 = v6;
  v253 = v8;
  v9 = sub_214B38080();
  v207 = v204[2];
  v208 = v204 + 2;
  v207(v7, v9, v206);
  v213 = 7;
  v214 = swift_allocObject();
  *(v214 + 16) = v209;
  v226 = sub_214CCDA54();
  v227 = sub_214CCFBB4();
  v210 = 17;
  v218 = swift_allocObject();
  *(v218 + 16) = 32;
  v220 = swift_allocObject();
  *(v220 + 16) = 8;
  v212 = 32;
  v10 = swift_allocObject();
  v11 = v214;
  v216 = v10;
  *(v10 + 16) = v211;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v216;
  v223 = v12;
  *(v12 + 16) = v215;
  *(v12 + 24) = v13;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v221 = sub_214CD03C4();
  v224 = v14;

  v15 = v218;
  v16 = v224;
  *v224 = v217;
  v16[1] = v15;

  v17 = v220;
  v18 = v224;
  v224[2] = v219;
  v18[3] = v17;

  v19 = v223;
  v20 = v224;
  v224[4] = v222;
  v20[5] = v19;
  sub_214A63280();

  if (os_log_type_enabled(v226, v227))
  {
    v21 = v185;
    v160 = sub_214CCFF24();
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v161 = sub_214A632C4(0);
    v162 = sub_214A632C4(1);
    v163 = &v232;
    v232 = v160;
    v164 = &v231;
    v231 = v161;
    v165 = &v230;
    v230 = v162;
    sub_214A6627C(2, &v232);
    sub_214A6627C(1, v163);
    v228 = v217;
    v229 = v218;
    sub_214A66290(&v228, v163, v164, v165);
    v166 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v228 = v219;
      v229 = v220;
      sub_214A66290(&v228, &v232, &v231, &v230);
      v157 = 0;
      v228 = v222;
      v229 = v223;
      sub_214A66290(&v228, &v232, &v231, &v230);
      v156 = 0;
      _os_log_impl(&dword_214A5E000, v226, v227, "Updating delegate with bucket %s", v160, 0xCu);
      sub_214A669DC(v161);
      sub_214A669DC(v162);
      sub_214CCFF04();

      v158 = v156;
    }
  }

  else
  {
    v22 = v185;

    v158 = v22;
  }

  v150 = v158;
  MEMORY[0x277D82BD8](v226);
  v151 = v204[1];
  v152 = v204 + 1;
  v151(v203, v206);
  v155 = &v251;
  v251 = v209;
  v153 = &v250;
  v250 = 1;
  v154 = type metadata accessor for MUIBucket();
  sub_214A694CC();
  if (sub_214CD03F4())
  {
    v252 = 0;
  }

  else
  {
    v147 = (v196 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
    v148 = &v249;
    swift_beginAccess();
    v149 = *v147;
    MEMORY[0x277D82BE0](v149);
    swift_endAccess();
    if (v149)
    {
      v146 = v149;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v145 = v146;
    MUILastSeenBucketHelper.lastSelectedDate(for:)();
    MEMORY[0x277D82BD8](v145);
    if ((*(v190 + 48))(v187, 1, v189) == 1)
    {
      v48 = v198;
      sub_214A871C0(v187);
      v49 = sub_214B38080();
      v207(v48, v49, v206);
      v95 = 7;
      v96 = swift_allocObject();
      *(v96 + 16) = v209;
      v103 = sub_214CCDA54();
      v104 = sub_214CCFBB4();
      v93 = 17;
      v98 = swift_allocObject();
      *(v98 + 16) = 32;
      v99 = swift_allocObject();
      *(v99 + 16) = 8;
      v94 = 32;
      v50 = swift_allocObject();
      v51 = v96;
      v97 = v50;
      *(v50 + 16) = v167;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v97;
      v101 = v52;
      *(v52 + 16) = v168;
      *(v52 + 24) = v53;
      v100 = sub_214CD03C4();
      v102 = v54;

      v55 = v98;
      v56 = v102;
      *v102 = v169;
      v56[1] = v55;

      v57 = v99;
      v58 = v102;
      v102[2] = v170;
      v58[3] = v57;

      v59 = v101;
      v60 = v102;
      v102[4] = v171;
      v60[5] = v59;
      sub_214A63280();

      if (os_log_type_enabled(v103, v104))
      {
        v61 = v150;
        v86 = sub_214CCFF24();
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v87 = sub_214A632C4(0);
        v88 = sub_214A632C4(1);
        v89 = &v244;
        v244 = v86;
        v90 = &v243;
        v243 = v87;
        v91 = &v242;
        v242 = v88;
        sub_214A6627C(2, &v244);
        sub_214A6627C(1, v89);
        v240 = v169;
        v241 = v98;
        sub_214A66290(&v240, v89, v90, v91);
        v92 = v61;
        if (v61)
        {

          __break(1u);
        }

        else
        {
          v240 = v170;
          v241 = v99;
          sub_214A66290(&v240, &v244, &v243, &v242);
          v84 = 0;
          v240 = v171;
          v241 = v101;
          sub_214A66290(&v240, &v244, &v243, &v242);
          _os_log_impl(&dword_214A5E000, v103, v104, "First time selecting bucket %s, updating New/Older section divisions", v86, 0xCu);
          sub_214A669DC(v87);
          sub_214A669DC(v88);
          sub_214CCFF04();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v103);
      v151(v198, v206);
      v81 = (v196 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
      v82 = &v248;
      swift_beginAccess();
      v83 = *v81;
      MEMORY[0x277D82BE0](v83);
      swift_endAccess();
      if (v83)
      {
        v80 = v83;
      }

      else
      {
        sub_214CD01F4();
        __break(1u);
      }

      v79 = v80;
      MUILastSeenBucketHelper.updateSessionLastSeenDates(for:)(v209);
      MEMORY[0x277D82BD8](v79);
    }

    else
    {
      (*(v190 + 32))(v195, v187, v189);
      sub_214CCD234();
      sub_214CCD1B4();
      v144 = v23;
      v142 = *(v190 + 8);
      v143 = v190 + 8;
      v142(v193, v189);
      v239 = v144;
      if (v144 > 480.0)
      {
        v24 = v201;
        v25 = sub_214B38080();
        v207(v24, v25, v206);
        v123 = 24;
        v129 = 7;
        v124 = swift_allocObject();
        *(v124 + 16) = v209;
        v130 = swift_allocObject();
        *(v130 + 16) = v144;
        v140 = sub_214CCDA54();
        v141 = sub_214CCFBB4();
        v126 = 17;
        v132 = swift_allocObject();
        *(v132 + 16) = 32;
        v133 = swift_allocObject();
        v127 = 8;
        *(v133 + 16) = 8;
        v128 = 32;
        v26 = swift_allocObject();
        v27 = v124;
        v125 = v26;
        *(v26 + 16) = v175;
        *(v26 + 24) = v27;
        v28 = swift_allocObject();
        v29 = v125;
        v134 = v28;
        *(v28 + 16) = v176;
        *(v28 + 24) = v29;
        v135 = swift_allocObject();
        *(v135 + 16) = 0;
        v136 = swift_allocObject();
        *(v136 + 16) = v127;
        v30 = swift_allocObject();
        v31 = v130;
        v131 = v30;
        *(v30 + 16) = v177;
        *(v30 + 24) = v31;
        v32 = swift_allocObject();
        v33 = v131;
        v138 = v32;
        *(v32 + 16) = v178;
        *(v32 + 24) = v33;
        v137 = sub_214CD03C4();
        v139 = v34;

        v35 = v132;
        v36 = v139;
        *v139 = v179;
        v36[1] = v35;

        v37 = v133;
        v38 = v139;
        v139[2] = v180;
        v38[3] = v37;

        v39 = v134;
        v40 = v139;
        v139[4] = v181;
        v40[5] = v39;

        v41 = v135;
        v42 = v139;
        v139[6] = v182;
        v42[7] = v41;

        v43 = v136;
        v44 = v139;
        v139[8] = v183;
        v44[9] = v43;

        v45 = v138;
        v46 = v139;
        v139[10] = v184;
        v46[11] = v45;
        sub_214A63280();

        if (os_log_type_enabled(v140, v141))
        {
          v47 = v150;
          v115 = sub_214CCFF24();
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
          v116 = sub_214A632C4(0);
          v117 = sub_214A632C4(1);
          v119 = &v237;
          v237 = v115;
          v120 = &v236;
          v236 = v116;
          v121 = &v235;
          v235 = v117;
          v118 = 2;
          sub_214A6627C(2, &v237);
          sub_214A6627C(v118, v119);
          v233 = v179;
          v234 = v132;
          sub_214A66290(&v233, v119, v120, v121);
          v122 = v47;
          if (v47)
          {

            __break(1u);
          }

          else
          {
            v233 = v180;
            v234 = v133;
            sub_214A66290(&v233, &v237, &v236, &v235);
            v113 = 0;
            v233 = v181;
            v234 = v134;
            sub_214A66290(&v233, &v237, &v236, &v235);
            v112 = 0;
            v233 = v182;
            v234 = v135;
            sub_214A66290(&v233, &v237, &v236, &v235);
            v111 = 0;
            v233 = v183;
            v234 = v136;
            sub_214A66290(&v233, &v237, &v236, &v235);
            v110 = 0;
            v233 = v184;
            v234 = v138;
            sub_214A66290(&v233, &v237, &v236, &v235);
            _os_log_impl(&dword_214A5E000, v140, v141, "Selecting bucket %s after %f seconds, updating New/Older section divisions", v115, 0x16u);
            sub_214A669DC(v116);
            sub_214A669DC(v117);
            sub_214CCFF04();
          }
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v140);
        v151(v201, v206);
        v107 = (v196 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
        v108 = &v238;
        swift_beginAccess();
        v109 = *v107;
        MEMORY[0x277D82BE0](v109);
        swift_endAccess();
        if (v109)
        {
          v106 = v109;
        }

        else
        {
          sub_214CD01F4();
          __break(1u);
        }

        v105 = v106;
        MUILastSeenBucketHelper.updateSessionLastSeenDates(for:)(v209);
        MEMORY[0x277D82BD8](v105);
      }

      v142(v195, v189);
    }

    v75 = sub_214B10198();
    v76 = (v196 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
    v77 = &v247;
    swift_beginAccess();
    v78 = *v76;
    MEMORY[0x277D82BE0](v78);
    swift_endAccess();
    if (v78)
    {
      v74 = v78;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v72 = v74;
    v62 = sub_214A6BC90();
    v73 = MUILastSeenBucketHelper.unseenPredicates(for:usingCurrentLastSeenDates:)(v209, v62 & 1);
    MEMORY[0x277D82BD8](v72);
    v252 = sub_214B101FC();
  }

  v71 = v196 + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v64 = *(v71 + 8);
  v245 = Strong;
  v246 = v64;
  if (Strong)
  {
    v66 = &v245;
    v70 = v245;
    v68 = v246;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    MEMORY[0x277D82BE0](v196);
    v69 = v252;
    MEMORY[0x277D82BE0](v252);
    (*(v68 + 8))(v196, &protocol witness table for BucketsViewController, v209, v69, ObjectType);
    MEMORY[0x277D82BD8](v69);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
  }

  return sub_214A671E8(&v252);
}

uint64_t BucketsViewController.collectionView(_:didDeselectItemAt:)(uint64_t a1, uint64_t a2)
{
  v112 = a1;
  v111 = a2;
  v110 = 0;
  v86 = sub_214B4C1C4;
  v87 = sub_214B4C014;
  v88 = sub_214B4C1CC;
  v89 = sub_214A7E854;
  v90 = sub_214A7E51C;
  v91 = sub_214A7E854;
  v92 = sub_214A662DC;
  v93 = sub_214A662DC;
  v94 = sub_214A7E40C;
  v95 = sub_214A662DC;
  v96 = sub_214A662DC;
  v97 = sub_214A7E40C;
  v98 = "Fatal error";
  v99 = "MailUI/BucketsViewController.swift";
  v100 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v127 = 0;
  v126 = 0;
  v101 = 0;
  v102 = 0;
  v103 = sub_214CCD374();
  v105 = *(v103 - 8);
  v104 = v103 - 8;
  v106 = v105;
  v107 = *(v105 + 64);
  v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v109 = v38 - v108;
  v113 = sub_214CCDA74();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v117 = v38 - v116;
  v131 = v3;
  v130 = v4;
  v129 = v2;
  v118 = (v2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v119 = &v128;
  swift_beginAccess();
  v120 = *v118;

  swift_endAccess();
  if (v120)
  {
    v84 = v120;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v59 = v84;
  v5 = BucketsDataSource.item(at:)();
  v6 = v117;
  v60 = v5;

  v127 = v60;
  v7 = sub_214B38080();
  (*(v114 + 16))(v6, v7, v113);

  v69 = 32;
  v70 = 7;
  v8 = swift_allocObject();
  v9 = v60;
  v64 = v8;
  *(v8 + 16) = v86;
  *(v8 + 24) = v9;

  v61 = v106;
  (*(v105 + 16))(v109, v111, v103);
  v62 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v63 = swift_allocObject();
  (*(v105 + 32))(v63 + v62, v109, v103);

  v10 = swift_allocObject();
  v11 = v63;
  v71 = v10;
  *(v10 + 16) = v87;
  *(v10 + 24) = v11;

  v82 = sub_214CCDA54();
  v83 = sub_214CCFBB4();
  v67 = 17;
  v73 = swift_allocObject();
  v66 = 32;
  *(v73 + 16) = 32;
  v74 = swift_allocObject();
  v68 = 8;
  *(v74 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v64;
  v65 = v12;
  *(v12 + 16) = v88;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v65;
  v75 = v14;
  *(v14 + 16) = v89;
  *(v14 + 24) = v15;
  v76 = swift_allocObject();
  *(v76 + 16) = v66;
  v77 = swift_allocObject();
  *(v77 + 16) = v68;
  v16 = swift_allocObject();
  v17 = v71;
  v72 = v16;
  *(v16 + 16) = v90;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v72;
  v79 = v18;
  *(v18 + 16) = v91;
  *(v18 + 24) = v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v78 = sub_214CD03C4();
  v80 = v20;

  v21 = v73;
  v22 = v80;
  *v80 = v92;
  v22[1] = v21;

  v23 = v74;
  v24 = v80;
  v80[2] = v93;
  v24[3] = v23;

  v25 = v75;
  v26 = v80;
  v80[4] = v94;
  v26[5] = v25;

  v27 = v76;
  v28 = v80;
  v80[6] = v95;
  v28[7] = v27;

  v29 = v77;
  v30 = v80;
  v80[8] = v96;
  v30[9] = v29;

  v31 = v79;
  v32 = v80;
  v80[10] = v97;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v82, v83))
  {
    v33 = v101;
    v51 = sub_214CCFF24();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v52 = sub_214A632C4(0);
    v53 = sub_214A632C4(2);
    v55 = &v125;
    v125 = v51;
    v56 = &v124;
    v124 = v52;
    v57 = &v123;
    v123 = v53;
    v54 = 2;
    sub_214A6627C(2, &v125);
    sub_214A6627C(v54, v55);
    v121 = v92;
    v122 = v73;
    sub_214A66290(&v121, v55, v56, v57);
    v58 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v121 = v93;
      v122 = v74;
      sub_214A66290(&v121, &v125, &v124, &v123);
      v49 = 0;
      v121 = v94;
      v122 = v75;
      sub_214A66290(&v121, &v125, &v124, &v123);
      v48 = 0;
      v121 = v95;
      v122 = v76;
      sub_214A66290(&v121, &v125, &v124, &v123);
      v47 = 0;
      v121 = v96;
      v122 = v77;
      sub_214A66290(&v121, &v125, &v124, &v123);
      v46 = 0;
      v121 = v97;
      v122 = v79;
      sub_214A66290(&v121, &v125, &v124, &v123);
      _os_log_impl(&dword_214A5E000, v82, v83, "Deselect item: %s at %s", v51, 0x16u);
      sub_214A669DC(v52);
      sub_214A669DC(v53);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v82);
  (*(v114 + 8))(v117, v113, v34);
  type metadata accessor for BucketItem();
  v44 = *(v85 + OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem);

  v45 = static BucketItem.== infix(_:_:)(v60, v44);

  if (v45)
  {
    sub_214B491C8();
  }

  else
  {
    v40 = &qword_280C7D000;
    v39 = *(v85 + OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem);

    sub_214B41AC4(v39);

    v41 = *(v85 + v40[435]);

    v42 = sub_214A6A428();

    sub_214A706A8();
    v43 = v35;
    if (v36)
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
    }

    else
    {
      v38[1] = v43;
      v126 = v43;
      sub_214B46894(v43);
    }
  }
}

uint64_t sub_214B49194@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_214B491C8()
{
  v10 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSelectedItem);
  swift_beginAccess();
  v11 = *v10;

  result = swift_endAccess();
  if (v11)
  {

    v12 = v11;
    type metadata accessor for BucketItem();
    v7 = *(v9 + OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem);

    v8 = static BucketItem.== infix(_:_:)(v11, v7);

    if (v8)
    {
      v5 = (v9 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
      swift_beginAccess();
      v6 = *v5;

      swift_endAccess();
      if (!v6)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v4 = BucketsDataSource.item(at:)();

      v12 = v4;
    }

    sub_214B41AC4(v12);
    sub_214A6A428();

    sub_214A706A8();
    if (v3)
    {
      sub_214B11080();
      result = sub_214CD0204();
      __break(1u);
    }

    else
    {
      sub_214B46894(v2);
    }
  }

  return result;
}

uint64_t sub_214B495C0(uint64_t a1)
{
  v2 = MUIStringFromBucket(a1);
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t BucketsViewController.lastIndexPathForBucketCollectionViewLayout(_:)@<X0>(uint64_t a1@<X8>)
{
  v13 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  swift_beginAccess();
  v14 = *v13;
  MEMORY[0x277D82BE0](*v13);
  swift_endAccess();
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    LOBYTE(v7) = 2;
    v8 = 572;
    LODWORD(v9) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v10 = [v11 numberOfItemsInSection_];
  v2 = MEMORY[0x277D82BD8](v11);
  result = v10;
  if (v10 > 0)
  {
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      MEMORY[0x21605B5F0](v10 - 1, v2);
      v5 = sub_214CCD374();
      return (*(*(v5 - 8) + 56))(a1, 0, 1);
    }
  }

  else
  {
    v6 = sub_214CCD374();
    return (*(*(v6 - 8) + 56))(a1, 1);
  }

  return result;
}

CGFloat BucketsViewController.availableWidthForBucketCollectionViewLayout(_:)()
{
  v15 = [v0 view];
  *&v1 = MEMORY[0x277D82BD8](v0).n128_u64[0];
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    LOBYTE(v7) = 2;
    v8 = 578;
    LODWORD(v9) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v14 bounds];
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  MEMORY[0x277D82BD8](v14);
  return sub_214B2FA3C(v10, v11, v12, v13);
}

double BucketsViewController.layoutMarginsForBucketCollectionViewLayout(_:)()
{
  v9 = [v0 view];
  *&v1 = MEMORY[0x277D82BD8](v0).n128_u64[0];
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    LOBYTE(v4) = 2;
    v5 = 582;
    LODWORD(v6) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v8 directionalLayoutMargins];
  v7 = v2;
  MEMORY[0x277D82BD8](v8);
  return v7;
}

uint64_t BucketsViewController.selectedIndexPathForBucketCollectionViewLayout(_:)@<X0>(uint64_t a1@<X8>)
{
  v8 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v9 = *v8;

  swift_endAccess();
  if (v9)
  {
    v4 = (v7 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
    swift_beginAccess();
    v5 = *v4;

    swift_endAccess();
    if (!v5)
    {
      sub_214CD01F4();
      __break(1u);
    }

    BucketsDataSource.indexPath(for:)();
  }

  else
  {
    v3 = sub_214CCD374();
    return (*(*(v3 - 8) + 56))(a1, 1);
  }
}

void sub_214B49D34(void *a1)
{
  v29 = 0;
  v24 = 0;
  v21 = 0;
  v20[1] = 0;
  v30 = a1;
  v14 = [a1 state];
  MEMORY[0x277D82BD8](a1);
  v28 = v14;
  v27 = 3;
  type metadata accessor for State();
  sub_214B4C2A8();
  if ((sub_214CD03F4() & 1) == 0)
  {
    return;
  }

  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  v10 = (v12 + OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v11 = *v10;
  MEMORY[0x277D82BE0](*v10);
  swift_endAccess();
  MEMORY[0x277D82BE0](v11);
  v25 = a1;
  v26 = v11;
  if (a1)
  {
    sub_214A671A8(&v25, &v17);
    if (v26)
    {
      v16 = v17;
      v15 = v26;
      sub_214A6B5B8();
      v8 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      sub_214A671E8(&v25);
      v9 = v8;
      goto LABEL_8;
    }

    MEMORY[0x277D82BD8](v17);
    goto LABEL_10;
  }

  if (v26)
  {
LABEL_10:
    sub_214A68120(&v25);
    v9 = 0;
    goto LABEL_8;
  }

  sub_214A671E8(&v25);
  v9 = 1;
LABEL_8:
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](a1);
  v24 = v9 & 1;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  v6 = (v12 + OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v7 = *v6;
  MEMORY[0x277D82BE0](*v6);
  swift_endAccess();
  MEMORY[0x277D82BE0](v7);
  v22 = a1;
  v23 = v7;
  if (!a1)
  {
    if (!v23)
    {
      sub_214A671E8(&v22);
      v5 = 1;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  sub_214A671A8(&v22, v20);
  if (!v23)
  {
    MEMORY[0x277D82BD8](v20[0]);
LABEL_19:
    sub_214A68120(&v22);
    v5 = 0;
    goto LABEL_17;
  }

  v19 = v20[0];
  v18 = v23;
  sub_214A6B5B8();
  v4 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  sub_214A671E8(&v22);
  v5 = v4;
LABEL_17:
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](a1);
  v21 = v5 & 1;
  if (v9)
  {
    v3 = *(v12 + OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem);

    sub_214B41AC4(v3);

    sub_214A6A428();

    sub_214A706A8();
    if ((v2 & 1) == 0)
    {
      sub_214B46894(v1);
      return;
    }

    sub_214B11080();
    sub_214CD0204();
    __break(1u);
  }

  if (v5)
  {
    sub_214B491C8();
  }
}

Swift::Bool __swiftcall BucketsViewController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v41 = 0;
  isa = a1.super.isa;
  v44 = v1;
  v26 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  swift_beginAccess();
  v27 = *v26;
  MEMORY[0x277D82BE0](*v26);
  swift_endAccess();
  if (v27)
  {
    v23 = v27;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 606;
    LODWORD(v5) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v22 = [v23 isScrollEnabled];
  MEMORY[0x277D82BD8](v23);
  if (v22)
  {
    v11 = 0;
    return v11 & 1;
  }

  v19 = (v25 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v20 = *v19;

  swift_endAccess();

  v21 = *(v25 + OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem);

  v42 = v20;
  v43 = v21;
  if (v20)
  {
    sub_214A75F48(&v42, &v30);
    if (v43)
    {
      v29 = v30;
      v28 = v43;
      type metadata accessor for BucketItem();
      v17 = static BucketItem.== infix(_:_:)(v29, v28);

      sub_214A75F80();
      v18 = v17;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (v43)
  {
LABEL_13:
    sub_214A75F10();
    v18 = 0;
    goto LABEL_11;
  }

  sub_214A75F80();
  v18 = 1;
LABEL_11:

  v41 = v18 & 1;
  MEMORY[0x277D82BE0](a1.super.isa);
  MEMORY[0x277D82BE0](a1.super.isa);
  v15 = (v25 + OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v16 = *v15;
  MEMORY[0x277D82BE0](*v15);
  swift_endAccess();
  if (v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x277D82BE0](v14);
  v39 = a1.super.isa;
  v40 = v14;
  if (a1.super.isa)
  {
    sub_214A671A8(&v39, &v33);
    if (v40)
    {
      v32 = v33;
      v31 = v40;
      sub_214B4C328();
      v12 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      sub_214A671E8(&v39);
      v13 = v12;
      goto LABEL_21;
    }

    MEMORY[0x277D82BD8](v33);
    goto LABEL_23;
  }

  if (v40)
  {
LABEL_23:
    sub_214A68120(&v39);
    v13 = 0;
    goto LABEL_21;
  }

  sub_214A671E8(&v39);
  v13 = 1;
LABEL_21:
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](a1.super.isa);
  if (v13)
  {
    v11 = v18 ^ 1;
    return v11 & 1;
  }

  MEMORY[0x277D82BE0](a1.super.isa);
  MEMORY[0x277D82BE0](a1.super.isa);
  v9 = (v25 + OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v10 = *v9;
  MEMORY[0x277D82BE0](*v9);
  swift_endAccess();
  if (v10)
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x277D82BE0](v8);
  v37 = a1.super.isa;
  v38 = v8;
  if (a1.super.isa)
  {
    sub_214A671A8(&v37, &v36);
    if (v38)
    {
      v35 = v36;
      v34 = v38;
      sub_214B4C328();
      v6 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      sub_214A671E8(&v37);
      v7 = v6;
      goto LABEL_35;
    }

    MEMORY[0x277D82BD8](v36);
    goto LABEL_37;
  }

  if (v38)
  {
LABEL_37:
    sub_214A68120(&v37);
    v7 = 0;
    goto LABEL_35;
  }

  sub_214A671E8(&v37);
  v7 = 1;
LABEL_35:
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](a1.super.isa);
  if (v7)
  {
    v11 = v18;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

double BucketsViewController.setlastSeenDates(_:for:)(void *a1, uint64_t a2)
{
  v7 = (v2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    v4 = v8;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  MUILastSeenBucketHelper.setlastSeenDates(_:for:)(a1, a2);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

Swift::Void __swiftcall BucketsViewController.clearState()()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  MUILastSeenBucketHelper.clearState()();
  MEMORY[0x277D82BD8](v1);
}

double BucketsViewController.updateLastSeenDates(_:forMailboxes:bucket:)(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = (v3 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v10 = *v9;
  MEMORY[0x277D82BE0](*v9);
  swift_endAccess();
  if (v10)
  {
    v5 = v10;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  MUILastSeenBucketHelper.updateLastSeenDates(_:forMailboxes:bucket:)(a1, a2, a3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

Swift::Void __swiftcall BucketsViewController.update(mailboxes:)(Swift::OpaquePointer mailboxes)
{
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x277D82BE0](*v4);
  swift_endAccess();
  if (v5)
  {
    v2 = v5;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  MUILastSeenBucketHelper.update(mailboxes:)(mailboxes);
  MEMORY[0x277D82BD8](v2);
}

uint64_t sub_214B4B0B0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

id sub_214B4B120(uint64_t a1)
{
  v32 = a1;
  v27 = "Fatal error";
  v28 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v29 = "MailUI/BucketsViewController.swift";
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v30 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v31 = &v8 - v30;
  v33 = sub_214CCD374();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v37 = &v8 - v36;
  v38 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v39 = &v8 - v38;
  v49 = &v8 - v38;
  v48 = v5;
  v47 = v1;
  v40 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  v41 = &v46;
  swift_beginAccess();
  v42 = *v40;

  swift_endAccess();
  if (!v42)
  {
    return 0;
  }

  v25 = v42;
  v21 = v42;
  v45 = v42;
  v22 = (v26 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  v23 = &v44;
  swift_beginAccess();
  v24 = *v22;

  swift_endAccess();
  if (v24)
  {
    v20 = v24;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v19 = v20;
  BucketsDataSource.indexPath(for:)();

  if ((*(v34 + 48))(v31, 1, v33) == 1)
  {
    sub_214A6A480(v31);

    return 0;
  }

  (*(v34 + 32))(v39, v31, v33);
  v16 = (v26 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  v17 = &v43;
  swift_beginAccess();
  v18 = *v16;
  MEMORY[0x277D82BE0](v18);
  swift_endAccess();
  if (v18)
  {
    v15 = v18;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v10 = v15;
  (*(v34 + 16))(v37, v39, v33);
  v9 = sub_214CCD304();
  v12 = *(v34 + 8);
  v11 = v34 + 8;
  v12(v37, v33);
  v13 = [v10 cellForItemAtIndexPath_];
  MEMORY[0x277D82BD8](v9);
  v6 = MEMORY[0x277D82BD8](v10);
  (v12)(v39, v33, v6);

  return v13;
}

uint64_t sub_214B4B6F0()
{
  v3 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  if (!v4)
  {
    sub_214CD01F4();
    __break(1u);
  }

  v2 = BucketsDataSource.item(at:)();

  return v2;
}

uint64_t sub_214B4B81C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  if (!v3)
  {
    sub_214CD01F4();
    __break(1u);
  }

  BucketsDataSource.indexPath(for:)();
}

uint64_t sub_214B4B998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = v3;
  v20 = (v3 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v21 = *v20;

  swift_endAccess();

  v22 = *(v3 + OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem);

  v29 = v21;
  v30 = v22;
  if (v21)
  {
    sub_214A75F48(&v29, &v25);
    if (v30)
    {
      v24 = v25;
      v23 = v30;
      type metadata accessor for BucketItem();
      v15 = static BucketItem.== infix(_:_:)(v24, v23);

      sub_214A75F80();
      v16 = v15;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v30)
  {
LABEL_9:
    sub_214A75F10();
    v16 = 0;
    goto LABEL_7;
  }

  sub_214A75F80();
  v16 = 1;
LABEL_7:

  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v13 = v19 + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v13 + 8);
    v27 = Strong;
    v28 = v5;
    if (Strong)
    {
      v10 = v28;
      swift_unknownObjectRetain();
      sub_214A759F4();
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v6 = (MEMORY[0x277D82BE0])();
      v11 = (*(v10 + 40))(v19, &protocol witness table for BucketsViewController, a2, a3, ObjectType, v6);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v12 = v11 & 1;
    }

    else
    {
      sub_214A759F4();
      swift_endAccess();
      v12 = 2;
    }

    v26 = v12;
    if (v12 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v26;
    }

    v14 = v8;
  }

  return v14 & 1;
}

uint64_t sub_214B4BCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = v5 + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 8);
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v6 = (MEMORY[0x277D82BE0])();
    (*(v16 + 48))(v13, &protocol witness table for BucketsViewController, a2, a3, a4, a5, ObjectType, v6);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    return swift_endAccess();
  }
}

id sub_214B4BEE8()
{
  v2 = [v0 initWithDelegate_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214B4BFB0()
{
  v2 = qword_27CA35550;
  if (!qword_27CA35550)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35550);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214B4C014@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_214CCD374();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_214B46834(v3, a1);
}

unint64_t sub_214B4C088()
{
  v2 = qword_280C7EAC0;
  if (!qword_280C7EAC0)
  {
    sub_214CCD374();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAC0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B4C14C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_214CCFF54();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_214B4C1CC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for BucketItem();
  v1 = sub_214B4C228();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

unint64_t sub_214B4C228()
{
  v2 = qword_280C7EA08;
  if (!qword_280C7EA08)
  {
    type metadata accessor for BucketItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B4C2A8()
{
  v2 = qword_27CA35570;
  if (!qword_27CA35570)
  {
    type metadata accessor for State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B4C328()
{
  v2 = qword_27CA35578;
  if (!qword_27CA35578)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35578);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B4C43C()
{
  v2 = qword_27CA35658;
  if (!qword_27CA35658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35650);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B4C618()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_214B4C680(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a1);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B4C718()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_214B4C790(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v5 = v2 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214B4C824()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectionChangedFeedbackGenerator);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214B4C86C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_successFeedbackGenerator);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

char *sub_214B4C8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v18 = v3;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_successFeedbackGenerator;
  sub_214B4CB14();
  *&v18[v5] = sub_214A61730();
  *&v18[OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted] = 0;
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a1);
  swift_endAccess();
  v6 = v18;
  swift_unknownObjectRetain();
  v8 = &v6[OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate];
  swift_beginAccess();
  *(v8 + 1) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v9 = v18;
  sub_214B4CB78();
  MEMORY[0x277D82BE0](a1);
  *&v9[OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectionChangedFeedbackGenerator] = sub_214B4CBDC(a1);
  v14.receiver = v18;
  v14.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x277D82BE0](v13);
  v18 = v13;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v18);
  return v13;
}

unint64_t sub_214B4CB14()
{
  v2 = qword_27CA356E0;
  if (!qword_27CA356E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA356E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B4CB78()
{
  v2 = qword_27CA356F0;
  if (!qword_27CA356F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA356F0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214B4CBDC(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() feedbackGeneratorForView_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t sub_214B4CC38()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B4CCA0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214B4CD20(uint64_t a1, void *a2)
{
  v14 = v2 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 8);
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v10 = (*(v16 + 8))(v13, ObjectType);
    swift_unknownObjectRelease();
    v11 = v10;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v9 = sub_214A6A428();
  sub_214A6E0D8();
  if (v9 == v4)
  {

LABEL_10:
    v8 = 0;
    return v8 & 1;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = [a2 items];
  sub_214B4CF44();
  sub_214CCF7E4();
  swift_unknownObjectRelease();
  v7 = sub_214B4CFA8();

  MEMORY[0x277D82BD8](v6);

  v8 = v7;
  return v8 & 1;
}

unint64_t sub_214B4CF44()
{
  v2 = qword_27CA356F8;
  if (!qword_27CA356F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA356F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214B4CFA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35700);
  sub_214B4D348();
  return sub_214CCF6E4() & 1;
}

uint64_t sub_214B4D0FC(id *a1)
{
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v20 = *a1;
  v5 = [v20 itemProvider];
  v7 = [v5 registeredTypeIdentifiers];
  v6 = sub_214CCF7E4();
  MEMORY[0x277D82BD8](v5);
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B50C54();
  sub_214CCFA74();
  v15 = v17;
  v16 = v18;

  MEMORY[0x277D82BD8](v7);
  v14[0] = v17;
  v14[1] = v18;
  v9 = sub_214CCF614();
  v8 = v1;

  sub_214A61AD0(v14, v11);
  v12 = v9;
  v13 = v8;
  if (!v11[1])
  {
    if (!v13)
    {
      sub_214A61B48();
      v4 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_214A61AD0(v11, v10);
  if (!v13)
  {
    sub_214A61B48();
LABEL_8:
    sub_214A76610();
    v4 = 0;
    goto LABEL_7;
  }

  v3 = MEMORY[0x21605D8D0](v10[0], v10[1], v12, v13);
  sub_214A61B48();
  sub_214A61B48();
  sub_214A61B48();
  v4 = v3;
LABEL_7:

  return v4 & 1;
}

unint64_t sub_214B4D348()
{
  v2 = qword_27CA35708;
  if (!qword_27CA35708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35700);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35708);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B4D3D0(uint64_t a1, void *a2)
{
  v45 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34 = 0;
  v51 = a1;
  v50 = a2;
  v49 = v2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v25 = [a2 items];
  sub_214B4CF44();
  v26 = sub_214CCF7E4();
  v48 = v26;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v25);
  if ((sub_214B4CFA8() & 1) == 0)
  {
  }

  v21 = *(v23 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectionChangedFeedbackGenerator);
  [v21 prepare];
  MEMORY[0x277D82BD8](v21);
  v22 = v23 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v22 + 8);
  v46 = Strong;
  v47 = v4;
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v19 = (*(v47 + 8))(v23, ObjectType);
    swift_unknownObjectRelease();
    v20 = v19;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v20 = 0;
  }

  v17 = (v23 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted);
  swift_beginAccess();
  *v17 = v20;

  swift_endAccess();
  sub_214A731BC();
  MEMORY[0x277D82BE0](@"person.crop.rectangle");
  sub_214CCF564();
  v18 = sub_214B4D9C8();
  MEMORY[0x277D82BD8](@"person.crop.rectangle");
  if (v18)
  {
    v45 = v18;
    sub_214B4DA3C();
    [v18 0x1FAD1B1F8];
    v43 = v6;
    v44 = v7;
    v14 = v6;
    [v18 0x1FAD1B1F8];
    v41 = v8;
    v42 = v9;
    v15 = sub_214B4DAA0(0.0, 0.0, v14, v9, 4.0);
    v40 = v15;
    sub_214B4DB2C();
    v16 = sub_214A61730();
    v39 = v16;
    MEMORY[0x277D82BE0](v16);
    [v16 setVisiblePath_];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);

    v36 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35700);
    sub_214B4DB90();
    sub_214CCFAC4();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35730);
      sub_214CD01B4();
      v13 = v35;
      if (!v35)
      {
        break;
      }

      v34 = v35;
      MEMORY[0x277D82BE0](v18);
      MEMORY[0x277D82BE0](v16);
      v10 = swift_allocObject();
      *(v10 + 16) = v18;
      *(v10 + 24) = v16;
      v32 = sub_214B4DCE0;
      v33 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = 0;
      v30 = sub_214B4DD74;
      v31 = &block_descriptor_3;
      v12 = _Block_copy(&aBlock);

      [v13 setPreviewProvider_];
      _Block_release(v12);
      MEMORY[0x277D82BD8](v13);
    }

    sub_214A62278();
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    sub_214CD01D4();
  }
}

id sub_214B4D9C8()
{
  v1 = sub_214CCF544();
  v2 = [swift_getObjCClassFromMetadata() systemImageNamed_];
  MEMORY[0x277D82BD8](v1);

  return v2;
}

unint64_t sub_214B4DA3C()
{
  v2 = qword_27CA35718;
  if (!qword_27CA35718)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35718);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214B4DAA0(double a1, double a2, double a3, double a4, double a5)
{
  v5 = [swift_getObjCClassFromMetadata() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, a5}];

  return v5;
}

unint64_t sub_214B4DB2C()
{
  v2 = qword_27CA35720;
  if (!qword_27CA35720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35720);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B4DB90()
{
  v2 = qword_27CA35728;
  if (!qword_27CA35728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35700);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35728);
    return WitnessTable;
  }

  return v2;
}

id sub_214B4DC18(uint64_t a1, uint64_t a2)
{
  sub_214A73F04();
  MEMORY[0x277D82BE0](a1);
  v6 = sub_214B4DCEC(a1);
  sub_214B50BF0();
  MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BE0](a2);
  v5 = sub_214B4DD2C(v6, a2);
  MEMORY[0x277D82BD8](v6);
  return v5;
}

id sub_214B4DD74(uint64_t a1)
{
  v3 = *(a1 + 32);

  v4 = v3(v1);

  return v4;
}

uint64_t sub_214B4DE70(uint64_t a1, void *a2)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = [a2 items];
  sub_214B4CF44();
  sub_214CCF7E4();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35700);
  sub_214B4DB90();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35730);
    sub_214CD01B4();
    if (!v13)
    {
      break;
    }

    [v13 setPreviewProvider_];
    (MEMORY[0x277D82BD8])();
  }

  sub_214A62278();
  v7 = (v9 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    v6 = v9 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = *(v6 + 8);
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_214A759F4();
      swift_endAccess();
      ObjectType = swift_getObjectType();
      (*(v12 + 24))(v9, v8, ObjectType);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_214A759F4();
      swift_endAccess();
    }

    v5 = (v9 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted);
    swift_beginAccess();
    *v5 = 0;

    swift_endAccess();
  }
}

id sub_214B4E210(uint64_t a1, void *a2)
{
  v59 = a1;
  v71 = a2;
  v55 = sub_214B4EFEC;
  v56 = "MailUI/BucketsViewControllerDropSessionHelper.swift";
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v83 = 0.0;
  v84 = 0.0;
  v80 = 0;
  v77 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v57 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v58 = &v18 - v57;
  v68 = 0;
  v60 = sub_214CCD374();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v64 = *(v61 + 64);
  v63 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v65 = &v18 - v63;
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v67 = &v18 - v66;
  v98 = &v18 - v66;
  v97 = v5;
  v96 = v6;
  v95 = v2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v69 = [v71 items];
  v70 = sub_214B4CF44();
  v72 = sub_214CCF7E4();
  swift_unknownObjectRelease();
  v94 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35700);
  sub_214B4DB90();
  sub_214CCFA74();
  v74 = v93;
  if (!v93)
  {

    MEMORY[0x277D82BD8](v69);
LABEL_33:
    sub_214B4EF48();
    return sub_214B4EFAC(1);
  }

  v53 = v74;
  v48 = v74;
  v92 = v74;

  MEMORY[0x277D82BD8](v69);
  v49 = v54 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate;
  v50 = &v91;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = *(v49 + 8);
  swift_endAccess();
  if (!Strong)
  {
    MEMORY[0x277D82BD8](v48);
    goto LABEL_33;
  }

  v46 = Strong;
  v47 = v51;
  v41 = v51;
  v42 = Strong;
  v89 = Strong;
  v90 = v51;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v44 = [v71 items];
  v43 = sub_214CCF7E4();
  swift_unknownObjectRelease();
  v45 = sub_214CCF854();

  MEMORY[0x277D82BD8](v44);
  if (v45 != 1)
  {
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v48);
    goto LABEL_33;
  }

  v38 = v54 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_collectionView;
  v39 = &v88;
  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!v40)
  {
    sub_214CD01D4();
    sub_214B4EF48();
    v19 = sub_214B4EFAC(1);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v48);
    return v19;
  }

  v37 = v40;
  v35 = v40;
  v87 = v40;
  swift_getObjectType();
  [v71 locationInView_];
  v85 = v7;
  v86 = v8;
  v83 = v7;
  v84 = v8;
  v81 = v7;
  v82 = v8;
  v36 = [v35 indexPathForItemAtPoint_];
  if (v36)
  {
    v34 = v36;
    v33 = v36;
    sub_214CCD324();
    (*(v61 + 32))(v58, v65, v60);
    (*(v61 + 56))(v58, 0, 1, v60);
    v9 = MEMORY[0x277D82BD8](v33);
  }

  else
  {
    (*(v61 + 56))(v58, 1, 1, v60);
  }

  if ((*(v61 + 48))(v58, 1, v60, v9) == 1)
  {
    sub_214A6A480(v58);
    sub_214B4EF48();
    v20 = sub_214B4EFAC(3);
    MEMORY[0x277D82BD8](v35);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v48);
    return v20;
  }

  (*(v61 + 32))(v67, v58, v60);
  ObjectType = swift_getObjectType();
  v31 = (*(v41 + 32))(v67, v54, ObjectType);
  v80 = v31;
  v11 = swift_getObjectType();
  v32 = (*(v41 + 8))(v54, v11);

  v78 = v32;
  v79 = v31;
  if (!v32)
  {
    if (!v79)
    {
      sub_214A75F80();
      v30 = 1;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_214A75F48(&v78, &v76);
  if (!v79)
  {

LABEL_21:
    sub_214A75F10();
    v30 = 0;
    goto LABEL_19;
  }

  v75 = v79;
  type metadata accessor for BucketItem();
  v29 = static BucketItem.== infix(_:_:)(v76, v75);

  sub_214A75F80();
  v30 = v29;
LABEL_19:
  v28 = v30;

  if ((v28 & 1) == 0)
  {
    v12 = swift_getObjectType();
    (*(v41 + 24))(v54, v31, v12);
    v27 = *(v54 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectionChangedFeedbackGenerator);
    *&v13 = MEMORY[0x277D82BE0](v27).n128_u64[0];
    [v27 selectionChanged];
    MEMORY[0x277D82BD8](v27);
  }

  sub_214A6A428();
  sub_214A706A8();
  v26 = v14;
  if (v15 & 1) != 0 || (v25 = v26, v24 = v26, v77 = v26, v16 = swift_getObjectType(), ((*(v41 + 56))(v54, v48, v24, v16)))
  {
    sub_214B4EF48();
    v21 = sub_214B4EFAC(3);

    (*(v61 + 8))(v67, v60);
    MEMORY[0x277D82BD8](v35);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v48);
    return v21;
  }

  else
  {
    sub_214B4EF48();
    v22 = sub_214B4EFAC(1);

    (*(v61 + 8))(v67, v60);
    MEMORY[0x277D82BD8](v35);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v48);
    return v22;
  }
}

unint64_t sub_214B4EF48()
{
  v2 = qword_27CA35740;
  if (!qword_27CA35740)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35740);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214B4F0C8(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = v3;
  v17 = v3 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v17 + 8);
  v27 = Strong;
  v28 = v5;
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v13 = (*(v28 + 16))(v16, ObjectType);
    swift_unknownObjectRelease();
    v14 = v13;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v14 = 0;
  }

  if (v14)
  {
    v26 = v14;
    swift_getObjectType();
    MEMORY[0x277D82BE0](v14);
    v8 = swift_allocObject();
    *(v8 + 16) = v14;
    v24 = sub_214B4F55C;
    v25 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = 0;
    v22 = sub_214A746A8;
    v23 = &block_descriptor_6_0;
    v10 = _Block_copy(&aBlock);

    [a3 addAnimations_];
    _Block_release(v10);
    v11 = [v14 layer];
    MEMORY[0x277D82BD8](v14);
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = sub_214A63208();
    [v11 setZPosition_];
    MEMORY[0x277D82BD8](v11);
    v12 = *(v16 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_successFeedbackGenerator);
    [v12 prepare];
    MEMORY[0x277D82BD8](v12);
    *&result = MEMORY[0x277D82BD8](v14).n128_u64[0];
  }

  return result;
}

void sub_214B4F3D8(uint64_t a1)
{
  v14 = a1;
  v3 = objc_opt_self();
  type metadata accessor for AnimationOptions();
  sub_214CD03C4();
  sub_214B04E08();
  sub_214CD0084();
  v4 = v13;
  MEMORY[0x277D82BE0](a1);
  v1 = swift_allocObject();
  *(v1 + 16) = a1;
  v11 = sub_214B50BCC;
  v12 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_214A746A8;
  v10 = &block_descriptor_38;
  v5 = _Block_copy(&aBlock);

  [v3 animateWithDuration:v4 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:0.7 completion:2.0];
  _Block_release(v5);
}

uint64_t block_copy_helper_4_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

double sub_214B4F5C8(void *a1)
{
  memset(&v9[6], 0, 0x30uLL);
  v9[12] = a1;
  sub_214B4F6D0(&v10, 1.1, 1.1);
  v2 = v10;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v9[6] = v10;
  v9[7] = v11;
  v9[8] = v12;
  v9[9] = v13;
  v9[10] = v14;
  v9[11] = v15;
  MEMORY[0x277D82BE0](a1);
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  [a1 setTransform_];
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

CGFloat sub_214B4F6D0@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  CGAffineTransformMakeScale(&v9, a2, a3);
  b = v9.b;
  c = v9.c;
  d = v9.d;
  tx = v9.tx;
  result = v9.ty;
  *a1 = v9.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = tx;
  a1[5] = result;
  return result;
}

uint64_t sub_214B4F7E4(uint64_t a1, void *a2)
{
  v18 = v2 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = *(v18 + 8);
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    if ((*(v19 + 8))(v17, ObjectType))
    {
      sub_214A6A428();
      sub_214A706A8();
      v15 = v5;
      if ((v6 & 1) != 0 || (v7 = swift_getObjectType(), v8 = (*(v19 + 16))(v17, v7), (v14 = v8) == 0))
      {

        return swift_unknownObjectRelease();
      }

      else
      {
        [v8 _setShouldRasterize_];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = [a2 items];
        sub_214B4CF44();
        sub_214CCF7E4();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35700);
        sub_214B4DB90();
        sub_214CCFAC4();
        MEMORY[0x277D82BD8](v13);
        while (1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35730);
          sub_214CD01B4();
          if (!v23)
          {
            break;
          }

          sub_214CD03C4();
          *v9 = -3.0;
          v9[1] = -2.5;
          v9[2] = -2.0;
          v9[3] = -1.0;
          v9[4] = 1.0;
          v9[5] = 1.5;
          v9[6] = 2.0;
          v9[7] = 2.5;
          v9[8] = 3.0;
          sub_214A63280();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35750);
          sub_214B4FD44();
          sub_214CCFA64();
          sub_214A62278();
          if (v22)
          {
            v12 = -2.5;
          }

          else
          {
            v12 = v21;
          }

          swift_getObjectType();
          v11 = swift_allocObject();
          (MEMORY[0x277D82BE0])();
          swift_unknownObjectWeakInit();
          (MEMORY[0x277D82BD8])();

          MEMORY[0x277D82BE0](v14);
          swift_unknownObjectRetain();
          v10 = swift_allocObject();
          *(v10 + 2) = v11;
          *(v10 + 3) = v14;
          v10[4] = v12;
          *(v10 + 5) = Strong;
          *(v10 + 6) = v19;
          (*(v19 + 64))(v17, v23, v15, sub_214B502DC);

          (MEMORY[0x277D82BD8])();
        }

        sub_214A62278();
        MEMORY[0x277D82BD8](v14);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_214B4FD44()
{
  v2 = qword_27CA35758;
  if (!qword_27CA35758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35750);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35758);
    return WitnessTable;
  }

  return v2;
}

double sub_214B4FDCC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v48 = 0;
  v54 = a1 & 1;
  v53 = a2 + 16;
  v52 = a3;
  v51 = a6;
  v49 = a4;
  v50 = a5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v48 = Strong;
    if (a1)
    {
      v15 = *(Strong + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_successFeedbackGenerator);
      [v15 notificationOccurred_];
      MEMORY[0x277D82BD8](v15);
      v16 = objc_opt_self();
      type metadata accessor for AnimationOptions();
      sub_214CD03C4();
      sub_214B04E08();
      sub_214CD0084();
      v17 = v32;
      MEMORY[0x277D82BE0](a3);
      v7 = swift_allocObject();
      *(v7 + 16) = a3;
      *(v7 + 24) = a6;
      v30 = sub_214B50B5C;
      v31 = v7;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = 0;
      v28 = sub_214A746A8;
      v29 = &block_descriptor_32;
      v18 = _Block_copy(&aBlock);

      [v16 animateWithDuration:v17 delay:v18 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:0.6 completion:2.0];
      _Block_release(v18);
    }

    v11 = objc_opt_self();
    type metadata accessor for AnimationOptions();
    sub_214CD03C4();
    *v8 = 4;
    v8[1] = 128;
    sub_214A63280();
    sub_214B04E08();
    sub_214CD0084();
    v12 = v47;
    MEMORY[0x277D82BE0](a3);
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    v45 = sub_214B50ABC;
    v46 = v9;
    v40 = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = 0;
    v43 = sub_214A746A8;
    v44 = &block_descriptor_20_0;
    v14 = _Block_copy(&v40);

    MEMORY[0x277D82BE0](Strong);
    MEMORY[0x277D82BE0](a3);
    MEMORY[0x277D82BE0](Strong);
    swift_unknownObjectRetain();
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = Strong;
    v10[4] = a4;
    v10[5] = a5;
    v38 = sub_214B50AE0;
    v39 = v10;
    v33 = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = 0;
    v36 = sub_214A7A88C;
    v37 = &block_descriptor_26;
    v13 = _Block_copy(&v33);

    MEMORY[0x277D82BD8](Strong);
    [v11 animateWithDuration:v12 delay:v14 usingSpringWithDamping:v13 initialSpringVelocity:0.3 options:0.5 animations:1.0 completion:?];
    _Block_release(v13);
    _Block_release(v14);
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

double sub_214B502F8(void *a1, double a2)
{
  memset(&__b, 0, sizeof(__b));
  memset(&v12, 0, sizeof(v12));
  v21 = a1;
  v20 = a2;
  [a1 transform];
  *&v3.a = v17;
  *&v3.c = v18;
  *&v3.tx = v19;
  MEMORY[0x277D82BD8](a1);
  v16 = v3;
  CGAffineTransformScale(&v15, &v16, 1.05, 1.05);
  v5 = v15;
  __b = v15;
  CGAffineTransformMakeRotation(&v13, a2 * 3.14159265 / 180.0);
  v6 = v13;
  v12 = v13;
  MEMORY[0x277D82BE0](a1);
  t1 = v5;
  t2 = v6;
  CGAffineTransformConcat(&v9, &t1, &t2);
  v8 = v9;
  [a1 setTransform_];
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214B505A8(void *a1)
{
  v3[6] = a1;
  MEMORY[0x277D82BE0](a1);
  v3[0] = 1.0;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 1.0;
  v3[4] = 0;
  v3[5] = 0;
  [a1 setTransform_];
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B50624(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a2 layer];
  MEMORY[0x277D82BD8](a2);
  [v9 setZPosition_];
  [a2 _setShouldRasterize_];
  v12 = (a3 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted);
  swift_beginAccess();
  v13 = *v12;

  result = swift_endAccess();
  if (v13)
  {
    ObjectType = swift_getObjectType();
    (*(a5 + 24))(a3, v13, ObjectType);
    v7 = (a3 + OBJC_IVAR____TtC6MailUI38BucketsViewControllerDropSessionHelper_selectedItemBeforeDragInteractionStarted);
    swift_beginAccess();
    *v7 = 0;

    swift_endAccess();
  }

  return result;
}

id sub_214B509DC(uint64_t a1)
{
  v4 = [v1 initWithImage_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_214B50A2C(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithView_parameters_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214B50BF0()
{
  v2 = qword_27CA357C8;
  if (!qword_27CA357C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA357C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B50C54()
{
  v2 = qword_280C7EB70;
  if (!qword_280C7EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EB70);
    return WitnessTable;
  }

  return v2;
}

uint64_t BucketsViewControllerPreferences.updatePreferences(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 24);

  swift_endAccess();
  v8 = swift_allocObject();

  swift_weakInit();

  sub_214B5188C(a1);
  v7 = swift_allocObject();
  v7[2] = v8;
  v7[3] = a1;
  v7[4] = a2;
  v6(sub_214B518C0);
}

uint64_t BucketsViewControllerPreferences.shouldHighlightUnseenBadges.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_214B50E9C(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_214B50F04()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_214B50F6C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  swift_endAccess();
}

uint64_t BucketsViewControllerPreferences.init(updateShouldHighlightUnseenBadges:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  BucketsViewControllerPreferences.updatePreferences(_:)(0, 0);

  return v6;
}

double sub_214B510D4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v7 = [objc_opt_self() currentNotificationCenter];

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v13 = sub_214B519C8;
  v14 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = 0;
  v11 = sub_214B51690;
  v12 = &block_descriptor_4;
  v6 = _Block_copy(&aBlock);

  [v7 getNotificationSettingsForTopicsWithCompletionHandler_];
  _Block_release(v6);
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

double sub_214B51214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v25 = a2;
  v24 = a3;
  v18 = sub_214B51A9C;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v43 = 0;
  v32 = 0;
  v19 = sub_214CCF224();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v23 = &v13 - v22;
  v26 = sub_214CCF254();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v33);
  v30 = &v13 - v29;
  v48 = v3;
  v46 = v4;
  v47 = v5;
  v31 = *MEMORY[0x277D25980];
  MEMORY[0x277D82BE0](v31);
  v6 = sub_214CCF564();
  v34 = v44;
  v44[0] = v6;
  v44[1] = v7;
  sub_214B519D4();
  sub_214CCF3D4();
  sub_214A61B48();
  v35 = v45;
  if (v45)
  {
    v17 = v35;
    v16 = v35;
    v43 = v35;
    MEMORY[0x277D82BD8](v31);
    v13 = 0;
    sub_214B51A38();
    v15 = sub_214CCFC44();

    MEMORY[0x277D82BE0](v16);
    v8 = swift_allocObject();
    v9 = v24;
    v10 = v18;
    v11 = v16;
    v8[2] = v25;
    v8[3] = v9;
    v8[4] = v11;
    v41 = v10;
    v42 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = 0;
    v39 = sub_214A746A8;
    v40 = &block_descriptor_14;
    v14 = _Block_copy(&aBlock);

    sub_214BC69C4();
    sub_214BC69DC();
    MEMORY[0x21605DF00](v13, v30, v23, v14);
    (*(v20 + 8))(v23, v19);
    (*(v27 + 8))(v30, v26);
    _Block_release(v14);
    MEMORY[0x277D82BD8](v15);
    *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  }

  else
  {
    *&result = MEMORY[0x277D82BD8](v31).n128_u64[0];
  }

  return result;
}

uint64_t sub_214B515C8(void (*a1)(void), uint64_t a2, void *a3)
{

  [a3 badgeSetting];
  type metadata accessor for UNNotificationSetting();
  sub_214B51B10();
  v3 = sub_214CD03F4();
  a1(v3 & 1);
}

uint64_t sub_214B51690(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  sub_214B519D4();
  sub_214CCF314();
  v3();

  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_214B51734(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_214A75F80();
    swift_endAccess();
    swift_beginAccess();
    *(Strong + 16) = a1;
    swift_endAccess();
  }

  else
  {
    sub_214A75F80();
    swift_endAccess();
  }

  result = sub_214B5188C(a3);
  if (a3)
  {
    a3(result);
  }

  return result;
}

uint64_t sub_214B5188C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_214B519D4()
{
  v2 = qword_280C7C950;
  if (!qword_280C7C950)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C950);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B51A38()
{
  v2 = qword_280C7CB30;
  if (!qword_280C7CB30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CB30);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B51B10()
{
  v2 = qword_280C7C9C8;
  if (!qword_280C7C9C8)
  {
    type metadata accessor for UNNotificationSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C9C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B51B90()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA357D0);
  __swift_project_value_buffer(v1, qword_27CA357D0);
  type metadata accessor for CatchUpFeedbackController();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_214B51C20()
{
  if (qword_27CA33FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA357D0);
}

uint64_t sub_214B51C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B51C20();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_214B51CF8()
{
  type metadata accessor for CatchUpFeedbackController();
  result = CatchUpFeedbackController.__allocating_init()();
  qword_27CA357E8 = result;
  return result;
}

uint64_t *sub_214B51D54()
{
  if (qword_27CA33FD0 != -1)
  {
    swift_once();
  }

  return &qword_27CA357E8;
}

uint64_t sub_214B51DB4()
{
  v0 = sub_214B51D54();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_214B51DF4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController_showingFeedback);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214B51E5C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController_showingFeedback);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214B51F3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_214B51FA4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a1);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void (*sub_214B5203C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController_sourceViewController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214B520E8;
}

void sub_214B520E8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x277D82BE0](v2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x277D82BD8](v2);
    sub_214A671E8(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x277D82BD8](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_214B521B4()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController____lazy_storage___feedbackController);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214B522C0(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController____lazy_storage___feedbackController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

uint64_t sub_214B522C0(uint64_t a1)
{
  sub_214CCF2B4();
  MEMORY[0x277D82BE0](a1);
  v1 = sub_214B5A524();
  return MEMORY[0x21605D550](a1, v1);
}

double sub_214B5231C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController____lazy_storage___feedbackController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214B523B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214B521B4();
  return sub_214B52410;
}

double sub_214B52410(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214B5231C(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214B5231C(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

uint64_t sub_214B52490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = swift_task_alloc();
  *(v7 + 56) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214B52588;

  return sub_214B53540(0, a1, a2, a3);
}

uint64_t sub_214B52588()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_214B526E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = swift_task_alloc();
  *(v7 + 56) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214B52588;

  return sub_214B53540(2, a1, a2, a3);
}

uint64_t sub_214B527DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[10] = a3;
  v5[9] = a2;
  v5[8] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35808);
  v5[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35810);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_214CCDA74();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = v4;

  return MEMORY[0x2822009F8](sub_214B529FC, 0);
}

uint64_t sub_214B529FC()
{
  v37 = v0;
  v1 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[8];
  v0[2] = v0;
  v2 = sub_214B51C20();
  (*(v21 + 16))(v1, v2, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v30 = sub_214CCDA54();
  v31 = sub_214CCFBB4();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214B55A10;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_214A7E854;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v29 = v3;

  *v29 = sub_214A662DC;
  v29[1] = v26;

  v29[2] = sub_214A662DC;
  v29[3] = v27;

  v29[4] = sub_214A7E40C;
  v29[5] = v28;
  sub_214A63280();

  if (os_log_type_enabled(v30, v31))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v18 = sub_214A632C4(0);
    v19 = sub_214A632C4(1);
    v32 = buf;
    v33 = v18;
    v34 = v19;
    sub_214A6627C(2, &v32);
    sub_214A6627C(1, &v32);
    v35 = sub_214A662DC;
    v36 = v26;
    sub_214A66290(&v35, &v32, &v33, &v34);
    v35 = sub_214A662DC;
    v36 = v27;
    sub_214A66290(&v35, &v32, &v33, &v34);
    v35 = sub_214A7E40C;
    v36 = v28;
    sub_214A66290(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_214A5E000, v30, v31, "Providing feedback for manual summary type: %s", buf, 0xCu);
    sub_214A669DC(v18);
    sub_214A669DC(v19);
    sub_214CCFF04();
  }

  else
  {
  }

  v13 = v20[18];
  v14 = v20[16];
  v15 = v20[12];
  v12 = v20[17];
  v4 = MEMORY[0x277D82BD8](v30);
  (*(v12 + 8))(v13, v14, v4);
  sub_214CCD824();
  v20[19] = sub_214CCD814();
  v5 = sub_214CCDA44();
  (*(*(v5 - 8) + 56))(v15, 1);
  v16 = (MEMORY[0x277D42130] + *MEMORY[0x277D42130]);
  v6 = swift_task_alloc();
  v20[20] = v6;
  *v6 = v20[2];
  v6[1] = sub_214B530E0;
  v7 = v20[15];
  v8 = v20[12];
  v9 = v20[10];
  v10 = v20[9];

  return v16(v7, v10, v9, v8);
}

uint64_t sub_214B530E0()
{
  v2 = *(*v0 + 96);
  *(*v0 + 16) = *v0;

  sub_214B59D48(v2);

  return MEMORY[0x2822009F8](sub_214B53238, 0);
}

uint64_t sub_214B53238()
{
  *(v0 + 16) = v0;
  v1 = sub_214B51D54();
  v2 = *v1;
  *(v0 + 168) = *v1;
  MEMORY[0x277D82BE0](v2);
  v3 = swift_task_alloc();
  v8[22] = v3;
  *v3 = v8[2];
  v3[1] = sub_214B53310;
  v4 = v8[15];
  v5 = v8[11];
  v6 = v8[8];

  return sub_214B55A7C(1, v4, v6, v5);
}

uint64_t sub_214B53310()
{
  v2 = *(*v0 + 168);
  *(*v0 + 16) = *v0;

  return MEMORY[0x2822009F8](sub_214B53448, 0);
}

uint64_t sub_214B53448()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_214B53540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[21] = a3;
  v5[20] = a2;
  v5[19] = a1;
  v5[4] = v5;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[18] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35808);
  v5[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35810);
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = sub_214CCDA74();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[9] = v4;

  return MEMORY[0x2822009F8](sub_214B537AC, 0);
}

uint64_t sub_214B537AC()
{
  v115 = v0;
  v1 = *(v0 + 152);
  *(v0 + 32) = v0;
  if (sub_214C0A8D8(v1))
  {
    v103 = [*(v104 + 168) searchableMessageID];
    if (v103)
    {
      v98 = [v103 stringValue];
      v99 = sub_214CCF564();
      v100 = v2;
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v98);
      v101 = v99;
      v102 = v100;
    }

    else
    {
      v101 = 0;
      v102 = 0;
    }

    *(v104 + 264) = v102;
    if (v102)
    {
      v3 = *(v104 + 168);
      *(v104 + 16) = v101;
      *(v104 + 24) = v102;
      v97 = [v3 generatedSummary];
      *(v104 + 272) = v97;
      if (v97)
      {
        v4 = *(v104 + 256);
        v76 = *(v104 + 216);
        v5 = *(v104 + 168);
        v77 = *(v104 + 152);
        v75 = *(v104 + 224);
        *(v104 + 144) = v97;
        MEMORY[0x277D82BD8](v5);
        v6 = sub_214B51C20();
        (*(v75 + 16))(v4, v6, v76);
        v78 = swift_allocObject();
        *(v78 + 16) = v77;

        v79 = swift_allocObject();
        *(v79 + 16) = sub_214B59DF0;
        *(v79 + 24) = v78;

        v81 = swift_allocObject();
        *(v81 + 16) = v101;
        *(v81 + 24) = v102;
        MEMORY[0x277D82BE0](v97);
        v83 = swift_allocObject();
        *(v83 + 16) = v97;
        oslog = sub_214CCDA54();
        v96 = sub_214CCFBB4();
        v85 = swift_allocObject();
        *(v85 + 16) = 32;
        v86 = swift_allocObject();
        *(v86 + 16) = 8;
        v80 = swift_allocObject();
        *(v80 + 16) = sub_214A7E578;
        *(v80 + 24) = v79;
        v87 = swift_allocObject();
        *(v87 + 16) = sub_214A7E854;
        *(v87 + 24) = v80;
        v88 = swift_allocObject();
        *(v88 + 16) = 32;
        v89 = swift_allocObject();
        *(v89 + 16) = 8;
        v82 = swift_allocObject();
        *(v82 + 16) = sub_214B21C04;
        *(v82 + 24) = v81;
        v90 = swift_allocObject();
        *(v90 + 16) = sub_214A7E854;
        *(v90 + 24) = v82;
        v91 = swift_allocObject();
        *(v91 + 16) = 32;
        v92 = swift_allocObject();
        *(v92 + 16) = 8;
        v84 = swift_allocObject();
        *(v84 + 16) = sub_214B59E78;
        *(v84 + 24) = v83;
        v93 = swift_allocObject();
        *(v93 + 16) = sub_214A7E854;
        *(v93 + 24) = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
        sub_214CD03C4();
        v94 = v7;

        *v94 = sub_214A662DC;
        v94[1] = v85;

        v94[2] = sub_214A662DC;
        v94[3] = v86;

        v94[4] = sub_214A7E40C;
        v94[5] = v87;

        v94[6] = sub_214A662DC;
        v94[7] = v88;

        v94[8] = sub_214A662DC;
        v94[9] = v89;

        v94[10] = sub_214A7E40C;
        v94[11] = v90;

        v94[12] = sub_214A662DC;
        v94[13] = v91;

        v94[14] = sub_214A662DC;
        v94[15] = v92;

        v94[16] = sub_214A7E40C;
        v94[17] = v93;
        sub_214A63280();

        if (os_log_type_enabled(oslog, v96))
        {
          buf = sub_214CCFF24();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
          v73 = sub_214A632C4(0);
          v74 = sub_214A632C4(3);
          v110 = buf;
          v111 = v73;
          v112 = v74;
          sub_214A6627C(2, &v110);
          sub_214A6627C(3, &v110);
          v113 = sub_214A662DC;
          v114 = v85;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A662DC;
          v114 = v86;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A7E40C;
          v114 = v87;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A662DC;
          v114 = v88;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A662DC;
          v114 = v89;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A7E40C;
          v114 = v90;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A662DC;
          v114 = v91;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A662DC;
          v114 = v92;
          sub_214A66290(&v113, &v110, &v111, &v112);
          v113 = sub_214A7E40C;
          v114 = v93;
          sub_214A66290(&v113, &v110, &v111, &v112);
          _os_log_impl(&dword_214A5E000, oslog, v96, "Providing feedback for feature: %s, searchableMessageID: %s, generatedSummary: %s", buf, 0x20u);
          sub_214A669DC(v73);
          sub_214A669DC(v74);
          sub_214CCFF04();
        }

        else
        {
        }

        v68 = *(v104 + 256);
        v69 = *(v104 + 216);
        v70 = *(v104 + 184);
        v67 = *(v104 + 224);
        v8 = MEMORY[0x277D82BD8](oslog);
        (*(v67 + 8))(v68, v69, v8);
        sub_214CCD824();
        *(v104 + 280) = sub_214CCD814();
        v9 = sub_214CCDA44();
        (*(*(v9 - 8) + 56))(v70, 1);
        v71 = (MEMORY[0x277D42138] + *MEMORY[0x277D42138]);
        v10 = swift_task_alloc();
        *(v104 + 288) = v10;
        *v10 = *(v104 + 32);
        v10[1] = sub_214B55548;
        v11 = *(v104 + 208);
        v12 = *(v104 + 184);

        return v71(v11, v101, v102, v12);
      }

      v14 = *(v104 + 248);
      v63 = *(v104 + 216);
      v62 = *(v104 + 224);
      MEMORY[0x277D82BD8](*(v104 + 168));
      v15 = sub_214B51C20();
      (*(v62 + 16))(v14, v15, v63);
      log = sub_214CCDA54();
      v64 = sub_214CCFBA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v66 = sub_214CD03C4();
      if (os_log_type_enabled(log, v64))
      {
        v58 = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v59 = sub_214A632C4(0);
        v60 = sub_214A632C4(0);
        *(v104 + 112) = v58;
        *(v104 + 120) = v59;
        *(v104 + 128) = v60;
        sub_214A6627C(0, (v104 + 112));
        sub_214A6627C(0, (v104 + 112));
        *(v104 + 136) = v66;
        v61 = swift_task_alloc();
        v61[2] = v104 + 112;
        v61[3] = v104 + 120;
        v61[4] = v104 + 128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
        sub_214A810E0();
        sub_214CCF764();

        _os_log_impl(&dword_214A5E000, log, v64, "Not proceeding with feedback. generatedSummary is nil.", v58, 2u);
        sub_214A669DC(v59);
        sub_214A669DC(v60);
        sub_214CCFF04();
      }

      v56 = *(v104 + 248);
      v57 = *(v104 + 216);
      v55 = *(v104 + 224);
      v16 = MEMORY[0x277D82BD8](log);
      (*(v55 + 8))(v56, v57, v16);
    }

    else
    {
      v17 = *(v104 + 240);
      v51 = *(v104 + 216);
      v50 = *(v104 + 224);
      v18 = sub_214B51C20();
      (*(v50 + 16))(v17, v18, v51);
      v53 = sub_214CCDA54();
      v52 = sub_214CCFBA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v54 = sub_214CD03C4();
      if (os_log_type_enabled(v53, v52))
      {
        v46 = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v47 = sub_214A632C4(0);
        v48 = sub_214A632C4(0);
        *(v104 + 80) = v46;
        *(v104 + 88) = v47;
        *(v104 + 96) = v48;
        sub_214A6627C(0, (v104 + 80));
        sub_214A6627C(0, (v104 + 80));
        *(v104 + 104) = v54;
        v49 = swift_task_alloc();
        v49[2] = v104 + 80;
        v49[3] = v104 + 88;
        v49[4] = v104 + 96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
        sub_214A810E0();
        sub_214CCF764();

        _os_log_impl(&dword_214A5E000, v53, v52, "Not proceeding with feedback. searchableMessageID is nil.", v46, 2u);
        sub_214A669DC(v47);
        sub_214A669DC(v48);
        sub_214CCFF04();
      }

      v44 = *(v104 + 240);
      v45 = *(v104 + 216);
      v43 = *(v104 + 224);
      v19 = MEMORY[0x277D82BD8](v53);
      (*(v43 + 8))(v44, v45, v19);
    }
  }

  else
  {
    v20 = *(v104 + 232);
    v32 = *(v104 + 216);
    v33 = *(v104 + 152);
    v31 = *(v104 + 224);
    v21 = sub_214B51C20();
    (*(v31 + 16))(v20, v21, v32);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;

    v35 = swift_allocObject();
    *(v35 + 16) = sub_214B59DF0;
    *(v35 + 24) = v34;

    v41 = sub_214CCDA54();
    v42 = sub_214CCFBA4();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_214A7E578;
    *(v36 + 24) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_214A7E854;
    *(v39 + 24) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    sub_214CD03C4();
    v40 = v22;

    *v40 = sub_214A662DC;
    v40[1] = v37;

    v40[2] = sub_214A662DC;
    v40[3] = v38;

    v40[4] = sub_214A7E40C;
    v40[5] = v39;
    sub_214A63280();

    if (os_log_type_enabled(v41, v42))
    {
      v28 = sub_214CCFF24();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v29 = sub_214A632C4(0);
      v30 = sub_214A632C4(1);
      v105 = v28;
      v106 = v29;
      v107 = v30;
      sub_214A6627C(2, &v105);
      sub_214A6627C(1, &v105);
      v108 = sub_214A662DC;
      v109 = v37;
      sub_214A66290(&v108, &v105, &v106, &v107);
      v108 = sub_214A662DC;
      v109 = v38;
      sub_214A66290(&v108, &v105, &v106, &v107);
      v108 = sub_214A7E40C;
      v109 = v39;
      sub_214A66290(&v108, &v105, &v106, &v107);
      _os_log_impl(&dword_214A5E000, v41, v42, "Not proceeding with feedback. Unknown feature %s.", v28, 0xCu);
      sub_214A669DC(v29);
      sub_214A669DC(v30);
      sub_214CCFF04();
    }

    else
    {
    }

    v26 = *(v104 + 232);
    v27 = *(v104 + 216);
    v25 = *(v104 + 224);
    v23 = MEMORY[0x277D82BD8](v41);
    (*(v25 + 8))(v26, v27, v23);
  }

  v24 = *(*(v104 + 32) + 8);

  return v24();
}

uint64_t sub_214B55548()
{
  v2 = *(*v0 + 184);
  *(*v0 + 32) = *v0;

  sub_214B59D48(v2);

  return MEMORY[0x2822009F8](sub_214B556A0, 0);
}

uint64_t sub_214B556A0()
{
  *(v0 + 32) = v0;
  v1 = sub_214B51D54();
  v2 = *v1;
  *(v0 + 296) = *v1;
  MEMORY[0x277D82BE0](v2);
  v3 = swift_task_alloc();
  v9[38] = v3;
  *v3 = v9[4];
  v3[1] = sub_214B55774;
  v4 = v9[26];
  v5 = v9[22];
  v6 = v9[20];
  v7 = v9[19];

  return sub_214B55A7C(v7, v4, v6, v5);
}

uint64_t sub_214B55774()
{
  v2 = *(*v0 + 296);
  *(*v0 + 32) = *v0;

  return MEMORY[0x2822009F8](sub_214B558AC, 0);
}

uint64_t sub_214B558AC()
{
  v6 = v0[34];
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[24];
  v0[4] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v6);

  v4 = *(v0[4] + 8);

  return v4();
}

uint64_t sub_214B55A20(void *a1)
{
  v2 = [a1 ef_publicDescription];
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_214B55A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = v4;
  v5[11] = a4;
  v5[10] = a3;
  v5[9] = a2;
  v5[8] = a1;
  v5[13] = swift_getObjectType();
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v6 = sub_214CCDA74();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35818);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_214CCD514();
  v5[19] = swift_task_alloc();
  v7 = sub_214CCD504();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = sub_214CCD9F4();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_214CCDA34();
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = sub_214CCDA24();
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = v4;

  return MEMORY[0x2822009F8](sub_214B55E38, 0);
}

uint64_t sub_214B55E38()
{
  v56 = v0;
  *(v0 + 16) = v0;
  if (sub_214B51DF4())
  {
    v5 = v50[16];
    v17 = v50[14];
    v18 = v50[8];
    v16 = v50[15];
    v6 = sub_214B51C20();
    (*(v16 + 16))(v5, v6, v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    oslog = sub_214CCDA54();
    v26 = sub_214CCFBA4();
    v21 = swift_allocObject();
    *(v21 + 16) = 32;
    v22 = swift_allocObject();
    *(v22 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_214B59E80;
    *(v20 + 24) = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_214A7E854;
    *(v23 + 24) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    sub_214CD03C4();
    v24 = v7;

    *v24 = sub_214A662DC;
    v24[1] = v21;

    v24[2] = sub_214A662DC;
    v24[3] = v22;

    v24[4] = sub_214A7E40C;
    v24[5] = v23;
    sub_214A63280();

    if (os_log_type_enabled(oslog, v26))
    {
      buf = sub_214CCFF24();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v14 = sub_214A632C4(0);
      v15 = sub_214A632C4(1);
      v51 = buf;
      v52 = v14;
      v53 = v15;
      sub_214A6627C(2, &v51);
      sub_214A6627C(1, &v51);
      v54 = sub_214A662DC;
      v55 = v21;
      sub_214A66290(&v54, &v51, &v52, &v53);
      v54 = sub_214A662DC;
      v55 = v22;
      sub_214A66290(&v54, &v51, &v52, &v53);
      v54 = sub_214A7E40C;
      v55 = v23;
      sub_214A66290(&v54, &v51, &v52, &v53);
      _os_log_impl(&dword_214A5E000, oslog, v26, "Attempted to provide feedback for %s when a feedback session is already in progress.", buf, 0xCu);
      sub_214A669DC(v14);
      sub_214A669DC(v15);
      sub_214CCFF04();
    }

    else
    {
    }

    v11 = v50[16];
    v12 = v50[14];
    v10 = v50[15];
    v8 = MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12, v8);

    v9 = *(v50[2] + 8);

    return v9();
  }

  else
  {
    v31 = v50[28];
    v32 = v50[26];
    v29 = v50[25];
    v30 = v50[23];
    v45 = v50[22];
    v37 = v50[19];
    v35 = v50[18];
    v36 = v50[17];
    v46 = v50[13];
    v41 = v50[12];
    v44 = v50[11];
    v43 = v50[10];
    v42 = v50[8];
    v27 = v50[27];
    v28 = v50[24];
    v40 = v50[21];
    MEMORY[0x277D82BE0](v44);
    v1 = sub_214B51FA4(v44);
    (*(v27 + 104))(v31, *MEMORY[0x277D424B8], v32, v1);
    (*(v28 + 104))(v29, *MEMORY[0x277D42480], v30);
    sub_214CCD9E4();
    (*(v28 + 8))(v29, v30);
    (*(v27 + 8))(v31, v32);
    sub_214CCD544();
    sub_214C0AA28(v42, v37);
    v38 = *MEMORY[0x277D06BD8];
    MEMORY[0x277D82BE0](*MEMORY[0x277D06BD8]);
    sub_214CCF564();
    sub_214CCDA04();
    v33 = sub_214CCD534();
    v34 = *(*(v33 - 8) + 56);
    v34(v35);
    sub_214CCDA14();
    (v34)(v36, 0, 1, v33);
    sub_214B56D6C();
    sub_214A6BC90();
    v39 = sub_214CCD524();
    v2 = MEMORY[0x277D82BD8](v38);
    *v45 = v39;
    (*(v40 + 104))(v2);
    sub_214CCF964();
    MEMORY[0x277D82BE0](v41);
    MEMORY[0x277D82BE0](v44);
    v47 = swift_task_alloc();
    v50[32] = v47;
    v47[2] = v41;
    v47[3] = v42;
    v47[4] = v43;
    v47[5] = v44;
    v47[6] = v45;
    v47[7] = v46;
    v48 = MEMORY[0x277D84F78] + 8;
    sub_214B57C7C();
    v3 = swift_task_alloc();
    v50[33] = v3;
    *v3 = v50[2];
    v3[1] = sub_214B569A8;

    return sub_214B57C90(v49, v48, sub_214B59E88, v47);
  }
}

uint64_t sub_214B569A8()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v7 = v2 + 16;

  if (v0)
  {
    v3 = sub_214B56CC8;
  }

  else
  {
    v5 = *(v7 + 80);
    v6 = *(v7 + 72);

    v3 = sub_214B56B3C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_214B56B3C()
{
  v7 = v0[31];
  v6 = v0[30];
  v8 = v0[29];
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[2] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v7, v8);

  v4 = *(v0[2] + 8);

  return v4();
}

double sub_214B56CC8()
{
  v2 = v0[12];
  v3 = v0[11];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B56D84(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v73 = a1;
  v81 = a2;
  v82 = a3;
  v84 = a4;
  v75 = a5;
  v85 = sub_214B59E80;
  v87 = sub_214A7E854;
  v90 = sub_214B55A10;
  v92 = sub_214A7E854;
  v96 = sub_214B1DA88;
  v100 = sub_214B21624;
  v102 = sub_214A662DC;
  v104 = sub_214A662DC;
  v106 = sub_214A7E40C;
  v108 = sub_214A662DC;
  v110 = sub_214A662DC;
  v112 = sub_214A7E40C;
  v114 = sub_214A662DC;
  v116 = sub_214A662DC;
  v119 = sub_214B217B4;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v80 = sub_214CCDA74();
  v78 = *(v80 - 8);
  v79 = v80 - 8;
  v76 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  v77 = &v48 - v76;
  v136 = a1;
  v135 = v6;
  v134 = v7;
  v133 = v8;
  v132 = v9;
  sub_214B57E9C(1u);
  v10 = v77;
  v11 = sub_214B51C20();
  (*(v78 + 16))(v10, v11, v80);
  v83 = 24;
  v98 = 7;
  v86 = swift_allocObject();
  *(v86 + 16) = v81;
  v12 = swift_allocObject();
  v13 = v84;
  v91 = v12;
  *(v12 + 16) = v82;
  MEMORY[0x277D82BE0](v13);
  v99 = swift_allocObject();
  *(v99 + 16) = v84;
  v123 = sub_214CCDA54();
  v124 = sub_214CCFBB4();
  v94 = 17;
  v103 = swift_allocObject();
  v89 = 32;
  *(v103 + 16) = 32;
  v105 = swift_allocObject();
  v95 = 8;
  *(v105 + 16) = 8;
  v97 = 32;
  v14 = swift_allocObject();
  v15 = v86;
  v88 = v14;
  *(v14 + 16) = v85;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v88;
  v107 = v16;
  *(v16 + 16) = v87;
  *(v16 + 24) = v17;
  v109 = swift_allocObject();
  *(v109 + 16) = v89;
  v111 = swift_allocObject();
  *(v111 + 16) = v95;
  v18 = swift_allocObject();
  v19 = v91;
  v93 = v18;
  *(v18 + 16) = v90;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v93;
  v113 = v20;
  *(v20 + 16) = v92;
  *(v20 + 24) = v21;
  v115 = swift_allocObject();
  *(v115 + 16) = 64;
  v117 = swift_allocObject();
  *(v117 + 16) = v95;
  v22 = swift_allocObject();
  v23 = v99;
  v101 = v22;
  *(v22 + 16) = v96;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v101;
  v120 = v24;
  *(v24 + 16) = v100;
  *(v24 + 24) = v25;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v118 = sub_214CD03C4();
  v121 = v26;

  v27 = v103;
  v28 = v121;
  *v121 = v102;
  v28[1] = v27;

  v29 = v105;
  v30 = v121;
  v121[2] = v104;
  v30[3] = v29;

  v31 = v107;
  v32 = v121;
  v121[4] = v106;
  v32[5] = v31;

  v33 = v109;
  v34 = v121;
  v121[6] = v108;
  v34[7] = v33;

  v35 = v111;
  v36 = v121;
  v121[8] = v110;
  v36[9] = v35;

  v37 = v113;
  v38 = v121;
  v121[10] = v112;
  v38[11] = v37;

  v39 = v115;
  v40 = v121;
  v121[12] = v114;
  v40[13] = v39;

  v41 = v117;
  v42 = v121;
  v121[14] = v116;
  v42[15] = v41;

  v43 = v120;
  v44 = v121;
  v121[16] = v119;
  v44[17] = v43;
  sub_214A63280();

  if (os_log_type_enabled(v123, v124))
  {
    v66 = sub_214CCFF24();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v67 = sub_214A632C4(1);
    v68 = sub_214A632C4(2);
    v69 = v129;
    v129[0] = v66;
    v70 = &v128;
    v128 = v67;
    v71 = &v127;
    v127 = v68;
    sub_214A6627C(2, v129);
    sub_214A6627C(3, v69);
    v45 = v74;
    v125 = v102;
    v126 = v103;
    sub_214A66290(&v125, v69, v70, v71);
    v72 = v45;
    if (v45)
    {

      __break(1u);
    }

    else
    {
      v125 = v104;
      v126 = v105;
      sub_214A66290(&v125, v129, &v128, &v127);
      v63 = 0;
      v125 = v106;
      v126 = v107;
      sub_214A66290(&v125, v129, &v128, &v127);
      v62 = 0;
      v125 = v108;
      v126 = v109;
      sub_214A66290(&v125, v129, &v128, &v127);
      v61 = 0;
      v125 = v110;
      v126 = v111;
      sub_214A66290(&v125, v129, &v128, &v127);
      v60 = 0;
      v125 = v112;
      v126 = v113;
      sub_214A66290(&v125, v129, &v128, &v127);
      v59 = 0;
      v125 = v114;
      v126 = v115;
      sub_214A66290(&v125, v129, &v128, &v127);
      v58 = 0;
      v125 = v116;
      v126 = v117;
      sub_214A66290(&v125, v129, &v128, &v127);
      v57 = 0;
      v125 = v119;
      v126 = v120;
      sub_214A66290(&v125, v129, &v128, &v127);
      v56 = 0;
      _os_log_impl(&dword_214A5E000, v123, v124, "Sending feedback for %s, type: %s, sourceViewController: %@", v66, 0x20u);
      sub_214A669DC(v67);
      sub_214A669DC(v68);
      sub_214CCFF04();

      v64 = v56;
    }
  }

  else
  {

    v64 = v74;
  }

  v51 = v64;
  v46 = MEMORY[0x277D82BD8](v123);
  (*(v78 + 8))(v77, v80, v46);
  v54 = &v131;
  v131 = v82;
  v52 = &v130;
  v130 = 0;
  v53 = type metadata accessor for MUICatchUpFeedbackType();
  v55 = sub_214B5A4A4();
  if (sub_214CD03F4())
  {
    v50 = sub_214B521B4();
    sub_214CCF274();
    *&result = MEMORY[0x277D82BD8](v50).n128_u64[0];
  }

  else
  {
    v129[2] = v82;
    v129[1] = 1;
    if (sub_214CD03F4())
    {
      v49 = sub_214B521B4();
      sub_214CCF284();
      *&result = MEMORY[0x277D82BD8](v49).n128_u64[0];
    }

    else
    {
      v48 = sub_214B521B4();
      sub_214CCF294();
      *&result = MEMORY[0x277D82BD8](v48).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_214B57C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  return MEMORY[0x2822009F8](sub_214B57CD4, 0);
}

uint64_t sub_214B57CD4()
{
  *(v0 + 16) = v0;
  *(v0 + 56) = sub_214CCF954();
  v1 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214B57D6C, v1);
}

uint64_t sub_214B57D6C()
{
  v4 = *(v0 + 32);
  *(v0 + 16) = v0;

  v4(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

double sub_214B57E9C(unsigned int a1)
{
  v38 = a1;
  v40 = sub_214A66754;
  v42 = sub_214A66720;
  v44 = sub_214A66714;
  v48 = sub_214A664B8;
  v50 = sub_214A662DC;
  v52 = sub_214A662DC;
  v55 = sub_214A66358;
  v67 = 0;
  v66 = 0;
  v32 = 0;
  v37 = sub_214CCDA74();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v33 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v1 = v23 - v33;
  v34 = v23 - v33;
  v67 = v2 & 1;
  v66 = v3;
  v4 = sub_214B51C20();
  (*(v35 + 16))(v1, v4, v37);
  v39 = 17;
  v46 = 7;
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  v59 = sub_214CCDA54();
  v60 = sub_214CCFBB4();
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 4;
  v45 = 32;
  v5 = swift_allocObject();
  v6 = v41;
  v43 = v5;
  *(v5 + 16) = v40;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v43;
  v47 = v7;
  *(v7 + 16) = v42;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v47;
  v49 = v9;
  *(v9 + 16) = v44;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v49;
  v56 = v11;
  *(v11 + 16) = v48;
  *(v11 + 24) = v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v54 = sub_214CD03C4();
  v57 = v13;

  v14 = v51;
  v15 = v57;
  *v57 = v50;
  v15[1] = v14;

  v16 = v53;
  v17 = v57;
  v57[2] = v52;
  v17[3] = v16;

  v18 = v56;
  v19 = v57;
  v57[4] = v55;
  v19[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v59, v60))
  {
    v20 = v32;
    v25 = sub_214CCFF24();
    v23[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v24 = 0;
    v26 = sub_214A632C4(0);
    v27 = sub_214A632C4(v24);
    v28 = &v65;
    v65 = v25;
    v29 = &v64;
    v64 = v26;
    v30 = &v63;
    v63 = v27;
    sub_214A6627C(0, &v65);
    sub_214A6627C(1, v28);
    v61 = v50;
    v62 = v51;
    sub_214A66290(&v61, v28, v29, v30);
    v31 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v61 = v52;
      v62 = v53;
      sub_214A66290(&v61, &v65, &v64, &v63);
      v23[2] = 0;
      v61 = v55;
      v62 = v56;
      sub_214A66290(&v61, &v65, &v64, &v63);
      _os_log_impl(&dword_214A5E000, v59, v60, "Toggling feedback to %{BOOL}d", v25, 8u);
      v23[1] = 0;
      sub_214A669DC(v26);
      sub_214A669DC(v27);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D82BD8](v59);
  (*(v35 + 8))(v34, v37, v21);
  sub_214B51E5C(v38 & 1);
  if ((v38 & 1) == 0)
  {
    return sub_214B51FA4(0);
  }

  return result;
}

char *CatchUpFeedbackController.init()()
{
  v3 = 0;
  *OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController_showingFeedback = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6MailUI25CatchUpFeedbackController____lazy_storage___feedbackController] = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for CatchUpFeedbackController();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id CatchUpFeedbackController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatchUpFeedbackController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CatchUpFeedbackController.viewControllerForPresentation(controller:)()
{
  v1 = sub_214B51F3C();
  if (v1)
  {
    return v1;
  }

  sub_214CCF614();
  result = sub_214CD0204();
  __break(1u);
  return result;
}

double CatchUpFeedbackController.evaluationDidComplete(controller:response:)(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v40 = a2;
  v48 = sub_214B59EC4;
  v51 = sub_214B59F38;
  v55 = sub_214A7E854;
  v57 = sub_214A662DC;
  v59 = sub_214A662DC;
  v62 = sub_214A7E40C;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v31 = 0;
  v32 = 0;
  v47 = sub_214CCF264();
  v43 = *(v47 - 8);
  v44 = v47 - 8;
  v41 = v43;
  v42 = *(v43 + 64);
  v33 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v46 = v23 - v33;
  v39 = sub_214CCDA74();
  v37 = *(v39 - 8);
  v38 = v39 - 8;
  v35 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v2 = v23 - v35;
  v36 = v23 - v35;
  v75 = v3;
  v74 = v4;
  v73 = v5;
  v6 = sub_214B51C20();
  (*(v37 + 16))(v2, v6, v39);
  (*(v43 + 16))(v46, v40, v47);
  v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v53 = 7;
  v49 = swift_allocObject();
  (*(v43 + 32))(v49 + v45, v46, v47);

  v52 = 32;
  v7 = swift_allocObject();
  v8 = v49;
  v54 = v7;
  *(v7 + 16) = v48;
  *(v7 + 24) = v8;

  v66 = sub_214CCDA54();
  v67 = sub_214CCFBB4();
  v50 = 17;
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v54;
  v56 = v9;
  *(v9 + 16) = v51;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v56;
  v63 = v11;
  *(v11 + 16) = v55;
  *(v11 + 24) = v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v61 = sub_214CD03C4();
  v64 = v13;

  v14 = v58;
  v15 = v64;
  *v64 = v57;
  v15[1] = v14;

  v16 = v60;
  v17 = v64;
  v64[2] = v59;
  v17[3] = v16;

  v18 = v63;
  v19 = v64;
  v64[4] = v62;
  v19[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v66, v67))
  {
    v20 = v31;
    v24 = sub_214CCFF24();
    v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v25 = sub_214A632C4(0);
    v26 = sub_214A632C4(1);
    v27 = &v72;
    v72 = v24;
    v28 = &v71;
    v71 = v25;
    v29 = &v70;
    v70 = v26;
    sub_214A6627C(2, &v72);
    sub_214A6627C(1, v27);
    v68 = v57;
    v69 = v58;
    sub_214A66290(&v68, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v68 = v59;
      v69 = v60;
      sub_214A66290(&v68, &v72, &v71, &v70);
      v23[0] = 0;
      v68 = v62;
      v69 = v63;
      sub_214A66290(&v68, &v72, &v71, &v70);
      _os_log_impl(&dword_214A5E000, v66, v67, "Feedback evaluation did complete: %s", v24, 0xCu);
      sub_214A669DC(v25);
      sub_214A669DC(v26);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D82BD8](v66);
  (*(v37 + 8))(v36, v39, v21);
  return sub_214B57E9C(0);
}

double CatchUpFeedbackController.evaluationDidComplete(controller:evaluation:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v36 = a2;
  v38 = sub_214B5A014;
  v42 = sub_214A7E854;
  v44 = sub_214A662DC;
  v46 = sub_214A662DC;
  v49 = sub_214A7E40C;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v29 = 0;
  v35 = sub_214CCDA74();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v31 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v2 = v21 - v31;
  v32 = v21 - v31;
  v62 = v3;
  v61 = v4;
  v60 = v5;
  v6 = sub_214B51C20();
  (*(v33 + 16))(v2, v6, v35);
  MEMORY[0x277D82BE0](v36);
  v40 = 7;
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  v53 = sub_214CCDA54();
  v54 = sub_214CCFBB4();
  v37 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v39 = 32;
  v7 = swift_allocObject();
  v8 = v41;
  v43 = v7;
  *(v7 + 16) = v38;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v43;
  v50 = v9;
  *(v9 + 16) = v42;
  *(v9 + 24) = v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v48 = sub_214CD03C4();
  v51 = v11;

  v12 = v45;
  v13 = v51;
  *v51 = v44;
  v13[1] = v12;

  v14 = v47;
  v15 = v51;
  v51[2] = v46;
  v15[3] = v14;

  v16 = v50;
  v17 = v51;
  v51[4] = v49;
  v17[5] = v16;
  sub_214A63280();

  if (os_log_type_enabled(v53, v54))
  {
    v18 = v29;
    v22 = sub_214CCFF24();
    v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v23 = sub_214A632C4(0);
    v24 = sub_214A632C4(1);
    v25 = &v59;
    v59 = v22;
    v26 = &v58;
    v58 = v23;
    v27 = &v57;
    v57 = v24;
    sub_214A6627C(2, &v59);
    sub_214A6627C(1, v25);
    v55 = v44;
    v56 = v45;
    sub_214A66290(&v55, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v55 = v46;
      v56 = v47;
      sub_214A66290(&v55, &v59, &v58, &v57);
      v21[1] = 0;
      v55 = v49;
      v56 = v50;
      sub_214A66290(&v55, &v59, &v58, &v57);
      _os_log_impl(&dword_214A5E000, v53, v54, "Feedback evaluation did complete: %s", v22, 0xCu);
      sub_214A669DC(v23);
      sub_214A669DC(v24);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v19 = MEMORY[0x277D82BD8](v53);
  (*(v33 + 8))(v32, v35, v19);
  return sub_214B57E9C(0);
}

uint64_t sub_214B59634(void *a1)
{
  v2 = [a1 description];
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

double CatchUpFeedbackController.evaluationDidFail(controller:error:)(uint64_t a1, void *a2)
{
  v31 = a1;
  v37 = a2;
  v39 = sub_214B5A01C;
  v43 = sub_214A7E854;
  v45 = sub_214A662DC;
  v47 = sub_214A662DC;
  v50 = sub_214A7E40C;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v30 = 0;
  v36 = sub_214CCDA74();
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v32 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v2 = v22 - v32;
  v33 = v22 - v32;
  v63 = v3;
  v62 = v4;
  v61 = v5;
  v6 = sub_214B51C20();
  (*(v34 + 16))(v2, v6, v36);
  v7 = v37;
  v41 = 7;
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  v54 = sub_214CCDA54();
  v55 = sub_214CCFBA4();
  v38 = 17;
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v40 = 32;
  v8 = swift_allocObject();
  v9 = v42;
  v44 = v8;
  *(v8 + 16) = v39;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v44;
  v51 = v10;
  *(v10 + 16) = v43;
  *(v10 + 24) = v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v49 = sub_214CD03C4();
  v52 = v12;

  v13 = v46;
  v14 = v52;
  *v52 = v45;
  v14[1] = v13;

  v15 = v48;
  v16 = v52;
  v52[2] = v47;
  v16[3] = v15;

  v17 = v51;
  v18 = v52;
  v52[4] = v50;
  v18[5] = v17;
  sub_214A63280();

  if (os_log_type_enabled(v54, v55))
  {
    v19 = v30;
    v23 = sub_214CCFF24();
    v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v24 = sub_214A632C4(0);
    v25 = sub_214A632C4(1);
    v26 = &v60;
    v60 = v23;
    v27 = &v59;
    v59 = v24;
    v28 = &v58;
    v58 = v25;
    sub_214A6627C(2, &v60);
    sub_214A6627C(1, v26);
    v56 = v45;
    v57 = v46;
    sub_214A66290(&v56, v26, v27, v28);
    v29 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v56 = v47;
      v57 = v48;
      sub_214A66290(&v56, &v60, &v59, &v58);
      v22[1] = 0;
      v56 = v50;
      v57 = v51;
      sub_214A66290(&v56, &v60, &v59, &v58);
      _os_log_impl(&dword_214A5E000, v54, v55, "Feedback evaluation did fail: %s", v23, 0xCu);
      sub_214A669DC(v24);
      sub_214A669DC(v25);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v20 = MEMORY[0x277D82BD8](v54);
  (*(v34 + 8))(v33, v36, v20);
  return sub_214B57E9C(0);
}

uint64_t sub_214B59D48(uint64_t a1)
{
  v3 = sub_214CCDA44();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214B59DF8()
{
  v2 = qword_27CA377E0;
  if (!qword_27CA377E0)
  {
    type metadata accessor for MUICatchUpFeedbackFeature();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA377E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B59EC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_214CCF264();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_214B58FB4(v3, a1);
}

uint64_t sub_214B59F38()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_214CCF264();
  v1 = sub_214B59F94();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

unint64_t sub_214B59F94()
{
  v2 = qword_27CA35820;
  if (!qword_27CA35820)
  {
    sub_214CCF264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B5A03C()
{
  v2 = qword_27CA35828;
  if (!qword_27CA35828)
  {
    type metadata accessor for CatchUpFeedbackController();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35828);
    return WitnessTable;
  }

  return v2;
}

uint64_t dispatch thunk of static CatchUpFeedbackController.provideAutomaticSummaryFeedback(type:message:sourceViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = (*(v3 + 176) + **(v3 + 176));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214A82860;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of static CatchUpFeedbackController.provideHighlightsFeedback(type:message:sourceViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = (*(v3 + 184) + **(v3 + 184));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214A82860;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of static CatchUpFeedbackController.provideManualSummaryFeedback(type:request:response:sourceViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = (*(v4 + 192) + **(v4 + 192));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_214A82860;

  return v12(a1, a2, a3, a4);
}

unint64_t sub_214B5A4A4()
{
  v2 = qword_27CA35830;
  if (!qword_27CA35830)
  {
    type metadata accessor for MUICatchUpFeedbackType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B5A524()
{
  v2 = qword_27CA35838;
  if (!qword_27CA35838)
  {
    type metadata accessor for CatchUpFeedbackController();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35838);
    return WitnessTable;
  }

  return v2;
}

Swift::Void __swiftcall CircularPlatformImageView.layoutSubviews()()
{
  v10 = [v0 0x1FADAE878];
  (MEMORY[0x277D82BD8])();
  v9 = objc_opt_self();
  [v0 bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  (MEMORY[0x277D82BD8])();
  [v9 uiRoundValue:v0 toViewScale:{sub_214B2F8EC(v5, v6, v7, v8) / 2.0}];
  [v10 setCornerRadius_];
  MEMORY[0x277D82BD8](v10);
  v11 = [v0 0x1FADAE878];
  [v11 setMasksToBounds_];
  MEMORY[0x277D82BD8](v11);
}

id CircularPlatformImageView.__allocating_init(image:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithImage_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id CircularPlatformImageView.init(image:)(uint64_t a1)
{
  v6 = a1;
  v7 = v1;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v5, sel_initWithImage_);
  MEMORY[0x277D82BE0](v4);
  v7 = v4;
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v7);
  return v4;
}

id CircularPlatformImageView.__allocating_init(image:highlightedImage:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id CircularPlatformImageView.init(image:highlightedImage:)(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v10 = v2;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v7, sel_initWithImage_highlightedImage_);
  MEMORY[0x277D82BE0](v6);
  v10 = v6;
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

id CircularPlatformImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v6 = a1;
  *(&v6 + 1) = a2;
  *&v7 = a3;
  *(&v7 + 1) = a4;
  v10 = v6;
  v11 = v7;
  v12 = v4;
  v9.receiver = v4;
  v9.super_class = swift_getObjectType();
  v8 = objc_msgSendSuper2(&v9, sel_initWithFrame_, v6, v7);
  MEMORY[0x277D82BE0](v8);
  v12 = v8;
  MEMORY[0x277D82BD8](v8);
  return v8;
}

id CircularPlatformImageView.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id CircularPlatformImageView.init(coder:)(uint64_t a1)
{
  v7 = a1;
  v8 = v1;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_);
  if (v5)
  {
    MEMORY[0x277D82BE0](v5);
    v8 = v5;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v8);
    return v5;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id CircularPlatformImageView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CollectionItemID.collectionItemID.getter()
{
  v2 = *v0;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t CollectionItemID.collectionItemID.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  *v1 = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void *sub_214B5AEEC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t static CollectionItemID.== infix(_:_:)(id *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v5 = [v4 isEqual_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t CollectionItemID.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v4 hash];
  swift_unknownObjectRelease();
  return sub_214CD0554();
}

unint64_t sub_214B5B098()
{
  v2 = qword_27CA35840;
  if (!qword_27CA35840)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35840);
    return WitnessTable;
  }

  return v2;
}

uint64_t CollectionItemID.description.getter()
{
  v2 = *v0;
  swift_unknownObjectRetain();
  swift_getObjectType();
  v3 = [v2 description];
  v4 = sub_214CCF564();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

unint64_t sub_214B5B214()
{
  v2 = qword_27CA35848;
  if (!qword_27CA35848)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35848);
    return WitnessTable;
  }

  return v2;
}

uint64_t Color.init(platformColor:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = sub_214CCEE54();

  MEMORY[0x277D82BD8](a1);
  sub_214A75F80();
  return v3;
}

uint64_t SearchItem.Contact.contactIdentifier.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SearchItem.Contact.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SearchItem.Contact.emailAddresses.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t SearchItem.Contact.emailAddresses.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
}

uint64_t SearchItem.Contact.id.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.Contact() + 24);
  v2 = sub_214CCD2B4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for SearchItem.Contact()
{
  v1 = qword_280C7E460;
  if (!qword_280C7E460)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SearchItem.Contact.id.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCD2B4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.Contact();
  (*(v10 + 40))(v1 + *(v4 + 24), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.Contact.name.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Contact() + 28));

  return v2;
}

uint64_t SearchItem.Contact.name.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Contact() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Contact.init(contactIdentifier:emailAddresses:id:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v31 = a7;
  v27 = a1;
  v38 = a2;
  v37 = a3;
  v35 = a4;
  v30 = a5;
  v32 = a6;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v24[1] = 0;
  v36 = sub_214CCD2B4();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v25 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v28 = v24 - v25;
  v29 = type metadata accessor for SearchItem.Contact();
  v26 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v7 = (v24 - v26);
  v39 = v7;
  v46 = v24 - v26;
  v44 = v27;
  v45 = v8;
  v43 = v9;
  v42 = v10;
  v40 = v11;
  v41 = v12;
  *v7 = 0;
  v7[1] = 0;

  v13 = v38;
  v14 = v39;
  *v39 = v27;
  v14[1] = v13;

  v15 = v28;
  v16 = v33;
  v17 = v35;
  v18 = v36;
  v39[2] = v37;
  (*(v16 + 16))(v15, v17, v18);
  (*(v33 + 32))(v39 + *(v29 + 24), v28, v36);

  v19 = v39;
  v20 = v31;
  v21 = v32;
  v22 = (v39 + *(v29 + 28));
  *v22 = v30;
  v22[1] = v21;
  sub_214B5BB48(v19, v20);

  (*(v33 + 8))(v35, v36);

  return sub_214B5BC5C(v39);
}

char *sub_214B5BB48(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(a1 + 2);

  *(a2 + 2) = v6;
  v8 = type metadata accessor for SearchItem.Contact();
  v7 = *(v8 + 24);
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  v3 = &a1[*(v8 + 28)];
  v11 = &a2[*(v8 + 28)];
  *v11 = *v3;
  v12 = *(v3 + 1);

  result = a2;
  *(v11 + 1) = v12;
  return result;
}

uint64_t sub_214B5BC5C(uint64_t a1)
{

  v3 = *(type metadata accessor for SearchItem.Contact() + 24);
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1 + v3);

  return a1;
}

uint64_t SearchItem.Contact.init(suggestion:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v27 = a1;
  v37 = 0;
  v36 = 0;
  v24 = 0;
  v25 = (*(*(sub_214CCD2B4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v26 = v11 - v25;
  v28 = type metadata accessor for SearchItem.Contact();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v32 = v11 - v31;
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v34 = v11 - v33;
  v37 = v11 - v33;
  v36 = v5;
  v35 = [v5 contactIdentifier];
  if (v35)
  {
    v22 = v35;
    v17 = v35;
    v18 = sub_214CCF564();
    v19 = v7;
    *&v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v16 = [v27 contactEmailAddresses];
  v12 = sub_214CCF7E4();
  sub_214CCD2A4();
  *&v8 = MEMORY[0x277D82BE0](v27).n128_u64[0];
  v15 = [v27 title];
  v13 = sub_214CCF564();
  v14 = v9;
  MEMORY[0x277D82BD8](v27);
  SearchItem.Contact.init(contactIdentifier:emailAddresses:id:name:)(v11[0], v11[1], v12, v26, v13, v14, v32);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  sub_214B5BFEC(v32, v34);
  sub_214B5BB48(v34, v23);
  (*(v29 + 56))(v23, 0, 1, v28);
  MEMORY[0x277D82BD8](v27);
  return sub_214B5BC5C(v34);
}

__n128 sub_214B5BFEC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = type metadata accessor for SearchItem.Contact();
  v4 = *(v5 + 24);
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  result = *(a1 + *(v5 + 28));
  *(a2 + *(v5 + 28)) = result;
  return result;
}

BOOL static SearchItem.Contact.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v32 = a1;
  v40 = a2;
  v50 = 0;
  v49 = 0;
  v33 = sub_214CCD2B4();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (v34[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v37 = &v10[-v36];
  v38 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v39 = &v10[-v38];
  v50 = v4;
  v49 = v5;
  v41 = *v4;
  v42 = v4[1];

  v43 = *v40;

  v47[0] = v41;
  v47[1] = v42;
  v48 = v43;
  if (v42)
  {
    sub_214A61AD0(v47, &v46);
    if (*(&v48 + 1))
    {
      v28 = &v45;
      v45 = v46;
      v29 = v47;
      v27 = &v44;
      v44 = v48;
      v30 = MEMORY[0x21605D8D0](v46, *(&v46 + 1), v48, *(&v48 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v31 = v30;
      goto LABEL_7;
    }

    sub_214A61B48();
    goto LABEL_9;
  }

  if (*(&v48 + 1))
  {
LABEL_9:
    sub_214A76610();
    v31 = 0;
    goto LABEL_7;
  }

  sub_214A61B48();
  v31 = 1;
LABEL_7:
  v26 = v31;

  if (v26)
  {
    v24 = *(v32 + 16);

    v23 = *(v40 + 2);

    v25 = sub_214CCF8E4();

    if (v25)
    {
      v17 = type metadata accessor for SearchItem.Contact();
      v6 = v32 + *(v17 + 24);
      v19 = v34[2];
      v18 = v34 + 2;
      v19(v39, v6, v33);
      v19(v37, v40 + *(v17 + 24), v33);
      v22 = sub_214CCD284();
      v21 = v34[1];
      v20 = v34 + 1;
      v21(v37, v33);
      v21(v39, v33);
      if (v22)
      {
        v7 = (v32 + *(v17 + 28));
        v12 = *v7;
        v15 = v7[1];

        v8 = (v40 + *(v17 + 28));
        v13 = *v8;
        v14 = v8[1];

        v16 = MEMORY[0x21605D8D0](v12, v15, v13, v14);

        return (v16 & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void *SearchItem.Contact.hash(into:)(uint64_t a1)
{
  v16 = a1;
  v2 = v1;
  v22 = v2;
  v30 = 0;
  v29 = 0;
  v15 = 0;
  v20 = sub_214CCD2B4();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v7 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v19 = &v7 - v7;
  v30 = a1;
  v29 = v4;
  v8 = *v4;
  v9 = v4[1];

  v11 = v28;
  v28[0] = v8;
  v28[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();
  v12 = *(v22 + 16);

  v14 = &v27;
  v27 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B5C7E8();
  sub_214CD0554();
  sub_214A62278();
  v21 = type metadata accessor for SearchItem.Contact();
  (*(v17 + 16))(v19, v22 + *(v21 + 24), v20);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v17 + 8))(v19, v20);
  v5 = (v22 + *(v21 + 28));
  v23 = *v5;
  v24 = v5[1];

  v25 = v26;
  v26[0] = v23;
  v26[1] = v24;
  sub_214CD0554();
  result = v25;
  sub_214A61B48();
  return result;
}

unint64_t sub_214B5C7E8()
{
  v2 = qword_27CA358B0;
  if (!qword_27CA358B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B5C87C()
{
  v2 = qword_280C7EAD0;
  if (!qword_280C7EAD0)
  {
    sub_214CCD2B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.Contact.hashValue.getter()
{
  type metadata accessor for SearchItem.Contact();
  sub_214B5C944();
  return sub_214CD0114();
}

unint64_t sub_214B5C944()
{
  v2 = qword_27CA358B8;
  if (!qword_27CA358B8)
  {
    type metadata accessor for SearchItem.Contact();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B5CA24()
{
  v2 = qword_27CA358C0;
  if (!qword_27CA358C0)
  {
    type metadata accessor for SearchItem.Contact();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B5CB28()
{
  v4 = sub_214B5CC3C();
  if (v0 <= 0x3F)
  {
    v4 = sub_214B5CCD0();
    if (v1 <= 0x3F)
    {
      v4 = sub_214CCD2B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_214B5CC3C()
{
  v4 = qword_280C7CFD0;
  if (!qword_280C7CFD0)
  {
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7CFD0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214B5CCD0()
{
  v4 = qword_280C7CEE0;
  if (!qword_280C7CEE0)
  {
    v3 = sub_214CCF8D4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7CEE0);
      return v1;
    }
  }

  return v4;
}

uint64_t CornerConfiguration.Corner.mask.getter()
{
  v3 = *v0;
  if (!*v0)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 4;
  }

  if (v3 == 2)
  {
    return 2;
  }

  return 8;
}

BOOL static CornerConfiguration.Corner.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v5 == 1)
    {
      v4 = 1;
    }

    else if (v5 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (v6 == 1)
    {
      v3 = 1;
    }

    else if (v6 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_214B5D020()
{
  v2 = qword_27CA358C8;
  if (!qword_27CA358C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t CornerConfiguration.maskedCorners.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t CornerConfiguration.mask.getter()
{

  type metadata accessor for CACornerMask();
  sub_214CD03C4();
  sub_214B00D58();
  sub_214CD0084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA358D0);
  sub_214B5D2C8();
  sub_214CCF734();
  sub_214A62278();
  return v1;
}

uint64_t sub_214B5D244()
{
  CornerConfiguration.Corner.mask.getter();
  type metadata accessor for CACornerMask();
  sub_214B039A8();
  return sub_214CD05C4();
}

unint64_t sub_214B5D2C8()
{
  v2 = qword_27CA358D8;
  if (!qword_27CA358D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA358D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358D8);
    return WitnessTable;
  }

  return v2;
}

BOOL static CornerConfiguration.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {

    sub_214B5D020();
    v4 = sub_214CCF9E4();

    return (v4 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

void *CornerConfiguration.hash(into:)(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  v2 = *v1;
  v4 = v1[1];
  v6 = v1;
  v5[1] = v2;
  sub_214B5D4E4();
  sub_214CD0554();

  v5[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA358D0);
  sub_214B5D55C();
  sub_214CD0554();
  result = v5;
  sub_214A62278();
  return result;
}

unint64_t sub_214B5D4E4()
{
  v2 = qword_27CA38660;
  if (!qword_27CA38660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B5D55C()
{
  v2 = qword_27CA358E0;
  if (!qword_27CA358E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA358D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B5D644()
{
  v2 = qword_27CA358E8;
  if (!qword_27CA358E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B5D6C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

uint64_t static CornerConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  sub_214CD03C4();
  sub_214B5D020();
  v1 = sub_214CCF9D4();
  return sub_214B5D6C0(v1, a1, 0.0);
}

uint64_t static CornerConfiguration.topLeading(cornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_214CD03C4();
  *v2 = 0;
  sub_214A63280();
  sub_214B5D020();
  v3 = sub_214CCF9D4();
  return sub_214B5D6C0(v3, a1, a2);
}

uint64_t static CornerConfiguration.bottomLeading(cornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_214CD03C4();
  *v2 = 1;
  sub_214A63280();
  sub_214B5D020();
  v3 = sub_214CCF9D4();
  return sub_214B5D6C0(v3, a1, a2);
}

uint64_t static CornerConfiguration.topTrailing(cornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_214CD03C4();
  *v2 = 2;
  sub_214A63280();
  sub_214B5D020();
  v3 = sub_214CCF9D4();
  return sub_214B5D6C0(v3, a1, a2);
}

uint64_t static CornerConfiguration.bottomTrailing(cornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_214CD03C4();
  *v2 = 3;
  sub_214A63280();
  sub_214B5D020();
  v3 = sub_214CCF9D4();
  return sub_214B5D6C0(v3, a1, a2);
}

Swift::Void __swiftcall CornerConfiguration.apply(to:)(CALayer to)
{
  [(objc_class *)to.super.isa setCornerRadius:?];
  [(objc_class *)to.super.isa setMaskedCorners:CornerConfiguration.mask.getter()];
  v1 = *MEMORY[0x277CDA138];
  [(objc_class *)to.super.isa setCornerCurve:*MEMORY[0x277CDA138], MEMORY[0x277D82BE0](*MEMORY[0x277CDA138]).n128_f64[0]];
  [(objc_class *)to.super.isa setMasksToBounds:1, MEMORY[0x277D82BD8](v1).n128_f64[0]];
}

unint64_t sub_214B5DA6C()
{
  v2 = qword_27CA358F0;
  if (!qword_27CA358F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B5DB00()
{
  v2 = qword_27CA358F8;
  if (!qword_27CA358F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA358F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B5DB7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214B5DCC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_214B5DEB8()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA35900);
  __swift_project_value_buffer(v1, qword_27CA35900);
  type metadata accessor for CSQueryBuilder();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_214B5DF48()
{
  if (qword_27CA33FD8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA35900);
}

uint64_t static CSQueryBuilder.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B5DF48();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214B5E020()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_214B5E07C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t CSQueryBuilder.init()()
{
  sub_214A7C550();
  v0 = sub_214CD03C4();
  result = v2;
  *(v2 + 16) = v0;
  return result;
}

uint64_t sub_214B5E17C()
{
  v11 = v0;
  v7 = *MEMORY[0x277CC2678];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2678]);
  v5 = sub_214CCF564();
  v6 = v1;
  v2 = sub_214CCF614();
  v10[3] = MEMORY[0x277D837D0];
  v10[0] = v2;
  v10[1] = v3;
  v8 = sub_214B5E2A8(v5, v6, v10, 4);
  __swift_destroy_boxed_opaque_existential_0(v10);

  MEMORY[0x277D82BD8](v7);
  v9 = sub_214B60830(v8);
  MEMORY[0x277D82BD8](v8);
  return v9;
}

id sub_214B5E2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = 0;
  v10[7] = a1;
  v10[8] = a2;
  v10[6] = a3;
  v10[5] = a4;
  sub_214B60900();
  sub_214B60964();

  v6 = sub_214B605F0();
  sub_214A80098(a3, v10);
  v7 = sub_214B60664(v10);
  _s3__C7OptionsVMa_1();
  sub_214CD03C4();
  sub_214B00E88();
  sub_214CD0084();
  return sub_214B607D0(v6, v7, 0, a4, v9);
}

uint64_t sub_214B5E3B8()
{
  v11 = v0;
  v7 = *MEMORY[0x277CC2D68];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2D68]);
  v5 = sub_214CCF564();
  v6 = v1;
  v2 = sub_214CCF614();
  v10[3] = MEMORY[0x277D837D0];
  v10[0] = v2;
  v10[1] = v3;
  v8 = sub_214B5E2A8(v5, v6, v10, 4);
  __swift_destroy_boxed_opaque_existential_0(v10);

  MEMORY[0x277D82BD8](v7);
  v9 = sub_214B60830(v8);
  MEMORY[0x277D82BD8](v8);
  return v9;
}

uint64_t sub_214B5E4E4(char a1)
{
  v12 = a1 & 1;
  v11 = v1;
  v6 = *MEMORY[0x277CC32F8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC32F8]);
  v2 = sub_214CCF564();
  v10 = MEMORY[0x277D839B0];
  v9[0] = a1;
  v7 = sub_214B5E2A8(v2, v3, v9, 4);
  __swift_destroy_boxed_opaque_existential_0(v9);

  MEMORY[0x277D82BD8](v6);
  v8 = sub_214B60830(v7);
  MEMORY[0x277D82BD8](v7);
  return v8;
}