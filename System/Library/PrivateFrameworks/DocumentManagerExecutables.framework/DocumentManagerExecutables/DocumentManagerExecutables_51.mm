Swift::Void __swiftcall DOCColumnViewCell.prepareForReuse()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  DOCColumnViewCell.clearContents()();
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  swift_beginAccess();
  v2 = *&v0[v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setPreferredFocusEnvironments_];
}

Swift::Void __swiftcall DOCColumnViewCell.clearContents()()
{
  v1 = v0;
  v2 = MEMORY[0x24C1FDA70]();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = DOCColumnViewCell.isBrowserContainerControllerStillOwnedByUs(_:)(v5);

    v7 = *(v1 + v3);
    if ((v6 & 1) != 0 && v7)
    {
      v8 = v7;
      [v8 doc:0 removeFromParentWithRemoveSubviewBlock:?];
      (*((*MEMORY[0x277D85000] & *v8) + 0x240))(0);

      v7 = *(v1 + v3);
    }
  }

  else
  {
    v7 = 0;
  }

  *(v1 + v3) = 0;
  DOCColumnViewCell.browserContainerController.didset(v7);

  objc_autoreleasePoolPop(v2);
}

Swift::Void __swiftcall DOCColumnViewCell.didEndDisplaying()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = DOCColumnViewCell.isBrowserContainerControllerStillOwnedByUs(_:)(v3);

    if (v4)
    {
      v5 = *(v0 + v1);
      if (v5)
      {
        v6 = *((*MEMORY[0x277D85000] & *v5) + 0x240);
        v7 = v5;
        v6(0);
      }
    }
  }
}

id DOCColumnViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized DOCColumnViewCell.init(coder:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController] = 0;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_separatorView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D063B8]) init];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static DOCSidebarViewController.dbg.logIfChanged(key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v8(a1, a2, a3, a4);
}

id static DOCSidebarViewController.DebugDropIndicatorView.isEnabled.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD000000000000035, 0x8000000249BEF4C0);
  v2 = [v0 BOOLForKey_];

  return v2;
}

void static DOCSidebarViewController.DebugDropIndicatorView.isEnabled.setter(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = MEMORY[0x24C1FAD20](0xD000000000000035, 0x8000000249BEF4C0);
  [v2 setBool:a1 & 1 forKey:v3];
}

void (*static DOCSidebarViewController.DebugDropIndicatorView.isEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = MEMORY[0x24C1FAD20](0xD000000000000035, 0x8000000249BEF4C0);
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return static DOCSidebarViewController.DebugDropIndicatorView.isEnabled.modify;
}

void static DOCSidebarViewController.DebugDropIndicatorView.isEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = [*a1 standardUserDefaults];
  v2 = MEMORY[0x24C1FAD20](0xD000000000000035, 0x8000000249BEF4C0);
  [v3 setBool:v1 forKey:v2];
}

id DOCSidebarViewController.DebugDropIndicatorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id static DOCSidebarViewController.DebugDropIndicatorView.create()()
{
  if ((*(v0 + 144))())
  {
    return [objc_allocWithZone(type metadata accessor for DOCSidebarViewController.DebugDropIndicatorView()) init];
  }

  else
  {
    return 0;
  }
}

id DOCSidebarViewController.DebugDropIndicatorView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DOCSidebarViewController.DebugDropIndicatorView.init()()
{
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_widthSameAsTargetViewConstraint] = 0;
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint] = 0;
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_constraintsForActiveDropTargetView] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_activeDropTargetView] = 0;
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_currentProposal] = 0;
  v1 = &v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_rawDebugText];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_line] = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 layer];
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 CGColor];

  [v4 setBorderColor_];
  v8 = [v3 layer];
  [v8 setBorderWidth_];

  v9 = [v5 whiteColor];
  [v3 setBackgroundColor_];

  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_info;
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_info] = v10;
  [v10 setNumberOfLines_];
  [*&v0[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = *&v0[v11];
  v13 = MEMORY[0x24C1FAD20](0x72656972756F43, 0xE700000000000000);
  v14 = [objc_opt_self() fontWithName:v13 size:16.0];

  [v12 setFont_];
  v15 = *&v0[v11];
  v16 = MEMORY[0x24C1FAD20](3026478, 0xE300000000000000);
  [v15 setText_];

  v57.receiver = v0;
  v57.super_class = type metadata accessor for DOCSidebarViewController.DebugDropIndicatorView();
  v17 = objc_msgSendSuper2(&v57, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 addSubview_];
  v18 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_info;
  [v3 addSubview_];
  v19 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_line;
  [v17 addSubview_];
  v56 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249BB37C0;
  v21 = [v3 topAnchor];
  v22 = [v17 topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [v3 bottomAnchor];
  v25 = [*&v17[v19] topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-40.0];

  *(v20 + 40) = v26;
  v27 = [v3 leadingAnchor];
  v28 = [v17 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v30 = [v3 topAnchor];
  v31 = [*&v17[v18] topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-10.0];

  *(v20 + 56) = v32;
  v33 = [v3 leftAnchor];
  v34 = [*&v17[v18] leftAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-10.0];

  *(v20 + 64) = v35;
  v36 = [v3 rightAnchor];
  v37 = [*&v17[v18] rightAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:10.0];

  *(v20 + 72) = v38;
  v39 = [v3 bottomAnchor];
  v40 = [*&v17[v18] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:10.0];

  *(v20 + 80) = v41;
  v42 = [*&v17[v19] bottomAnchor];
  v43 = [v17 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v20 + 88) = v44;
  v45 = [*&v17[v19] leadingAnchor];
  v46 = [v17 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v20 + 96) = v47;
  v48 = [*&v17[v19] trailingAnchor];
  v49 = [v17 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v20 + 104) = v50;
  v51 = [*&v17[v19] heightAnchor];
  v52 = [v51 constraintEqualToConstant_];

  *(v20 + 112) = v52;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  LODWORD(v54) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v54];
  [v17 setUserInteractionEnabled_];
  [v17 setClipsToBounds_];

  return v17;
}

void DOCSidebarViewController.DebugDropIndicatorView.continueShowing(in:dropSession:dropContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 window];
  if (!v8)
  {
    v8 = [a1 window];
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  v40 = v8;
  v9 = [v3 window];
  v10 = MEMORY[0x277D85000];
  if (v9)
  {
    v11 = v9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIWindow);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  (*((*v10 & *v4) + 0x110))();
  v13 = v40;
  [v13 addSubview_];
  v14 = [v4 widthAnchor];
  v15 = [a1 widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-100.0];

  v17 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_widthSameAsTargetViewConstraint;
  v18 = *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_widthSameAsTargetViewConstraint);
  *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_widthSameAsTargetViewConstraint) = v16;

  v19 = [*(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_line) centerYAnchor];
  v20 = [v13 topAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  v22 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint;
  v23 = *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint);
  *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249BA1010;
  v25 = *(v4 + v17);
  if (!v25)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v24 + 32) = v25;
  v26 = *(v4 + v22);
  if (!v26)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  *(v24 + 40) = v26;
  *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_constraintsForActiveDropTargetView) = v24;
  v27 = v25;
  v28 = v26;

  v29 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints_];

  [v4 setHidden_];
LABEL_10:
  v31 = *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint);
  v32 = v40;
  if (v31)
  {
    v33 = v31;
    [a2 locationInView_];
    [v33 setConstant_];

    v32 = v40;
  }

  v35 = (*(*a3 + 112))([v32 bringSubviewToFront_]);
  (*((*v10 & *v4) + 0x128))(v35);
  v36 = [objc_opt_self() standardUserDefaults];
  v37 = MEMORY[0x24C1FAD20](0xD00000000000003DLL, 0x8000000249BEF500);
  v38 = [v36 BOOLForKey_];

  if (v38)
  {
    v39 = (*((*v10 & *v4) + 0x140))(a3);
    (*((*v10 & *v4) + 0x150))(v39);
  }
}

Swift::Void __swiftcall DOCSidebarViewController.DebugDropIndicatorView.stopShowing()()
{
  [v0 removeFromSuperview];
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_constraintsForActiveDropTargetView;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints_];

  v4 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_widthSameAsTargetViewConstraint];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_widthSameAsTargetViewConstraint] = 0;

  v5 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint] = 0;

  *&v0[v2] = MEMORY[0x277D84F90];
}

id DOCSidebarViewController.DebugDropIndicatorView.lineAnchor.getter()
{
  v1 = [v0 bottomAnchor];

  return v1;
}

void *DOCSidebarViewController.DebugDropIndicatorView.currentProposal.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_currentProposal;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarViewController.DebugDropIndicatorView.currentProposal.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_currentProposal;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x138))();
  (*((*v6 & *v1) + 0x160))(v7);
}

uint64_t (*DOCSidebarViewController.DebugDropIndicatorView.currentProposal.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarViewController.DebugDropIndicatorView.currentProposal.modify;
}

uint64_t DOCSidebarViewController.DebugDropIndicatorView.currentProposal.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *v5) + 0x138))(result);
    return (*((*v6 & *v5) + 0x160))(v7);
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.DebugDropIndicatorView.updateLineColor()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x120))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 intent];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 orangeColor];
    }

    else
    {
      v5 = [v4 greenColor];
    }

    v6 = v5;

    [*(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_line) setBackgroundColor_];
  }

  else
  {
    v6 = [objc_opt_self() grayColor];
    [*(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_line) setBackgroundColor_];
  }
}

uint64_t DOCSidebarViewController.DebugDropIndicatorView.rawDebugInfo(for:)(uint64_t a1)
{
  v2 = 0x2A6C696E2ALL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = v31 - v10;
  v12 = *(a1 + 32);
  v13 = (*(*v12 + 96))(v9);
  v14 = (*(*v12 + 120))(v13);
  strcpy(v31, "    target: ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  outlined init with copy of IndexPath?(v11, v6);
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    outlined destroy of IndexPath?(v6);
    v17 = 0xE500000000000000;
    v18 = 0x2A6C696E2ALL;
  }

  else
  {
    v19 = MEMORY[0x24C1F8080]();
    v17 = v20;
    (*(v16 + 8))(v6, v15);
    v18 = v19;
  }

  MEMORY[0x24C1FAEA0](v18, v17);

  MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
  v21 = v31[0];
  v22 = v31[1];
  v31[0] = 0xD00000000000002ELL;
  v31[1] = 0x8000000249BEF540;
  MEMORY[0x24C1FAEA0](v21, v22);

  v24 = v31[0];
  v23 = v31[1];
  strcpy(v31, "  proposal: ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  if (!v14)
  {
    v26 = 0xE500000000000000;
    goto LABEL_16;
  }

  v25 = [v14 operation];
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = 0xE400000000000000;
      v2 = 2037411651;
      goto LABEL_16;
    }

    if (v25 == 3)
    {
      v26 = 0xE400000000000000;
      v2 = 1702260557;
      goto LABEL_16;
    }

LABEL_13:
    v26 = 0x8000000249BEF570;
    v2 = 0xD000000000000014;
    goto LABEL_16;
  }

  if (!v25)
  {
    v26 = 0xE600000000000000;
    v2 = 0x6C65636E6143;
    goto LABEL_16;
  }

  if (v25 != 1)
  {
    goto LABEL_13;
  }

  v26 = 0xE90000000000006ELL;
  v2 = 0x6564646962726F46;
LABEL_16:
  MEMORY[0x24C1FAEA0](v2, v26);

  v27 = v31[0];
  v28 = v31[1];
  v31[0] = v24;
  v31[1] = v23;

  MEMORY[0x24C1FAEA0](v27, v28);

  v29 = v31[0];
  outlined destroy of IndexPath?(v11);
  return v29;
}

uint64_t DOCSidebarViewController.DebugDropIndicatorView.rawDebugText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_rawDebugText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DOCSidebarViewController.DebugDropIndicatorView.rawDebugText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_rawDebugText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return (*((*MEMORY[0x277D85000] & *v2) + 0x160))(v6);
}

uint64_t (*DOCSidebarViewController.DebugDropIndicatorView.rawDebugText.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarViewController.DebugDropIndicatorView.rawDebugText.modify;
}

uint64_t DOCSidebarViewController.DebugDropIndicatorView.rawDebugText.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x160))(result);
  }

  return result;
}

Swift::Void __swiftcall DOCSidebarViewController.DebugDropIndicatorView.updateInfoText()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x120))();
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for DOCSidebarDropProposal(0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_6:
    v7 = 0x8000000249BEF590;
    v8 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  v5 = v4;
  if ([v4 intent] == 1)
  {
    _StringGuts.grow(_:)(31);

    v16 = 0x8000000249BEF5D0;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v16 = 0x8000000249BEF5B0;
  }

  type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v6);

  MEMORY[0x24C1FAEA0](0x3A704F202020200ALL, 0xE900000000000020);
  [v5 operation];
  v9 = String.lowercased()();

  MEMORY[0x24C1FAEA0](v9._countAndFlagsBits, v9._object);

  v8 = 0xD000000000000012;
  v7 = v16;
LABEL_9:
  v10 = *((*v1 & *v0) + 0x148);
  v10();
  v11 = String.count.getter();

  if (v11 >= 1)
  {
    v12 = MEMORY[0x24C1FAEA0](2570, 0xE200000000000000);
    v13 = (v10)(v12);
    MEMORY[0x24C1FAEA0](v13);
  }

  v14 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_info);
  v15 = MEMORY[0x24C1FAD20](v8, v7);

  [v14 setText_];
}

id DOCSidebarViewController.DebugDropIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSidebarViewController.DebugDropIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarViewController.DebugDropIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static DOCSidebarViewController.dbg.log(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v4(a1, a2);
}

uint64_t static DOCSidebarViewController.dbg.logIfValueChanged<A>(_:old:new:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = *(*static DOCSidebarViewController.dbg.shared + 160);

  v12(a1, a2, a3, a4, a5, a6);
}

unint64_t one-time initialization function for shared()
{
  type metadata accessor for DOCSidebarViewController.dbg();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 24) = result;
  static DOCSidebarViewController.dbg.shared = v0;
  return result;
}

uint64_t DOCSidebarViewController.dbg.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

Swift::Void __swiftcall DOCSidebarViewController.dbg.log(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = 0x205D446E445BLL;
  *(v3 + 40) = 0xE600000000000000;
  os_log(_:dso:log:type:_:)();
}

Swift::Void __swiftcall DOCSidebarViewController.dbg.logIfChanged(key:_:)(Swift::String key, Swift::String _)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = key._object;
  v7 = key._countAndFlagsBits;
  swift_beginAccess();
  v8 = *(v2 + 24);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
    }

    else
    {
      v13 = 0;
      v12 = 0xE000000000000000;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  if (*(v3 + 16) == 1)
  {

LABEL_9:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, v7, v6, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v16;
    swift_endAccess();
    (*(*v3 + 144))(countAndFlagsBits, object);
    return;
  }

  if (v13 == countAndFlagsBits && v12 == object)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }
}

uint64_t DOCSidebarViewController.dbg.logIfValueChanged<A>(_:old:new:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  v39 = a1;
  v40 = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - v15;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v37 - v20;
  v45 = *(v10 + 16);
  v45(&v37 - v20, a3, v9, v19);
  v22 = *(a5 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v21, 1, a5);
  v44 = a6;
  if (v24 == 1)
  {
    (*(v10 + 8))(v21, v9);
    v38 = 0;
    v25 = 0;
  }

  else
  {
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v26;
    (*(v22 + 8))(v21, a5);
  }

  v43 = v22;
  (v45)(v16, v46, v9);
  if (v23(v16, 1, a5) == 1)
  {
    result = (*(v10 + 8))(v16, v9);
    if (!v25)
    {
      return result;
    }

    goto LABEL_17;
  }

  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  result = (*(v43 + 8))(v16, a5);
  if (!v25)
  {
    if (!v30)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!v30)
  {
LABEL_17:

LABEL_18:
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    v47 = 0x2064657461647075;
    v48 = 0xE800000000000000;
    MEMORY[0x24C1FAEA0](v39, v40);
    MEMORY[0x24C1FAEA0](544175136, 0xE400000000000000);
    v33 = v41;
    (v45)(v41, v46, v9);
    if (v23(v33, 1, a5) == 1)
    {
      v34 = 0xE500000000000000;
      v35 = 0x2A6C696E2ALL;
    }

    else
    {
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v36;
      v10 = v43;
      v9 = a5;
    }

    (*(v10 + 8))(v33, v9);
    MEMORY[0x24C1FAEA0](v35, v34);

    (*(*v42 + 144))(v47, v48);
  }

  if (v38 != v28 || v25 != v30)
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      return result;
    }

    goto LABEL_18;
  }
}

uint64_t DOCSidebarViewController.dbg.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarViewController.dbg.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

void specialized DOCSidebarViewController.DebugDropIndicatorView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_widthSameAsTargetViewConstraint) = 0;
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_lineYPositionInTargetViewConstraint) = 0;
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_constraintsForActiveDropTargetView) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_activeDropTargetView) = 0;
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_currentProposal) = 0;
  v1 = (v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables24DOCSidebarViewController22DebugDropIndicatorView_rawDebugText);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id FISentinelNode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void static FISentinelNode.createSentinelNode.setter(uint64_t a1)
{
  if (one-time initialization token for createSentinelNode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static FISentinelNode.createSentinelNode;
  static FISentinelNode.createSentinelNode = a1;
}

uint64_t (*static FISentinelNode.createSentinelNode.modify())()
{
  if (one-time initialization token for createSentinelNode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static FISentinelNode.createSentinelNode : FISentinelNode.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for createSentinelNode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static FISentinelNode.createSentinelNode;
  *a1 = static FISentinelNode.createSentinelNode;

  return v2;
}

void key path setter for static FISentinelNode.createSentinelNode : FISentinelNode.Type(id *a1)
{
  v1 = one-time initialization token for createSentinelNode;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static FISentinelNode.createSentinelNode;
  static FISentinelNode.createSentinelNode = v2;
}

id @objc FISentinelNode.displayName.getter()
{
  swift_beginAccess();
  v1 = static FPItem.createDocumentSentinelItemIdentifier;
  v0 = off_27EEE8030;

  v2 = MEMORY[0x24C1FAD20](v1, v0);

  return v2;
}

id FISentinelNode.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FISentinelNode();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FISentinelNode.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FISentinelNode.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FISentinelNode();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id FISentinelNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FISentinelNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IntentFile.init<A>(docNode:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](IntentFile.init<A>(docNode:), 0, 0);
}

uint64_t IntentFile.init<A>(docNode:)()
{
  v1 = v0[26];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = IntentFile.init<A>(docNode:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVSgs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?;
  v0[13] = &block_descriptor_117;
  v0[14] = v3;
  [v2 fetchURL_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = IntentFile.init<A>(docNode:);
  }

  else
  {
    v2 = IntentFile.init<A>(docNode:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  outlined init with take of URL?(v0[26], v1);
  outlined init with copy of URL?(v1, v2);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[27];
  if (v5 == 1)
  {
    outlined destroy of URL?(v0[25]);
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v0[23];
    v8 = v0[24];
    v11 = v0[21];
    v10 = v0[22];
    v13 = v0[19];
    v12 = v0[20];
    (*(v10 + 32))(v8);
    (*(v10 + 16))(v9, v8, v11);
    v14 = [v13 filename];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = [v13 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UTType();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
    IntentFile.init(fileURL:filename:type:)();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v11);
  }

  outlined destroy of URL?(v6);

  v7 = v0[1];

  return v7();
}

{
  swift_willThrow();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v15 = swift_allocError();
    *v16 = a3;
    v17 = a3;

    return MEMORY[0x282200958](v14, v15);
  }

  else
  {
    if (a2)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
    }

    else
    {
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    }

    outlined init with take of URL?(v9, v13);
    outlined init with take of URL?(v13, *(*(v14 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8NSNumberCG_SSs5NeverOTg50132_sSo23DOCAppProtectionManagerC08DocumentC11ExecutablesE32appContainerOIDsToHideFromSearchSaySSGSgvgAESo15DOCProtectedAppCXEfU0_SSSo8D6CXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        specialized Set.subscript.getter(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 stringValue];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8NSNumberC_GMd);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            outlined consume of Set<UIPress>.Index._Variant(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                outlined consume of Set<UIPress>.Index._Variant(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            outlined consume of Set<UIPress>.Index._Variant(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for DOCOperationItem();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd);
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v48 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v42 = &v40 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v41 = &v40 - v21;
  v22 = *(a1 + 16);
  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v23 = 0;
  v54 = (v9 + 32);
  v50 = (v9 + 8);
  v24 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v56 = *(v4 + 72);
  v51 = v24;
  v52 = MEMORY[0x277D84F90];
  v46 = v7;
  v47 = v3;
  v45 = v22;
  do
  {
    outlined init with copy of DOCOperationItem(v24 + v56 * v23, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of DOCOperationItem(v7);
    }

    else
    {
      v25 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMd) + 48)];
      v26 = *(v25 + 1);
      v53 = *v25;
      v27 = *v54;
      (*v54)(v12, v7, v8);
      v55 = v26;
      if (v26)
      {
        v28 = *(*v49 + 16);

        v29 = 0;
        do
        {
          if (v28 == v29)
          {

            (*v50)(v12, v8);

            v7 = v46;
            v22 = v45;
            goto LABEL_17;
          }

          v30 = v29 + 1;
          _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v29 = v30;
        }

        while ((v31 & 1) == 0);

        v32 = v42;
        v33 = &v42[*(v44 + 48)];
        v27(v42, v12, v8);
        v34 = v55;
        *v33 = v53;
        *(v33 + 1) = v34;
        v35 = v41;
        outlined init with take of (key: URL, value: FPItem)(v32, v41, &_s10Foundation3URLV_SStMd);
        outlined init with take of (key: URL, value: FPItem)(v35, v48, &_s10Foundation3URLV_SStMd);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
        }

        v7 = v46;
        v22 = v45;
        v37 = v52[2];
        v36 = v52[3];
        if (v37 >= v36 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v52);
        }

        v38 = v52;
        v52[2] = v37 + 1;
        outlined init with take of (key: URL, value: FPItem)(v48, v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37, &_s10Foundation3URLV_SStMd);
      }

      else
      {
        (*v50)(v12, v8);
      }

LABEL_17:
      v24 = v51;
    }

    ++v23;
  }

  while (v23 != v22);
  return v52;
}

uint64_t FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v179 = a6;
  v176 = a5;
  v174 = a4;
  v15 = type metadata accessor for URL();
  v189 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v192 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v183 = &v173 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v188 = &v173 - v23;
  v196 = type metadata accessor for DOCOperationItem();
  v182 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v24);
  v173 = (&v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26, v27);
  v29 = (&v173 - v28);
  v178 = a8;
  v175 = a7;
  v180 = v9;
  if (!a1)
  {
    goto LABEL_6;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_5:
    v32 = 0;
    goto LABEL_10;
  }

  if (a1 == 1)
  {
    goto LABEL_6;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_5;
  }

  if (a1 == 2)
  {
LABEL_6:

    v32 = 0;
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v32 = v33 ^ 1;
  }

LABEL_10:
  v181 = a1;
  v205 = MEMORY[0x277D84F90];
  v206 = MEMORY[0x277D84F90];
  v34 = *(a2 + 16);
  v187 = a3;
  v177 = a2;
  if (v34)
  {
    v35 = a2 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    v36 = *(v182 + 72);
    v37 = (v189 + 32);
    LODWORD(v195) = v32 | (a3 == 0);
    v190 = (v189 + 8);
    v191 = v29 + 1;
    v184 = (v189 + 16);
    v193 = MEMORY[0x277D84F90];
    v194 = v15;
    v197 = MEMORY[0x277D84F90];
    v38 = v188;
    v186 = v36;
    v185 = (v189 + 32);
    while (1)
    {
      outlined init with copy of DOCOperationItem(v35, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = *v29;
        if (v195)
        {
          v40 = swift_unknownObjectRetain();
          MEMORY[0x24C1FB090](v40);
          if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v194;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          v193 = v205;
        }

        else
        {
          v53 = objc_opt_self();
          swift_unknownObjectRetain();
          v54 = [v53 defaultPermission];
          v55 = [v54 canNode:v39 performAction:1 node:a3];

          if (v55)
          {
            v56 = swift_unknownObjectRetain();
            MEMORY[0x24C1FB090](v56);
            if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v193 = v205;
          }

          else
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          v15 = v194;
        }

        goto LABEL_14;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg4nameSb12isURLManagedtMd);

      v42 = *(v29 + *(v41 + 64));
      v43 = *v37;
      (*v37)(v38, v29, v15);
      if (v195)
      {
        (*v184)(v192, v38, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v197[2] + 1, 1, v197);
        }

        v45 = v197[2];
        v44 = v197[3];
        if (v45 >= v44 >> 1)
        {
          v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v197);
        }

        v46 = v188;
        v47 = v189;
        v15 = v194;
        (*(v189 + 8))(v188, v194);
        v48 = v197;
        v197[2] = v45 + 1;
        v49 = v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v50 = *(v47 + 72);
        v38 = v46;
        v51 = &v49[v50 * v45];
        v52 = v192;
      }

      else
      {
        if (v42)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        v58 = objc_opt_self();
        swift_unknownObjectRetain();
        v59 = [v58 defaultPermission];
        v60 = [v59 canAppWithDataOwnerState:v57 performAction:1 node:a3];

        if (!v60)
        {
          v15 = v194;
          (*v190)(v38, v194);
          swift_unknownObjectRelease();
          goto LABEL_14;
        }

        (*v184)(v183, v38, v194);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v197[2] + 1, 1, v197);
        }

        v62 = v197[2];
        v61 = v197[3];
        if (v62 >= v61 >> 1)
        {
          v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v197);
        }

        swift_unknownObjectRelease();
        v63 = v188;
        v64 = v189;
        v15 = v194;
        (*(v189 + 8))(v188, v194);
        v48 = v197;
        v197[2] = v62 + 1;
        v65 = v48 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v66 = *(v64 + 72);
        v38 = v63;
        v51 = &v65[v66 * v62];
        v52 = v183;
      }

      v37 = v185;
      v43(v51, v52, v15);
      v206 = v48;
      a3 = v187;
      v36 = v186;
LABEL_14:
      v35 += v36;
      if (!--v34)
      {
        goto LABEL_42;
      }
    }
  }

  v193 = MEMORY[0x277D84F90];
  v197 = MEMORY[0x277D84F90];
LABEL_42:
  v67 = a9;
  v68 = v193;
  v69 = v193 >> 62;
  if (!v197[2])
  {
    if (v69)
    {
      v78 = __CocoaSet.count.getter();
    }

    else
    {
      v78 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v79 = v181;
    if (v78)
    {
      All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v68);
      if (All)
      {
        v81 = All;
        if (All >> 62)
        {
          if (__CocoaSet.count.getter() >= 2)
          {
            goto LABEL_56;
          }
        }

        else if (*((All & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
        {
LABEL_56:
          v82 = swift_allocObject();
          v83 = v180;
          *(v82 + 16) = v180;
          *(v82 + 24) = v79;
          *(v82 + 32) = a3;
          *(v82 + 40) = v174 & 1;
          *(v82 + 48) = v176;
          *(v82 + 56) = v179 & 1;
          v84 = v175;
          v85 = v178;
          *(v82 + 64) = v175;
          *(v82 + 72) = v85;
          *(v82 + 80) = a9;
          swift_unknownObjectRetain();
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v85);
          v86 = v83;
          v87 = v84;
          specialized FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:)(v81, v68, partial apply for closure #2 in FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:), v82);
        }

        if (v69)
        {
          v165 = __CocoaSet.count.getter();
        }

        else
        {
          v165 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v166 = MEMORY[0x277D84F90];
        if (v165)
        {
          aBlock = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v165 & ~(v165 >> 63), 0);
          if (v165 < 0)
          {
            __break(1u);
            goto LABEL_140;
          }

          v167 = 0;
          v166 = aBlock;
          v168 = v68 & 0xC000000000000001;
          v169 = v173;
          do
          {
            if (v168)
            {
              v170 = MEMORY[0x24C1FC540](v167, v68);
            }

            else
            {
              v170 = swift_unknownObjectRetain();
            }

            *v169 = v170;
            swift_storeEnumTagMultiPayload();
            aBlock = v166;
            v172 = *(v166 + 16);
            v171 = *(v166 + 24);
            if (v172 >= v171 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v171 > 1, v172 + 1, 1);
              v169 = v173;
              v166 = aBlock;
            }

            ++v167;
            *(v166 + 16) = v172 + 1;
            outlined init with take of DOCOperationItem(v169, v166 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v172);
            v68 = v193;
          }

          while (v165 != v167);
          v79 = v181;
          v67 = a9;
        }

        FPItemManager.continuePerformOperation(_:sourceItems:sourceNodes:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(v79, v81, v68, v166, v187, v174 & 1, v176, v179 & 1, v175, v178, v67);
      }

LABEL_91:
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.UI);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      aBlock = v101;
      *v100 = 136315394;
      *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BEFA00, &aBlock);
      v102 = 0xE400000000000000;
      *(v100 + 12) = 2080;
      v103 = 0xE700000000000000;
      v104 = 0x65766968637241;
      if (v79 != 6)
      {
        v104 = 0x7669686372616E55;
        v103 = 0xE900000000000065;
      }

      v105 = 0xE700000000000000;
      v106 = 0x68736172746E55;
      if (v79 != 4)
      {
        v106 = 0x6574656C6544;
        v105 = 0xE600000000000000;
      }

      if (v79 <= 5u)
      {
        v104 = v106;
        v103 = v105;
      }

      v107 = 0x746163696C707544;
      v108 = 0xE900000000000065;
      if (v79 != 2)
      {
        v107 = 0x6873617254;
        v108 = 0xE500000000000000;
      }

      v109 = 2037411651;
      if (v79)
      {
        v102 = 0xE400000000000000;
      }

      else
      {
        v109 = 1702260557;
      }

      if (v79 > 1u)
      {
        v102 = v108;
      }

      else
      {
        v107 = v109;
      }

      if (v79 <= 3u)
      {
        v110 = v107;
      }

      else
      {
        v110 = v104;
      }

      if (v79 <= 3u)
      {
        v111 = v102;
      }

      else
      {
        v111 = v103;
      }

      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &aBlock);

      *(v100 + 14) = v112;
      _os_log_impl(&dword_2493AC000, v98, v99, "%s: No sourceURLs and no sourceNodes, ending operation: %s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v101, -1, -1);
      MEMORY[0x24C1FE850](v100, -1, -1);

      v113 = v178;
      if (!v178)
      {
        goto LABEL_91;
      }
    }

    else
    {

      v113 = v178;
      if (!v178)
      {
        goto LABEL_91;
      }
    }

    v113(0);
    goto LABEL_91;
  }

  if (v69)
  {
    v70 = __CocoaSet.count.getter();
  }

  else
  {
    v70 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v181;
  if (v70)
  {
    goto LABEL_140;
  }

  if (v181)
  {
    if (v181 == 1)
    {
      if (!a3)
      {
        goto LABEL_91;
      }

      v89 = objc_opt_self();
      swift_unknownObjectRetain();
      v90 = [v89 shared];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      specialized makeDOCCopyOperation(urls:destinationFolder:undoManager:)(v197, a3, v90, ObjectType);
      v75 = v92;
      v77 = v93;

      swift_unknownObjectRelease_n();
      if (!v75)
      {
        goto LABEL_91;
      }

      goto LABEL_60;
    }

    aBlock = 0;
    v199 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    MEMORY[0x24C1FAEA0](0x7020746F6E6E6143, 0xEF206D726F667265);
    LOBYTE(v204) = v71;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BEF950);
LABEL_140:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (!a3)
  {
    goto LABEL_91;
  }

  v72 = objc_opt_self();
  swift_unknownObjectRetain();
  v73 = [v72 shared];
  specialized makeDOCMoveOperation(urls:destinationFolder:undoManager:)(v197, a3);
  v75 = v74;
  v77 = v76;

  swift_unknownObjectRelease();
  if (!v75)
  {
    goto LABEL_91;
  }

LABEL_60:
  v94 = *(v77 + 8);
  objc_opt_self();
  v95 = swift_dynamicCastObjCClass();
  swift_unknownObjectRetain();
  if (v95)
  {
    swift_unknownObjectRetain();
    if (specialized Sequence.compactMap<A>(_:)(v177, &v206)[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSSGMd);
      v96 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v96 = MEMORY[0x277D84F98];
    }

    aBlock = v96;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v114, 1, &aBlock);

    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v95 setTargetFilenamesByURL_];
    swift_unknownObjectRelease();

    swift_unknownObjectRetain();
    if (v174)
    {
      [v95 setShouldBounceOnCollision_];
    }

    if ((v179 & 1) == 0)
    {
      [v95 setLastUsageUpdatePolicy_];
    }

    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v116 = swift_dynamicCastObjCClass();
  v117 = v175;
  v118 = v180;
  if (v116)
  {
    v119 = v116;
    v120 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v121 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v122 = swift_allocObject();
    *(v122 + 16) = v120;
    *(v122 + 24) = v121;
    v202 = partial apply for closure #1 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
    v203 = v122;
    aBlock = MEMORY[0x277D85DD0];
    v199 = 1107296256;
    v200 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v201 = &block_descriptor_33_1;
    v123 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v119 setErrorRecoveryHandler_];
    _Block_release(v123);
    swift_unknownObjectRelease();
  }

  v124 = swift_allocObject();
  v125 = v178;
  *(v124 + 16) = v178;
  *(v124 + 24) = a9;
  *(v124 + 32) = v75;
  *(v124 + 40) = v94;
  v196 = v94;
  *(v124 + 48) = v187;
  *(v124 + 56) = v181;
  *(v124 + 64) = v118;
  *(v124 + 72) = v117;
  v126 = v176;
  *(v124 + 80) = v177;
  *(v124 + 88) = v126;
  *(v124 + 96) = v179 & 1;
  type metadata accessor for DOCArchiveOperation();
  v127 = swift_dynamicCastClass();
  if (v127)
  {
    v128 = v127;
    v129 = swift_allocObject();
    v129[2] = v128;
    v129[3] = partial apply for closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
    v129[4] = v124;
    v202 = partial apply for closure #3 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
    v203 = v129;
    aBlock = MEMORY[0x277D85DD0];
    v199 = 1107296256;
    v200 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    v201 = &block_descriptor_21_4;
    v130 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain_n();
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v125);
    v131 = v180;
    v132 = v117;

    [v128 setArchiveCompletionBlock_];
LABEL_106:
    _Block_release(v130);
    swift_unknownObjectRelease_n();
    v144 = v196;
    goto LABEL_107;
  }

  v133 = v180;
  type metadata accessor for DOCUnarchiveOperation();
  v134 = swift_dynamicCastClass();
  if (v134)
  {
    v135 = v134;
    v136 = swift_allocObject();
    v136[2] = v135;
    v136[3] = partial apply for closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
    v136[4] = v124;
    v202 = partial apply for closure #4 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
    v203 = v136;
    aBlock = MEMORY[0x277D85DD0];
    v199 = 1107296256;
    v200 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    v201 = &block_descriptor_15_2;
    v130 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain_n();
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v125);
    v137 = v133;
    v138 = v117;

    [v135 setUnarchiveCompletionBlock_];
    goto LABEL_106;
  }

  type metadata accessor for DOCCopyOperation();
  v139 = swift_dynamicCastClass();
  if (v139)
  {
    v140 = v139;
    v141 = swift_allocObject();
    v141[2] = v140;
    v141[3] = partial apply for closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
    v141[4] = v124;
    v202 = partial apply for closure #5 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
    v203 = v141;
    aBlock = MEMORY[0x277D85DD0];
    v199 = 1107296256;
    v200 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v201 = &block_descriptor_118;
    v130 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain_n();
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v125);
    v142 = v133;
    v143 = v117;

    [v140 setActionCompletionBlock_];
    goto LABEL_106;
  }

  v195 = swift_getObjectType();
  v160 = swift_allocObject();
  *(v160 + 16) = partial apply for closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
  *(v160 + 24) = v124;
  v161 = v196;
  v162 = *(v196 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v125);
  v163 = v133;
  v164 = v117;

  v162(partial apply for closure #6 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:), v160, v195, v161);
  v144 = v161;
LABEL_107:
  if ([objc_opt_self() useFIOperations])
  {
    type metadata accessor for DOC_FICopyOperation();
    v145 = swift_dynamicCastClass();
    if (v145)
    {
      v146 = v145;
      v147 = swift_allocObject();
      v147[2] = v146;
      v147[3] = partial apply for closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
      v147[4] = v124;
      v148 = *((*MEMORY[0x277D85000] & *v146) + 0x108);
      swift_unknownObjectRetain();

      v148(partial apply for closure #7 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:), v147);
      v144 = v196;
    }
  }

  v149 = swift_getObjectType();
  (*(v144 + 40))(25, v149, v144);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v150 = type metadata accessor for Logger();
  __swift_project_value_buffer(v150, static Logger.UI);
  swift_unknownObjectRetain();
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v204 = v154;
    *v153 = 136315650;
    *(v153 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008DLL, 0x8000000249BEF970, &v204);
    *(v153 + 12) = 2080;
    if (v181)
    {
      v155 = 2037411651;
    }

    else
    {
      v155 = 1702260557;
    }

    v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, 0xE400000000000000, &v204);

    *(v153 + 14) = v156;
    *(v153 + 22) = 2080;
    v144 = v196;
    aBlock = v75;
    v199 = v196;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13SomeOperation_pMd);
    v157 = String.init<A>(describing:)();
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, &v204);

    *(v153 + 24) = v159;
    _os_log_impl(&dword_2493AC000, v151, v152, "%s: Adding %s Operation %s", v153, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v154, -1, -1);
    MEMORY[0x24C1FE850](v153, -1, -1);
  }

  specialized FPItemManager.scheduleOperation(_:)(v75, v149, v144);

  swift_unknownObjectRelease_n();
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void FPItemManager.disconnect(domain:alertPresenting:)(void *a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  *(v3 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
  *(v3 + 64) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPProviderDomain and conformance NSObject, &lazy cache variable for type metadata for FPProviderDomain);
  *(v3 + 32) = a1;
  v4 = a1;
  os_log(_:dso:log:type:_:)();

  v5 = [objc_allocWithZone(MEMORY[0x277CC63B8]) initWithDomain_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v18 = partial apply for closure #1 in FPItemManager.disconnect(domain:alertPresenting:);
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v17 = &block_descriptor_44_5;
  v9 = _Block_copy(&v14);
  v10 = v5;

  [v10 setErrorRecoveryHandler_];
  _Block_release(v9);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  v18 = partial apply for closure #2 in FPItemManager.disconnect(domain:alertPresenting:);
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v17 = &block_descriptor_50_3;
  v12 = _Block_copy(&v14);
  v13 = v4;

  [v10 setActionCompletionBlock_];
  _Block_release(v12);

  [v1 scheduleAction_];
}

void FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DOCOperationItem();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8, a1);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v31 = v9;
    v32 = __CocoaSet.count.getter();
    v9 = v31;
    v12 = v32;
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = a3;
  v35 = a4;
  v36 = a2;
  if (!v12)
  {
    v14 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  if (v12 >= 1)
  {
    v13 = 0;
    v43 = *MEMORY[0x277CC6058];
    v42 = v9 & 0xC000000000000001;
    v38 = *MEMORY[0x277CC5FE0];
    v14 = MEMORY[0x277D84F90];
    v41 = xmmword_249BA0290;
    v37 = MEMORY[0x277D84F90];
    v15 = v9;
    do
    {
      if (v42)
      {
        v16 = MEMORY[0x24C1FC540](v13);
      }

      else
      {
        v16 = *(v9 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = MEMORY[0x24C1FDA70]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = v41;
      *(v19 + 32) = v17;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v20 = v17;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v22 = [v44 eligibleActionsForItems_];

      type metadata accessor for FPAction(0);
      _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
      v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Set.contains(_:)(v43, v23))
      {

        *v11 = v20;
        swift_storeEnumTagMultiPayload();
        v24 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
        }

        v26 = v14[2];
        v25 = v14[3];
        if (v26 >= v25 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v14);
        }

        v14[2] = v26 + 1;
        outlined init with take of DOCOperationItem(v11, v14 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26);
      }

      else
      {
        v27 = specialized Set.contains(_:)(v38, v23);

        if (v27)
        {
          v28 = v20;
          MEMORY[0x24C1FB090]();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v37 = v45;
        }
      }

      ++v13;
      objc_autoreleasePoolPop(v18);

      v9 = v15;
    }

    while (v12 != v13);
LABEL_21:
    v29 = v36;
    if (v14[2])
    {
      FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(3u, v14, 0, 0, 0, 1, v36, 0, 0);
    }

    v30 = v37;
    if (v37 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_26;
      }
    }

    else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:

      return;
    }

    FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(v30, v29, 0, v34, v35);
    goto LABEL_26;
  }

  __break(1u);
}

void FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = type metadata accessor for DOCBlockOperation();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v12 = partial apply for closure #1 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:);
  v12[1] = v9;
  v46.receiver = v11;
  v46.super_class = v10;

  v13 = objc_msgSendSuper2(&v46, sel_init);
  v14 = objc_allocWithZone(type metadata accessor for DOCDeletePreflightUIOperation());
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCDeletePreflightUIOperation_items] = a1;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v45.receiver = v14;
  v45.super_class = type metadata accessor for DOCActionUIOperation();

  v15 = objc_msgSendSuper2(&v45, sel_init);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v5;
  v16[4] = a2;
  v17 = objc_allocWithZone(v10);
  v18 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v18 = partial apply for closure #2 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:);
  *(v18 + 1) = v16;
  v44.receiver = v17;
  v44.super_class = v10;

  v19 = v5;
  v20 = a2;
  v21 = objc_msgSendSuper2(&v44, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249BA1010;
  *(v22 + 32) = v13;
  *(v22 + 40) = v15;
  v23 = type metadata accessor for DOCChainOperation();
  v24 = objc_allocWithZone(v23);
  v25 = v13;
  v26 = v15;
  v27 = DOCChainOperation.init(operations:)(v22);
  v43 = 1;
  v28 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v27) + 0x150))(&v43);
  v29 = swift_allocObject();
  if (a3)
  {
    *(v29 + 16) = xmmword_249BA0290;
    *(v29 + 32) = v21;
    v30 = objc_allocWithZone(v23);
    v31 = v21;
  }

  else
  {
    *(v29 + 16) = xmmword_249BA1010;
    *(v29 + 32) = v27;
    *(v29 + 40) = v21;
    v32 = objc_allocWithZone(v23);
    v33 = v21;
    v34 = v27;
  }

  v35 = DOCChainOperation.init(operations:)(v29);
  v43 = 0;
  v36 = *((*v28 & *v35) + 0x150);
  v37 = v35;
  v36(&v43);

  if (a4)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a4;
    *(v38 + 24) = a5;
    v39 = *((*v28 & *v37) + 0xB0);

    v39(partial apply for closure #3 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:), v38);
  }

  v40 = [objc_opt_self() mainQueue];
  [v40 addOperation_];
}

uint64_t specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 168) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  return MEMORY[0x2822009F8](specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:), 0, 0);
}

uint64_t specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v3 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v3;
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v37 = v1 & 0xC000000000000001;
    v38 = *MEMORY[0x277CC6058];
    v35 = *(v0 + 32) + 32;
    v36 = *MEMORY[0x277CC5FE0];
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
    v39 = v2;
    do
    {
      if (v37)
      {
        v8 = MEMORY[0x24C1FC540](v4, *(v0 + 32));
      }

      else
      {
        v8 = *(v35 + 8 * v4);
      }

      v9 = v8;
      v10 = *(v0 + 40);
      v11 = MEMORY[0x24C1FDA70]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_249BA0290;
      *(v12 + 32) = v9;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v13 = v9;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v15 = [v10 eligibleActionsForItems_];

      type metadata accessor for FPAction(0);
      _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Set.contains(_:)(v38, v16))
      {

        v7 = v13;
        MEMORY[0x24C1FB090]();
        if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = *(v0 + 16);
      }

      else
      {
        v17 = specialized Set.contains(_:)(v36, v16);

        if (v17)
        {
          v18 = v13;
          MEMORY[0x24C1FB090]();
          if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = *(v0 + 24);
        }
      }

      ++v4;
      *(v0 + 64) = v6;
      *(v0 + 72) = v5;
      *(v0 + 48) = v5;
      *(v0 + 56) = v6;
      objc_autoreleasePoolPop(v11);
    }

    while (v39 != v4);
    if (*(v0 + 168) == 1)
    {
      v19 = swift_task_alloc();
      *(v0 + 80) = v19;
      *v19 = v0;
      v20 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
LABEL_19:
      v19[1] = v20;

      return closure #3 in TrashItemsIntent.perform()();
    }

    v22 = *(v0 + 48);
    if (!(v22 >> 62))
    {
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_24:
        v23 = *(v0 + 72);
        v24 = *(v0 + 40);
        v25 = swift_task_alloc();
        *(v0 + 96) = v25;
        *(v25 + 16) = v24;
        *(v25 + 24) = v23;
        v26 = swift_task_alloc();
        *(v0 + 104) = v26;
        *v26 = v0;
        v26[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
        v27 = closure #1 in FPItemManager.trashItems(_:confirmationHandler:)partial apply;
        v28 = 0x8000000249BEFAA0;
        v29 = MEMORY[0x277D84F78] + 8;
        v30 = 0xD000000000000022;
LABEL_25:

        return MEMORY[0x2822008A0](v26, 0, 0, v30, v28, v27, v25, v29);
      }

      goto LABEL_32;
    }
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_24;
  }

LABEL_32:
  v31 = *(v0 + 56);
  *(v0 + 120) = *(v0 + 48);
  if (v31 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_34;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    if ((*(v0 + 168) & 1) == 0)
    {
      v19 = swift_task_alloc();
      *(v0 + 128) = v19;
      *v19 = v0;
      v20 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
      goto LABEL_19;
    }

    v32 = *(v0 + 64);
    v33 = *(v0 + 40);
    v25 = swift_task_alloc();
    *(v0 + 144) = v25;
    *(v25 + 16) = v33;
    *(v25 + 24) = v32;
    v26 = swift_task_alloc();
    *(v0 + 152) = v26;
    *v26 = v0;
    v26[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
    v27 = closure #1 in FPItemManager.deleteItems(_:confirmationHandler:)partial apply;
    v30 = 0xD000000000000023;
    v28 = 0x8000000249BEFAD0;
    v29 = MEMORY[0x277D84F78] + 8;
    goto LABEL_25;
  }

LABEL_39:
  v34 = *(v0 + 8);

  return v34();
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {
    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(v0 + 72);
    v3 = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
    v6 = closure #1 in FPItemManager.trashItems(_:confirmationHandler:)partial apply;
    v7 = 0x8000000249BEFAA0;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = 0xD000000000000022;
LABEL_4:

    return MEMORY[0x2822008A0](v5, 0, 0, v9, v7, v6, v4, v8);
  }

  v10 = *(v0 + 56);
  *(v0 + 120) = *(v0 + 48);
  if (v10 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }

LABEL_16:

    v14 = *(v0 + 8);

    return v14();
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_10:
  if (*(v0 + 168))
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *(v4 + 16) = v12;
    *(v4 + 24) = v11;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
    v6 = closure #1 in FPItemManager.deleteItems(_:confirmationHandler:)partial apply;
    v9 = 0xD000000000000023;
    v7 = 0x8000000249BEFAD0;
    v8 = MEMORY[0x277D84F78] + 8;
    goto LABEL_4;
  }

  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);

  return closure #3 in TrashItemsIntent.perform()();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {

    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {
    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {

    v2 = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[8];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000023, 0x8000000249BEFAD0, closure #1 in FPItemManager.deleteItems(_:confirmationHandler:)partial apply, v3, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(v0 + 120) = *(v0 + 72);
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if (*(v0 + 168))
      {
        v2 = *(v0 + 64);
        v3 = *(v0 + 40);
        v4 = swift_task_alloc();
        *(v0 + 144) = v4;
        *(v4 + 16) = v3;
        *(v4 + 24) = v2;
        v5 = swift_task_alloc();
        *(v0 + 152) = v5;
        *v5 = v0;
        v5[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
        v6 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000023, 0x8000000249BEFAD0, closure #1 in FPItemManager.deleteItems(_:confirmationHandler:)partial apply, v4, v6);
      }

      else
      {
        v7 = swift_task_alloc();
        *(v0 + 128) = v7;
        *v7 = v0;
        v7[1] = specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);

        return closure #3 in TrashItemsIntent.perform()();
      }
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 184) = a4;
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:), 0, 0);
}

uint64_t FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v3 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v3;
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v38 = v1 & 0xC000000000000001;
    v39 = *MEMORY[0x277CC6058];
    v36 = *(v0 + 32) + 32;
    v37 = *MEMORY[0x277CC5FE0];
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
    v40 = v2;
    do
    {
      if (v38)
      {
        v8 = MEMORY[0x24C1FC540](v4, *(v0 + 32));
      }

      else
      {
        v8 = *(v36 + 8 * v4);
      }

      v9 = v8;
      v10 = *(v0 + 56);
      v11 = MEMORY[0x24C1FDA70]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_249BA0290;
      *(v12 + 32) = v9;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v13 = v9;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v15 = [v10 eligibleActionsForItems_];

      type metadata accessor for FPAction(0);
      _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
      v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Set.contains(_:)(v39, v16))
      {

        v7 = v13;
        MEMORY[0x24C1FB090]();
        if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = *(v0 + 16);
      }

      else
      {
        v17 = specialized Set.contains(_:)(v37, v16);

        if (v17)
        {
          v18 = v13;
          MEMORY[0x24C1FB090]();
          if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = *(v0 + 24);
        }
      }

      ++v4;
      *(v0 + 80) = v6;
      *(v0 + 88) = v5;
      *(v0 + 64) = v5;
      *(v0 + 72) = v6;
      objc_autoreleasePoolPop(v11);
    }

    while (v40 != v4);
    if (*(v0 + 184) == 1)
    {
      v41 = (*(v0 + 40) + **(v0 + 40));
      v19 = swift_task_alloc();
      *(v0 + 96) = v19;
      *v19 = v0;
      v20 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
LABEL_19:
      v19[1] = v20;

      return v41();
    }

    v22 = *(v0 + 64);
    if (!(v22 >> 62))
    {
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_24:
        v23 = *(v0 + 88);
        v24 = *(v0 + 56);
        v25 = swift_task_alloc();
        *(v0 + 112) = v25;
        *(v25 + 16) = v24;
        *(v25 + 24) = v23;
        v26 = swift_task_alloc();
        *(v0 + 120) = v26;
        *v26 = v0;
        v26[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
        v27 = partial apply for closure #1 in FPItemManager.trashItems(_:confirmationHandler:);
        v28 = 0x8000000249BEFAA0;
        v29 = MEMORY[0x277D84F78] + 8;
        v30 = 0xD000000000000022;
LABEL_25:

        return MEMORY[0x2822008A0](v26, 0, 0, v30, v28, v27, v25, v29);
      }

      goto LABEL_32;
    }
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_24;
  }

LABEL_32:
  v31 = *(v0 + 72);
  *(v0 + 136) = *(v0 + 64);
  if (v31 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_34;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    if ((*(v0 + 184) & 1) == 0)
    {
      v34 = *(v0 + 40);

      v41 = (v34 + *v34);
      v19 = swift_task_alloc();
      *(v0 + 144) = v19;
      *v19 = v0;
      v20 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
      goto LABEL_19;
    }

    v32 = *(v0 + 80);
    v33 = *(v0 + 56);
    v25 = swift_task_alloc();
    *(v0 + 160) = v25;
    *(v25 + 16) = v33;
    *(v25 + 24) = v32;
    v26 = swift_task_alloc();
    *(v0 + 168) = v26;
    *v26 = v0;
    v26[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
    v27 = partial apply for closure #1 in FPItemManager.deleteItems(_:confirmationHandler:);
    v30 = 0xD000000000000023;
    v28 = 0x8000000249BEFAD0;
    v29 = MEMORY[0x277D84F78] + 8;
    goto LABEL_25;
  }

LABEL_39:
  v35 = *(v0 + 8);

  return v35();
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {
    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(v0 + 88);
    v3 = *(v0 + 56);
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
    v6 = partial apply for closure #1 in FPItemManager.trashItems(_:confirmationHandler:);
    v7 = 0x8000000249BEFAA0;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = 0xD000000000000022;
LABEL_4:

    return MEMORY[0x2822008A0](v5, 0, 0, v9, v7, v6, v4, v8);
  }

  v10 = *(v0 + 72);
  *(v0 + 136) = *(v0 + 64);
  if (v10 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }

LABEL_16:

    v15 = *(v0 + 8);

    return v15();
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_10:
  if (*(v0 + 184))
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *(v4 + 16) = v12;
    *(v4 + 24) = v11;
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
    v6 = partial apply for closure #1 in FPItemManager.deleteItems(_:confirmationHandler:);
    v9 = 0xD000000000000023;
    v7 = 0x8000000249BEFAD0;
    v8 = MEMORY[0x277D84F78] + 8;
    goto LABEL_4;
  }

  v13 = *(v0 + 40);

  v17 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);

  return v17();
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {

    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 136) = *(v0 + 88);
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if (*(v0 + 184))
      {
        v2 = *(v0 + 80);
        v3 = *(v0 + 56);
        v4 = swift_task_alloc();
        *(v0 + 160) = v4;
        *(v4 + 16) = v3;
        *(v4 + 24) = v2;
        v5 = swift_task_alloc();
        *(v0 + 168) = v5;
        *v5 = v0;
        v5[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
        v6 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000023, 0x8000000249BEFAD0, partial apply for closure #1 in FPItemManager.deleteItems(_:confirmationHandler:), v4, v6);
      }

      else
      {
        v7 = *(v0 + 40);

        v11 = (v7 + *v7);
        v8 = swift_task_alloc();
        *(v0 + 144) = v8;
        *v8 = v0;
        v8[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);

        return v11();
      }
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v9 = *(v0 + 8);

  return v9();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {
    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = v0[10];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000023, 0x8000000249BEFAD0, partial apply for closure #1 in FPItemManager.deleteItems(_:confirmationHandler:), v3, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  else
  {

    v2 = FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void FPItemManager.unarchiveInPlace(item:alertPresenting:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9FA70;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = 0xD000000000000032;
  *(v9 + 40) = 0x8000000249BEFB20;
  *(v9 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  *(v9 + 104) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
  *(v9 + 72) = a1;
  v10 = a1;
  os_log(_:dso:log:type:_:)();

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v10;
  v11[5] = v4;
  v11[6] = a2;
  v16[4] = partial apply for closure #1 in FPItemManager.unarchiveInPlace(item:alertPresenting:completion:);
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  v16[3] = &block_descriptor_70_4;
  v12 = _Block_copy(v16);
  v13 = v10;

  v14 = v4;
  v15 = a2;

  [v13 fetchParent_];
  _Block_release(v12);
}

void FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a5;
  *(v15 + 41) = a4;
  v16 = type metadata accessor for DOCBlockOperation();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v18 = partial apply for closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:);
  v18[1] = v15;
  v36.receiver = v17;
  v36.super_class = v16;
  v19 = a1;

  v20 = objc_msgSendSuper2(&v36, sel_init);
  v21 = objc_allocWithZone(type metadata accessor for DOCCreateNewFolderPostflightUIOperation());
  v22 = &v21[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName];
  *v22 = a2;
  *(v22 + 1) = a3;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v35.receiver = v21;
  v35.super_class = type metadata accessor for DOCActionUIOperation();

  v23 = objc_msgSendSuper2(&v35, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249BA1010;
  *(v24 + 32) = v20;
  *(v24 + 40) = v23;
  v25 = objc_allocWithZone(type metadata accessor for DOCChainOperation());
  v26 = v20;
  v27 = v23;
  v28 = DOCChainOperation.init(operations:)(v24);
  v29 = swift_allocObject();
  *(v29 + 16) = a7;
  *(v29 + 24) = a8;
  v30 = MEMORY[0x277D85000];
  v31 = *((*MEMORY[0x277D85000] & *v28) + 0xB0);
  v32 = v28;

  v31(partial apply for closure #2 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), v29);

  v34 = 1;
  (*((*v30 & *v32) + 0x150))(&v34);
  v33 = [objc_opt_self() mainQueue];
  [v33 addOperation_];
}

uint64_t FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 73) = a5;
  *(v5 + 72) = a4;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return MEMORY[0x2822009F8](FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:), 0, 0);
}

uint64_t FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:)()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 72);
  v8 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 41) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  *v5 = v0;
  v5[1] = FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000003CLL, 0x8000000249BE7590, _sSo13FPItemManagerC08DocumentB11ExecutablesE6rename4item4name18overwriteExtension22shouldDonateAppIntentsSo0A0CAJ_SSS2btYaKFyScCyAJs5Error_pGXEfU_TA_0, v4, v6);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:);
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFPItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 73) = a5;
  *(v5 + 72) = a4;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return MEMORY[0x2822009F8](FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:), 0, 0);
}

uint64_t FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:)()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v8 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 41) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  *v5 = v0;
  v5[1] = FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000004FLL, 0x8000000249BE78C0, _sSo13FPItemManagerC08DocumentB11ExecutablesE15createNewFolder10parentItem10folderName23shouldBounceOnCollision15isForAppIntentsSo0A0CSgAJ_SSS2btYaKFyScCyAJs5Error_pGXEfU_TA_0, v4, v6);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:);
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFINode();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*protocol witness for SomeOperation.actionCompletionBlock.getter in conformance FPActionOperation())()
{
  result = [v0 actionCompletionBlock];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void protocol witness for SomeOperation.actionCompletionBlock.setter in conformance FPActionOperation(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v4[3] = &block_descriptor_228;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setActionCompletionBlock_];
  _Block_release(v3);
}

uint64_t (*protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation(uint64_t **a1))()
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
  v2[4] = FPActionOperation.actionCompletionBlock.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

void (*FPActionOperation.actionCompletionBlock.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 actionCompletionBlock];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return FPActionOperation.actionCompletionBlock.modify;
}

void FPActionOperation.actionCompletionBlock.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v2[3] = &block_descriptor_219_0;
      v5 = _Block_copy(v2);
    }

    else
    {
      v5 = 0;
    }

    [v2[8] setActionCompletionBlock_];
    _Block_release(v5);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2[6]);
  }

  else
  {
    if (v3)
    {
      v6 = v2[7];
      v2[4] = v3;
      v2[5] = v6;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v2[3] = &block_descriptor_222;
      v7 = _Block_copy(v2);
    }

    else
    {
      v7 = 0;
    }

    [v2[8] setActionCompletionBlock_];
    _Block_release(v7);
  }

  free(v2);
}

id (*protocol witness for SomeOperation.qualityOfService.modify in conformance FPActionOperation(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 qualityOfService];
  return protocol witness for SomeOperation.qualityOfService.modify in conformance FPActionOperation;
}

id (*protocol witness for SomeCopyOperation.shouldBounceOnCollision.modify in conformance DOCCopyOperation(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 shouldBounceOnCollision];
  return protocol witness for SomeCopyOperation.shouldBounceOnCollision.modify in conformance DOCCopyOperation;
}

id (*protocol witness for SomeCopyOperation.lastUsageUpdatePolicy.modify in conformance DOCCopyOperation(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 lastUsageUpdatePolicy];
  return protocol witness for SomeCopyOperation.lastUsageUpdatePolicy.modify in conformance DOCCopyOperation;
}

uint64_t protocol witness for SomeCopyOperation.targetFilenamesByURL.getter in conformance DOCCopyOperation()
{
  v1 = [v0 targetFilenamesByURL];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for URL();
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void protocol witness for SomeCopyOperation.targetFilenamesByURL.setter in conformance DOCCopyOperation(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for URL();
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setTargetFilenamesByURL_];
}

uint64_t (*protocol witness for SomeCopyOperation.targetFilenamesByURL.modify in conformance DOCCopyOperation(uint64_t **a1))()
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
  v2[4] = FPMoveOperation.targetFilenamesByURL.modify(v2);
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

void (*FPMoveOperation.targetFilenamesByURL.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 targetFilenamesByURL];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for URL();
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return FPMoveOperation.targetFilenamesByURL.modify;
}

void FPMoveOperation.targetFilenamesByURL.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for URL();
      _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setTargetFilenamesByURL_];
  }

  else if (v3)
  {
    type metadata accessor for URL();
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1[1] setTargetFilenamesByURL_];
  }

  else
  {
    isa = 0;
    [a1[1] setTargetFilenamesByURL_];
  }
}

uint64_t DOCActionOperationKind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1702260557;
  v2 = 0x65766968637241;
  if (a1 != 6)
  {
    v2 = 0x7669686372616E55;
  }

  v3 = 0x68736172746E55;
  if (a1 != 4)
  {
    v3 = 0x6574656C6544;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x746163696C707544;
  if (a1 != 2)
  {
    v4 = 0x6873617254;
  }

  if (a1)
  {
    v1 = 2037411651;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCActionOperationKind(_BYTE *a1, _BYTE *a2)
{
  v2 = 1702260557;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = *a2;
  v6 = 0xE700000000000000;
  v7 = 0x65766968637241;
  if (v3 != 6)
  {
    v7 = 0x7669686372616E55;
    v6 = 0xE900000000000065;
  }

  v8 = 0xE700000000000000;
  v9 = 0x68736172746E55;
  if (v3 != 4)
  {
    v9 = 0x6574656C6544;
    v8 = 0xE600000000000000;
  }

  if (*a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x746163696C707544;
  v11 = 0xE900000000000065;
  if (v3 != 2)
  {
    v10 = 0x6873617254;
    v11 = 0xE500000000000000;
  }

  v12 = 2037411651;
  if (*a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v12 = 1702260557;
  }

  if (*a1 > 1u)
  {
    v4 = v11;
  }

  else
  {
    v10 = v12;
  }

  if (*a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  if (v3 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (*a2 > 3u)
  {
    if (*a2 <= 5u)
    {
      if (v5 == 4)
      {
        v15 = 0xE700000000000000;
        v2 = 0x68736172746E55;
      }

      else
      {
        v15 = 0xE600000000000000;
        v2 = 0x6574656C6544;
      }

      goto LABEL_36;
    }

    if (v5 == 6)
    {
      v15 = 0xE700000000000000;
      v2 = 0x65766968637241;
      goto LABEL_36;
    }

    v2 = 0x7669686372616E55;
LABEL_35:
    v15 = 0xE900000000000065;
    goto LABEL_36;
  }

  if (*a2 > 1u)
  {
    if (v5 != 2)
    {
      v15 = 0xE500000000000000;
      v2 = 0x6873617254;
      goto LABEL_36;
    }

    v2 = 0x746163696C707544;
    goto LABEL_35;
  }

  v15 = 0xE400000000000000;
  if (*a2)
  {
    v2 = 2037411651;
  }

LABEL_36:
  if (v13 == v2 && v14 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCActionOperationKind()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCActionOperationKind()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCActionOperationKind()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCActionOperationKind@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCActionOperationKind.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCActionOperationKind(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702260557;
  v5 = 0xE700000000000000;
  v6 = 0x65766968637241;
  if (v2 != 6)
  {
    v6 = 0x7669686372616E55;
    v5 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x68736172746E55;
  if (v2 != 4)
  {
    v8 = 0x6574656C6544;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x746163696C707544;
  v10 = 0xE900000000000065;
  if (v2 != 2)
  {
    v9 = 0x6873617254;
    v10 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 2037411651;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
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

DocumentManagerExecutables::DOCActionOperationKind __swiftcall DOCActionOperationKind.init(fpAction:)(__C::FPAction fpAction)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {

    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    return 5;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {

      return 5;
    }

    else
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

        return 1;
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {

          return 1;
        }

        else
        {
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
          if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
          {

            return 3;
          }

          else
          {
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v24)
            {

              return 3;
            }

            else
            {
              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;
              if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
              {

                return 6;
              }

              else
              {
                v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v29)
                {

                  return 6;
                }

                else
                {
                  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v32 = v31;
                  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
                  {

                    return 7;
                  }

                  else
                  {
                    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v34)
                    {

                      return 7;
                    }

                    else
                    {
                      _StringGuts.grow(_:)(39);
                      MEMORY[0x24C1FAEA0](0x6D20746F6E6E6143, 0xEB00000000207061);
                      type metadata accessor for FPAction(0);
                      _print_unlocked<A, B>(_:_:)();
                      MEMORY[0x24C1FAEA0](0xD00000000000001ALL, 0x8000000249BEFB60);
                      result = _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
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

  return result;
}

void closure #1 in FPItemManager.presentRecoveryAlert(fromError:alertPresenting:)(int a1, id a2, uint64_t a3)
{
  if ([a2 recoveryAttempter])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v6, &v7);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
    swift_dynamicCast();
    v4 = _convertErrorToNSError(_:)();
    [v5 attemptRecoveryFromError:v4 optionIndex:a3];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in FPItemManager.presentOperationFailedAlert(error:alertPresenting:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  if (a2)
  {

    a2(v3);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  }
}

void closure #1 in FPItemManager.presentAlert(title:message:actions:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v10 = MEMORY[0x24C1FAD20]();
  if (a4)
  {
    a4 = MEMORY[0x24C1FAD20](a3, a4);
  }

  v21 = [objc_opt_self() alertControllerWithTitle:v10 message:a4 preferredStyle:1];

  if (a5 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](i, a5);
    }

    else
    {
      v13 = *(a5 + 8 * i + 32);
    }

    v14 = v13;
    [v21 addAction_];
  }

LABEL_12:
  if (!(a5 >> 62))
  {
    if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    a5 = v21;
    v11 = [a5 actions];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAlertAction);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v15;
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    v16 = __CocoaSet.count.getter();
    if (v16)
    {
LABEL_18:
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (!v17)
      {
        if ((a4 & 0xC000000000000001) == 0)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v18 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v19 = *(a4 + 8 * v18 + 32);
LABEL_23:
            v20 = v19;

            [a5 setPreferredAction_];

            goto LABEL_24;
          }

          __break(1u);
          return;
        }

LABEL_31:
        v19 = MEMORY[0x24C1FC540](v18, a4);
        goto LABEL_23;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:

    __break(1u);
    goto LABEL_30;
  }

  if (__CocoaSet.count.getter() == 1)
  {
    goto LABEL_16;
  }

LABEL_24:
  [a6 presentViewController:v21 animated:1 completion:0];
}

size_t closure #2 in FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(unint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, int a8, void *a9, uint64_t a10, uint64_t a11)
{
  v37 = a6;
  v39 = a4;
  v38 = a1;
  v16 = type metadata accessor for DOCOperationItem();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v22);
  v24 = (v35 - v23);
  v40 = a8;
  if (a2 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = a2;
  v27 = MEMORY[0x277D84F90];
  if (!v25)
  {
LABEL_16:
    FPItemManager.continuePerformOperation(_:sourceItems:sourceNodes:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(v39, v38, v26, v27, a5, v37 & 1, a7, v40 & 1, a9, a10, a11);
  }

  v41 = v26;
  v42 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v35[0] = a5;
    v35[1] = a3;
    v36 = a7;
    v26 = v41;
    v27 = v42;
    if ((v41 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v25; ++i)
      {
        *v24 = MEMORY[0x24C1FC540](i, v26);
        swift_storeEnumTagMultiPayload();
        v42 = v27;
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1);
          v26 = v41;
          v27 = v42;
        }

        *(v27 + 16) = v31 + 1;
        outlined init with take of DOCOperationItem(v24, v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v31);
      }
    }

    else
    {
      v32 = (v41 + 32);
      do
      {
        *v20 = *v32;
        swift_storeEnumTagMultiPayload();
        v42 = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        swift_unknownObjectRetain();
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
          v27 = v42;
        }

        *(v27 + 16) = v34 + 1;
        outlined init with take of DOCOperationItem(v20, v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v34);
        ++v32;
        --v25;
        v26 = v41;
      }

      while (v25);
    }

    a7 = v36;
    a5 = v35[0];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t FPItemManager.continuePerformOperation(_:sourceItems:sourceNodes:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, void *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v17 = a10;
  v16 = a11;
  v137 = result;
  if (result <= 3u)
  {
    if (result > 1u)
    {
      if (result != 2)
      {
        v133 = a4;
        v51 = [objc_opt_self() shared];
        v52 = v12;
        v53 = type metadata accessor for DOCTrashOperation();
        v54 = objc_allocWithZone(v53);
        *&v54[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
        *&v54[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = v51;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        v55 = v51;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v139.receiver = v54;
        v139.super_class = v53;
        v57 = objc_msgSendSuper2(&v139, sel_initWithItems_, isa);

        v58 = *((*MEMORY[0x277D85000] & *v57) + 0x98);
        v30 = v57;
        v58();
        v12 = v52;

        v40 = &protocol witness table for FPActionOperation;
        goto LABEL_25;
      }

      if (!a5)
      {
        return result;
      }

      v27 = v12;
      v133 = a4;
      v28 = objc_opt_self();
      swift_unknownObjectRetain();
      v29 = [v28 shared];
      swift_getObjectType();
      v30 = specialized makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(a3, a5, 1, v29);
      v32 = v31;

      if (v30)
      {
        ObjectType = swift_getObjectType();
        (*(v32 + 24))(1, ObjectType, v32);
        swift_unknownObjectRelease();
        v136 = *(v32 + 8);
        v12 = v27;
LABEL_36:
        v49 = a9;
LABEL_37:
        objc_opt_self();
        v80 = swift_dynamicCastObjCClass();
        swift_unknownObjectRetain();
        if (v80)
        {
          if (a6)
          {
            [v80 setShouldBounceOnCollision_];
          }

          if ((a8 & 1) == 0)
          {
            [v80 setLastUsageUpdatePolicy_];
          }
        }

        objc_opt_self();
        v81 = swift_dynamicCastObjCClass();
        if (v81)
        {
          v82 = v81;
          v83 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v85 = swift_allocObject();
          *(v85 + 16) = v83;
          *(v85 + 24) = v84;
          v147 = partial apply for closure #1 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
          v148 = v85;
          aBlock = MEMORY[0x277D85DD0];
          v144 = 1107296256;
          v145 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
          v146 = &block_descriptor_445;
          v86 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          [v82 setErrorRecoveryHandler_];
          _Block_release(v86);
          swift_unknownObjectRelease();
        }

        v87 = swift_allocObject();
        *(v87 + 16) = v17;
        *(v87 + 24) = v16;
        *(v87 + 32) = v30;
        *(v87 + 40) = v136;
        *(v87 + 48) = a5;
        *(v87 + 56) = v137;
        *(v87 + 64) = v12;
        *(v87 + 72) = v49;
        *(v87 + 80) = v133;
        *(v87 + 88) = a7;
        *(v87 + 96) = a8 & 1;
        type metadata accessor for DOCArchiveOperation();
        v88 = swift_dynamicCastClass();
        if (v88)
        {
          v89 = v88;
          v90 = swift_allocObject();
          v90[2] = v89;
          v90[3] = closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
          v90[4] = v87;
          v147 = closure #3 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
          v148 = v90;
          aBlock = MEMORY[0x277D85DD0];
          v144 = 1107296256;
          v145 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
          v146 = &block_descriptor_436;
          v91 = v87;
          v92 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v93 = v49;
          swift_unknownObjectRetain_n();
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17);
          v94 = v12;

          [v89 setArchiveCompletionBlock_];
          v95 = v92;
          v87 = v91;
        }

        else
        {
          v132 = v12;
          type metadata accessor for DOCUnarchiveOperation();
          v96 = swift_dynamicCastClass();
          if (v96)
          {
            v97 = v96;
            v98 = swift_allocObject();
            v98[2] = v97;
            v98[3] = closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
            v98[4] = v87;
            v147 = closure #4 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
            v148 = v98;
            aBlock = MEMORY[0x277D85DD0];
            v144 = 1107296256;
            v145 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
            v146 = &block_descriptor_429;
            v99 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();
            v100 = a9;
            swift_unknownObjectRetain_n();
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17);
            v101 = v12;

            [v97 setUnarchiveCompletionBlock_];
          }

          else
          {
            type metadata accessor for DOCCopyOperation();
            v102 = swift_dynamicCastClass();
            if (!v102)
            {
              v124 = swift_getObjectType();
              v125 = swift_allocObject();
              *(v125 + 16) = closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
              *(v125 + 24) = v87;
              v126 = v136[2];
              v107 = v136;
              swift_unknownObjectRetain();
              v127 = a9;
              swift_unknownObjectRetain();
              outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17);
              v128 = v132;

              v126(closure #6 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply, v125, v124, v136);
              goto LABEL_52;
            }

            v103 = v102;
            v104 = swift_allocObject();
            v104[2] = v103;
            v104[3] = closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
            v104[4] = v87;
            v147 = closure #5 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
            v148 = v104;
            aBlock = MEMORY[0x277D85DD0];
            v144 = 1107296256;
            v145 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
            v146 = &block_descriptor_422_0;
            v99 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();
            v105 = a9;
            swift_unknownObjectRetain_n();
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17);
            v106 = v12;

            [v103 setActionCompletionBlock_];
          }

          v95 = v99;
        }

        _Block_release(v95);
        swift_unknownObjectRelease_n();
        v107 = v136;
LABEL_52:
        if ([objc_opt_self() useFIOperations])
        {
          type metadata accessor for DOC_FICopyOperation();
          v108 = swift_dynamicCastClass();
          if (v108)
          {
            v109 = v108;
            v110 = swift_allocObject();
            v110[2] = v109;
            v110[3] = closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply;
            v110[4] = v87;
            v111 = *((*MEMORY[0x277D85000] & *v109) + 0x108);
            swift_unknownObjectRetain();

            v111(closure #7 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)partial apply, v110);
          }
        }

        v112 = swift_getObjectType();
        (*(v107 + 40))(25, v112, v107);
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        __swift_project_value_buffer(v113, static Logger.UI);
        swift_unknownObjectRetain();
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v114, v115))
        {
          goto LABEL_75;
        }

        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v142 = v117;
        *v116 = 136315650;
        *(v116 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008DLL, 0x8000000249BEF970, &v142);
        *(v116 + 12) = 2080;
        if (v137 > 3u)
        {
          if (v137 <= 5u)
          {
            if (v137 == 4)
            {
              v118 = 0xE700000000000000;
              v119 = 0x68736172746E55;
            }

            else
            {
              v118 = 0xE600000000000000;
              v119 = 0x6574656C6544;
            }

            goto LABEL_74;
          }

          if (v137 != 6)
          {
            v119 = 0x7669686372616E55;
            goto LABEL_73;
          }

          v118 = 0xE700000000000000;
          v119 = 0x65766968637241;
        }

        else
        {
          if (v137 <= 1u)
          {
            v118 = 0xE400000000000000;
            if (v137)
            {
              v119 = 2037411651;
            }

            else
            {
              v119 = 1702260557;
            }

            goto LABEL_74;
          }

          if (v137 == 2)
          {
            v119 = 0x746163696C707544;
LABEL_73:
            v118 = 0xE900000000000065;
            goto LABEL_74;
          }

          v118 = 0xE500000000000000;
          v119 = 0x6873617254;
        }

LABEL_74:
        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v118, &v142);

        *(v116 + 14) = v120;
        *(v116 + 22) = 2080;
        aBlock = v30;
        v144 = v107;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13SomeOperation_pMd);
        v121 = String.init<A>(describing:)();
        v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v142);

        *(v116 + 24) = v123;
        _os_log_impl(&dword_2493AC000, v114, v115, "%s: Adding %s Operation %s", v116, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v117, -1, -1);
        MEMORY[0x24C1FE850](v116, -1, -1);
LABEL_75:

        specialized FPItemManager.scheduleOperation(_:)(v30, v112, v107);
        swift_unknownObjectRelease_n();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      if (result)
      {
        if (!a5)
        {
          return result;
        }

        v18 = a4;
        v39 = objc_opt_self();
        swift_unknownObjectRetain();
        v20 = [v39 shared];
        swift_getObjectType();
        v21 = specialized makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(a3, a5, 0, v20);
      }

      else
      {
        if (!a5)
        {
          return result;
        }

        v18 = a4;
        v19 = objc_opt_self();
        swift_unknownObjectRetain();
        v20 = [v19 shared];
        swift_getObjectType();
        v21 = specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(a3, a5, v20);
      }

      v30 = v21;
      v38 = v22;

      result = swift_unknownObjectRelease();
      if (v30)
      {
        v133 = v18;
        goto LABEL_22;
      }
    }

    return result;
  }

  if (result <= 5u)
  {
    v23 = MEMORY[0x277D85000];
    v133 = a4;
    if (result != 4)
    {
      v41 = objc_opt_self();

      v42 = [v41 shared];
      v43 = type metadata accessor for DOCDeleteOperation();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = a2;
      *&v44[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = 0;
      *&v44[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v42;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v45 = v12;

      v46 = v42;
      v47 = Array._bridgeToObjectiveC()().super.isa;

      v141.receiver = v44;
      v141.super_class = v43;
      v48 = objc_msgSendSuper2(&v141, sel_initWithItems_, v47);

      v12 = v45;
      v49 = a9;
      v50 = *((*v23 & *v48) + 0x90);
      v30 = v48;
      v50();

      v136 = &protocol witness table for FPActionOperation;
      goto LABEL_37;
    }

    v129 = a11;
    v130 = a10;
    v24 = MEMORY[0x277D85000];
    v25 = v12;
    if (a5)
    {
      swift_getObjectType();
      v26 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v26 = 0;
    }

    v72 = [objc_opt_self() shared];
    v73 = type metadata accessor for DOCUntrashOperation();
    v74 = objc_allocWithZone(v73);
    *&v74[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_restoreDirectory] = v26;
    *&v74[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCUntrashOperation_undoManager] = v72;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v75 = v26;
    v76 = v72;
    v77 = Array._bridgeToObjectiveC()().super.isa;
    v140.receiver = v74;
    v140.super_class = v73;
    v78 = objc_msgSendSuper2(&v140, sel_initWithItems_restoreDirectory_, v77, v75);

    v79 = *((*v24 & *v78) + 0x80);
    v30 = v78;
    v79();

    v136 = &protocol witness table for FPActionOperation;
    v12 = v25;
    v16 = a11;
    v17 = a10;
    goto LABEL_36;
  }

  if (result != 6)
  {
    if (!a5)
    {
      return result;
    }

    swift_getObjectType();
    result = DOCNode.fpfs_syncFetchFPItem()();
    if (!result)
    {
      return result;
    }

    v60 = result;
    if (a2 >> 62)
    {
      result = __CocoaSet.count.getter();
      v61 = a4;
      if (result)
      {
LABEL_30:
        v131 = v12;
        v133 = v61;
        if ((a2 & 0xC000000000000001) == 0)
        {
          if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v62 = *(a2 + 32);
          goto LABEL_33;
        }

LABEL_83:
        v62 = MEMORY[0x24C1FC540](0, a2);
LABEL_33:
        v63 = v62;
        v49 = a9;
        v64 = objc_opt_self();
        v65 = v60;
        v66 = [v64 shared];
        v67 = objc_allocWithZone(type metadata accessor for DOCUnarchiveOperation());
        v68 = DOCUnarchiveOperation.init(item:destinationFolder:undoManager:)(v63, v65, v66);
        v69 = swift_allocObject();
        *(v69 + 16) = a9;
        v147 = partial apply for closure #1 in FPItemManager.continuePerformOperation(_:sourceItems:sourceNodes:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:);
        v148 = v69;
        aBlock = MEMORY[0x277D85DD0];
        v144 = 1107296256;
        v145 = thunk for @escaping @callee_guaranteed (@guaranteed Error, @guaranteed @escaping @callee_guaranteed (@guaranteed String?, @guaranteed Error?) -> ()) -> ();
        v146 = &block_descriptor_403;
        v70 = _Block_copy(&aBlock);
        v30 = v68;
        v71 = a9;

        [v30 setPassphraseRequestBlock_];

        _Block_release(v70);
        v136 = &protocol witness table for FPActionOperation;
        v12 = v131;
        goto LABEL_37;
      }
    }

    else
    {
      v61 = a4;
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  if (a5)
  {
    v35 = objc_opt_self();
    swift_unknownObjectRetain();
    v36 = [v35 shared];
    swift_getObjectType();
    v30 = specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(a3, a5, v36);
    v38 = v37;

    result = swift_unknownObjectRelease();
    if (v30)
    {
      v133 = a4;
LABEL_22:
      v40 = *(v38 + 8);
LABEL_25:
      v136 = v40;
      goto LABEL_36;
    }
  }

  return result;
}

void closure #1 in FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultManager];
  v9 = [a1 itemID];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v14[4] = partial apply for closure #1 in closure #1 in FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:);
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_397;
  v11 = _Block_copy(v14);
  v12 = a2;

  v13 = a1;

  [v8 fetchParentsForItemID:v9 recursively:1 completionHandler:v11];
  _Block_release(v11);
}

void closure #1 in closure #1 in FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:)(unint64_t a1, uint64_t a2, NSObject *a3, unint64_t a4, NSObject *a5, void *a6)
{
  if (a1)
  {
    v10 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (a1 >> 62)
    {
      goto LABEL_28;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v11)
    {
      v12 = 0;
      v13 = a1 & 0xC000000000000001;
      v14 = a1 + 32;
      v15 = a4 >> 62;
      v27 = a5;
      group = a3;
      v24 = v10;
      v25 = a1;
      v22 = a1 & 0xC000000000000001;
      v23 = v11;
      v21 = a1 + 32;
      v26 = a6;
      while (2)
      {
        if (v13)
        {
          a1 = MEMORY[0x24C1FC540](v12, a1);
        }

        else
        {
          if (v12 >= v10[2].isa)
          {
            goto LABEL_27;
          }

          a1 = *(v14 + 8 * v12);
        }

        a3 = a1;
        v16 = __OFADD__(v12, 1);
        v12 = (v12 + 1);
        if (!v16)
        {
          if (v15)
          {
            a1 = __CocoaSet.count.getter();
            a6 = a1;
          }

          else
          {
            a6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = 0;
          while (a6 != v17)
          {
            if ((a4 & 0xC000000000000001) != 0)
            {
              a1 = MEMORY[0x24C1FC540](v17, a4);
            }

            else
            {
              if (v17 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              a1 = *(a4 + 8 * v17 + 32);
            }

            v10 = a1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
            a5 = v10;
            v10 = a3;
            v18 = static NSObject.== infix(_:_:)();

            ++v17;
            if (v18)
            {

              a3 = group;
              goto LABEL_32;
            }
          }

          v10 = v24;
          a5 = v27;
          a3 = group;
          a1 = v25;
          a6 = v26;
          v14 = v21;
          v13 = v22;
          v15 = a4 >> 62;
          if (v12 != v23)
          {
            continue;
          }

          goto LABEL_29;
        }

        break;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v19 = a1;
      v11 = __CocoaSet.count.getter();
      a1 = v19;
    }
  }

LABEL_29:
  os_unfair_lock_lock(&a5[2]);
  v20 = a6;
  MEMORY[0x24C1FB090]();
  if (*((a5[3].isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[3].isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  os_unfair_lock_unlock(&a5[2]);
LABEL_32:

  dispatch_group_leave(a3);
}

uint64_t closure #2 in FPItemManager.filterOutChildItems(sourceItems:sourceNodes:completion:)(uint64_t a1, unint64_t a2, void (*a3)(unint64_t, uint64_t), uint64_t a4)
{
  os_unfair_lock_lock((a1 + 16));
  v20 = *(a1 + 24);

  os_unfair_lock_unlock((a1 + 16));
  v23 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_19:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v18[5] = a4;
      v19 = a3;
      v9 = 0;
      v21 = a2 & 0xC000000000000001;
      a4 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v21)
        {
          v10 = MEMORY[0x24C1FC540](v9, a2);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v19(v20, v23);
            goto LABEL_21;
          }
        }

        else
        {
          if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v10 = *(a2 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_16;
          }
        }

        v12 = [v10 fpfs_fpItem];
        if (v12)
        {
          a3 = v8;
          v22 = v12;
          MEMORY[0x28223BE20](v12, v13);
          v18[2] = &v22;
          v15 = v14;
          v16 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo6FPItemCG_TG5TA_0, v18, v20);

          if (v16)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v8 = a3;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v8)
        {
          goto LABEL_17;
        }
      }
    }
  }

  a3(v20, MEMORY[0x277D84F90]);
LABEL_21:
}

void closure #1 in FPItemManager.continuePerformOperation(_:sourceItems:sourceNodes:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 localizedRecoverySuggestion];

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = _DocumentManagerBundle();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  v21._object = 0xE200000000000000;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 19279;
  v15._object = 0xE200000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21._countAndFlagsBits = 19279;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v21);

  v18 = swift_allocObject();
  v18[1]._countAndFlagsBits = 0;
  v18[1]._object = 0;
  v18[2]._countAndFlagsBits = v9;
  v18[2]._object = v11;
  v18[3]._countAndFlagsBits = a2;
  v18[3]._object = a3;
  v18[4] = v17;
  v18[5]._countAndFlagsBits = a4;

  v19 = a4;
  DOCRunInMainThread(_:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Error, @guaranteed @escaping @callee_guaranteed (@guaranteed String?, @guaranteed Error?) -> ()) -> ()(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20]();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(_OWORD *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v162 = a14;
  v164 = a13;
  v165 = a12;
  v169 = a11;
  v163 = a10;
  v171 = a9;
  v172 = type metadata accessor for DOCOperationItem();
  MEMORY[0x28223BE20](v172, v22);
  v24 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v29 = &v158 - v28;
  if (a2)
  {
    v160 = v27;
    v166 = a7;
    v167 = a1;
    v168 = a5;
    v30 = _convertErrorToNSError(_:)();
    v31 = NSError.isUserCancelledError.getter();
    v170 = a6;
    if (v31)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.UI);
      v172 = v30;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v161 = a4;
        v35 = a8;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v174[0] = v37;
        *v36 = 136315650;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008DLL, 0x8000000249BEF970, v174);
        v38 = v171;
        v39 = 0xE400000000000000;
        *(v36 + 12) = 2080;
        v40 = 0xE700000000000000;
        v41 = 0x65766968637241;
        if (v38 != 6)
        {
          v41 = 0x7669686372616E55;
          v40 = 0xE900000000000065;
        }

        v42 = 0xE700000000000000;
        v43 = 0x68736172746E55;
        if (v38 != 4)
        {
          v43 = 0x6574656C6544;
          v42 = 0xE600000000000000;
        }

        if (v38 <= 5)
        {
          v41 = v43;
          v40 = v42;
        }

        v44 = 0x746163696C707544;
        v45 = 0xE900000000000065;
        if (v38 != 2)
        {
          v44 = 0x6873617254;
          v45 = 0xE500000000000000;
        }

        v46 = 2037411651;
        if (v38)
        {
          v39 = 0xE400000000000000;
        }

        else
        {
          v46 = 1702260557;
        }

        if (v38 > 1)
        {
          v39 = v45;
        }

        else
        {
          v44 = v46;
        }

        if (v38 <= 3)
        {
          v47 = v44;
        }

        else
        {
          v47 = v41;
        }

        if (v38 <= 3)
        {
          v48 = v39;
        }

        else
        {
          v48 = v40;
        }

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v174);

        *(v36 + 14) = v49;
        *(v36 + 22) = 2080;
        v50 = v172;
        v51 = [v50 description];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v174);

        *(v36 + 24) = v55;
        _os_log_impl(&dword_2493AC000, v33, v34, "%s: %s No sourceURLs and no sourceNodes, ending operation: %s", v36, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v37, -1, -1);
        MEMORY[0x24C1FE850](v36, -1, -1);

        a8 = v35;
        a4 = v161;
        a6 = v170;
      }

      else
      {
      }

      callCompletion #1 () in closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(a4, v168, v167, a6, v166, a8);
LABEL_91:
      v110 = v172;

      return;
    }

    v72 = a8;
    if (NSError.isFilenameCollisionError.getter())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v161 = a4;
        if (a3 != 1)
        {
LABEL_112:
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          __swift_project_value_buffer(v125, static Logger.UI);
          v126 = v30;
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = v72;
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v174[0] = v131;
            *v130 = 136315650;
            *(v130 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008DLL, 0x8000000249BEF970, v174);
            v132 = v171;
            v133 = 0xE400000000000000;
            *(v130 + 12) = 2080;
            v134 = 0xE700000000000000;
            v135 = 0x65766968637241;
            if (v132 != 6)
            {
              v135 = 0x7669686372616E55;
              v134 = 0xE900000000000065;
            }

            v136 = 0xE700000000000000;
            v137 = 0x68736172746E55;
            if (v132 != 4)
            {
              v137 = 0x6574656C6544;
              v136 = 0xE600000000000000;
            }

            if (v132 <= 5)
            {
              v135 = v137;
              v134 = v136;
            }

            v138 = 0x746163696C707544;
            v139 = 0xE900000000000065;
            if (v132 != 2)
            {
              v138 = 0x6873617254;
              v139 = 0xE500000000000000;
            }

            v140 = 2037411651;
            if (v132)
            {
              v133 = 0xE400000000000000;
            }

            else
            {
              v140 = 1702260557;
            }

            if (v132 > 1)
            {
              v133 = v139;
            }

            else
            {
              v138 = v140;
            }

            if (v132 <= 3)
            {
              v141 = v138;
            }

            else
            {
              v141 = v135;
            }

            if (v132 <= 3)
            {
              v142 = v133;
            }

            else
            {
              v142 = v134;
            }

            v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v174);

            *(v130 + 14) = v143;
            *(v130 + 22) = 2080;
            v144 = v126;
            v145 = [v144 description];
            v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v148 = v147;

            v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, v174);

            *(v130 + 24) = v149;
            _os_log_impl(&dword_2493AC000, v127, v128, "%s: %s Operation failed: %s", v130, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v131, -1, -1);
            MEMORY[0x24C1FE850](v130, -1, -1);

            v72 = v129;
            a4 = v161;
            a6 = v170;
          }

          else
          {
          }

          v151 = v166;
          v150 = v167;
          v152 = v126;
          specialized FPItemManager.presentOperationFailedAlert(error:alertPresenting:completion:)(v152, v169, 0, 0);

          callCompletion #1 () in closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(a4, v168, v150, a6, v151, v72);
          return;
        }

        v159 = a8;
        v73 = [v30 userInfo];
        v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v74 + 16))
        {
          v77 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
          v79 = v78;

          if (v79)
          {
            outlined init with copy of Any(*(v74 + 56) + 32 * v77, v174);

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
            if (swift_dynamicCast())
            {
              v158 = v173;
              v80 = MEMORY[0x277D84F90];
              v174[0] = MEMORY[0x277D84F90];
              v81 = *(v165 + 16);
              v82 = v170;
              if (v81)
              {
                v83 = v165 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
                v84 = *(v160 + 72);
                do
                {
                  outlined init with copy of DOCOperationItem(v83, v29);
                  outlined init with take of DOCOperationItem(v29, v24);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    MEMORY[0x24C1FB090]();
                    if (*((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v80 = v174[0];
                    v82 = v170;
                  }

                  else
                  {
                    outlined destroy of DOCOperationItem(v24);
                  }

                  v83 += v84;
                  --v81;
                }

                while (v81);
              }

              if (v80 >> 62)
              {
                v124 = __CocoaSet.count.getter();
                v115 = v158;
                v72 = v159;
                a4 = v161;
                a6 = v82;
                if (v124)
                {
LABEL_100:
                  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v80);

                  if (All)
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {

LABEL_104:
                      if (one-time initialization token for UI != -1)
                      {
                        swift_once();
                      }

                      v119 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v119, static Logger.UI);
                      v120 = Logger.logObject.getter();
                      v121 = static os_log_type_t.debug.getter();
                      if (os_log_type_enabled(v120, v121))
                      {
                        v122 = swift_slowAlloc();
                        v123 = swift_slowAlloc();
                        v174[0] = v123;
                        *v122 = 136315138;
                        *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008DLL, 0x8000000249BEF970, v174);
                        _os_log_impl(&dword_2493AC000, v120, v121, "%s: Copy and pasting within the same folder, so automatically bounce", v122, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0(v123);
                        MEMORY[0x24C1FE850](v123, -1, -1);
                        MEMORY[0x24C1FE850](v122, -1, -1);
                      }

                      FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(v171, v165, v72, 1, v164, v162 & 1, v169, a4, v168);
                      return;
                    }

                    v174[0] = v115;
                    MEMORY[0x28223BE20](0, v117);
                    v157 = v174;
                    v118 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v158 - 4), All);

                    if (v118)
                    {
                      goto LABEL_104;
                    }
                  }

                  goto LABEL_111;
                }
              }

              else
              {
                v115 = v158;
                v72 = v159;
                a4 = v161;
                a6 = v82;
                if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_100;
                }
              }

LABEL_111:

              goto LABEL_112;
            }

LABEL_140:
            v174[0] = 0;
            v174[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(63);
            MEMORY[0x24C1FAEA0](0xD00000000000003DLL, 0x8000000249BF0130);
            v153 = [v30 description];
            v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v156 = v155;

            MEMORY[0x24C1FAEA0](v154, v156);

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }
        }

        else
        {
        }

        goto LABEL_140;
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Logger.UI);
    v86 = v30;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v161 = a4;
      v89 = a8;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v174[0] = v91;
      *v90 = 136315650;
      *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008DLL, 0x8000000249BEF970, v174);
      v92 = v171;
      v93 = 0xE400000000000000;
      *(v90 + 12) = 2080;
      v94 = 0xE700000000000000;
      v95 = 0x65766968637241;
      if (v92 != 6)
      {
        v95 = 0x7669686372616E55;
        v94 = 0xE900000000000065;
      }

      v96 = 0xE700000000000000;
      v97 = 0x68736172746E55;
      if (v92 != 4)
      {
        v97 = 0x6574656C6544;
        v96 = 0xE600000000000000;
      }

      if (v92 <= 5)
      {
        v95 = v97;
        v94 = v96;
      }

      v98 = 0x746163696C707544;
      v99 = 0xE900000000000065;
      if (v92 != 2)
      {
        v98 = 0x6873617254;
        v99 = 0xE500000000000000;
      }

      v100 = 2037411651;
      if (v92)
      {
        v93 = 0xE400000000000000;
      }

      else
      {
        v100 = 1702260557;
      }

      if (v92 > 1)
      {
        v93 = v99;
      }

      else
      {
        v98 = v100;
      }

      if (v92 <= 3)
      {
        v101 = v98;
      }

      else
      {
        v101 = v95;
      }

      if (v92 <= 3)
      {
        v102 = v93;
      }

      else
      {
        v102 = v94;
      }

      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v174);

      *(v90 + 14) = v103;
      *(v90 + 22) = 2080;
      v104 = v86;
      v105 = [v104 description];
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v174);

      *(v90 + 24) = v109;
      _os_log_impl(&dword_2493AC000, v87, v88, "%s: %s Operation failed: %s", v90, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v91, -1, -1);
      MEMORY[0x24C1FE850](v90, -1, -1);

      v72 = v89;
      a4 = v161;
      a6 = v170;
    }

    else
    {
    }

    v111 = swift_allocObject();
    v113 = v167;
    v112 = v168;
    v111[2] = a4;
    v111[3] = v112;
    v111[4] = v113;
    v111[5] = a6;
    v111[6] = v166;
    v111[7] = v72;
    v114 = v86;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    specialized FPItemManager.presentOperationFailedAlert(error:alertPresenting:completion:)(v114, v169, partial apply for callCompletion #1 () in closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:), v111);
  }

  else
  {
    callCompletion #1 () in closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(a4, a5, a1, a6, a7, a8);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.UI);
    v172 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v172, v57))
    {
      goto LABEL_91;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v174[0] = v59;
    *v58 = 136315394;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008DLL, 0x8000000249BEF970, v174);
    v60 = v171;
    v61 = 0xE400000000000000;
    *(v58 + 12) = 2080;
    v62 = 0xE700000000000000;
    v63 = 0x65766968637241;
    if (v60 != 6)
    {
      v63 = 0x7669686372616E55;
      v62 = 0xE900000000000065;
    }

    v64 = 0xE700000000000000;
    v65 = 0x68736172746E55;
    if (v60 != 4)
    {
      v65 = 0x6574656C6544;
      v64 = 0xE600000000000000;
    }

    if (v60 <= 5)
    {
      v63 = v65;
      v62 = v64;
    }

    v66 = 0x746163696C707544;
    v67 = 0xE900000000000065;
    if (v60 != 2)
    {
      v66 = 0x6873617254;
      v67 = 0xE500000000000000;
    }

    v68 = 2037411651;
    if (v60)
    {
      v61 = 0xE400000000000000;
    }

    else
    {
      v68 = 1702260557;
    }

    if (v60 > 1)
    {
      v61 = v67;
    }

    else
    {
      v66 = v68;
    }

    if (v60 <= 3)
    {
      v69 = v66;
    }

    else
    {
      v69 = v63;
    }

    if (v60 <= 3)
    {
      v70 = v61;
    }

    else
    {
      v70 = v62;
    }

    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v174);

    *(v58 + 14) = v71;
    _os_log_impl(&dword_2493AC000, v172, v57, "%s: %s Operation Complete", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v59, -1, -1);
    MEMORY[0x24C1FE850](v58, -1, -1);
  }
}

uint64_t callCompletion #1 () in closure #2 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = a3;
    v8 = result;
    if (a3)
    {
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(result);

LABEL_4:
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = a2;
      v9[4] = v6;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
      DOCRunInMainThread(_:)();
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      if (a6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v6 = swift_allocObject();
        v6[1] = xmmword_249BA0290;
        *(v6 + 4) = a6;
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
        swift_unknownObjectRetain();
      }

      else
      {
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
        v6 = 0;
      }

      goto LABEL_4;
    }

    v12 = v11;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
    swift_unknownObjectRetain();
    v6 = [v12 transferResults];
    if (!v6)
    {
      swift_unknownObjectRelease();
      goto LABEL_4;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v13 + 16);
    if (!v14)
    {

      swift_unknownObjectRelease();
      v6 = MEMORY[0x277D84F90];
      goto LABEL_4;
    }

    v30 = v8;
    v31 = a2;
    v39 = MEMORY[0x277D84F90];
    v33 = v13;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = v13 + 64;
    v16 = _HashTable.startBucket.getter();
    result = v13;
    v17 = 0;
    v18 = *(v13 + 36);
    v32 = v13 + 72;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(result + 32))
    {
      v20 = v16 >> 6;
      if ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_32;
      }

      if (v18 != *(result + 36))
      {
        goto LABEL_33;
      }

      outlined init with copy of AnyHashable(*(result + 48) + 40 * v16, v37);
      v21 = *(*(v33 + 56) + 8 * v16);
      v34[0] = v37[0];
      v34[1] = v37[1];
      v35 = v38;
      v36 = v21;
      v22 = v21;
      swift_unknownObjectRetain();
      outlined destroy of CharacterSet?(v34, &_ss11AnyHashableV3key_So6FPItemC5valuetMd);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      result = v33;
      v19 = 1 << *(v33 + 32);
      if (v16 >= v19)
      {
        goto LABEL_34;
      }

      v23 = *(v15 + 8 * v20);
      if ((v23 & (1 << v16)) == 0)
      {
        goto LABEL_35;
      }

      if (v18 != *(v33 + 36))
      {
        goto LABEL_36;
      }

      v24 = v23 & (-2 << (v16 & 0x3F));
      if (v24)
      {
        v19 = __clz(__rbit64(v24)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v20 << 6;
        v26 = v20 + 1;
        v27 = (v32 + 8 * v20);
        while (v26 < (v19 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            outlined consume of Set<UIPress>.Index._Variant(v16, v18, 0);
            result = v33;
            v19 = __clz(__rbit64(v28)) + v25;
            goto LABEL_11;
          }
        }

        outlined consume of Set<UIPress>.Index._Variant(v16, v18, 0);
        result = v33;
      }

LABEL_11:
      ++v17;
      v16 = v19;
      if (v17 == v14)
      {

        swift_unknownObjectRelease();
        v6 = v39;
        v8 = v30;
        a2 = v31;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *((*MEMORY[0x277D85000] & *a3) + 0x88);
  v8 = a1;
  v7(a1);
  if (!a1)
  {
    return a4(0, a2, 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = v8;
  v10 = v8;
  a4(v9, a2, 1);
}

uint64_t closure #4 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *((*MEMORY[0x277D85000] & *a3) + 0x78);
  v8 = a1;
  v7(a1);
  if (!a1)
  {
    return a4(0, a2, 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = v8;
  v10 = v8;
  a4(v9, a2, 1);
}

void closure #1 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void *))
{
  swift_beginAccess();
  v17 = *(a4 + 16);
  v18 = v17;
  specialized FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:)(v17, a5, a6, 0, 0xE000000000000000, a7, a8, a9, a10);

  if (a11)
  {
    swift_beginAccess();
    v19 = *(a4 + 16);
    v20 = v19;
    a11(a2, v19);
  }
}

uint64_t closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.Rename);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v7 = 136315650;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007DLL, 0x8000000249BD2620, &v15);
      *(v7 + 12) = 2112;
      *(v7 + 14) = v4;
      *v8 = v4;
      *(v7 + 22) = 2080;
      type metadata accessor for OperationConflict(0);
      v10 = v4;
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

      *(v7 + 24) = v13;
      _os_log_impl(&dword_2493AC000, v5, v6, "%s: Conflict occurred. Hook up OperationConflict support. Canceling the op for now: %@, conflict: %s", v7, 0x20u);
      outlined destroy of CharacterSet?(v8, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }
  }

  return 5;
}

void closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = _convertErrorToNSError(_:)();
      specialized FPItemManager.presentRecoveryAlert(fromError:alertPresenting:)(v4, v3);

      v1 = v4;
    }
  }
}

void closure #1 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void *))
{
  v15 = MEMORY[0x24C1FAD20](a3, a4);
  v16 = [v15 pathExtension];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = MEMORY[0x24C1FAD20](a3, a4);
  v21 = [v20 stringByDeletingPathExtension];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  swift_beginAccess();
  v25 = *(a6 + 16);
  v26 = v25;
  specialized FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:)(v25, v22, v24, v17, v19, a7, a8, a9, a10);

  if (a11)
  {
    swift_beginAccess();
    v27 = *(a6 + 16);
    v28 = v27;
    a11(a2, v27);
  }
}

uint64_t closure #1 in FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  v7 = a3;
  DOCRunInMainThread(_:)();
}

void closure #2 in FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(id), uint64_t a5, void *a6, void *a7)
{
  v12 = MEMORY[0x24C1FAD20]();
  v13 = [objc_opt_self() alertControllerWithTitle:0 message:v12 preferredStyle:1];

  v14 = _DocumentManagerBundle();
  if (v14)
  {
    v15 = v14;
    v34._object = 0xE200000000000000;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 19279;
    v17._object = 0xE200000000000000;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v34._countAndFlagsBits = 19279;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v34);

    v20 = swift_allocObject();
    *(v20 + 16) = a3 & 1;
    *(v20 + 24) = a4;
    *(v20 + 32) = a5;
    *(v20 + 40) = a6;

    v21 = a6;
    v22 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);

    aBlock[4] = partial apply for closure #1 in closure #2 in FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_191;
    v23 = _Block_copy(aBlock);

    v24 = [objc_opt_self() actionWithTitle:v22 style:0 handler:v23];
    _Block_release(v23);

    v25 = v13;
    [v25 addAction_];
    [v25 setPreferredAction_];

    if ((a3 & 1) == 0)
    {
      a4(v21);
    }

    [a7 presentViewController:v25 animated:1 completion:0];
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.Rename);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000075, 0x8000000249BEFD40, aBlock);
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_2493AC000, v27, v28, "%s: prompting user with message: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #2 in FPItemManager.handleRenameOperationCompletion(_:newDisplayName:fileExtension:alertPresenting:requiresAlertPresentation:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = a5;

    v9 = a5;
    DOCRunInMainThread(_:)();
  }
}

uint64_t closure #1 in FPItemManager.unarchiveInPlace(item:alertPresenting:completion:)(uint64_t a1, void *a2, uint64_t (*a3)(void, void *), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMd);
    v13 = *(type metadata accessor for DOCOperationItem() - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9A480;
    *(v15 + v14) = a5;
    swift_storeEnumTagMultiPayload();
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = a2;
    swift_unknownObjectRetain_n();
    v17 = a5;

    v18 = a2;
    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(7u, v15, a1, 1, 1, 0, a7, partial apply for closure #1 in closure #1 in FPItemManager.unarchiveInPlace(item:alertPresenting:completion:), v16);

    swift_unknownObjectRelease_n();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_249B9FA70;
    v21 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v22 = lazy protocol witness table accessor for type String and conformance String();
    *(v20 + 64) = v22;
    *(v20 + 32) = 0xD000000000000032;
    *(v20 + 40) = 0x8000000249BEFB20;
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v24 = String.init<A>(describing:)();
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 72) = v24;
    *(v20 + 80) = v25;
    os_log(_:dso:log:type:_:)();

    return a3(0, a2);
  }
}

uint64_t closure #1 in closure #1 in FPItemManager.unarchiveInPlace(item:alertPresenting:completion:)(unint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1FC540](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

LABEL_9:
  a2(v6, a4);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  HIDWORD(v28) = a6;
  v29 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - v13;
  v15 = objc_opt_self();

  v16 = [v15 shared];
  v17 = objc_allocWithZone(type metadata accessor for DOCCreateFolderOperation());
  v18 = a2;
  v19 = specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(v18, a3, a4, a5, v16, v17);

  v20 = MEMORY[0x277D85000];
  if ((v28 & 0x100000000) != 0)
  {
    (*((*MEMORY[0x277D85000] & *v19) + 0x160))(closure #1 in closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), 0);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  (*(v11 + 16))(v14, v29, v10);
  v22 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v11 + 32))(v23 + v22, v14, v10);
  v24 = *((*v20 & *v19) + 0x190);

  v24(partial apply for closure #2 in closure #1 in FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:), v23);
  v25 = *((*v20 & *v19) + 0x178);

  v26 = v25(partial apply for closure #2 in closure #1 in FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:), v21);
  (*((*v20 & *v19) + 0x1B8))(v26);
}

uint64_t closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v14 = objc_opt_self();

  v15 = [v14 shared];
  v16 = objc_allocWithZone(type metadata accessor for DOCCreateFolderOperation());
  v17 = a3;
  v18 = specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(v17, a4, a5, a6, v15, v16);

  v19 = MEMORY[0x277D85000];
  if (a7)
  {
    (*((*MEMORY[0x277D85000] & *v18) + 0x160))(closure #1 in closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), 0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v20;
  v22 = *((*v19 & *v18) + 0x190);

  v22(partial apply for closure #2 in closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), v21);
  v23 = *((*v19 & *v18) + 0x178);

  v24 = v23(partial apply for closure #2 in closure #1 in FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:), v20);
  (*((*v19 & *v18) + 0x1B8))(v24);
}

uint64_t closure #1 in closure #1 in FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = MEMORY[0x24C1FAD20](a2, a3);
  v11 = MEMORY[0x24C1FAD20](a4, a5);
  v12 = [v9 uniqueNameByAppendingNumber:v10 fileExtension:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

uint64_t closure #2 in closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void *, void *), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v9 = a2;
  }

  else
  {
    v9 = 0;
    ObjectType = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v9;
  v13[3] = ObjectType;
  swift_beginAccess();
  v10 = *(a5 + 16);
  swift_unknownObjectRetain();
  v11 = v10;
  a3(v13, v10);

  return outlined destroy of CharacterSet?(v13, &_sypSgMd);
}

uint64_t closure #2 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v31, &_sypSgMd);
  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      v8 = DOCNode.fpfs_syncFetchFPItem()();
      v9 = swift_allocObject();
      v9[2] = a3;
      v9[3] = a4;
      v9[4] = v8;
      v10 = v8;

      DOCRunInMainThread(_:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v31, &_sypSgMd);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  outlined init with copy of DOCGridLayout.Spec?(a1, v31, &_sypSgMd);
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315394;
    outlined init with copy of DOCGridLayout.Spec?(v31, &v29, &_sypSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v17 = String.init<A>(describing:)();
    v28 = a4;
    v18 = a3;
    v20 = v19;
    outlined destroy of CharacterSet?(v31, &_sypSgMd);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v30);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v29 = a2;
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v30);
    a3 = v18;
    a4 = v28;

    *(v15 + 14) = v25;
    _os_log_impl(&dword_2493AC000, v13, v14, "Create Folder Operation failed: %s, %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  else
  {

    outlined destroy of CharacterSet?(v31, &_sypSgMd);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;

  DOCRunInMainThread(_:)();
}

void closure #1 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC63B0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithItems_];

  v7 = v6;
  [v7 setFinishAfterPreflight_];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v16 = partial apply for closure #1 in closure #1 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:);
  v17 = v8;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v15 = &block_descriptor_359;
  v9 = _Block_copy(&v12);

  [v7 setActionCompletionBlock_];
  _Block_release(v9);
  v16 = closure #2 in closure #1 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:);
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v15 = &block_descriptor_362;
  v10 = _Block_copy(&v12);
  [v7 setErrorRecoveryHandler_];
  _Block_release(v10);

  v11 = [objc_opt_self() defaultManager];
  [v11 scheduleAction_];
}

uint64_t closure #1 in closure #1 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(void *a1, void (*a2)(void *, id))
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v4 = a1;
  v5 = _convertErrorToNSError(_:)();
  v6 = NSError.isUserCancelledError.getter();

  if ((v6 & 1) == 0)
  {

LABEL_5:
    v7 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
    a2(v9, v7);

    return outlined destroy of CharacterSet?(v9, &_sypSgMd);
  }

  v9[3] = MEMORY[0x277D837D0];
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  a2(v9, 0);

  return outlined destroy of CharacterSet?(v9, &_sypSgMd);
}

void closure #2 in closure #1 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 recoveryAttempter];

  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v4, &v5);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
    swift_dynamicCast();
    v2 = _convertErrorToNSError(_:)();
    [v3 attemptRecoveryFromError:v2 optionIndex:0];
  }

  else
  {
    __break(1u);
  }
}

size_t closure #2 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(void (*a1)(void *, void), uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for DOCOperationItem();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v16);
  v18 = (v31 - v17);
  v33 = a5;
  if (a3 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  v34 = a3;
  if (!v19)
  {
LABEL_16:
    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(5u, v20, 0, 0, 0, 1, v33, 0, 0);

    v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
    v35[0] = v34;

    a1(v35, 0);
    return outlined destroy of CharacterSet?(v35, &_sypSgMd);
  }

  v35[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v31[1] = a4;
    v31[2] = a2;
    v32 = a1;
    v22 = v34;
    v20 = v35[0];
    if ((v34 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        *v18 = MEMORY[0x24C1FC540](i, v22);
        swift_storeEnumTagMultiPayload();
        v35[0] = v20;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v22 = v34;
          v20 = v35[0];
        }

        *(v20 + 16) = v25 + 1;
        outlined init with take of DOCOperationItem(v18, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25);
      }
    }

    else
    {
      v26 = (v34 + 32);
      do
      {
        v27 = *v26;
        *v14 = *v26;
        swift_storeEnumTagMultiPayload();
        v35[0] = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        v30 = v27;
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
          v20 = v35[0];
        }

        *(v20 + 16) = v29 + 1;
        outlined init with take of DOCOperationItem(v14, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29);
        ++v26;
        --v19;
      }

      while (v19);
    }

    a1 = v32;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void closure #3 in FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = _convertErrorToNSError(_:)();
    if (NSError.isUserCancelledError.getter())
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a3;
      *(v6 + 24) = a4;

      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

void FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:)(unint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v23 = _bridgeCocoaArray<A>(_:)();

    v9 = v23;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v10 = [objc_opt_self() shared];
  v11 = specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(v9, a2, v10);
  v13 = v12;

  if (v11)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = a3 & 1;
      v24[4] = partial apply for closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:);
      v24[5] = v16;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 1107296256;
      v24[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      v24[3] = &block_descriptor_89;
      v17 = _Block_copy(v24);
      swift_unknownObjectRetain_n();

      [v15 setErrorRecoveryHandler_];
      _Block_release(v17);
      swift_unknownObjectRelease_n();
    }

    ObjectType = swift_getObjectType();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v20 = *(v13 + 8);
    v21 = *(v20 + 16);

    v21(partial apply for closure #2 in FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:), v19, ObjectType, v20);
    v22 = swift_unknownObjectRetain();
    specialized FPItemManager.scheduleOperation(_:)(v22, ObjectType, v20);
    swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }
}

uint64_t FPItemManager.moveItems(_:into:bounceOnCollision:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](FPItemManager.moveItems(_:into:bounceOnCollision:), 0, 0);
}

uint64_t FPItemManager.moveItems(_:into:bounceOnCollision:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = FPItemManager.moveItems(_:into:bounceOnCollision:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000024, 0x8000000249BEFB80, partial apply for closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:), v3, v6);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = DOCNode.fpfs_fetchFPItem();
  }

  else
  {

    v2 = FPItemManager.moveItems(_:into:bounceOnCollision:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = aBlock - v13;
  (*(v10 + 16))(aBlock - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);

  if (a3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v30 = _bridgeCocoaArray<A>(_:)();

    a3 = v30;
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v17 = [objc_opt_self() shared];
  v18 = specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(a3, a4, v17);
  v20 = v19;

  if (v18)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = a5 & 1;
      aBlock[4] = partial apply for closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:);
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      aBlock[3] = &block_descriptor_290_0;
      v24 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      [v22 setErrorRecoveryHandler_];
      _Block_release(v24);
      swift_unknownObjectRelease_n();
    }

    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for closure #1 in closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:);
    *(v26 + 24) = v16;
    v27 = *(v20 + 8);
    v28 = *(v27 + 16);

    v28(partial apply for closure #2 in FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:), v26, ObjectType, v27);
    v29 = swift_unknownObjectRetain();
    specialized FPItemManager.scheduleOperation(_:)(v29, ObjectType, v27);

    swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }
}

void FPItemManager.copyItems(_:into:bounceOnCollision:completionHandler:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [objc_opt_self() shared];
  v13 = type metadata accessor for DOCCopyOperation();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_allowDSCopyEngine] = 1;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsTransferResults] = 0;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceNodeToURL] = 0;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceURLToNode] = 0;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsItemIDToPlaceholderID] = 0;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = 0;
  v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed] = 0;
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
  v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication] = 0;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems] = a1;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem] = a2;
  swift_beginAccess();
  v14[v15] = 0;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager] = v12;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v16 = a2;
  v17 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v33.receiver = v14;
  v33.super_class = v13;
  v19 = objc_msgSendSuper2(&v33, sel_initWithItems_destinationFolder_, isa, v16);

  v20 = *((*MEMORY[0x277D85000] & *v19) + 0x1A0);
  v21 = v19;
  v20();

  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v31 = partial apply for closure #1 in FPItemManager.copyItems(_:into:bounceOnCollision:completionHandler:);
  v32 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v30 = &block_descriptor_97_1;
  v23 = _Block_copy(&aBlock);
  v24 = v21;

  [v24 setErrorRecoveryHandler_];
  _Block_release(v23);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  v31 = partial apply for closure #2 in FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:);
  v32 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v30 = &block_descriptor_103;
  v26 = _Block_copy(&aBlock);

  [v24 setActionCompletionBlock_];
  _Block_release(v26);

  [v6 scheduleAction_];
}

void closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:)(uint64_t a1, char a2)
{
  v6 = _convertErrorToNSError(_:)();
  if ([v6 code] == -1001)
  {
    if ([v6 recoveryAttempter])
    {
      if (a2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v8, &v9);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      swift_dynamicCast();
      v4 = v6;
      v5 = _convertErrorToNSError(_:)();

      [v7 attemptRecoveryFromError:v5 optionIndex:v3];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t FPItemManager.copyItems(_:into:bounceOnCollision:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](FPItemManager.copyItems(_:into:bounceOnCollision:), 0, 0);
}

uint64_t FPItemManager.copyItems(_:into:bounceOnCollision:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = FPItemManager.copyItems(_:into:bounceOnCollision:);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000024, 0x8000000249BEFBB0, partial apply for closure #1 in FPItemManager.copyItems(_:into:bounceOnCollision:), v3, v6);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = DOCNode.fpfs_fetchFINode();
  }

  else
  {

    v2 = FPItemManager.moveItems(_:into:bounceOnCollision:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #1 in FPItemManager.copyItems(_:into:bounceOnCollision:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v18 - v13;
  (*(v10 + 16))(&v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  FPItemManager.copyItems(_:into:bounceOnCollision:completionHandler:)(a3, a4, a5, partial apply for closure #1 in closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:), v16);
}

void closure #1 in FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6)
{
  v43 = a6;
  HIDWORD(v41) = a5;
  v45 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd);
  v9 = *(v46 - 8);
  v11 = MEMORY[0x28223BE20](v46, v10);
  v44 = &v41 - v12;
  v42 = a4;
  v13 = [a4 filename];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 pathExtension];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = String.isKnownExtension()();
    v20 = MEMORY[0x24C1FAD20](a2, a3);
    v21 = [v20 pathExtension];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String.isKnownExtension()();

    if (v19)
    {
      if (v22)
      {
        if ((v41 & 0x100000000) != 0)
        {
          goto LABEL_5;
        }

        v23 = MEMORY[0x24C1FAD20](a2, a3);
        v24 = [v23 stringByDeletingPathExtension];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v47 = v25;
        v48 = v27;
      }

      else
      {
        v47 = a2;
        v48 = a3;
      }

      MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
      MEMORY[0x24C1FAEA0](v16, v18);

      a2 = v47;
      a3 = v48;
      goto LABEL_9;
    }

LABEL_5:

LABEL_9:
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = [objc_opt_self() shared];
    v30 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
    v31 = v42;
    v32 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v31, a2, a3, 0, v43 & 1, v29, v30);

    v33 = v44;
    v34 = v46;
    (*(v9 + 16))(v44, v45, v46);
    v35 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v28;
    (*(v9 + 32))(v36 + v35, v33, v34);
    v37 = MEMORY[0x277D85000];
    v38 = *((*MEMORY[0x277D85000] & *v32) + 0x190);

    v38(partial apply for closure #1 in closure #1 in FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:), v36);
    v39 = *((*v37 & *v32) + 0x178);

    v40 = v39(partial apply for closure #2 in closure #1 in FPItemManager.rename(item:name:overwriteExtension:shouldDonateAppIntents:), v28);
    (*((*v37 & *v32) + 0x1B8))(v40);

    return;
  }

  __break(1u);
}

uint64_t closure #2 in closure #1 in FPItemManager.createNewFolder(parentItem:folderName:shouldBounceOnCollision:isForAppIntents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = v5;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a2)
  {
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    goto LABEL_3;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  DOCNode.fpfs_syncFetchFPItemResult()();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCs5Error_pGMd);
    CheckedContinuation.resume(returning:)();
  }

  return swift_unknownObjectRelease();
}

id closure #4 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(int a1, id a2, id a3, uint64_t a4)
{
  if (a2)
  {
    v5 = [a2 error];
  }

  else
  {
    v5 = a3;
    v6 = a3;
  }

  swift_beginAccess();
  v7 = *(a4 + 16);
  *(a4 + 16) = v5;

  if (v5)
  {
    v8 = v5;
    v9 = _convertErrorToNSError(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D04718]) initWithResolution:5 error:v9];

  return v10;
}

uint64_t FPItemManager.duplicateItems(_:desiredFileNames:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](FPItemManager.duplicateItems(_:desiredFileNames:), 0, 0);
}

uint64_t FPItemManager.duplicateItems(_:desiredFileNames:)()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[5];
    v8 = *(v0 + 3);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *(v3 + 16) = v8;
    *(v3 + 32) = v2;
    v4 = swift_task_alloc();
    v0[7] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FPItemCGMd);
    *v4 = v0;
    v4[1] = FPItemManager.duplicateItems(_:desiredFileNames:);

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000023, 0x8000000249BEFBE0, partial apply for closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:), v3, v5);
  }

  [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = FPItemManager.duplicateItems(_:desiredFileNames:);
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFINode();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - v11;

  if (a2 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v13 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v13 = a2;
  }

  (*(v8 + 16))(v12, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v8 + 32))(v16 + v14, v12, v7);
  *(v16 + v15) = a3;
  v17 = v21;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v18 = v17;

  specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(v13, partial apply for closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:), v16);
}

id closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:)(id a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v13 = &v56 - v12;
  if (!a1)
  {
    goto LABEL_9;
  }

  v69 = v11;
  v70 = v13;
  v71 = a4;
  v68 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_39:
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v14 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_unknownObjectRetain();

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v14 = a2;
  }

  v15 = [objc_opt_self() shared];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = specialized makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(v14, a1, 1, v15);
  v18 = v17;

  swift_unknownObjectRelease();
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v72 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    return CheckedContinuation.resume(throwing:)();
  }

  ObjectType = swift_getObjectType();
  (*(v18 + 48))(2, ObjectType, v18);
  (*(v18 + 24))(1, ObjectType, v18);
  v20 = v71;
  if (!v71)
  {
LABEL_36:
    v46 = v16;
    v47 = ObjectType;
    v48 = v70;
    (*(v9 + 16))(v70, a3, v8);
    v49 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v50 = (v69 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    (*(v9 + 32))(v51 + v49, v48, v8);
    v52 = (v51 + v50);
    *v52 = v46;
    v52[1] = v18;
    v53 = *(v18 + 8);
    v54 = *(v53 + 16);
    swift_unknownObjectRetain();
    v54(partial apply for closure #2 in closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:), v51, v47, v53);
    v55 = swift_unknownObjectRetain();
    specialized FPItemManager.scheduleOperation(_:)(v55, v47, v53);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease_n();
  }

  v62 = v18;
  v63 = ObjectType;
  v64 = v16;
  v65 = v9;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15DOCHashableNodeC_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v68)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = a3;
  v67 = v8;
  v68 = a1;
  if (!v9)
  {
LABEL_35:
    v18 = v62;
    v44 = *(v62 + 104);

    ObjectType = v63;
    v16 = v64;
    v44(v45, v63, v18);

    v8 = v67;
    v9 = v65;
    a3 = v66;
    goto LABEL_36;
  }

  a3 = 0;
  v23 = v20 + 40;
  v60 = v20 + 40;
  while (2)
  {
    v8 = (v23 + 16 * a3);
    v24 = a3;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x24C1FC540](v24, a2);
      }

      else
      {
        if (v24 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v25 = *(a2 + 8 * v24 + 32);
      }

      a1 = v25;
      a3 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v24 < *(v20 + 16))
      {
        break;
      }

      v8 += 2;
      ++v24;
      if (a3 == v9)
      {
        goto LABEL_35;
      }
    }

    v59 = v21;
    result = [v25 filename];
    if (result)
    {
      v26 = result;
      v27 = [result pathExtension];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v28;

      v29 = *(v8 - 1);
      v30 = *v8;

      v58 = v29;
      v31 = MEMORY[0x24C1FAD20](v29, v30);

      v32 = [v31 pathExtension];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v61 = v30;

      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {

        v23 = v60;
      }

      else
      {
        v39 = v56;
        v38 = v57;
        v40 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v40 = v56 & 0xFFFFFFFFFFFFLL;
        }

        v23 = v60;
        if (v40)
        {
          v72 = v58;
          v73 = v61;
          MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
          MEMORY[0x24C1FAEA0](v39, v38);

          v37 = v72;
          v61 = v73;
LABEL_32:
          type metadata accessor for DOCHashableNode();
          v41 = swift_allocObject();
          *(v41 + 16) = a1;
          a1 = a1;
          v42 = v59;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v42;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v61, v41, isUniquelyReferenced_nonNull_native);

          v20 = v71;
          v21 = v72;
          if (a3 != v9)
          {
            continue;
          }

          goto LABEL_35;
        }
      }

      v37 = v58;
      goto LABEL_32;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in FPItemManager.duplicateItems(_:desiredFileNames:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v14 = a1;
    v4 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  ObjectType = swift_getObjectType();
  v8 = (*(a4 + 88))(ObjectType, a4);
  if (!v8)
  {
LABEL_8:
    v14 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    goto LABEL_3;
  }

  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5(*(v8 + 16), 0);
    v12 = specialized Sequence._copySequenceContents(initializing:)(&v14, (v11 + 32), v10, v9);

    outlined consume of Set<UITouch>.Iterator._Variant();
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v11);

  if (All)
  {
    v14 = All;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo6FPItemCGs5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t FPItemManager.archive(_:destinationFolder:format:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOySo13FPItemManagerC08DocumentE11ExecutablesE22ArchiveOperationStatusOs5Error_p__GMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13[-v9];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v11;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  (*(v7 + 104))(v10, *MEMORY[0x277D858A0], v6);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in FPItemManager.archive(_:destinationFolder:format:)(char *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v65 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo13FPItemManagerC08DocumentC11ExecutablesE22ArchiveOperationStatusOs5Error_p_GMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  MEMORY[0x28223BE20](v12, v13);
  v64 = &v57 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v57 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v67 = 0;
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  v20 = Strong;
  v59 = a3;
  v60 = a1;
  v62 = a4;
  v21 = *(v9 + 16);
  v21(v18, a1, v8);
  v63 = v20;
  v22 = v8;
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v58 = swift_allocObject();
  v61 = v9;
  v24 = *(v9 + 32);
  v24(v58 + v23, v18, v8);
  v25 = v64;
  v21(v64, v60, v8);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v60, v25, v8);
  v26 = v59;
  v27 = v63;
  v28 = swift_allocObject();
  v29 = v28 + v23;
  v30 = v8;
  v24(v29, v25, v8);
  v31 = v58;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = partial apply for closure #2 in closure #1 in FPItemManager.archive(_:destinationFolder:format:);
  v33[4] = v28;
  v33[5] = v26;
  v33[6] = v65;
  v33[7] = partial apply for closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:);
  v33[8] = v31;
  v34 = v62;
  if (v62)
  {
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v64 = v35;
      v57 = v22;
      if (v26 >> 62)
      {

        v56 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        v37 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v36 = v34;
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v37 = v26;
      }

      v38 = v31;
      v39 = [objc_opt_self() shared];
      v40 = specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(v37, v34, v39);
      v42 = v41;

      if (!v40)
      {
        result = (*(v61 + 8))(v60, v57);
        __break(1u);
        return result;
      }

      ObjectType = swift_getObjectType();
      (*(v42 + 24))(v65, ObjectType, v42);
      v44 = *(v42 + 48);

      v44(partial apply for closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:), v38, ObjectType, v42);
      (*(v42 + 88))(ObjectType, v42);
      v45 = swift_allocObject();
      v45[2] = v40;
      v45[3] = v42;
      v45[4] = partial apply for closure #2 in closure #1 in FPItemManager.archive(_:destinationFolder:format:);
      v45[5] = v28;
      v46 = *(v42 + 112);

      swift_unknownObjectRetain();
      v46(closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)partial apply, v45, ObjectType, v42);
      specialized FPItemManager.scheduleOperation(_:)(v40, ObjectType, *(v42 + 8));

      swift_unknownObjectRelease();
      (*(v61 + 8))(v60, v57);
    }

    else
    {
      v51 = *MEMORY[0x277CCA050];
      v52 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

      v53 = v34;
      v66 = [v52 initWithDomain:v51 code:3072 userInfo:0];
      v54 = v66;
      v55 = v60;
      AsyncThrowingStream.Continuation.finish(throwing:)();

      (*(v61 + 8))(v55, v30);
    }
  }

  else
  {
    if (v26 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v48 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      swift_bridgeObjectRetain_n();

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v48 = v26;
    }

    v49 = v61;

    v50 = v27;

    specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(v48, partial apply for closure #2 in closure #1 in FPItemManager.archive(_:destinationFolder:format:), v28, v26, v50, closure #1 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)partial apply, v33);

    return (*(v49 + 8))(v60, v30);
  }
}

uint64_t closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:)(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOySo13FPItemManagerC08DocumentE11ExecutablesE22ArchiveOperationStatusOs5Error_p__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  v8 = a1;
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo13FPItemManagerC08DocumentC11ExecutablesE22ArchiveOperationStatusOs5Error_p_GMd);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t closure #2 in closure #1 in FPItemManager.archive(_:destinationFolder:format:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOySo13FPItemManagerC08DocumentE11ExecutablesE22ArchiveOperationStatusOs5Error_p__GMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  v12 = a1;
  if (a2)
  {
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo13FPItemManagerC08DocumentC11ExecutablesE22ArchiveOperationStatusOs5Error_p_GMd);
  }

  else
  {
    v13 = 1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo13FPItemManagerC08DocumentC11ExecutablesE22ArchiveOperationStatusOs5Error_p_GMd);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v5 + 8))(v8, v4);
    v12 = 0;
  }

  return AsyncThrowingStream.Continuation.finish(throwing:)();
}

void FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t), int64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a1;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = a6;
      if (a1 >> 62)
      {
        v20 = a2;

        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);

        v39 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        a1 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);

        v19 = a2;
        v20 = a2;
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      }

      v21 = [objc_opt_self() shared];
      v40 = v20;
      v22 = specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(a1, v20, v21);
      v24 = v23;

      if (v22)
      {
        ObjectType = swift_getObjectType();
        (*(v24 + 24))(a3, ObjectType, v24);
        v26 = *(v24 + 48);
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
        v26(a4, a5, ObjectType, v24);
        (*(v24 + 88))(ObjectType, v24);
        v27 = swift_allocObject();
        v27[2] = v22;
        v27[3] = v24;
        v27[4] = v42;
        v27[5] = a7;
        v28 = *(v24 + 112);

        swift_unknownObjectRetain();
        v28(partial apply for closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:), v27, ObjectType, v24);
        v29 = *(v24 + 8);
        v30 = swift_unknownObjectRetain_n();
        specialized FPItemManager.scheduleOperation(_:)(v30, ObjectType, v29);

        swift_unknownObjectRelease_n();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v33 = a2;
      v34 = *MEMORY[0x277CCA050];
      v35 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);

      v36 = a6;
      v37 = v33;
      v38 = [v35 initWithDomain:v34 code:3072 userInfo:0];
      v36(v38, 1);
    }
  }

  else
  {
    if (a1 >> 62)
    {
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v31 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v31 = a1;
    }

    v32 = v8;

    specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(v31, a6, a7, a1, v32, partial apply for closure #1 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:), v17);
  }
}

void closure #1 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(void *a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;

    if (a5 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v28 = _bridgeCocoaArray<A>(_:)();

      a5 = v28;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v17 = [objc_opt_self() shared];
    v18 = specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(a5, a1, v17);
    v20 = v19;

    if (v18)
    {
      ObjectType = swift_getObjectType();
      (*(v20 + 24))(a6, ObjectType, v20);
      v22 = *(v20 + 48);
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a7);
      v22(a7, a8, ObjectType, v20);
      (*(v20 + 88))(ObjectType, v20);
      v23 = swift_allocObject();
      v23[2] = v18;
      v23[3] = v20;
      v23[4] = a3;
      v23[5] = a4;
      v24 = *(v20 + 112);
      swift_unknownObjectRetain();

      v24(closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)partial apply, v23, ObjectType, v20);
      v25 = *(v20 + 8);
      v26 = swift_unknownObjectRetain();
      specialized FPItemManager.scheduleOperation(_:)(v26, ObjectType, v25);

      swift_unknownObjectRelease_n();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    a3(v27, 1);
  }
}

void closure #1 in closure #1 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  ObjectType = swift_getObjectType();
  (*(a4 + 96))(ObjectType, a4);
  v10 = *(a4 + 72);
  v11 = a1;
  v10(a1, ObjectType, a4);
  if (a2)
  {
    v12 = a2;
    a5(a2, 1);
  }

  if (a1)
  {
    v13 = v11;
    a5(a1, 0);
  }

  else
  {
    a5(0, 0);
  }
}

void closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5, void (*a6)(void), char **a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v80 = &v71 - v20;
  v21 = type metadata accessor for URL();
  v81 = *(v21 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x28223BE20](a1, v23);
  v79 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v78 = &v71 - v26;
  v30 = MEMORY[0x28223BE20](v27, v28);
  v32 = &v71 - v31;
  if (v29)
  {
    v82 = [v29 fpfs_fpItem];
    if (v82)
    {
      v74 = a3;
      v75 = v21;
      v73 = a5;
      if (a4 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v71 = v32;
        v72 = a2;
        v77 = a6;
        if (!i)
        {
          break;
        }

        v76 = a7;
        a2 = 0;
        a6 = (a4 & 0xC000000000000001);
        v32 = (a4 & 0xFFFFFFFFFFFFFF8);
        a7 = &selRef_setCancelsTouchesInView_;
        while (1)
        {
          if (a6)
          {
            v34 = MEMORY[0x24C1FC540](a2, a4);
          }

          else
          {
            if (a2 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v34 = *(a4 + 8 * a2 + 32);
          }

          v35 = v34;
          v36 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            break;
          }

          v37 = [v34 fp_appContainerBundleIdentifier];
          if (v37)
          {

            v39 = 0;
            goto LABEL_20;
          }

          ++a2;
          if (v36 == i)
          {
            v39 = 1;
LABEL_20:
            a7 = v76;
            a6 = v77;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

      v39 = 1;
LABEL_21:
      v40 = v82;
      v41 = [v82 providerDomainID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (v39)
      {
      }

      else
      {
        v42 = [v40 itemIdentifier];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
        if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
        {
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v47 & 1) == 0)
          {

            v40 = v82;
            v77(v82);
LABEL_35:

            return;
          }
        }

        v48._countAndFlagsBits = 0xD00000000000002BLL;
        v48._object = 0x8000000249BEFFD0;
        v49 = String.hasPrefix(_:)(v48);

        a6 = v77;
        v40 = v82;
        if (v49)
        {
          v50 = [v82 fileURL];
          if (v50)
          {
            v51 = v50;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v52 = v81;
            v53 = *(v81 + 56);
            v54 = v17;
            v55 = 0;
          }

          else
          {
            v52 = v81;
            v53 = *(v81 + 56);
            v54 = v17;
            v55 = 1;
          }

          v56 = v75;
          v53(v54, v55, 1, v75);
          v57 = v80;
          outlined init with take of (key: URL, value: FPItem)(v17, v80, &_s10Foundation3URLVSgMd);
          if (!(*(v52 + 48))(v57, 1, v56))
          {
            v75 = *(v52 + 16);
            v58 = v79;
            v75(v79, v57, v56);
            outlined destroy of CharacterSet?(v57, &_s10Foundation3URLVSgMd);
            v59 = v78;
            URL.appendingPathComponent(_:)();
            v81 = *(v52 + 8);
            (v81)(v58, v56);
            v76 = a7;
            v60 = *(v52 + 32);
            v61 = v71;
            v60(v71, v59, v56);
            URL._bridgeToObjectiveC()(v62);
            v80 = v63;
            v75(v58, v61, v56);
            v64 = (*(v52 + 80) + 32) & ~*(v52 + 80);
            v65 = swift_allocObject();
            v66 = v76;
            *(v65 + 16) = v77;
            *(v65 + 24) = v66;
            v60((v65 + v64), v58, v56);
            v67 = (v65 + ((v22 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
            v68 = v74;
            *v67 = v72;
            v67[1] = v68;
            aBlock[4] = partial apply for closure #2 in closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:);
            aBlock[5] = v65;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
            aBlock[3] = &block_descriptor_248_0;
            v69 = _Block_copy(aBlock);

            v70 = v80;
            [v73 fetchItemForURL:v80 completionHandler:v69];

            _Block_release(v69);
            (v81)(v61, v56);
            return;
          }

          outlined destroy of CharacterSet?(v57, &_s10Foundation3URLVSgMd);
          a6 = v77;
        }
      }

      a6(v40);
      goto LABEL_35;
    }
  }

  v82 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  (a2)(v82, 1);
  v38 = v82;
}

void closure #2 in closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(void, void), void *a7)
{
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = a1;
    a3();
    v18 = v37;
  }

  else
  {
    v37 = a7;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    (*(v14 + 16))(v17, a5, v13);
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v36 = a6;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v23 = 136315394;
      v25 = URL.path.getter();
      v27 = v26;
      (*(v14 + 8))(v17, v13);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v38);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      if (a2)
      {
        v29 = a2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      a6 = v36;
      *(v23 + 14) = v30;
      *v24 = v31;
      _os_log_impl(&dword_2493AC000, v21, v22, "Failed to fetch item for %s: %@", v23, 0x16u);
      outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v24, -1, -1);
      v32 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C1FE850](v32, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    v33 = a2;
    if (!a2)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    }

    v34 = a2;
    a6(v33, 1);
  }
}

void FPItemManager.trashItems(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() shared];
  v8 = type metadata accessor for DOCTrashOperation();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_sourceParentFolderItem] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTrashOperation_undoManager] = v7;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v10 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = objc_msgSendSuper2(&v18, sel_initWithItems_, isa);

  v13 = *((*MEMORY[0x277D85000] & *v12) + 0x98);
  v14 = v12;
  v13();

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v17[4] = partial apply for closure #1 in FPItemManager.trashItems(_:completionHandler:);
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v17[3] = &block_descriptor_343;
  v16 = _Block_copy(v17);

  [v14 setActionCompletionBlock_];
  _Block_release(v16);
  [v4 scheduleAction_];
}

uint64_t FPItemManager.deleteItems(_:confirmationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](FPItemManager.deleteItems(_:confirmationHandler:), 0, 0);
}

uint64_t FPItemManager.deleteItems(_:confirmationHandler:)()
{
  v1 = v0[3];
  if (v1)
  {

    v9 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = FPItemManager.deleteItems(_:confirmationHandler:);

    return v9();
  }

  else
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_task_alloc();
    v0[8] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = FPItemManager.deleteItems(_:confirmationHandler:);
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000249BEFAD0, closure #1 in FPItemManager.deleteItems(_:confirmationHandler:)partial apply, v6, v8);
  }
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = FPItemManager.deleteItems(_:confirmationHandler:);
  }

  else
  {
    v2 = FPItemManager.deleteItems(_:confirmationHandler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[3]);
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = FPItemManager.deleteItems(_:confirmationHandler:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000023, 0x8000000249BEFAD0, closure #1 in FPItemManager.deleteItems(_:confirmationHandler:)partial apply, v3, v5);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = FPItemManager.deleteItems(_:confirmationHandler:);
  }

  else
  {

    v2 = FPItemManager.moveItems(_:into:bounceOnCollision:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void closure #1 in FPItemManager.deleteItems(_:confirmationHandler:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = aBlock - v10;
  (*(v7 + 16))(aBlock - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v11, v6);
  v14 = objc_opt_self();

  v15 = [v14 shared];
  v16 = type metadata accessor for DOCDeleteOperation();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = a3;
  *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = 0;
  *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v15;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v18 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26.receiver = v17;
  v26.super_class = v16;
  v20 = objc_msgSendSuper2(&v26, sel_initWithItems_, isa);

  v21 = *((*MEMORY[0x277D85000] & *v20) + 0x90);
  v22 = v20;
  v21();

  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #1 in closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:);
  *(v23 + 24) = v13;
  aBlock[4] = partial apply for closure #2 in FPItemManager.moveItems(_:into:bounceOnCollision:completionHandler:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_334_1;
  v24 = _Block_copy(aBlock);

  [v22 setActionCompletionBlock_];
  _Block_release(v24);
  [a2 scheduleAction_];
}

uint64_t FPItemManager.trashItems(_:confirmationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](FPItemManager.trashItems(_:confirmationHandler:), 0, 0);
}

uint64_t FPItemManager.trashItems(_:confirmationHandler:)()
{
  v1 = v0[3];
  if (v1)
  {

    v9 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = FPItemManager.trashItems(_:confirmationHandler:);

    return v9();
  }

  else
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_task_alloc();
    v0[8] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = FPItemManager.trashItems(_:confirmationHandler:);
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000022, 0x8000000249BEFAA0, closure #1 in FPItemManager.trashItems(_:confirmationHandler:)partial apply, v6, v8);
  }
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = FPItemManager.trashItems(_:confirmationHandler:);
  }

  else
  {
    v2 = FPItemManager.trashItems(_:confirmationHandler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v0[3]);
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = FPItemManager.trashItems(_:confirmationHandler:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000022, 0x8000000249BEFAA0, closure #1 in FPItemManager.trashItems(_:confirmationHandler:)partial apply, v3, v5);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = FPItemManager.trashItems(_:confirmationHandler:);
  }

  else
  {

    v2 = FPItemManager.trashItems(_:confirmationHandler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in FPItemManager.trashItems(_:confirmationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v14 - v9;
  (*(v6 + 16))(&v14 - v9, a1, v5, v8);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v5);
  FPItemManager.trashItems(_:completionHandler:)(a3, partial apply for closure #1 in closure #1 in FPItemManager.trashItems(_:confirmationHandler:), v12);
}

uint64_t closure #1 in closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

void closure #1 in FPItemManager.configureAndExecuteOperation(_:actionKind:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = _convertErrorToNSError(_:)();
      specialized FPItemManager.presentRecoveryAlert(fromError:alertPresenting:)(v4, v3);

      v1 = v4;
    }
  }
}

uint64_t closure #2 in FPItemManager.disconnect(domain:alertPresenting:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_249B9FA70;
    *(v4 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    *(v4 + 64) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPProviderDomain and conformance NSObject, &lazy cache variable for type metadata for FPProviderDomain);
    *(v4 + 32) = a2;
    *(v4 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v4 + 104) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v4 + 72) = v3;
    v5 = a2;
    v6 = v3;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249B9A480;
    *(v7 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    *(v7 + 64) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPProviderDomain and conformance NSObject, &lazy cache variable for type metadata for FPProviderDomain);
    *(v7 + 32) = a2;
    v8 = a2;
    os_log(_:dso:log:type:_:)();
  }
}

Swift::Void __swiftcall FPQueryCollection.startObservingAppProtectionStatus()()
{
  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v5 = 136315650;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BEFC10, &v10);
      *(v5 + 12) = 2080;
      *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BEFC10, &v10);
      *(v5 + 22) = 2112;
      *(v5 + 24) = v2;
      *v6 = v2;
      v8 = v2;
      _os_log_impl(&dword_2493AC000, v3, v4, "%s [PROTECTED APPS] %s %@", v5, 0x20u);
      outlined destroy of CharacterSet?(v6, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v6, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }

    v9 = [objc_opt_self() defaultCenter];
    [v9 addObserver:v2 selector:sel_updateQueryFiltersForNewApps name:*MEMORY[0x277D060A8] object:0];
  }
}

void filteredHiddenApps #1 (in:) in static FPItemManager.allowedProviderIdentifiers(for:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 protectedApplicationBundleIDs];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 40;
    v19 = a1 + 40;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v10 = (v9 + 16 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= v7)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_18;
        }

        v13 = *(v10 - 1);
        v12 = *v10;
        v21[0] = v13;
        v21[1] = v12;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v6);
        v18[2] = v21;

        if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v18, v4))
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v8 == v7)
        {
          goto LABEL_16;
        }
      }

      v14 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
        v14 = v22;
      }

      v9 = v19;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v14 = v22;
      }

      *(v14 + 16) = v16 + 1;
      v20 = v14;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
    }

    while (v8 != v7);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_16:
}

BOOL closure #1 in static FPItemManager.allowedProviderIdentifiers(for:)(void *a1, uint64_t a2)
{
  v3 = [a1 topLevelBundleIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v9[0] = v4;
  v9[1] = v6;
  v8[2] = v9;
  LOBYTE(a2) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, a2);

  return (a2 & 1) == 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed FPProviderDomain) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:)(uint64_t result, void *a2)
{
  if (*(v2 + 24) == 1)
  {
    v4 = result;
    v5 = *(v2 + 16);
    v6 = swift_allocObject();
    v6[2] = a2;
    v6[3] = v2;
    v6[4] = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:);
    *(v7 + 24) = v6;
    v13[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v13[5] = v7;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed () -> ();
    v13[3] = &block_descriptor_163_0;
    v8 = _Block_copy(v13);
    v9 = v5;
    v10 = a2;

    v11 = v4;

    dispatch_sync(v9, v8);

    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchTime();
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v38 - v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    v25 = 0;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      swift_beginAccess();
      v25 = *(*(a2 + 40) + 16);
    }
  }

  v26 = [a3 allowedProviderIdentifiers];
  if (v26)
  {
    v27 = v26;
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v28 = 0;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  [a3 setAllowedProviderIdentifiers_];

  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = v28;
  result = swift_beginAccess();
  if (*(*(a2 + 40) + 16) < v25)
  {
    __break(1u);
  }

  else
  {
    v32 = a3;
    specialized Array.replaceSubrange<A>(_:with:)(v25, v25, partial apply for closure #1 in closure #1 in QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:), v30);
    swift_endAccess();

    if (*(*(a2 + 40) + 16) == 1)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v38 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v33 = v18;
      + infix(_:_:)();
      v39 = v9;
      v40 = *(v40 + 8);
      (v40)(v14, v44);
      aBlock[4] = partial apply for closure #2 in closure #1 in QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:);
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_169;
      v34 = _Block_copy(aBlock);

      v35 = v41;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v36 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v38;
      MEMORY[0x24C1FB940](v33, v35, v36, v34);
      _Block_release(v34);

      (*(v6 + 8))(v36, v5);
      (*(v42 + 8))(v35, v39);
      return (v40)(v33, v44);
    }
  }

  return result;
}

id closure #1 in closure #1 in QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:)(void *a1, Class isa)
{
  [a1 stopObserving];
  if (isa)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setAllowedProviderIdentifiers_];

  return [a1 startObserving];
}

uint64_t closure #2 in closure #1 in QueryCollectionDelayedLoadingSimulator.delayLoadingIfNeeded(collection:identifier:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in QueryCollectionDelayedLoadingSimulator.endDelayingAll();
  *(v3 + 24) = a1;
  v7[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_176;
  v4 = _Block_copy(v7);
  v5 = v2;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in QueryCollectionDelayedLoadingSimulator.endDelayingAll()(uint64_t a1)
{
  *(a1 + 24) = 0;
  swift_beginAccess();
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      if (v3 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(a1 + 40) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t QueryCollectionDelayedLoadingSimulator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t QueryCollectionDelayedLoadingSimulator.init()()
{
  v1 = v0;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v14[0] = "acked collection.";
  v14[1] = v10;
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v15);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BF0260);
  LOBYTE(v5) = [v11 BOOLForKey_];

  *(v1 + 24) = v5;
  *(v1 + 32) = 0x4000000000000000;
  *(v1 + 40) = MEMORY[0x277D84F90];
  return v1;
}

Swift::Void __swiftcall FPQueryCollection.updateQueryFiltersForNewApps()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v97 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v5);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.UI);
  v9 = v1;
  v100 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&dword_2493AC000, v10, v11, "%s [PROTECTED APPS] %s %@", v12, 0x20u);
    outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  v16 = objc_opt_self();
  v17 = [v16 sharedManager];
  v18 = specialized DOCAppProtectionManager.protectedAppContainersOIDList.getter();

  v19 = [v9 excludedParentOIDs];
  if (v19)
  {
    v20 = v19;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18)
    {
      v22 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v21, v18);

      if (v22)
      {

        v23 = 0;
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  else if (!v18)
  {
    v23 = 0;
    goto LABEL_19;
  }

  v24 = v9;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v94 = v2;
    v28 = v27;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v92 = v16;
    v31 = v30;
    aBlock[0] = v30;
    *v28 = 136315906;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    v93 = v9;
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    *(v28 + 22) = 2080;
    v101 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd);
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);

    *(v28 + 24) = v34;
    v9 = v93;
    *(v28 + 32) = 2112;
    *(v28 + 34) = v24;
    *v29 = v24;
    v35 = v24;
    _os_log_impl(&dword_2493AC000, v25, v26, "%s [PROTECTED APPS] %s setting excluded parent OIDs to: %s for collection: %@", v28, 0x2Au);
    outlined destroy of CharacterSet?(v29, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v29, -1, -1);
    swift_arrayDestroy();
    v36 = v31;
    v16 = v92;
    MEMORY[0x24C1FE850](v36, -1, -1);
    v37 = v28;
    v2 = v94;
    MEMORY[0x24C1FE850](v37, -1, -1);
  }

  if (v18)
  {
    v38.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v38.super.isa = 0;
  }

  [v24 setExcludedParentOIDs_];

  v23 = 1;
LABEL_19:
  v39 = [v16 sharedManager];
  v40 = [v39 hostIdentifier];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = specialized static FPItemManager.allowedProviderIdentifiers(for:)(v41, v43);

  v45 = [v9 allowedProviderIdentifiers];
  if (v45)
  {
    v46 = v45;
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v44)
    {
      v48 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v47, v44);

      if (v48)
      {

        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  else if (!v44)
  {
LABEL_24:
    if (!v23)
    {
      return;
    }

    goto LABEL_33;
  }

  v49 = v9;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v52 = 136315906;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    v93 = v9;
    *(v52 + 12) = 2080;
    *(v52 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    *(v52 + 22) = 2080;
    v101 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd);
    v55 = String.init<A>(describing:)();
    v57 = v2;
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, aBlock);
    v9 = v93;

    *(v52 + 24) = v58;
    v2 = v57;
    *(v52 + 32) = 2112;
    *(v52 + 34) = v49;
    *v53 = v49;
    v59 = v49;
    _os_log_impl(&dword_2493AC000, v50, v51, "%s [PROTECTED APPS] %s setting allowedProviderIdentifiers to: %s for collection: %@", v52, 0x2Au);
    outlined destroy of CharacterSet?(v53, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v53, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v54, -1, -1);
    MEMORY[0x24C1FE850](v52, -1, -1);
  }

  if (v44)
  {
    v60.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v60.super.isa = 0;
  }

  [v49 setAllowedProviderIdentifiers_];

LABEL_33:
  v61 = v9;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v94 = v2;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v64 = 136316162;
    *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    *(v64 + 12) = 2080;
    *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
    *(v64 + 22) = 2080;
    v67 = [v61 allowedProviderIdentifiers];
    if (v67)
    {
      v68 = v67;
      v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v69 = 0;
    }

    v101 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd);
    v70 = String.init<A>(describing:)();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, aBlock);

    *(v64 + 24) = v72;
    *(v64 + 32) = 2080;
    v73 = [v61 excludedParentOIDs];
    if (v73)
    {
      v74 = v73;
      v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v75 = 0;
    }

    v2 = v94;
    v101 = v75;
    v76 = String.init<A>(describing:)();
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, aBlock);

    *(v64 + 34) = v78;
    *(v64 + 42) = 2112;
    *(v64 + 44) = v61;
    *v65 = v61;
    v79 = v61;
    _os_log_impl(&dword_2493AC000, v62, v63, "%s [PROTECTED APPS] %s restarting observation with allowedProviderIdentifiers: %s excludedParentOIDs: %s on collection: %@", v64, 0x34u);
    outlined destroy of CharacterSet?(v65, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v65, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v66, -1, -1);
    MEMORY[0x24C1FE850](v64, -1, -1);
  }

  if ([v61 doc_isObserving])
  {
    v80 = v61;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock[0] = v85;
      *v83 = 136315650;
      *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
      *(v83 + 12) = 2080;
      *(v83 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BEFC40, aBlock);
      *(v83 + 22) = 2112;
      *(v83 + 24) = v80;
      *v84 = v80;
      v86 = v80;
      _os_log_impl(&dword_2493AC000, v81, v82, "%s [PROTECTED APPS] %s restarting observation for %@", v83, 0x20u);
      outlined destroy of CharacterSet?(v84, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v84, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v85, -1, -1);
      MEMORY[0x24C1FE850](v83, -1, -1);
    }

    v87 = [v80 workingQueue];
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in FPQueryCollection.updateQueryFiltersForNewApps();
    aBlock[5] = v88;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_129_2;
    v89 = _Block_copy(aBlock);

    v90 = v95;
    static DispatchQoS.unspecified.getter();
    v101 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v91 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v90, v91, v89);
    _Block_release(v89);

    (*(v99 + 8))(v91, v2);
    (*(v96 + 8))(v90, v98);
  }
}