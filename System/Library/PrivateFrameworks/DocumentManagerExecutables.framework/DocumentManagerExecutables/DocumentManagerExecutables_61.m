uint64_t closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter(void *a1)
{
  v29 = a1;
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - v12;
  v14 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
  v15 = *(v2 + 16);
  v15(v9, v13, v1);
  v16 = swift_allocObject();
  v17 = v29;
  swift_unknownObjectWeakInit();
  v15(v5, v9, v1);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #4 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter;
  *(v18 + 24) = v16;
  swift_retain_n();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = UIButton.init(configuration:primaryAction:)();

  v20 = *(v2 + 8);
  v20(v9, v1);

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #5 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_204;
  v22 = _Block_copy(aBlock);

  [v19 setConfigurationUpdateHandler_];
  _Block_release(v22);
  v23 = v19;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v24) = 1148846080;
  [v23 setContentCompressionResistancePriority:0 forAxis:v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16DOCViewDecoratorCySo8UIButtonCGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v23;
  v26 = [v17 contentView];
  [v26 addSubview_];

  v20(v13, v1);
  return v25;
}

void closure #4 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x428))();
    if (v2)
    {
      v3 = v2;
      v2(v1);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
    }
  }
}

void closure #5 in closure #1 in DOCItemCollectionViewSectionHeader.expandToggleButton.getter(void *a1)
{
  v2 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for UIButton.Configuration();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    UIButton.configuration.getter();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      outlined destroy of CharacterSet?(v15, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    }

    else
    {
      v48 = a1;
      (*(v17 + 32))(v20, v15, v16);
      v23 = v22;
      v24 = [v23 tintColor];
      v49 = v17;
      if (v24)
      {

        UIButton.Configuration.baseForegroundColor.setter();
        v25 = objc_opt_self();
        v47 = v23;
        v26 = *MEMORY[0x277D76968];

        v27 = v26;
        v28 = v47;
        v29 = [v25 preferredFontForTextStyle_];
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v50 = v29;
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();
        v30 = type metadata accessor for AttributedString();
        (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
        UIButton.Configuration.attributedTitle.setter();
        v31 = v49;
        (*(v49 + 16))(v11, v20, v16);
        (*(v31 + 56))(v11, 0, 1, v16);
        v32 = UIButton.configuration.setter();
        v33 = MEMORY[0x277D85000];
        v34 = (*((*MEMORY[0x277D85000] & *v28) + 0x280))(v32);
        if (v35)
        {
          v36 = v34;
          v37 = v35;
          (*((*v33 & *v28) + 0x410))(&v50);
          v38 = v51;
          if (v51)
          {
            v39 = v50;
            v46 = v52;
            v40 = v53;
            v41 = objc_opt_self();
            v42 = MEMORY[0x24C1FAD20](v36, v37);

            v43 = MEMORY[0x24C1FAD20](v39, v38);
            v44 = [v41 groupBySectionToggleIdentifier:v42 sectionIdentifier:v43 expanded:(*(*v40 + 136))() & 1];

            if (!v44)
            {
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v44 = MEMORY[0x24C1FAD20](v45);
            }

            [v48 setAccessibilityIdentifier_];

            outlined consume of DOCCollectionSection?(v39, v38);
            (*(v49 + 8))(v20, v16);
          }

          else
          {
            (*(v49 + 8))(v20, v16);
          }
        }

        else
        {
          (*(v31 + 8))(v20, v16);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id DOCItemCollectionViewSectionHeader.expandToggleButtonVisibleConstraint.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint);
  }

  else
  {
    v4 = [*(DOCItemCollectionViewSectionHeader.expandToggleButton.getter() + 16) leadingAnchor];

    v5 = DOCItemCollectionViewSectionHeader.sectionTitleControl.getter();
    v6 = [v5 trailingAnchor];

    v7 = [v4 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];
    LODWORD(v8) = 1148682240;
    [v7 setPriority_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id DOCItemCollectionViewSectionHeader.attributedTitle.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x268))();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v3;
  if (String.count.getter() < 1)
  {

LABEL_8:
    v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v24 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v25 = [v23 initWithString_];

    return v25;
  }

  v6 = [v0 traitCollection];
  v7 = specialized static UIFont.doc_rowHeaderTitleFontForTags(compatibleWith:)(v6);

  (*((*v1 & *v0) + 0x250))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v7;
  v10 = v9;
  v11 = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = MEMORY[0x24C1FAD20](v4, v5);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() requestForChainedTags:isa tagDimension:v13 text:v14 textAttributes:16.0];

  if (v15)
  {

    [v15 setTagToTitleSpacing_];
    [v11 capHeight];
    v17 = (v16 + -24.0) * 0.5;
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    [v15 setTagBaselineAdjustment_];
    v18 = v15;
    [v18 setLayoutDirection_];

    v19 = [objc_opt_self() shared];
    aBlock[4] = closure #1 in DOCItemCollectionViewSectionHeader.attributedTitle.getter;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
    aBlock[3] = &block_descriptor_163_1;
    v20 = _Block_copy(aBlock);
    v21 = [v19 renderAttributedStringWithRequest:v18 titleHighlighter:v20];

    _Block_release(v20);
    return v21;
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = MEMORY[0x24C1FAD20](v4, v5);

    v28 = [v26 initWithString_];

    return v28;
  }
}

id closure #1 in DOCItemCollectionViewSectionHeader.attributedTitle.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);

  return [v2 initWithAttributedString_];
}

uint64_t DOCItemCollectionViewSectionHeader.itemTags.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemTags;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;

  LOBYTE(v3) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(v5, v4);

  if (v3)
  {
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = closure #1 in DOCItemCollectionViewSectionHeader.itemTags.didsetpartial apply;
  *(v9 + 24) = v8;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_137;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*DOCItemCollectionViewSectionHeader.itemTags.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemTags;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);

  return DOCItemCollectionViewSectionHeader.itemTags.modify;
}

void DOCItemCollectionViewSectionHeader.itemTags.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 72);

  if (a2)
  {

    v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(v8, v6);

    if (v9)
    {

LABEL_8:

      goto LABEL_9;
    }

LABEL_7:
    v17 = v3[10];
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = closure #1 in DOCItemCollectionViewSectionHeader.itemTags.didsetpartial apply;
    *(v20 + 24) = v19;
    v3[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v3[5] = v20;
    *v3 = MEMORY[0x277D85DD0];
    v3[1] = 1107296256;
    v3[2] = thunk for @escaping @callee_guaranteed () -> ();
    v3[3] = &block_descriptor_14_2;
    v21 = _Block_copy(v3);
    v22 = v17;

    [v18 performWithoutAnimation_];
    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
      return;
    }

    goto LABEL_8;
  }

  v10 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(v7, v6);

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = v3[10];
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = closure #1 in DOCItemCollectionViewSectionHeader.itemTags.didsetpartial apply;
  *(v14 + 24) = v13;
  v3[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v3[5] = v14;
  *v3 = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed () -> ();
  v3[3] = &block_descriptor_25_3;
  v15 = _Block_copy(v3);
  v16 = v11;

  [v12 performWithoutAnimation_];
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_9:

  free(v3);
}

void DOCItemCollectionViewSectionHeader.title.didset(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_title];
  swift_beginAccess();
  v6 = *(v5 + 1);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons;
  swift_beginAccess();
  v9 = *&v2[v8];
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_18:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = *(*(v9 + 56) + ((v15 << 9) | (8 * v16)));
      v18 = *&v17[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_button];
      v19 = v17;
      [v18 setNeedsUpdateConfiguration];
      [v18 invalidateIntrinsicContentSize];

      if (!v12)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_18;
    }
  }

  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in DOCItemCollectionViewSectionHeader.title.didset;
  *(v22 + 24) = v21;
  v26[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v26[5] = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = thunk for @escaping @callee_guaranteed () -> ();
  v26[3] = &block_descriptor_214_1;
  v23 = _Block_copy(v26);
  v24 = v2;

  [v20 performWithoutAnimation_];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return;
  }

LABEL_23:
  __break(1u);
}

void closure #1 in DOCItemCollectionViewSectionHeader.itemTags.didset(uint64_t a1)
{
  v2 = DOCItemCollectionViewSectionHeader.attributedTitle.getter();
  v3 = DOCItemCollectionViewSectionHeader.sectionTitleControl.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = v3;
  (*(v5 + 16))(v2, ObjectType, v5);
  v7 = (a1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl);
  v8 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl);
  *v7 = v10;
  v7[1] = v5;
  v9 = v10;

  [v9 layoutIfNeeded];
}

uint64_t DOCItemCollectionViewSectionHeader.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_title);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  DOCItemCollectionViewSectionHeader.title.didset(v6, v7);
}

void (*DOCItemCollectionViewSectionHeader.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return DOCItemCollectionViewSectionHeader.title.modify;
}

void DOCItemCollectionViewSectionHeader.title.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    DOCItemCollectionViewSectionHeader.title.didset(v9, v8);
  }

  else
  {
    DOCItemCollectionViewSectionHeader.title.didset(v9, v8);
  }

  free(v2);
}

uint64_t DOCItemCollectionViewSectionHeader.sectionTypeAccessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sectionTypeAccessibilityIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t DOCItemCollectionViewSectionHeader.itemCount.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewSectionHeader.itemCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemCount;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = MEMORY[0x277D85000];
    v7 = v1;
    (*((*MEMORY[0x277D85000] & *v1) + 0x410))(&v13, result);
    v8 = v13;
    v9 = v14;
    v10 = v15;
    if (v14)
    {

      v11 = outlined consume of DOCCollectionSection?(v8, v9);
      v12 = (*(*v10 + 136))(v11);
    }

    else
    {
      v12 = 0;
    }

    outlined consume of DOCCollectionSection?(v8, v9);
    return (*((*v6 & *v7) + 0x458))(v12 & 1);
  }

  return result;
}

void (*DOCItemCollectionViewSectionHeader.itemCount.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemCount;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCItemCollectionViewSectionHeader.itemCount.modify;
}

void DOCItemCollectionViewSectionHeader.itemCount.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v6 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1[4]) + 0x410))(&v13);
    v8 = v13;
    v7 = v14;
    v9 = v15;
    if (v14)
    {

      v10 = outlined consume of DOCCollectionSection?(v8, v7);
      v11 = (*(*v9 + 136))(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = v1[4];
    outlined consume of DOCCollectionSection?(v8, v7);
    (*((*v6 & *v12) + 0x458))(v11 & 1);
  }

  free(v1);
}

uint64_t DOCItemCollectionViewSectionHeader.layoutTraits.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_layoutTraits;
  swift_beginAccess();
  *(v1 + v3) = a1;

  DOCItemCollectionViewSectionHeader.updateSortButtonsVisibility()();
}

uint64_t (*DOCItemCollectionViewSectionHeader.layoutTraits.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionViewSectionHeader.layoutTraits.modify;
}

uint64_t DOCItemCollectionViewSectionHeader.stackMetrics.didset()
{
  v1 = v0;
  v2 = [v0 contentView];
  type metadata accessor for DOCItemCollectionView();
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (([v4 isKindOfClass_] & 1) == 0)
    {
      v6 = [v4 superview];

      v4 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v14 = swift_dynamicCastClassUnconditional();

    v15 = [v14 doc_nearestAncestorViewController];
    v7 = 0.0;
    if (v15)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = (*((*MEMORY[0x277D85000] & *v16) + 0xFE0))();

        if (v17)
        {
          v7 = 4.0;
        }

        else
        {
          v7 = 0.0;
        }
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_5:

    v7 = 0.0;
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsConstraints;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (*(v9 + 16))
  {

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(4u);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics];
      swift_beginAccess();
      [v12 setConstant_];
    }

    else
    {
    }
  }

  v18 = *&v1[v8];
  if (*(v18 + 16))
  {

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      v22 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics;
      swift_beginAccess();
      [v21 setConstant_];
    }

    else
    {
    }
  }

  v23 = *&v1[v8];
  if (*(v23 + 16))
  {

    v24 = specialized __RawDictionaryStorage.find<A>(_:)(5u);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);

      v27 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics];
      swift_beginAccess();
      [v26 setConstant_];
    }

    else
    {
    }
  }

  v28 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsStackView];
  v29 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics];
  swift_beginAccess();
  [v28 setSpacing_];
  return DOCItemCollectionViewSectionHeader.updateSortButtonsVisibility()();
}

double DOCItemCollectionViewSectionHeader.stackMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics;
  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t DOCItemCollectionViewSectionHeader.stackMetrics.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics;
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 32) = v3;
  return DOCItemCollectionViewSectionHeader.stackMetrics.didset();
}

uint64_t (*DOCItemCollectionViewSectionHeader.stackMetrics.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionViewSectionHeader.stackMetrics.modify;
}

uint64_t DOCItemCollectionViewSectionHeader.SortButtonContainerView.init(button:metrics:)(void *a1, _BYTE *a2)
{
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_hstack;
  type metadata accessor for DOCStackView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_button] = a1;
  v2[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_buttonExtendsFullWidth] = *a2;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for DOCItemCollectionViewSectionHeader.SortButtonContainerView();
  v27 = a1;
  v6 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in DOCItemCollectionViewSectionHeader.SortButtonContainerView.init(button:metrics:);
  *(v9 + 24) = v8;
  v32 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v33 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed () -> ();
  v31 = &block_descriptor_186_1;
  v10 = _Block_copy(&aBlock);
  v11 = v6;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_hstack;
    [*&v11[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_hstack] addArrangedSubview_];
    if (v11[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_buttonExtendsFullWidth] == 1)
    {
      v14 = *&v11[v13];
      v15 = objc_allocWithZone(MEMORY[0x277D75D18]);
      v16 = v14;
      v17 = [v15 init];
      [v17 setTranslatesAutoresizingMaskIntoConstraints_];
      v18 = [v17 widthAnchor];
      v19 = [v18 constraintGreaterThanOrEqualToConstant_];

      [v19 setActive_];
      LODWORD(v20) = 1144750080;
      [v17 setContentHuggingPriority:0 forAxis:v20];
      LODWORD(v21) = 1132068864;
      [v17 setContentCompressionResistancePriority:0 forAxis:v21];
      [v16 addArrangedSubview_];
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v11;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #2 in DOCItemCollectionViewSectionHeader.SortButtonContainerView.init(button:metrics:);
    *(v23 + 24) = v22;
    v32 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v33 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed () -> ();
    v31 = &block_descriptor_196_0;
    v24 = _Block_copy(&aBlock);
    v25 = v11;

    [v7 performWithoutAnimation_];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v25;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in DOCItemCollectionViewSectionHeader.SortButtonContainerView.init(button:metrics:)(char *a1)
{
  [a1 addSubview_];
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints_];
}

void closure #2 in DOCItemCollectionViewSectionHeader.SortButtonContainerView.init(button:metrics:)(char *a1, double a2)
{
  v3 = *&a1[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_button];
  LODWORD(a2) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:a2];
  v4 = [a1 heightAnchor];
  v5 = [v3 heightAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  [v6 setActive_];
}

void DOCItemCollectionViewSectionHeader.SortButtonContainerView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_button);
}

uint64_t key path setter for DOCItemCollectionViewSectionHeader.sortingDescriptor : DOCItemCollectionViewSectionHeader(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v9 = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x330);
  outlined copy of DOCItemSortDescriptor?(v8[0], v2);
  return v6(v8);
}

void DOCItemCollectionViewSectionHeader.sortingDescriptor.didset(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortingDescriptor;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  if (v7)
  {
    outlined copy of DOCItemSortDescriptor?(v6, v7);
    if (v3)
    {
      outlined copy of DOCItemSortDescriptor?(v2, v3);
      outlined copy of DOCItemSortDescriptor?(v6, v7);
      v9 = specialized == infix<A>(_:_:)(v6, v2);
      outlined consume of DOCItemSortDescriptor?(v2, v3);

      outlined consume of DOCItemSortDescriptor?(v6, v7);
      if ((v9 & 1) != 0 && ((v8 ^ v4) & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    outlined copy of DOCItemSortDescriptor?(v2, 0);
    outlined copy of DOCItemSortDescriptor?(v6, v7);
  }

  else
  {
    outlined copy of DOCItemSortDescriptor?(v6, 0);
    if (!v3)
    {
      outlined copy of DOCItemSortDescriptor?(v2, 0);
      outlined consume of DOCItemSortDescriptor?(v6, 0);
      return;
    }

    outlined copy of DOCItemSortDescriptor?(v2, v3);
  }

  outlined consume of DOCItemSortDescriptor?(v6, v7);
  outlined consume of DOCItemSortDescriptor?(v2, v3);
LABEL_10:
  DOCItemCollectionViewSectionHeader.updateSortButtonsVisibility()();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  while (v14)
  {
    v17 = v16;
LABEL_18:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(*(v11 + 56) + ((v17 << 9) | (8 * v18)));
    v20 = *&v19[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_button];
    v21 = v19;
    [v20 setNeedsUpdateConfiguration];
    [v20 invalidateIntrinsicContentSize];
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t DOCItemCollectionViewSectionHeader.sortingDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortingDescriptor;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);
  return outlined copy of DOCItemSortDescriptor?(v4, v5);
}

uint64_t DOCItemCollectionViewSectionHeader.sortingDescriptor.setter(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortingDescriptor;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = v9;
  *(v4 + 16) = v2;
  LOBYTE(v2) = *(v4 + 24);
  *(v4 + 24) = v3;
  outlined copy of DOCItemSortDescriptor?(v5, v6);
  outlined consume of DOCItemSortDescriptor?(v5, v6);
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v2;
  DOCItemCollectionViewSectionHeader.sortingDescriptor.didset(v10);
  return outlined consume of DOCItemSortDescriptor?(v5, v6);
}

void (*DOCItemCollectionViewSectionHeader.sortingDescriptor.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortingDescriptor;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v4 = *v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  outlined copy of DOCItemSortDescriptor?(v7, v8);
  return DOCItemCollectionViewSectionHeader.sortingDescriptor.modify;
}

void DOCItemCollectionViewSectionHeader.sortingDescriptor.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7] + (*a1)[8];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  v10 = *v4;
  v9 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  if (a2)
  {
    outlined copy of DOCItemSortDescriptor?(v5, v6);
    outlined copy of DOCItemSortDescriptor?(v10, v9);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v15 = v10;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    DOCItemCollectionViewSectionHeader.sortingDescriptor.didset(&v15);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v13 = *v3;
    v14 = v3[1];
  }

  else
  {
    outlined copy of DOCItemSortDescriptor?(v10, v9);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v15 = v10;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    DOCItemCollectionViewSectionHeader.sortingDescriptor.didset(&v15);
    v13 = v10;
    v14 = v9;
  }

  outlined consume of DOCItemSortDescriptor?(v13, v14);

  free(v3);
}

uint64_t DOCItemCollectionViewSectionHeader.displaySortButtons.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_displaySortButtons;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewSectionHeader.displaySortButtons.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_displaySortButtons;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    [v1 setDeliversTouchesForGesturesToSuperview_];
    DOCItemCollectionViewSectionHeader.updateSortButtonsVisibility()();
    DOCItemCollectionViewSectionHeader.updateSeparatorConstraints()();
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  }
}

void (*DOCItemCollectionViewSectionHeader.displaySortButtons.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_displaySortButtons;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewSectionHeader.displaySortButtons.modify;
}

void DOCItemCollectionViewSectionHeader.displaySortButtons.modify(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setDeliversTouchesForGesturesToSuperview_];
    DOCItemCollectionViewSectionHeader.updateSortButtonsVisibility()();
    DOCItemCollectionViewSectionHeader.updateSeparatorConstraints()();
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  }

  free(v1);
}

void *DOCItemCollectionViewSectionHeader.groupByMenu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_groupByMenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewSectionHeader.groupByMenu.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_groupByMenu;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      [*&v11[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_button] setMenu_];
    }

    else
    {
    }
  }

  else
  {
  }
}

void (*DOCItemCollectionViewSectionHeader.groupByMenu.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_groupByMenu;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewSectionHeader.groupByMenu.modify;
}

void DOCItemCollectionViewSectionHeader.groupByMenu.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (*(v6 + 16))
    {

      v7 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
      if (v8)
      {
        v10 = v3[3];
        v9 = v3[4];
        v11 = *(*(v6 + 56) + 8 * v7);

        [*&v11[OBJC_IVAR____TtCC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeaderP33_01DF393BC1153E369869A3FC5380444B23SortButtonContainerView_button] setMenu_];
      }

      else
      {
      }
    }
  }

  free(v3);
}

uint64_t DOCItemCollectionViewSectionHeader.updateContents()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x410);
  v3(&v24);
  v4 = v25;
  if (v25)
  {
    v5 = v26;
    v6 = v27;
    v7 = v24;

    outlined consume of DOCCollectionSection?(v7, v4);
  }

  else
  {
    outlined consume of DOCCollectionSection?(v24, 0);
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = (*((*v2 & *v1) + 0x270))(v5, v6);
  (v3)(&v24, v8);
  v9 = v25;
  if (v25)
  {
    v10 = v24;
    v11 = v28;

    v12 = outlined consume of DOCCollectionSection?(v10, v9);
    v13 = (*(*v11 + 184))(v12);

    v23 = v13;
    v14 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    if (v13)
    {
      v15 = v13;
      MEMORY[0x24C1FB090]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v24;
    }
  }

  else
  {
    outlined consume of DOCCollectionSection?(v24, 0);
    v23 = 0;
    v14 = MEMORY[0x277D84F90];
  }

  outlined destroy of CharacterSet?(&v23, &_sSo6DOCTagCSgMd);
  v16 = (*((*v2 & *v1) + 0x258))(v14);
  (v3)(&v24, v16);
  v17 = v25;
  if (v25)
  {
    v18 = v24;
    v19 = v28;

    v20 = outlined consume of DOCCollectionSection?(v18, v17);
    v21 = (*(*v19 + 112))(v20);

    if (v21 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    outlined consume of DOCCollectionSection?(v24, 0);
  }

  return (*((*v2 & *v1) + 0x2A0))(v17);
}

uint64_t DOCItemCollectionViewSectionHeader.isPinned.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_isPinned;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewSectionHeader.isPinned.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_isPinned;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
    DOCItemCollectionViewSectionHeader.updateSeparatorConstraints()();
  }
}

void (*DOCItemCollectionViewSectionHeader.isPinned.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_isPinned;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewSectionHeader.isPinned.modify;
}

void DOCItemCollectionViewSectionHeader.isPinned.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
    DOCItemCollectionViewSectionHeader.updateSeparatorConstraints()();
  }

  free(v1);
}

double DOCItemCollectionViewSectionHeader.backgroundTopExtension.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundTopExtension;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCItemCollectionViewSectionHeader.backgroundTopExtension.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundTopExtension;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*DOCItemCollectionViewSectionHeader.backgroundTopExtension.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundTopExtension;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCItemCollectionViewSectionHeader.backgroundTopExtension.modify;
}

void DOCItemCollectionViewSectionHeader.backgroundTopExtension.modify(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] setNeedsUpdateConfiguration];
  }

  free(v1);
}

uint64_t DOCItemCollectionViewSectionHeader.hideTopSeparator.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideTopSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewSectionHeader.hideTopSeparator.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideTopSeparator;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  }
}

void (*DOCItemCollectionViewSectionHeader.hideTopSeparator.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideTopSeparator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewSectionHeader.hideTopSeparator.modify;
}

void DOCItemCollectionViewSectionHeader.hideTopSeparator.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  }

  free(v1);
}

uint64_t DOCItemCollectionViewSectionHeader.hideSeparators.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideSeparators;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewSectionHeader.hideSeparators.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideSeparators;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x3C8))(1);
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  }
}

void (*DOCItemCollectionViewSectionHeader.hideSeparators.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideSeparators;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewSectionHeader.hideSeparators.modify;
}

void DOCItemCollectionViewSectionHeader.hideSeparators.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0x3C8))(1);
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  }

  free(v1);
}

uint64_t DOCItemCollectionViewSectionHeader.style.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_style;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewSectionHeader.style.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_style;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  DOCItemCollectionViewSectionHeader.updateExpandToggleButton()();
  v4 = [v1 traitCollection];
  (*((*MEMORY[0x277D85000] & *v1) + 0x4A8))();
}

void (*DOCItemCollectionViewSectionHeader.style.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionViewSectionHeader.style.modify;
}

void DOCItemCollectionViewSectionHeader.style.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
    DOCItemCollectionViewSectionHeader.updateExpandToggleButton()();
    v5 = [v4 traitCollection];
    (*((*MEMORY[0x277D85000] & *v4) + 0x4A8))();
  }
}

void DOCItemCollectionViewSectionHeader.updateExpandToggleButton()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_showToggleExpandedSectionButtonOverride);
  if (v1 == 2)
  {
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v0) + 0x3F0))() || (v7 = (*((*v2 & *v0) + 0x428))()) == 0)
    {
      v3 = 1;
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
      v3 = 0;
    }
  }

  else
  {
    v3 = v1 ^ 1;
  }

  [*(DOCItemCollectionViewSectionHeader.expandToggleButton.getter() + 16) setHidden_];

  v8 = DOCItemCollectionViewSectionHeader.expandToggleButtonVisibleConstraint.getter();
  if ([*(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton) + 16) isHidden])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v0 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v4 = v5 ^ 1;
  }

  [v8 setActive_];
}

uint64_t key path setter for DOCItemCollectionViewSectionHeader.representedCollectionSection : DOCItemCollectionViewSectionHeader(uint64_t *a1, void **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x418);
  outlined copy of DOCCollectionSection?(v9[0], v2);
  return v7(v9);
}

uint64_t DOCItemCollectionViewSectionHeader.representedCollectionSection.didset(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v19 = a1[4];
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_representedCollectionSection;
  swift_beginAccess();
  v6 = *v4;
  v5 = *(v4 + 8);
  if (!v5)
  {
    outlined copy of DOCCollectionSection?(*v4, 0);
    if (!v2)
    {
      outlined copy of DOCCollectionSection?(v3, 0);
      result = outlined consume of DOCCollectionSection?(v6, 0);
      if (!*(v4 + 8))
      {
        return result;
      }

      goto LABEL_17;
    }

    outlined copy of DOCCollectionSection?(v3, v2);
    goto LABEL_13;
  }

  if (!v2)
  {
    outlined copy of DOCCollectionSection?(v6, v5);
    outlined copy of DOCCollectionSection?(v3, 0);
    outlined copy of DOCCollectionSection?(v6, v5);

LABEL_13:
    outlined consume of DOCCollectionSection?(v6, v5);
    outlined consume of DOCCollectionSection?(v3, v2);
    return DOCItemCollectionViewSectionHeader.updateContents()();
  }

  if (v6 != v3 || v5 != v2)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of DOCCollectionSection?(v6, v5);
    outlined copy of DOCCollectionSection?(v3, v2);
    outlined copy of DOCCollectionSection?(v6, v5);
    outlined consume of DOCCollectionSection?(v3, v2);

    v8 = outlined consume of DOCCollectionSection?(v6, v5);
    if (v18)
    {
      if (!*(v4 + 8))
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    return DOCItemCollectionViewSectionHeader.updateContents()();
  }

  outlined copy of DOCCollectionSection?(v3, v2);
  outlined copy of DOCCollectionSection?(v3, v2);
  outlined copy of DOCCollectionSection?(v3, v2);
  outlined consume of DOCCollectionSection?(v3, v2);

  v8 = outlined consume of DOCCollectionSection?(v3, v2);
  if (!*(v4 + 8))
  {
LABEL_15:
    v9 = 0;
    v10 = 0;
    goto LABEL_21;
  }

LABEL_17:
  v12 = *(**(v4 + 32) + 112);

  v14 = v12(v13);

  if (v14 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return DOCItemCollectionViewSectionHeader.updateContents()();
  }

  v9 = 1;
LABEL_21:
  v15 = (*(*v19 + 112))(v8);
  if (v15 >> 62)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 == v16)
  {
    v17 = v9;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 & 1) == 0)
  {
    return DOCItemCollectionViewSectionHeader.updateContents()();
  }

  return result;
}

uint64_t DOCItemCollectionViewSectionHeader.representedCollectionSection.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_representedCollectionSection);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return outlined copy of DOCCollectionSection?(v4, v5);
}

uint64_t DOCItemCollectionViewSectionHeader.representedCollectionSection.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_representedCollectionSection);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v10;
  v4[4] = v3;
  outlined copy of DOCCollectionSection?(v5, v6);
  outlined consume of DOCCollectionSection?(v5, v6);
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  DOCItemCollectionViewSectionHeader.representedCollectionSection.didset(v12);
  return outlined consume of DOCCollectionSection?(v5, v6);
}

void (*DOCItemCollectionViewSectionHeader.representedCollectionSection.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_representedCollectionSection;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  v4[4] = v11;
  outlined copy of DOCCollectionSection?(v7, v8);
  return DOCItemCollectionViewSectionHeader.representedCollectionSection.modify;
}

void DOCItemCollectionViewSectionHeader.representedCollectionSection.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = ((*a1)[8] + (*a1)[9]);
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v11 = *v4;
  v10 = v4[1];
  v13 = v4[2];
  v12 = v4[3];
  v14 = v4[4];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  if (a2)
  {
    outlined copy of DOCCollectionSection?(v5, v6);
    outlined copy of DOCCollectionSection?(v11, v10);
    outlined consume of DOCCollectionSection?(v11, v10);
    v17 = v11;
    v18 = v10;
    v19 = v13;
    v20 = v12;
    v21 = v14;
    DOCItemCollectionViewSectionHeader.representedCollectionSection.didset(&v17);
    outlined consume of DOCCollectionSection?(v11, v10);
    v15 = *v3;
    v16 = v3[1];
  }

  else
  {
    outlined copy of DOCCollectionSection?(v11, v10);
    outlined consume of DOCCollectionSection?(v11, v10);
    v17 = v11;
    v18 = v10;
    v19 = v13;
    v20 = v12;
    v21 = v14;
    DOCItemCollectionViewSectionHeader.representedCollectionSection.didset(&v17);
    v15 = v11;
    v16 = v10;
  }

  outlined consume of DOCCollectionSection?(v15, v16);

  free(v3);
}

uint64_t key path getter for DOCItemCollectionViewSectionHeader.toggleExpandedHandler : DOCItemCollectionViewSectionHeader@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x428))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCItemCollectionViewSectionHeader.toggleExpandedHandler : DOCItemCollectionViewSectionHeader(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x430);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCItemCollectionViewSectionHeader.toggleExpandedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_toggleExpandedHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
  DOCItemCollectionViewSectionHeader.updateExpandToggleButton()();
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
}

uint64_t (*DOCItemCollectionViewSectionHeader.toggleExpandedHandler.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionViewSectionHeader.toggleExpandedHandler.modify;
}

uint64_t DOCItemCollectionViewSectionHeader.layoutTraits.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for DOCItemCollectionViewSectionHeader.sortButtonTapHandler : DOCItemCollectionViewSectionHeader@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x440))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionViewSectionHeader, @in_guaranteed DOCItemSortMode) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCItemCollectionViewSectionHeader.sortButtonTapHandler : DOCItemCollectionViewSectionHeader(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCItemCollectionViewSectionHeader, @in_guaranteed DOCItemSortMode) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x448);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCItemCollectionViewSectionHeader.toggleExpandedHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t DOCItemCollectionViewSectionHeader.sortButtonTapHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonTapHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

Swift::Void __swiftcall DOCItemCollectionViewSectionHeader.didToggleExpand(to:)(Swift::Bool to)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = to;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in DOCItemCollectionViewSectionHeader.didToggleExpand(to:);
  *(v5 + 24) = v4;
  v9[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_39_4;
  v6 = _Block_copy(v9);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id closure #1 in DOCItemCollectionViewSectionHeader.didToggleExpand(to:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_seeLessString);
  }

  else
  {
    v3 = DOCItemCollectionViewSectionHeader.seeAllString.getter();
    v4 = v5;
  }

  v6 = (a1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_expandToggleButtonTitle);
  *v6 = v3;
  v6[1] = v4;

  [*(DOCItemCollectionViewSectionHeader.expandToggleButton.getter() + 24) setNeedsUpdateConfiguration];

  v7 = *(*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton) + 16);

  return [v7 layoutIfNeeded];
}

char *DOCItemCollectionViewSectionHeader.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  result = _DocumentManagerBundle();
  if (result)
  {
    v10 = result;
    v11 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_seeLessString];
    v105._object = 0x8000000249BF6D80;
    v12._countAndFlagsBits = 0x73654C20776F6853;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v12._object = 0xE900000000000073;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v105._countAndFlagsBits = 0xD00000000000002ALL;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v10, v14, v105);

    *v11 = v15;
    v16 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl];
    *v16 = 0;
    v16[1] = 0;
    v17 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_expandToggleButtonTitle];
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___topSeparator] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___bottomSeparator] = 0;
    v18 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics];
    v19 = _UISolariumEnabled();
    *(v18 + 8) = xmmword_249BBA7F0;
    *(v18 + 24) = xmmword_249BBA7F0;
    v20 = *(MEMORY[0x277D75060] + 16);
    *(v18 + 40) = *MEMORY[0x277D75060];
    *v18 = 0;
    v18[1] = v19 ^ 1;
    *(v18 + 56) = v20;
    v18[72] = 0;
    v21 = MEMORY[0x277D84F90];
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_regularConstraints] = MEMORY[0x277D84F90];
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_largeTextConstraints] = v21;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_traitsSpecificSeparatorConstraints] = v21;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemTags] = v21;
    v22 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_title];
    *v22 = 0;
    v22[1] = 0;
    v23 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sectionTypeAccessibilityIdentifier];
    *v23 = 0;
    v23[1] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemCount] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_layoutTraits] = 0;
    v24 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics;
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v25 = &v4[v24];
    v26 = qword_27EEE8FE0;
    v27 = *algn_27EEE8FD0;
    *v25 = static DOCItemCollectionCellStackMetrics.zero;
    *(v25 + 1) = v27;
    *(v25 + 4) = v26;
    v28 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsStackView;
    *&v4[v28] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    v29 = MEMORY[0x277D84F98];
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons] = MEMORY[0x277D84F98];
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsConstraints] = v29;
    v30 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortingDescriptor];
    v30[24] = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    *v30 = 0;
    v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_displaySortButtons] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_groupByMenu] = 0;
    v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_showToggleExpandedSectionButtonOverride] = 2;
    v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_isPinned] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundTopExtension] = 0;
    v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideTopSeparator] = 0;
    v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideSeparators] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_style] = 0;
    v31 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_representedCollectionSection];
    *v31 = 0u;
    *(v31 + 1) = 0u;
    *(v31 + 4) = 0;
    v32 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_toggleExpandedHandler];
    *v32 = 0;
    v32[1] = 0;
    v33 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonTapHandler];
    *v33 = 0;
    v33[1] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundAlpha] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_customBackgroundView] = 0;
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader__labelForAX] = 0;
    v104.receiver = v4;
    v104.super_class = type metadata accessor for DOCItemCollectionViewSectionHeader();
    v34 = objc_msgSendSuper2(&v104, sel_initWithFrame_, a1, a2, a3, a4);
    [*(DOCItemCollectionViewSectionHeader.expandToggleButton.getter() + 24) buttonType];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249BA37E0;
    v36 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton;
    v37 = [*(*&v34[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton] + 16) trailingAnchor];
    v38 = [v34 contentView];
    v39 = [v38 &selRef_updateForChangedTraitsAffectingFonts + 4];

    v40 = [v37 constraintEqualToAnchor:v39 constant:-12.0];
    *(v35 + 32) = v40;
    v41 = [*(*&v34[v36] + 16) firstBaselineAnchor];
    v42 = DOCItemCollectionViewSectionHeader.sectionTitleControl.getter();
    v43 = [v42 &selRef_endAppearanceTransition];

    v44 = [v41 constraintEqualToAnchor_];
    *(v35 + 40) = v44;
    v45 = [v34 contentView];
    v46 = [v45 bottomAnchor];

    v47 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl;
    v48 = [*&v34[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl] bottomAnchor];
    v101 = &v34[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics];
    v49 = [v46 constraintEqualToAnchor:v48 constant:*&v34[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics + 24]];

    *(v35 + 48) = v49;
    *&v34[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_regularConstraints] = v35;

    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_249BA0470;
    v51 = [*(*&v34[v36] + 16) leadingAnchor];
    v52 = [*&v34[v47] &selRef_next + 1];
    v53 = [v51 constraintEqualToAnchor_];

    *(v50 + 32) = v53;
    v54 = [*(*&v34[v36] + 16) trailingAnchor];
    v55 = [v34 contentView];
    v56 = [v55 layoutMarginsGuide];

    v57 = [v56 trailingAnchor];
    v58 = [v54 constraintLessThanOrEqualToAnchor_];

    *(v50 + 40) = v58;
    v59 = [*(*&v34[v36] + 16) firstBaselineAnchor];
    v60 = [*&v34[v47] lastBaselineAnchor];
    v61 = [v59 constraintEqualToSystemSpacingBelowAnchor:v60 multiplier:1.0];

    *(v50 + 48) = v61;
    v62 = [v34 contentView];
    v63 = [v62 bottomAnchor];

    v64 = [*(*&v34[v36] + 16) lastBaselineAnchor];
    v65 = [v63 constraintEqualToSystemSpacingBelowAnchor:v64 multiplier:1.0];

    *(v50 + 56) = v65;
    *&v34[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_largeTextConstraints] = v50;

    v66 = [*&v34[v47] topAnchor];
    v67 = [v34 contentView];
    v68 = [v67 &selRef_updateBarVisibilityIfNecessary];

    v69 = [v66 constraintEqualToAnchor:v68 constant:v101[1]];
    LODWORD(v70) = 1144913920;
    [v69 setPriority_];
    v102 = objc_opt_self();
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_249BA37E0;
    *(v71 + 32) = v69;
    v72 = *&v34[v47];
    v103 = v69;
    v73 = [v72 leadingAnchor];
    v74 = [v34 contentView];
    v75 = [v74 leadingAnchor];

    v76 = [v73 constraintEqualToAnchor:v75 constant:12.0];
    *(v71 + 40) = v76;
    v77 = [v34 &selRef_documentBrowser_didPickDocumentsAtURLs_];

    v78 = [v77 layoutMarginsGuide];
    v79 = [v78 trailingAnchor];

    v80 = [*&v34[v47] trailingAnchor];
    v81 = [v79 constraintGreaterThanOrEqualToAnchor_];

    *(v71 + 48) = v81;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v102 activateConstraints_];

    v83 = v34;
    v84 = DOCItemCollectionViewSectionHeader.topSeparator.getter();
    [v83 addSubview_];

    v85 = DOCItemCollectionViewSectionHeader.bottomSeparator.getter();
    [v83 addSubview_];

    *&v83[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_traitsSpecificSeparatorConstraints] = DOCItemCollectionViewSectionHeader.separatorConstraintsForCurrentUserInterfaceStyle()();

    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_249BA0290;
    v87 = [*&v83[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___topSeparator] topAnchor];
    v88 = [v83 topAnchor];

    v89 = [v87 constraintEqualToAnchor_];
    *(v86 + 32) = v89;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    v91 = [*&v83[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___bottomSeparator] bottomAnchor];
    v92 = [v83 bottomAnchor];

    v93 = [v91 constraintEqualToAnchor_];
    *(inited + 32) = v93;

    specialized Array.append<A>(contentsOf:)(v94);
    specialized Array.append<A>(contentsOf:)(inited);
    v95 = Array._bridgeToObjectiveC()().super.isa;

    [v102 activateConstraints_];

    DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
    DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_249B9FA70;
    v97 = type metadata accessor for UITraitPreferredContentSizeCategory();
    v98 = MEMORY[0x277D74DB8];
    *(v96 + 32) = v97;
    *(v96 + 40) = v98;
    v99 = type metadata accessor for UITraitHorizontalSizeClass();
    v100 = MEMORY[0x277D74C50];
    *(v96 + 48) = v99;
    *(v96 + 56) = v100;
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    return v83;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOCItemCollectionViewSectionHeader.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsStackView;
  [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsStackView] setAxis_];
  [*&v0[v2] setAlignment_];
  [*&v0[v2] setDistribution_];
  [*&v0[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 contentView];
  [v3 addSubview_];

  v53 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics];
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics + 40];
  v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics + 48];
  v7 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics + 56];
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics + 64];
  v51 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249BA0470;
  v9 = [*&v1[v2] topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:v5];
  *(v8 + 32) = v12;
  v13 = [*&v1[v2] bottomAnchor];
  v14 = [v1 contentView];
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-v7];
  *(v8 + 40) = v16;
  v17 = [*&v1[v2] leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:v4];
  *(v8 + 48) = v20;
  v21 = [*&v1[v2] trailingAnchor];
  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:-v6];
  *(v8 + 56) = v24;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints_];

  v60[0] = 2;
  v50 = createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()(v60, v1);
  v60[0] = 0;
  v26 = createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()(v60, v1);
  v60[0] = 4;
  v27 = createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()(v60, v1);
  v60[0] = 5;
  v28 = createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()(v60, v1);
  v56 = v26;
  v29 = [v26 widthAnchor];
  v30 = [v29 constraintEqualToConstant_];

  v31 = [v27 widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  v54 = v28;
  v33 = [v28 widthAnchor];
  v34 = [v33 constraintEqualToConstant_];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_249BA37E0;
  *(v35 + 32) = v30;
  *(v35 + 40) = v32;
  *(v35 + 48) = v34;
  v36 = v30;
  v52 = v32;
  v55 = v34;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints_];

  v38 = *&v1[v2];
  v39 = v50;
  [v38 addArrangedSubview_];
  v40 = v39;
  if (v53[72] == 1)
  {
    v41 = [*&v1[v2] heightAnchor];
    v42 = [v39 heightAnchor];

    v40 = [v41 constraintEqualToAnchor:v42 constant:0.0];
    [v40 setActive_];
  }

  [*&v1[v2] addArrangedSubview_];
  [*&v1[v2] addArrangedSubview_];
  [*&v1[v2] addArrangedSubview_];
  v43 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsConstraints;
  swift_beginAccess();
  v44 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *&v1[v43];
  *&v1[v43] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, 0, isUniquelyReferenced_nonNull_native);
  *&v1[v43] = v57;
  v46 = v52;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *&v1[v43];
  *&v1[v43] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, 4, v47);
  *&v1[v43] = v58;
  v48 = v55;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *&v1[v43];
  *&v1[v43] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, 5, v49);
  *&v1[v43] = v59;
  swift_endAccess();
  DOCItemCollectionViewSectionHeader.updateSortButtonsVisibility()();
}

id createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v5 = v4;
  v6 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics);
  if (*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics))
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  [v4 setContentHorizontalAlignment_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v23 = v9;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v5 setDoc:v10 primaryAction:{0, 0, 0, partial apply for closure #1 in createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView(), v23}];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v3;
  *&v27 = partial apply for closure #2 in createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView();
  *(&v27 + 1) = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  *(&v26 + 1) = &block_descriptor_176_0;
  v13 = _Block_copy(&aBlock);

  [v5 setConfigurationUpdateHandler_];
  _Block_release(v13);
  v14 = v6[3];
  v27 = v6[2];
  v28[0] = v14;
  *(v28 + 9) = *(v6 + 57);
  v15 = v6[1];
  aBlock = *v6;
  v26 = v15;
  v16 = objc_allocWithZone(type metadata accessor for DOCItemCollectionViewSectionHeader.SortButtonContainerView());
  v17 = v5;
  v18 = DOCItemCollectionViewSectionHeader.SortButtonContainerView.init(button:metrics:)(v17, &aBlock);
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons;
  swift_beginAccess();
  v20 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + v19);
  *(a2 + v19) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v3, isUniquelyReferenced_nonNull_native);
  *(a2 + v19) = v24;
  swift_endAccess();

  return v20;
}

void closure #1 in createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0x440))();
    if (v6)
    {
      v7 = v6;
      v8 = a3;
      v6(v5, &v8);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
    }
  }
}

void closure #2 in createButton #1 (with:) in DOCItemCollectionViewSectionHeader.setupSortButtonsStackView()(void *a1, uint64_t a2, int a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v40[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v40[-v11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = MEMORY[0x277D85000];
    v16 = (*((*MEMORY[0x277D85000] & *Strong) + 0x268))();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      (*((*v15 & *v14) + 0x328))(&v46);
      v20 = v47;
      if (v47)
      {
        v21 = a3;
        v22 = v48;
        v43 = v46;
        v44 = v49;
        v23 = objc_opt_self();
        v42 = a1;
        v24 = v23;

        static UIButton.Configuration.borderless()();
        LOBYTE(v46) = v21;
        v41 = v21;
        v25 = specialized static DOCItemCollectionViewSectionHeader.sortHeaderTitle(sortMode:sectionTitle:)(&v46, v18, v19);
        AttributedString.init(_:)();
        v26 = type metadata accessor for AttributedString();
        (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
        UIButton.Configuration.attributedTitle.setter();
        v45 = v21;
        v46 = v43;
        v47 = v20;
        v48 = v22;
        v49 = v44;
        specialized static DOCItemCollectionViewSectionHeader.sortHeaderTrailingImage(for:with:)(&v45, &v46);
        v28 = v27;
        UIButton.Configuration.image.setter();
        UIButton.Configuration.imagePadding.setter();
        UIButton.Configuration.imagePlacement.setter();

        v29 = v24;
        v30 = v42;

        v31 = v14;
        v32 = [v31 tintColor];
        UIButton.Configuration.baseForegroundColor.setter();

        UIButton.Configuration.contentInsets.setter();

        v33 = v43;
        v34 = v44;
        outlined consume of DOCItemSortDescriptor?(v43, v20);
        v35 = type metadata accessor for UIButton.Configuration();
        (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
        UIButton.configuration.setter();
        v45 = v41;
        LOBYTE(v46) = v33;
        v47 = v20;
        v48 = v22;
        v49 = v34 & 1;
        v36 = specialized DOCItemCollectionViewSectionHeader.accessibilityIdentifierForButton(with:sortingDescriptor:)(&v45, &v46);
        v38 = v37;
        outlined consume of DOCItemSortDescriptor?(v33, v20);
        if (v38)
        {
          v39 = MEMORY[0x24C1FAD20](v36, v38);
        }

        else
        {
          v39 = 0;
        }

        [v30 setAccessibilityIdentifier_];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewSectionHeader.didMoveToWindow()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCItemCollectionViewSectionHeader();
  objc_msgSendSuper2(&v3, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = [v0 traitCollection];
    (*((*MEMORY[0x277D85000] & *v0) + 0x4A8))();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewSectionHeader.prepareForReuse()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCItemCollectionViewSectionHeader();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x398))(0);
  (*((*v1 & *v0) + 0x3B0))(v2, 0.0);
  (*((*v1 & *v0) + 0x430))(0, 0);
  DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  v3 = [v0 traitCollection];
  (*((*v1 & *v0) + 0x4A8))();
}

void DOCItemCollectionViewSectionHeader.setSeparatorAppearance()()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics + 1) == 1)
  {
    v1 = MEMORY[0x277D85000];
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x3F0))();
    if ((v2 - 1) >= 3)
    {
      if (v2)
      {
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v8 = DOCItemCollectionViewSectionHeader.topSeparator.getter();
      v9 = *((*v1 & *v0) + 0x390);
      if (v9() & 1) != 0 || ((*((*v1 & *v0) + 0x3D8))())
      {
        v10 = 1;
      }

      else
      {
        v10 = (*((*v1 & *v0) + 0x3C0))();
      }

      [v8 setHidden_];

      v16 = DOCItemCollectionViewSectionHeader.bottomSeparator.getter();
      if (v9())
      {
        v14 = (*((*v1 & *v0) + 0x3D8))();
      }

      else
      {
        v14 = 1;
      }

      v12 = v14 & 1;
      v13 = v16;
    }

    else
    {
      v3 = DOCItemCollectionViewSectionHeader.topSeparator.getter();
      v4 = *((*v1 & *v0) + 0x340);
      if ((v4() & 1) != 0 && ((*((*v1 & *v0) + 0x390))() & 1) == 0)
      {
        v5 = (*((*v1 & *v0) + 0x3C0))();
      }

      else
      {
        v5 = 1;
      }

      [v3 setHidden_];

      v16 = DOCItemCollectionViewSectionHeader.bottomSeparator.getter();
      if (v4())
      {
        v11 = 0;
      }

      else if ((*((*v1 & *v0) + 0x390))())
      {
        v11 = (*((*v1 & *v0) + 0x3D8))();
      }

      else
      {
        v11 = 1;
      }

      v12 = v11 & 1;
      v13 = v16;
    }

    [v13 setHidden_];
  }

  else
  {
    v6 = DOCItemCollectionViewSectionHeader.topSeparator.getter();
    [v6 setHidden_];

    v7 = DOCItemCollectionViewSectionHeader.bottomSeparator.getter();
    [v7 setHidden_];
  }
}

uint64_t DOCItemCollectionViewSectionHeader.separatorConstraintsForCurrentUserInterfaceStyle()()
{
  v1 = [v0 leftAnchor];
  v2 = [v0 rightAnchor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA0470;
  v4 = DOCItemCollectionViewSectionHeader.topSeparator.getter();
  v5 = [v4 leftAnchor];

  v6 = [v5 constraintEqualToAnchor_];
  *(v3 + 32) = v6;
  v7 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___topSeparator] rightAnchor];
  v8 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v8;
  v9 = DOCItemCollectionViewSectionHeader.bottomSeparator.getter();
  v10 = [v9 leftAnchor];

  v11 = [v10 constraintEqualToAnchor_];
  *(v3 + 48) = v11;
  v12 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___bottomSeparator] rightAnchor];
  v13 = [v12 constraintEqualToAnchor_];

  *(v3 + 56) = v13;
  return v3;
}

void DOCItemCollectionViewSectionHeader.updateSeparatorConstraints()()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_traitsSpecificSeparatorConstraints;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints_];

  *(v0 + v2) = DOCItemCollectionViewSectionHeader.separatorConstraintsForCurrentUserInterfaceStyle()();

  v4 = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints_];
}

uint64_t DOCItemCollectionViewSectionHeader.updateSortButtonsVisibility()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v73 = &v72 - v4;
  v5 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v72 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DisplayedState();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0x340);
  v14 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsStackView);
  [v14 setHidden_];

  v15 = DOCItemCollectionViewSectionHeader.sectionTitleControl.getter();
  [v15 setHidden_];

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons;
  v17 = swift_beginAccess();
  v18 = *(v0 + v16);
  if (*(v18 + 16))
  {

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      v23 = (*((*v12 & *v1) + 0x2B0))(v22);
      if (v23)
      {
        (*(*v23 + 256))(&v80);

        v92 = v84;
        v93 = v85;
        v94 = v86;
        v95 = v87;
        v88 = v80;
        v89 = v81;
        v90 = v82;
        v91 = v83;
        v24 = outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v88);
        (*((*v12 & *v1) + 0x328))(&v78, v24);
        if (v79)
        {
          v25 = v78;
        }

        else
        {
          v25 = 10;
        }

        v26 = v89;
        outlined consume of DOCItemSortDescriptor?(v78, v79);
        LOBYTE(v78) = v25;
        v27 = DOCItemCollectionRowStyle.columns(with:)(&v78, v26);
        v28 = specialized Sequence<>.contains(_:)(2u, v27);

        if (v28)
        {
          (*((*v12 & *v1) + 0x2C8))(&v80, v29);
          v30 = *&v80 == 0.0;
        }

        else
        {
          v30 = 1;
        }
      }

      else
      {
        v30 = 1;
      }

      [v21 setHidden_];
    }

    else
    {
    }
  }

  v31 = *(v1 + v16);
  if (*(v31 + 16))
  {

    v32 = specialized __RawDictionaryStorage.find<A>(_:)(4u);
    if (v33)
    {
      v34 = *(*(v31 + 56) + 8 * v32);

      v36 = (*((*v12 & *v1) + 0x2B0))(v35);
      if (v36)
      {
        (*(*v36 + 256))(&v80);

        v92 = v84;
        v93 = v85;
        v94 = v86;
        v95 = v87;
        v88 = v80;
        v89 = v81;
        v90 = v82;
        v91 = v83;
        v37 = outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v88);
        (*((*v12 & *v1) + 0x328))(&v78, v37);
        if (v79)
        {
          v38 = v78;
        }

        else
        {
          v38 = 10;
        }

        v39 = v89;
        outlined consume of DOCItemSortDescriptor?(v78, v79);
        LOBYTE(v78) = v38;
        v40 = DOCItemCollectionRowStyle.columns(with:)(&v78, v39);
        v41 = specialized Sequence<>.contains(_:)(1u, v40);

        if (v41)
        {
          (*((*v12 & *v1) + 0x2C8))(&v80, v42);
          v43 = *(&v80 + 1) == 0.0;
        }

        else
        {
          v43 = 1;
        }
      }

      else
      {
        v43 = 1;
      }

      [v34 setHidden_];
    }

    else
    {
    }
  }

  v44 = *(v1 + v16);
  if (*(v44 + 16))
  {

    v45 = specialized __RawDictionaryStorage.find<A>(_:)(5u);
    if (v46)
    {
      v47 = *(*(v44 + 56) + 8 * v45);

      v49 = (*((*v12 & *v1) + 0x2B0))(v48);
      if (v49)
      {
        (*(*v49 + 256))(&v80);

        v92 = v84;
        v93 = v85;
        v94 = v86;
        v95 = v87;
        v88 = v80;
        v89 = v81;
        v90 = v82;
        v91 = v83;
        v50 = outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v88);
        (*((*v12 & *v1) + 0x328))(&v78, v50);
        if (v79)
        {
          v51 = v78;
        }

        else
        {
          v51 = 10;
        }

        v52 = v89;
        outlined consume of DOCItemSortDescriptor?(v78, v79);
        LOBYTE(v78) = v51;
        v53 = DOCItemCollectionRowStyle.columns(with:)(&v78, v52);
        v54 = specialized Sequence<>.contains(_:)(3u, v53);

        if (v54)
        {
          (*((*v12 & *v1) + 0x2C8))(&v80, v55);
          v56 = *&v81 == 0.0;
        }

        else
        {
          v56 = 1;
        }
      }

      else
      {
        v56 = 1;
      }

      [v47 setHidden_];
    }

    else
    {
    }
  }

  v57 = *((*v12 & *v1) + 0x2B0);
  v58 = v57(v17);
  if (v58)
  {
    (*(*v58 + 256))(&v80);

    v92 = v84;
    v93 = v85;
    v94 = v86;
    v95 = v87;
    v88 = v80;
    v89 = v81;
    v90 = v82;
    v91 = v83;
    v59 = outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v88);
    v60 = v93;
    if (((v13)(v59) & 1) != 0 && v60)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_249B9A480;
      v61 = (*(v76 + 104))(v11, *MEMORY[0x277D74A90], v77);
      v62 = v57(v61);
      if (v62 && (v63 = *(v62 + 560), , v64 = [v63 horizontalSizeClass], v63, v64 == 1))
      {
        v65 = MEMORY[0x277D74AC0];
      }

      else
      {
        v65 = MEMORY[0x277D74AB0];
      }

      v66 = *v65;
      v67 = type metadata accessor for UICellAccessory.LayoutDimension();
      v68 = *(v67 - 8);
      v69 = v73;
      (*(v68 + 104))(v73, v66, v67);
      (*(v68 + 56))(v69, 0, 1, v67);
      v70 = v72;
      UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.disclosureIndicator(displayed:options:)();
      (*(v74 + 8))(v70, v75);
      (*(v76 + 8))(v11, v77);
    }
  }

  else
  {
    v13();
  }

  return UICollectionViewListCell.accessories.setter();
}

Swift::Void __swiftcall DOCItemCollectionViewSectionHeader.updateForTraitCollection(traitCollection:)(UITraitCollection traitCollection)
{
  v2 = v1;
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v21 = static UITraitCollection.Traits.sizeCategory;
  v22 = qword_27EEE9CC0;

  v4 = UITraitCollection.doc_hasSpecified(_:)(&v21);

  if (v4)
  {
    v5 = DOCItemCollectionViewSectionHeader.attributedTitle.getter();
    v6 = DOCItemCollectionViewSectionHeader.sectionTitleControl.getter();
    v8 = v7;
    ObjectType = swift_getObjectType();
    *&v21 = v6;
    (*(v8 + 16))(v5, ObjectType, v8);
    v10 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl);
    v11 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl);
    *v10 = v21;
    v10[1] = v8;

    v12 = [(objc_class *)traitCollection.super.isa preferredContentSizeCategory];
    if (UIContentSizeCategory.isAccessibilityCategory.getter())
    {
      static UIContentSizeCategory.> infix(_:_:)();

      if (!(*((*MEMORY[0x277D85000] & *v2) + 0x3F0))())
      {
        v13 = objc_opt_self();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v13 deactivateConstraints_];

        v15 = Array._bridgeToObjectiveC()().super.isa;

        [v13 activateConstraints_];

        v16 = DOCItemCollectionViewSectionHeader.expandToggleButtonVisibleConstraint.getter();
        [v16 setActive_];
LABEL_9:

        DOCItemCollectionViewSectionHeader.updateSeparatorConstraints()();
        return;
      }
    }

    else
    {
    }

    v17 = objc_opt_self();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

    v18 = Array._bridgeToObjectiveC()().super.isa;

    [v17 deactivateConstraints_];

    v19 = Array._bridgeToObjectiveC()().super.isa;

    [v17 activateConstraints_];

    v16 = DOCItemCollectionViewSectionHeader.expandToggleButtonVisibleConstraint.getter();
    v20 = [*(DOCItemCollectionViewSectionHeader.expandToggleButton.getter() + 16) isHidden];

    [v16 setActive_];
    goto LABEL_9;
  }
}

void DOCItemCollectionViewSectionHeader.updateConfiguration(using:)(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v51 = &v50 - v5;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for UICellConfigurationState();
  v54 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v2;
  v56 = [v2 contentView];
  type metadata accessor for DOCItemCollectionView();
  v19 = [v56 superview];
  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  while (([v20 isKindOfClass_] & 1) == 0)
  {
    v22 = [v20 superview];

    v20 = v22;
    if (!v22)
    {
      goto LABEL_5;
    }
  }

  v24 = swift_dynamicCastClassUnconditional();

  v56 = [v24 doc_nearestAncestorViewController];
  if (v56)
  {
    v25 = v14;
    v26 = v13;
    type metadata accessor for DOCItemCollectionViewController(0);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = [v27 navigationController];

      if (v28)
      {
        v29 = *(v54 + 16);
        v29(v18, v50, v25);
        UICellConfigurationState.isPinned.setter();
        v30 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_customBackgroundView;
        if (*(v55 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_customBackgroundView))
        {
          v31 = *(v55 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_customBackgroundView);
          v32 = v31;
          v34 = v52;
          v33 = v53;
          v35 = v25;
        }

        else
        {
          static UIBackgroundConfiguration.listHeader()();
          v57[3] = v25;
          v57[4] = MEMORY[0x277D74BA8];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
          v29(boxed_opaque_existential_1, v18, v25);
          UIBackgroundConfiguration.updated(for:)();
          v34 = v52;
          v33 = v53;
          v56 = v25;
          v50 = *(v52 + 8);
          v50(v9, v53);
          __swift_destroy_boxed_opaque_existential_0(v57);
          v37 = UIBackgroundConfiguration.visualEffect.getter();
          v38 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

          v39 = v38;
          v40 = [v28 navigationBar];
          v41 = [v40 _backdropViewLayerGroupName];

          [v39 _setGroupName_];
          v50(v26, v33);
          v42 = *(v55 + v30);
          *(v55 + v30) = v39;
          v35 = v56;
          v32 = v39;

          v31 = 0;
        }

        v43 = v31;
        static UIBackgroundConfiguration.clear()();
        v44 = v32;
        v45 = UIBackgroundConfiguration.customView.setter();
        v46 = v55;
        v47 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v55) + 0x3A8))(v45);
        UIBackgroundConfiguration.backgroundInsets.setter();
        v48 = v51;
        (*(v34 + 16))(v51, v26, v33);
        (*(v34 + 56))(v48, 0, 1, v33);
        v49 = MEMORY[0x24C1FBB40](v48);
        (*((*v47 & *v46) + 0x4B0))(v49);
        [v44 setAlpha_];

        (*(v34 + 8))(v26, v33);
        (*(v54 + 8))(v18, v35);
      }

      return;
    }

LABEL_5:
    v23 = v56;
  }
}

double DOCItemCollectionViewSectionHeader.backgroundAlpha.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCItemCollectionViewSectionHeader.backgroundAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_customBackgroundView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void (*DOCItemCollectionViewSectionHeader.backgroundAlpha.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundAlpha;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewSectionHeader.backgroundAlpha.modify;
}

void DOCItemCollectionViewSectionHeader.backgroundAlpha.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_customBackgroundView);
    if (v5)
    {
      [v5 setAlpha_];
    }
  }

  free(v3);
}

void *DOCItemCollectionViewSectionHeader._labelForAX.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader__labelForAX;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewSectionHeader._labelForAX.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader__labelForAX;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void __swiftcall DOCItemCollectionViewSectionHeader.accessibilityTitleLabel()(UILabel *__return_ptr retstr)
{
  v2 = DOCItemCollectionViewSectionHeader.sectionTitleControl.getter();
  v4 = v3;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x4F0))();
    if (!v6)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    }

    v7 = *((*v5 & *v1) + 0x4F8);
    v8 = v6;
    v9 = v6;
    v7(v8);
    ObjectType = swift_getObjectType();
    v11 = (*(v4 + 8))(ObjectType, v4);
    [v9 setAttributedText_];
  }
}

void *one-time initialization function for cachedHeaderTagTitleFonts()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21UIContentSizeCategorya_So6UIFontCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static UIFont.cachedHeaderTagTitleFonts = result;
  return result;
}

id one-time initialization function for doc_rowHeaderTitleSetting()
{
  v0 = *MEMORY[0x277D74420];
  static UIFont.doc_rowHeaderTitleSetting = *MEMORY[0x277D769D0];
  qword_27EEF0BF8 = v0;
  qword_27EEF0C00 = 1;
  return static UIFont.doc_rowHeaderTitleSetting;
}

id DOCPlatterizedLabel.init(baseConfigurationProvider:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPlatterizedLabel_attributedText] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for DOCPlatterizedLabel();
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setContentHorizontalAlignment_];
  [v5 setUserInteractionEnabled_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v10[4] = partial apply for closure #1 in DOCPlatterizedLabel.init(baseConfigurationProvider:);
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v10[3] = &block_descriptor_49_5;
  v8 = _Block_copy(v10);

  [v5 setConfigurationUpdateHandler_];
  _Block_release(v8);

  return v5;
}

uint64_t closure #1 in DOCPlatterizedLabel.init(baseConfigurationProvider:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for UIButton.Configuration();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    a3();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      return outlined destroy of CharacterSet?(v15, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    }

    else
    {
      (*(v17 + 32))(v20, v15, v16);
      v23 = type metadata accessor for AttributedString();
      v24 = *(*(v23 - 8) + 56);
      v24(v7, 1, 1, v23);
      v25 = UIButton.Configuration.attributedTitle.setter();
      v26 = (*((*MEMORY[0x277D85000] & *v22) + 0x90))(v25);
      if (v26)
      {
        v27 = v24;
        v28 = v26;
        AttributedString.init(_:)();
        v27(v7, 0, 1, v23);
        UIButton.Configuration.attributedTitle.setter();
      }

      (*(v17 + 16))(v11, v20, v16);
      (*(v17 + 56))(v11, 0, 1, v16);
      v29 = v22;
      UIButton.configuration.setter();

      return (*(v17 + 8))(v20, v16);
    }
  }

  return result;
}

void *DOCPlatterizedLabel.attributedText.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPlatterizedLabel_attributedText;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCPlatterizedLabel.attributedText.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCPlatterizedLabel_attributedText;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsUpdateConfiguration];
  [v1 invalidateIntrinsicContentSize];
}

id (*DOCPlatterizedLabel.attributedText.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCPlatterizedLabel.attributedText.modify;
}

id DOCPlatterizedLabel.attributedText.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    [v5 setNeedsUpdateConfiguration];

    return [v5 invalidateIntrinsicContentSize];
  }

  return result;
}

id DOCItemCollectionViewSectionHeader.SortButtonContainerView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized closure #1 in DOCItemCollectionViewSectionHeader.init(frame:)(void *a1)
{
  v2 = [a1 traitCollection];
  (*((*MEMORY[0x277D85000] & *a1) + 0x4A8))();
}

id specialized static UIFont.doc_rowHeaderTitleFontForTags(compatibleWith:)(void *a1)
{
  if (one-time initialization token for doc_rowHeaderTitleSetting != -1)
  {
    swift_once();
  }

  v2 = *&qword_27EEF0BF8;
  v3 = one-time initialization token for cachedHeaderTagTitleFonts;
  v4 = static UIFont.doc_rowHeaderTitleSetting;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = [a1 preferredContentSizeCategory];
  swift_beginAccess();
  v6 = static UIFont.cachedHeaderTagTitleFonts;
  if (*(static UIFont.cachedHeaderTagTitleFonts + 2) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
  }

  else
  {

    swift_endAccess();
    v10 = objc_opt_self();
    v5 = [v10 _preferredFontDescriptorWithTextStyle_design_weight_compatibleWithTraitCollection_];
    if (!v5)
    {
      v5 = [v10 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:a1];
    }

    v11 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
    v12 = [a1 preferredContentSizeCategory];
    swift_beginAccess();
    v9 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = static UIFont.cachedHeaderTagTitleFonts;
    static UIFont.cachedHeaderTagTitleFonts = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v12, isUniquelyReferenced_nonNull_native);

    static UIFont.cachedHeaderTagTitleFonts = v15;
  }

  swift_endAccess();

  return v9;
}

id specialized static DOCItemCollectionViewSectionHeader.sortHeaderTitle(sortMode:sectionTitle:)(unsigned __int8 *a1, uint64_t countAndFlagsBits, void *a3)
{
  object = a3;
  v5 = *a1;
  if (v5 != 10)
  {
    if (!a3)
    {
LABEL_16:
      v26[1] = v5;
      v26[0] = 2;
      v11 = DOCItemSortMode.localizedName(for:)(v26);
      countAndFlagsBits = v11._countAndFlagsBits;
      object = v11._object;
      goto LABEL_17;
    }

    if (*a1 <= 4u && v5 == 2)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (String.count.getter() > 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a3)
  {
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2493AC000, v7, v8, "ERROR: sortHeaderTitle(...) must be provided a sortMode or a sectionTitle", v9, 2u);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v14 = one-time initialization token for doc_rowHeaderTitleSetting;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static UIFont.doc_rowHeaderTitleSetting;
  v17 = *&qword_27EEF0BF8;
  v18 = objc_opt_self();
  v19 = v16;
  result = [v18 _preferredFontForTextStyle_weight_];
  if (result)
  {
    v21 = result;

    *(inited + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v21;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
    v22 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v23 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = [v22 initWithString:v23 attributes:isa];

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized static DOCItemCollectionViewSectionHeader.sortHeaderTrailingImage(for:with:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && (specialized == infix<A>(_:_:)(*a2, *a1) & 1) != 0)
  {
    if (one-time initialization token for doc_rowHeaderTitleSetting != -1)
    {
      swift_once();
    }

    v3 = static UIFont.doc_rowHeaderTitleSetting;
    v4 = *&qword_27EEF0BF8;
    v5 = qword_27EEF0C00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249BA37E0;
    v7 = v3;
    v8 = MEMORY[0x24C1FD9B0](v4);
    v9 = objc_opt_self();
    *(v6 + 32) = [v9 configurationWithWeight_];
    *(v6 + 40) = [v9 configurationWithTextStyle_];
    *(v6 + 48) = [v9 configurationWithScale_];
    v10 = specialized static UIImageSymbolConfiguration.applying(_:)(v6);

    if (v2 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v11 = *(v2 + 32);
    }

    v12 = v11;
    v13 = [v11 ascending];

    if (v13)
    {
      v14 = 0xEA00000000007075;
      goto LABEL_15;
    }

LABEL_14:
    v14 = 0xEC0000006E776F64;
LABEL_15:
    v15 = MEMORY[0x24C1FAD20](0x2E6E6F7276656863, v14);
    v16 = [objc_opt_self() systemImageNamed_];

    if (v16)
    {

      [v16 imageWithConfiguration_];

      return;
    }

    goto LABEL_19;
  }
}

double specialized static DOCItemCollectionViewSectionHeader.sortHeaderItemWidthIncludingTrailingImage(for:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v36 - v4;
  v37 = type metadata accessor for UIButton.Configuration();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[0] = *a1;
  v10 = v41[0];
  v11 = specialized static DOCItemCollectionViewSectionHeader.sortHeaderTitle(sortMode:sectionTitle:)(v41, 0, 0);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  v44 = v10;
  LOBYTE(v38) = v10;
  DOCItemSortDescriptor.init(type:isReversed:)(&v38, 0, v41);
  v38 = v41[0];
  v39 = v42;
  v40 = v43;
  specialized static DOCItemCollectionViewSectionHeader.sortHeaderTrailingImage(for:with:)(&v44, &v38);
  v14 = v13;
  outlined consume of DOCItemSortDescriptor?(v38, v39);
  if (v14)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    v15 = [objc_opt_self() textAttachmentWithImage_];
    v16 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

    if (one-time initialization token for nonBreakingSpace != -1)
    {
      swift_once();
    }

    v17 = static DOCUnicode.nonBreakingSpace;
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = (*((*MEMORY[0x277D85000] & *v17) + 0x58))();
    v20 = MEMORY[0x24C1FAD20](v19);

    v21 = [v18 initWithString_];

    [v12 appendAttributedString_];
    [v12 appendAttributedString_];
  }

  v22 = [v12 string];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = objc_opt_self();
  static UIButton.Configuration.borderless()();
  v41[0] = v10;
  v27 = specialized static DOCItemCollectionViewSectionHeader.sortHeaderTitle(sortMode:sectionTitle:)(v41, v23, v25);
  AttributedString.init(_:)();
  v28 = type metadata accessor for AttributedString();
  (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();

  UIButton.Configuration.contentInsets.setter();

  UIButton.Configuration.contentInsets.getter();
  v30 = v29;
  v32 = v31;
  (*(v6 + 8))(v9, v37);
  [v12 size];
  v34 = v33;

  return v32 + v30 + v34;
}

void specialized DOCItemCollectionViewSectionHeader.init(coder:)()
{
  v1 = _DocumentManagerBundle();
  if (!v1)
  {
    __break(1u);
  }

  v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_seeLessString);
  v26._object = 0x8000000249BF6D80;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v4 = v1;
  v5._countAndFlagsBits = 0x73654C20776F6853;
  v5._object = 0xE900000000000073;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v3, v4, v6, v26);

  *v2 = v7;
  v8 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___sectionTitleControl);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_expandToggleButtonTitle);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButton) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___expandToggleButtonVisibleConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___topSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader____lazy_storage___bottomSeparator) = 0;
  v10 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_metrics;
  v11 = _UISolariumEnabled();
  *(v10 + 8) = xmmword_249BBA7F0;
  *(v10 + 24) = xmmword_249BBA7F0;
  v12 = *(MEMORY[0x277D75060] + 16);
  *(v10 + 40) = *MEMORY[0x277D75060];
  *v10 = 0;
  *(v10 + 1) = v11 ^ 1;
  *(v10 + 56) = v12;
  *(v10 + 72) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_regularConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_largeTextConstraints) = v13;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_traitsSpecificSeparatorConstraints) = v13;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemTags) = v13;
  v14 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_title);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sectionTypeAccessibilityIdentifier);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_itemCount) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_layoutTraits) = 0;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_stackMetrics;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v17 = v0 + v16;
  v18 = qword_27EEE8FE0;
  v19 = *algn_27EEE8FD0;
  *v17 = static DOCItemCollectionCellStackMetrics.zero;
  *(v17 + 16) = v19;
  *(v17 + 32) = v18;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsStackView;
  *(v0 + v20) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v21 = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtons) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonsConstraints) = v21;
  v22 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortingDescriptor;
  *(v22 + 24) = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *v22 = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_displaySortButtons) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_groupByMenu) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_showToggleExpandedSectionButtonOverride) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_isPinned) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundTopExtension) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideTopSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_hideSeparators) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_style) = 0;
  v23 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_representedCollectionSection;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v24 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_toggleExpandedHandler);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_sortButtonTapHandler);
  *v25 = 0;
  v25[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_backgroundAlpha) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader_customBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCItemCollectionViewSectionHeader__labelForAX) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewSectionHeader.Metrics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[73])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionViewSectionHeader.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCItemCollectionViewSectionHeader, @in_guaranteed DOCItemSortMode) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t specialized DOCItemCollectionViewSectionHeader.accessibilityIdentifierForButton(with:sortingDescriptor:)(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (v2 > 4)
  {
    v10 = 0xEB00000000646574;
    v11 = 0x6165724365746164;
    v12 = 0xE900000000000064;
    v13 = 0x6564644165746164;
    if (v2 != 8)
    {
      v13 = 0x745364756F6C6369;
      v12 = 0xEC00000073757461;
    }

    if (v2 != 7)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = 0xE400000000000000;
    v15 = 1684957547;
    if (v2 != 5)
    {
      v15 = 0x7942646572616873;
      v14 = 0xE800000000000000;
    }

    if (*a1 <= 6u)
    {
      v8 = v15;
    }

    else
    {
      v8 = v11;
    }

    if (*a1 <= 6u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0xEC00000064656966;
    v5 = 0x69646F4D65746164;
    v6 = 1701667182;
    v7 = 1936154996;
    if (v2 != 3)
    {
      v7 = 1702521203;
    }

    if (v2 != 2)
    {
      v6 = v7;
    }

    if (*a1)
    {
      v5 = 0x7473614C65746164;
      v4 = 0xEE0064656E65704FLL;
    }

    if (*a1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    if (*a1 <= 1u)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  v16 = *a2;
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_28;
    }

LABEL_33:
    v20 = 0;
    goto LABEL_34;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_28:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x24C1FC540](0, v3);
    goto LABEL_31;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v3 + 32);
LABEL_31:
    v19 = v18;
    v20 = [v18 ascending];

LABEL_34:
    v21 = specialized == infix<A>(_:_:)(v16, v2);
    v22 = objc_opt_self();
    v23 = MEMORY[0x24C1FAD20](v8, v9);

    v24 = [v22 sortByHeaderButtonForSortIdentifier:v23 ascending:v20 active:v21 & 1];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t DOCFastLabel.LabelInformation.init(text:highlightedIndexSet:leadingTextAttachment:trailingTextAttachment:maxWidth:numberOfLines:font:textColor:layoutDirection:scale:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, void *a9@<X8>, double a10@<D0>, objc_class *a11)
{
  v175 = a6;
  v165 = a2;
  v176 = a10;
  v162 = a1;
  v183[15] = *MEMORY[0x277D85DE8];
  v15 = *a5;
  v169 = *(a5 + 1);
  v16 = *(a5 + 3);
  v168 = a5[2];
  v167 = v16;
  v17 = *(a5 + 4);
  v18 = *(a5 + 5);
  v152 = a5;
  v20 = *a4;
  v19 = *(a4 + 8);
  v22 = *(a4 + 16);
  v21 = *(a4 + 24);
  v23 = *(a4 + 32);
  v24 = *(a4 + 40);
  v153 = a4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd);
  MEMORY[0x28223BE20](v144, v25);
  v145 = &v142 - v26;
  v147 = type metadata accessor for CharacterSet();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v27);
  v142 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v29 - 8, v30);
  *a9 = a7;
  v154 = a3;
  v164 = &v142 - v31;
  outlined init with copy of DOCGridLayout.Spec?(a3, &v142 - v31, &_s10Foundation8IndexSetVSgMd);
  v32 = (a9 + *(type metadata accessor for DOCFastLabel.LabelInformation(0) + 20));
  v183[0] = 0x3FF0000000000000;
  v33 = a7;
  [a8 getRed:0 green:0 blue:0 alpha:v183];
  v34 = v183[0];
  v149 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  v35 = *(v149 + 48);
  v150 = v32;
  *(&v32->super.isa + v35) = v34;
  v36 = 0.0;
  v158 = v23;
  if (v23)
  {

    UICeilToScale();
    v20 = v37;
    UICeilToScale();
    v156 = v38;
    UIPointRoundToScale();
    v41 = v40;
    v42 = v20 + v40;
  }

  else
  {
    v156 = v19;
    v42 = 0.0;
    v39 = v21;
    v41 = v22;
  }

  v155 = v39;
  v161 = v17;
  v160 = v18;
  v157 = v24;
  if (v17)
  {

    UICeilToScale();
    v44 = v43;
    UICeilToScale();
    v169 = v45;
    UIPointRoundToScale();
    v167 = v46;
    v159 = v44;
    v168 = v47;
    v36 = v44 + v47;
  }

  else
  {
    v159 = v15;
  }

  v163 = a11;
  UICeilToScale();
  v49 = v48;
  v151 = a8;
  v50 = [a8 colorWithAlphaComponent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  v52 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v53 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v33;
  v54 = *MEMORY[0x277D740C0];
  *(inited + 64) = v53;
  *(inited + 72) = v54;
  *(inited + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 80) = v50;
  v166 = v33;
  v55 = v52;
  v56 = v54;
  v57 = v50;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v58 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v59 = MEMORY[0x24C1FAD20](v162, v165);
  type metadata accessor for NSAttributedStringKey(0);
  v61 = v60;
  v62 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v174 = v61;
  v173 = v62;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = [v58 initWithString:v59 attributes:isa];

  v143 = v64;
  v148 = v57;
  v65.super.isa = applyHighlighting(to:indexSet:color:)(v64, v164, v57).super.isa;
  v66 = CTTypesetterCreateWithAttributedString(v65.super.isa);
  v67 = MEMORY[0x277D84F90];
  v177 = MEMORY[0x277D84F90];
  v68 = v65.super.isa;
  v69 = [(objc_class *)v65.super.isa length];
  v70 = 0;
  v71 = v175;
  *&v176 = v175 - 1;
  v170 = xmmword_249B9A480;
  v72 = v67;
  v172 = v66;
  v171 = v69;
  while (v70 < v69)
  {
    if (v72 >> 62)
    {
      if (v72 < 0)
      {
        v65.super.isa = v72;
      }

      else
      {
        v65.super.isa = (v72 & 0xFFFFFFFFFFFFFF8);
      }

      if (__CocoaSet.count.getter() >= v71)
      {
        break;
      }

      v74 = __CocoaSet.count.getter() == *&v176;
      if (v70)
      {
LABEL_12:
        v75 = v49;
        if (!v74)
        {
          goto LABEL_25;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v73 >= v71)
      {
        break;
      }

      v74 = v73 == *&v176;
      if (v70)
      {
        goto LABEL_12;
      }
    }

    v75 = v49 - v42;
    if (!v74)
    {
LABEL_25:
      v93 = CTTypesetterSuggestLineBreak(v66, v70, v75);
      if (__OFADD__(v70, v93))
      {
        goto LABEL_55;
      }

      v89 = v93;
      if (v70 + v93 >= v69)
      {
        v89 = CTTypesetterSuggestLineBreak(v66, v70, v75 - v36);
      }

      v185.location = v70;
      v185.length = v89;
      Line = CTTypesetterCreateLine(v66, v185);
      goto LABEL_29;
    }

LABEL_13:
    v184.location = v70;
    v184.length = 0;
    Line = CTTypesetterCreateLine(v66, v184);
    if (one-time initialization token for horizontalEllipsis != -1)
    {
      swift_once();
    }

    v77 = (*((*MEMORY[0x277D85000] & *static DOCUnicode.horizontalEllipsis) + 0x58))();
    v79 = v78;
    v80 = v68;
    v81 = [(objc_class *)v68 attributesAtIndex:0 effectiveRange:0];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v83 = MEMORY[0x24C1FAD20](v77, v79);

    v84 = Dictionary._bridgeToObjectiveC()().super.isa;

    v85 = [v82 initWithString:v83 attributes:v84];

    v86 = CTLineCreateWithAttributedString(v85);
    TruncatedLine = CTLineCreateTruncatedLine(Line, v75 - v36, kCTLineTruncationMiddle, v86);
    if (TruncatedLine)
    {
      v88 = TruncatedLine;

      v89 = 0;
      Line = v88;
    }

    else
    {
      v90 = DOCUILogHandle();
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v91 = swift_allocObject();
      *(v91 + 16) = v170;
      *(v91 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
      *(v91 + 64) = lazy protocol witness table accessor for type NSAttributedString and conformance NSObject();
      *(v91 + 32) = v80;
      v92 = v80;
      os_log(_:dso:log:type:_:)();

      v89 = 0;
    }

    v68 = v80;
    v71 = v175;
    v67 = MEMORY[0x277D84F90];
    v66 = v172;
    v69 = v171;
LABEL_29:
    v94 = Line;
    MEMORY[0x24C1FB090]();
    v65.super.isa = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v65.super.isa >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v72 = v177;
    v95 = __OFADD__(v70, v89);
    v70 += v89;
    if (v95)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }
  }

  specialized static DOCFastLabel.TextDrawInformation.lineMetrics(for:font:leadingAttachmentOffset:trailingAttachmentOffset:layoutDirection:scale:)(v72, v166, v42, v36);
  v65.super.isa = v96;
  v36 = v97;
  v98 = *(MEMORY[0x277D768C8] + 8);
  v99 = *(MEMORY[0x277D768C8] + 16);
  v100 = *(MEMORY[0x277D768C8] + 24);
  v182 = *MEMORY[0x277D768C8];
  v181 = v98;
  v180 = v99;
  v179 = v100;
  if (one-time initialization token for charsWithSpecialOutset == -1)
  {
    goto LABEL_35;
  }

LABEL_56:
  swift_once();
LABEL_35:
  v101 = __swift_project_value_buffer(v144, static DOCFastLabel.TextDrawInformation.charsWithSpecialOutset);
  v102 = v145;
  outlined init with copy of DOCGridLayout.Spec?(v101, v145, &_s10Foundation12CharacterSetVSgMd);
  v103 = v146;
  v104 = v147;
  if ((*(v146 + 48))(v102, 1, v147) == 1)
  {

    outlined destroy of CharacterSet?(v102, &_s10Foundation12CharacterSetVSgMd);
    v105 = DOCUILogHandle();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v106 = v142;
    (*(v103 + 32))(v142, v102, v104);
    v177 = v162;
    v178 = v165;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v108 = v107;
    (*(v103 + 8))(v106, v104);

    if ((v108 & 1) == 0)
    {
      CTFontGetLanguageAwareOutsets();
      v181 = -v181;
      v182 = -v182;
      v179 = -v179;
      v180 = -v180;
    }
  }

  v109 = *(v65.super.isa + 2);
  if (v109)
  {
    v177 = v67;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
    v67 = v177;
    v110 = v65.super.isa + 56;
    do
    {
      Height = CGRectGetHeight(*(v110 - 24));
      v177 = v67;
      v113 = *(v67 + 16);
      v112 = *(v67 + 24);
      v114 = v113 + 1;
      if (v113 >= v112 >> 1)
      {
        v115 = Height;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1);
        Height = v115;
        v67 = v177;
      }

      *(v67 + 16) = v114;
      *(v67 + 8 * v113 + 32) = Height;
      v110 += 32;
      --v109;
    }

    while (v109);
LABEL_46:
    v116 = v161;
    if (v114 <= 3)
    {
      v117 = 0;
      v118 = 0.0;
      goto LABEL_51;
    }

    v117 = v114 & 0xFFFFFFFFFFFFFFFCLL;
    v119 = (v67 + 48);
    v118 = 0.0;
    v120 = v114 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v118 = v118 + *(v119 - 2) + *(v119 - 1) + *v119 + v119[1];
      v119 += 4;
      v120 -= 4;
    }

    while (v120);
    if (v114 != v117)
    {
LABEL_51:
      v121 = v114 - v117;
      v122 = 8 * v117 + 32;
      do
      {
        v118 = v118 + *(v67 + v122);
        v122 += 8;
        --v121;
      }

      while (v121);
    }
  }

  else
  {
    v114 = *(v67 + 16);
    if (v114)
    {
      goto LABEL_46;
    }

    v118 = 0.0;
    v116 = v161;
  }

  v123 = v151;
  v124 = v148;

  UIEdgeInsetsInsetRect(0.0, 0.0, v36, v118, v182, v181);
  UIRectIntegralWithScale();
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v132 = v131;

  outlined destroy of CharacterSet?(v152, &_s26DocumentManagerExecutables12DOCFastLabelC18AttachmentRendererVSgMd);
  outlined destroy of CharacterSet?(v153, &_s26DocumentManagerExecutables12DOCFastLabelC18AttachmentRendererVSgMd);
  outlined destroy of CharacterSet?(v154, &_s10Foundation8IndexSetVSgMd);
  v133 = v149;
  v134 = v150;
  result = outlined init with take of (key: URL, value: FPItem)(v164, v150 + *(v149 + 36), &_s10Foundation8IndexSetVSgMd);
  v134->super.isa = 0;
  v134[1].super.isa = 0;
  *&v134[2].super.isa = v36;
  *&v134[3].super.isa = v118;
  v134[4].super.isa = v126;
  v134[5].super.isa = v128;
  v134[6].super.isa = v130;
  v134[7].super.isa = v132;
  v134[9].super.isa = v72;
  v134[10].super.isa = v65.super.isa;
  *(&v134->super.isa + v133[13]) = v163;
  v136 = v134 + v133[10];
  v137 = v156;
  *v136 = v20;
  *(v136 + 1) = v137;
  v138 = v155;
  *(v136 + 2) = v41;
  *(v136 + 3) = v138;
  v139 = v157;
  *(v136 + 4) = v158;
  *(v136 + 5) = v139;
  v140 = (v134 + v133[11]);
  *v140 = v159;
  *(v140 + 1) = v169;
  v140[2] = v168;
  *(v140 + 3) = v167;
  v141 = v160;
  *(v140 + 4) = v116;
  *(v140 + 5) = v141;
  v134[8].super.isa = v68;
  return result;
}

NSDictionary applyHighlighting(to:indexSet:color:)(void *a1, uint64_t a2, void *a3)
{
  v55 = a2;
  v52 = a1;
  v4 = type metadata accessor for IndexSet.RangeView();
  v48 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation8IndexSetV9RangeViewVGMd);
  MEMORY[0x28223BE20](v46, v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v46 - v12;
  v54 = type metadata accessor for IndexSet();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v14);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  v50 = xmmword_249B9A480;
  *(inited + 16) = xmmword_249B9A480;
  v17 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v18 = v17;
  v19 = [a3 colorWithAlphaComponent_];
  v20 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 64) = v20;
  *(inited + 40) = v19;
  v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  v21 = swift_initStackObject();
  *(v21 + 16) = v50;
  *(v21 + 32) = v18;
  v22 = v53;
  v23 = [a3 colorWithAlphaComponent_];
  *(v21 + 64) = v20;
  *(v21 + 40) = v23;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v21);
  swift_setDeallocating();
  v25 = v54;
  v26 = v52;
  outlined destroy of CharacterSet?(v21 + 32, &_sSo21NSAttributedStringKeya_yptMd);
  v27 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  outlined init with copy of DOCGridLayout.Spec?(v55, v13, &_s10Foundation8IndexSetVSgMd);
  if ((*(v22 + 48))(v13, 1, v25) == 1)
  {

    outlined destroy of CharacterSet?(v13, &_s10Foundation8IndexSetVSgMd);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = [v26 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = String.fullNSRange.getter();
    v32 = v31;

    [v27 addAttributes:isa range:{v30, v32}];

    return v27;
  }

  else
  {
    v55 = v24;
    (*(v22 + 32))(v49, v13, v25);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    *&v50 = Dictionary._bridgeToObjectiveC()();

    v33 = [v26 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = String.fullNSRange.getter();
    v36 = v35;

    v37 = v50;
    [v27 addAttributes:v50 range:{v34, v36}];

    v38 = v47;
    IndexSet.rangeView.getter();
    IndexSet.RangeView.makeIterator()();
    (*(v48 + 8))(v38, v4);
    v39 = *(v46 + 36);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView, MEMORY[0x277CC9A18]);
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*&v9[v39] == v56[0])
      {

        outlined destroy of CharacterSet?(v9, &_ss16IndexingIteratorVy10Foundation8IndexSetV9RangeViewVGMd);
        (*(v53 + 8))(v49, v54);
        return v27;
      }

      v40 = dispatch thunk of Collection.subscript.read();
      v42 = *v41;
      v43 = v41[1];
      v40(v56, 0);
      dispatch thunk of Collection.formIndex(after:)();
      result.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      if (__OFSUB__(v43, v42))
      {
        break;
      }

      v45 = result.super.isa;
      [v27 addAttributes:result.super.isa range:{v42, v43 - v42}];
    }

    __break(1u);
  }

  return result;
}

uint64_t DOCFastLabel.AttachmentRenderer.init(size:offset:renderer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = result;
  *(a3 + 40) = a2;
  return result;
}

NSAttributedString __swiftcall applyHighlightingRange(to:range:color:)(NSAttributedString to, __C::_NSRange_optional range, UIColor color)
{
  is_nil = range.is_nil;
  location = range.value.location;
  length = range.value.length;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  v5 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v6 = v5;
  v7 = [(objc_class *)color.super.isa colorWithAlphaComponent:0.5];
  v8 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_249B9A480;
  *(v9 + 32) = v6;
  v10 = [(objc_class *)color.super.isa colorWithAlphaComponent:1.0];
  *(v9 + 64) = v8;
  *(v9 + 40) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v9);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v9 + 32, &_sSo21NSAttributedStringKeya_yptMd);
  v11 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  if (is_nil)
  {

    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = [(objc_class *)to.super.isa string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = String.fullNSRange.getter();
    v16 = v15;
  }

  else
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [(objc_class *)to.super.isa string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = String.fullNSRange.getter();
    v21 = v20;

    [v11 addAttributes:isa range:{v19, v21}];

    v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = location;
    v16 = length;
  }

  [v11 addAttributes:v12.super.isa range:{v14, v16, location, length}];

  return v11;
}

uint64_t applyHighlightingSubtitle(to:indexSet:fullString:fileName:color:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v66 = a6;
  v65 = a5;
  v64 = a4;
  v63 = a3;
  v74 = a2;
  v69 = a1;
  v8 = type metadata accessor for IndexSet.RangeView();
  v62 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation8IndexSetV9RangeViewVGMd);
  MEMORY[0x28223BE20](v60, v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v73 = &v60 - v16;
  v72 = type metadata accessor for IndexSet();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v17);
  v67 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  v68 = xmmword_249B9A480;
  *(inited + 16) = xmmword_249B9A480;
  v20 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v21 = v20;
  v22 = [a7 colorWithAlphaComponent_];
  v23 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 64) = v23;
  *(inited + 40) = v22;
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
  v24 = swift_initStackObject();
  *(v24 + 16) = v68;
  *(v24 + 32) = v21;
  v25 = v24 + 32;
  v26 = v69;
  v27 = [a7 colorWithAlphaComponent_];
  *(v24 + 64) = v23;
  *(v24 + 40) = v27;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v24);
  v29 = v71;
  swift_setDeallocating();
  v30 = v72;
  v31 = v73;
  outlined destroy of CharacterSet?(v25, &_sSo21NSAttributedStringKeya_yptMd);
  v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  outlined init with copy of DOCGridLayout.Spec?(v74, v31, &_s10Foundation8IndexSetVSgMd);
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {

    outlined destroy of CharacterSet?(v31, &_s10Foundation8IndexSetVSgMd);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = [v26 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = String.fullNSRange.getter();
    v37 = v36;

    [v32 addAttributes:isa range:{v35, v37}];

    return v32;
  }

  v74 = v28;
  v38 = v67;
  (*(v29 + 32))(v67, v31, v30);
  v39 = MEMORY[0x24C1FAD20](v63, v64);
  v40 = MEMORY[0x24C1FAD20](v65, v66);
  v41 = [v39 rangeOfString_];

  v42 = NSNotFound.getter();
  v73 = v41;
  if (v41 == v42)
  {
    (*(v29 + 8))(v38, v30);

    return v32;
  }

  v66 = v39;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  *&v68 = Dictionary._bridgeToObjectiveC()();

  v43 = [v26 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = String.fullNSRange.getter();
  v46 = v45;

  v47 = v32;
  v48 = v68;
  [v32 addAttributes:v68 range:{v44, v46}];

  v49 = v61;
  IndexSet.rangeView.getter();
  IndexSet.RangeView.makeIterator()();
  (*(v62 + 8))(v49, v8);
  v50 = *(v60 + 36);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView, MEMORY[0x277CC9A18]);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v13[v50] == v75[0])
    {

      outlined destroy of CharacterSet?(v13, &_ss16IndexingIteratorVy10Foundation8IndexSetV9RangeViewVGMd);
      (*(v71 + 8))(v67, v72);
      return v47;
    }

    v51 = dispatch thunk of Collection.subscript.read();
    v53 = *v52;
    v54 = v52[1];
    v51(v75, 0);
    result = dispatch thunk of Collection.formIndex(after:)();
    v56 = &v73[v53];
    if (__OFADD__(v53, v73))
    {
      break;
    }

    v57 = __OFSUB__(v54, v53);
    v58 = v54 - v53;
    if (v57)
    {
      goto LABEL_13;
    }

    v59 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v47 addAttributes:v59 range:{v56, v58}];
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t String.fullNSRange.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  return _NSRange.init<A, B>(_:in:)();
}

uint64_t DOCFastLabel._enableMonochromaticTreatment.getter()
{
  if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_disableWorkaroundFor160718780] != 1)
  {
    return 1;
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFastLabel();
  return objc_msgSendSuper2(&v2, sel__enableMonochromaticTreatment);
}

id DOCFastLabel._enableMonochromaticTreatment.setter(id result)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_disableWorkaroundFor160718780) == 1)
  {
    v2 = result;
    v3.receiver = v1;
    v3.super_class = type metadata accessor for DOCFastLabel();
    return objc_msgSendSuper2(&v3, sel__setEnableMonochromaticTreatment_, v2 & 1);
  }

  return result;
}

uint64_t DOCFastLabel.AttachmentRenderer.renderer.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCFastLabel.TextDrawInformation.init(text:highlightedIndexSet:leadingTextAttachment:trailingTextAttachment:maxWidth:numberOfLines:font:textColor:layoutDirection:scale:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v170 = a6;
  v158 = a3;
  v159 = a2;
  v171 = a10;
  v178[15] = *MEMORY[0x277D85DE8];
  v15 = *a5;
  v163 = *(a5 + 1);
  v16 = *(a5 + 3);
  v162 = a5[2];
  v161 = v16;
  v17 = *(a5 + 4);
  v18 = *(a5 + 5);
  v146 = a5;
  v20 = *a4;
  v19 = *(a4 + 8);
  v22 = *(a4 + 16);
  v21 = *(a4 + 24);
  v23 = *(a4 + 32);
  v24 = *(a4 + 40);
  v147 = a4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd);
  MEMORY[0x28223BE20](v139, v25);
  v140 = &v136 - v26;
  v143 = type metadata accessor for CharacterSet();
  v142 = *(v143 - 8);
  v28 = MEMORY[0x28223BE20](v143, v27);
  v137 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178[0] = 0x3FF0000000000000;
  v157 = a8;
  [a8 getRed:0 green:0 blue:0 alpha:{v178, v28}];
  v30 = v178[0];
  v145 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  *(a9 + *(v145 + 48)) = v30;
  v31 = 0.0;
  v151 = v23;
  if (v23)
  {

    UICeilToScale();
    v20 = v32;
    UICeilToScale();
    v149 = v33;
    UIPointRoundToScale();
    v36 = v35;
    v37 = v20 + v35;
  }

  else
  {
    v149 = v19;
    v37 = 0.0;
    v34 = v21;
    v36 = v22;
  }

  v148 = v34;
  v38 = v170;
  v155 = a9;
  v154 = v17;
  v153 = v18;
  v150 = v24;
  if (v17)
  {

    UICeilToScale();
    v40 = v39;
    UICeilToScale();
    v163 = v41;
    UIPointRoundToScale();
    v161 = v42;
    v152 = v40;
    v162 = v43;
    v31 = v40 + v43;
  }

  else
  {
    v152 = v15;
  }

  v156 = a11;
  UICeilToScale();
  v45 = v44;
  v46 = [v157 colorWithAlphaComponent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  v48 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v49 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = a7;
  v50 = *MEMORY[0x277D740C0];
  *(inited + 64) = v49;
  *(inited + 72) = v50;
  *(inited + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 80) = v46;
  v51 = v48;
  v160 = a7;
  v52 = v50;
  v53 = v46;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v138 = a1;
  v55 = MEMORY[0x24C1FAD20](a1, v159);
  type metadata accessor for NSAttributedStringKey(0);
  v57 = v56;
  v58 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v169 = v57;
  v168 = v58;
  v59.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = [v54 initWithString:v55 attributes:v59.super.isa];

  v141 = v60;
  v144 = v53;
  v61.super.isa = applyHighlighting(to:indexSet:color:)(v60, v158, v53).super.isa;
  v62 = CTTypesetterCreateWithAttributedString(v61.super.isa);
  v63 = MEMORY[0x277D84F90];
  v172 = MEMORY[0x277D84F90];
  v64 = [(objc_class *)v61.super.isa length];
  v65 = 0;
  *&v171 = v38 - 1;
  v164 = xmmword_249B9A480;
  v66 = v63;
  v167 = v62;
  v166 = v64;
  isa = v61.super.isa;
  while (v65 < v64)
  {
    if (v66 >> 62)
    {
      if (__CocoaSet.count.getter() >= v38)
      {
        break;
      }

      v68 = __CocoaSet.count.getter() == *&v171;
      if (v65)
      {
LABEL_12:
        v69 = v45;
        if (!v68)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v67 >= v38)
      {
        break;
      }

      v68 = v67 == *&v171;
      if (v65)
      {
        goto LABEL_12;
      }
    }

    v69 = v45 - v37;
    if (!v68)
    {
LABEL_22:
      v87 = CTTypesetterSuggestLineBreak(v62, v65, v69);
      if (__OFADD__(v65, v87))
      {
        goto LABEL_53;
      }

      v82 = v87;
      if (v65 + v87 >= v64)
      {
        v82 = CTTypesetterSuggestLineBreak(v62, v65, v69 - v31);
      }

      v180.location = v65;
      v180.length = v82;
      Line = CTTypesetterCreateLine(v62, v180);
      goto LABEL_26;
    }

LABEL_13:
    v179.location = v65;
    v179.length = 0;
    Line = CTTypesetterCreateLine(v62, v179);
    if (one-time initialization token for horizontalEllipsis != -1)
    {
      swift_once();
    }

    v71 = (*((*MEMORY[0x277D85000] & *static DOCUnicode.horizontalEllipsis) + 0x58))();
    v73 = v72;
    v74 = [(objc_class *)v61.super.isa attributesAtIndex:0 effectiveRange:0];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v76 = MEMORY[0x24C1FAD20](v71, v73);

    v77 = Dictionary._bridgeToObjectiveC()().super.isa;

    v78 = [v75 initWithString:v76 attributes:v77];

    v79 = CTLineCreateWithAttributedString(v78);
    TruncatedLine = CTLineCreateTruncatedLine(Line, v69 - v31, kCTLineTruncationMiddle, v79);
    if (TruncatedLine)
    {
      v81 = TruncatedLine;

      v82 = 0;
      Line = v81;
      v61.super.isa = isa;
    }

    else
    {
      v83 = DOCUILogHandle();
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v84 = swift_allocObject();
      *(v84 + 16) = v164;
      *(v84 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
      *(v84 + 64) = lazy protocol witness table accessor for type NSAttributedString and conformance NSObject();
      v85 = isa;
      *(v84 + 32) = isa;
      v86 = v85;
      os_log(_:dso:log:type:_:)();

      v82 = 0;
      v61.super.isa = v85;
    }

    v38 = v170;
    v63 = MEMORY[0x277D84F90];
    v62 = v167;
    v64 = v166;
LABEL_26:
    v88 = Line;
    MEMORY[0x24C1FB090]();
    v59.super.isa = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59.super.isa >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v66 = v172;
    v89 = __OFADD__(v65, v82);
    v65 += v82;
    if (v89)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  specialized static DOCFastLabel.TextDrawInformation.lineMetrics(for:font:leadingAttachmentOffset:trailingAttachmentOffset:layoutDirection:scale:)(v66, v160, v37, v31);
  v59.super.isa = v90;
  v31 = v91;
  v92 = *(MEMORY[0x277D768C8] + 8);
  v93 = *(MEMORY[0x277D768C8] + 16);
  v94 = *(MEMORY[0x277D768C8] + 24);
  v177 = *MEMORY[0x277D768C8];
  v176 = v92;
  v175 = v93;
  v174 = v94;
  if (one-time initialization token for charsWithSpecialOutset == -1)
  {
    goto LABEL_32;
  }

LABEL_54:
  swift_once();
LABEL_32:
  v95 = __swift_project_value_buffer(v139, static DOCFastLabel.TextDrawInformation.charsWithSpecialOutset);
  v96 = v140;
  outlined init with copy of DOCGridLayout.Spec?(v95, v140, &_s10Foundation12CharacterSetVSgMd);
  v97 = v142;
  v98 = v143;
  if ((*(v142 + 48))(v96, 1, v143) == 1)
  {

    outlined destroy of CharacterSet?(v96, &_s10Foundation12CharacterSetVSgMd);
    v99 = DOCUILogHandle();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v100 = v137;
    (*(v97 + 32))(v137, v96, v98);
    v172 = v138;
    v173 = v159;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v101 = v98;
    v103 = v102;
    (*(v97 + 8))(v100, v101);

    if ((v103 & 1) == 0)
    {
      CTFontGetLanguageAwareOutsets();
      v176 = -v176;
      v177 = -v177;
      v174 = -v174;
      v175 = -v175;
    }
  }

  v104 = *(v59.super.isa + 2);
  if (v104)
  {
    v172 = v63;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104, 0);
    v63 = v172;
    v105 = v59.super.isa + 56;
    do
    {
      Height = CGRectGetHeight(*(v105 - 24));
      v172 = v63;
      v108 = *(v63 + 16);
      v107 = *(v63 + 24);
      v109 = v108 + 1;
      if (v108 >= v107 >> 1)
      {
        v110 = Height;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1);
        Height = v110;
        v63 = v172;
      }

      *(v63 + 16) = v109;
      *(v63 + 8 * v108 + 32) = Height;
      v105 += 32;
      --v104;
    }

    while (v104);
LABEL_43:
    v111 = v155;
    v112 = v141;
    if (v109 <= 3)
    {
      v113 = 0;
      v114 = 0.0;
      goto LABEL_48;
    }

    v113 = v109 & 0xFFFFFFFFFFFFFFFCLL;
    v115 = (v63 + 48);
    v114 = 0.0;
    v116 = v109 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v114 = v114 + *(v115 - 2) + *(v115 - 1) + *v115 + v115[1];
      v115 += 4;
      v116 -= 4;
    }

    while (v116);
    if (v109 != v113)
    {
LABEL_48:
      v117 = v109 - v113;
      v118 = 8 * v113 + 32;
      do
      {
        v114 = v114 + *(v63 + v118);
        v118 += 8;
        --v117;
      }

      while (v117);
    }

    v119 = v144;
  }

  else
  {
    v109 = *(v63 + 16);
    if (v109)
    {
      goto LABEL_43;
    }

    v114 = 0.0;
    v111 = v155;
    v119 = v144;
    v112 = v141;
  }

  UIEdgeInsetsInsetRect(0.0, 0.0, v31, v114, v177, v176);
  UIRectIntegralWithScale();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;

  outlined destroy of CharacterSet?(v146, &_s26DocumentManagerExecutables12DOCFastLabelC18AttachmentRendererVSgMd);
  outlined destroy of CharacterSet?(v147, &_s26DocumentManagerExecutables12DOCFastLabelC18AttachmentRendererVSgMd);
  v128 = v145;
  result = outlined init with take of (key: URL, value: FPItem)(v158, v111 + *(v145 + 36), &_s10Foundation8IndexSetVSgMd);
  *v111 = 0;
  *(v111 + 8) = 0;
  *(v111 + 16) = v31;
  *(v111 + 24) = v114;
  *(v111 + 32) = v121;
  *(v111 + 40) = v123;
  *(v111 + 48) = v125;
  *(v111 + 56) = v127;
  *(v111 + 72) = v66;
  *(v111 + 80) = v59;
  *(v111 + v128[13]) = v156;
  v130 = v111 + v128[10];
  v131 = v149;
  *v130 = v20;
  *(v130 + 8) = v131;
  v132 = v148;
  *(v130 + 16) = v36;
  *(v130 + 24) = v132;
  v133 = v150;
  *(v130 + 32) = v151;
  *(v130 + 40) = v133;
  v134 = (v111 + v128[11]);
  *v134 = v152;
  *(v134 + 1) = v163;
  v134[2] = v162;
  *(v134 + 3) = v161;
  v135 = v153;
  *(v134 + 4) = v154;
  *(v134 + 5) = v135;
  *(v111 + 64) = v61;
  return result;
}

uint64_t one-time initialization function for charsWithSpecialOutset()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd);
  v2 = MEMORY[0x28223BE20](v0, v1);
  v4 = &v11 - v3;
  __swift_allocate_value_buffer(v2, static DOCFastLabel.TextDrawInformation.charsWithSpecialOutset);
  v5 = __swift_project_value_buffer(v0, static DOCFastLabel.TextDrawInformation.charsWithSpecialOutset);
  v6 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v6)
  {
    v7 = v6;
    static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for CharacterSet();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for CharacterSet();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  return outlined init with take of (key: URL, value: FPItem)(v4, v5, &_s10Foundation12CharacterSetVSgMd);
}

void DOCFastLabel.TextDrawInformation.drawText(in:)(CGContext *a1)
{
  v2 = v1;
  v60.a = 1.0;
  v60.b = 0.0;
  v60.c = 0.0;
  v60.d = 1.0;
  v60.tx = 0.0;
  v60.ty = 0.0;
  CGContextSetTextMatrix(a1, &v60);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v61.origin.x = v4;
  v61.origin.y = v5;
  v61.size.width = v6;
  v61.size.height = v7;
  Height = CGRectGetHeight(v61);
  CGContextTranslateCTM(a1, -v4, Height - v5);
  CGContextScaleCTM(a1, 1.0, -1.0);
  v62.origin.x = v4;
  v62.origin.y = v5;
  v62.size.width = v6;
  v62.size.height = v7;
  v9 = CGRectGetHeight(v62);
  v10 = *(v1 + 72);
  if (v10 >> 62)
  {
    goto LABEL_32;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v59 = *(v1 + 80);
  v12 = v11;
  if (v11)
  {
    while (1)
    {
      v13 = 0;
      v57 = v10 & 0xFFFFFFFFFFFFFF8;
      v58 = v10 & 0xC000000000000001;
      v55 = v12 - 1;
      v14 = __OFSUB__(v12, 1);
      v56 = v14;
      v15 = (v59 + 56);
      v16 = 1;
      v53 = v10;
      v54 = v2;
      v52 = v11;
      while (v58)
      {
        v21 = MEMORY[0x24C1FC540](v13, v10);
LABEL_13:
        v22 = v21;
        v23 = *(v59 + 16);
        if (v13 == v23)
        {

          return;
        }

        if (v13 >= v23)
        {
          goto LABEL_30;
        }

        if (v56)
        {
          goto LABEL_31;
        }

        v24 = *(v15 - 1);
        v25 = *v15;
        v26 = *(v15 - 3);
        v27 = *(v15 - 2);
        v9 = v9 - *v15 - v27;
        v65.origin.x = v26;
        v65.origin.y = v27;
        v65.size.width = v24;
        v65.size.height = *v15;
        v28 = CGRectGetMinX(v65) - *v2;
        if (v16)
        {
          v29 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
          v30 = v2 + *(v29 + 40);
          v31 = *(v30 + 32);
          if (v31)
          {
            v32 = *v30;
            v33 = *(v30 + 8);
            v34 = v2;
            v36 = *(v30 + 16);
            v35 = *(v30 + 24);
            v37 = *v30;
            if (*(v34 + *(v29 + 52)))
            {

              v66.origin.x = v26;
              v66.size.width = v24;
              v66.origin.y = v27;
              v66.size.height = v25;
              v38 = CGRectGetWidth(v66) + *&v36;
            }

            else
            {
              v38 = -v37 - *&v36;
            }

            v39 = v28 + v38;
            CGContextSaveGState(a1);
            v67.origin.x = v39;
            v67.origin.y = v9 + *&v35;
            v67.size.width = v37;
            v67.size.height = v33;
            MinX = CGRectGetMinX(v67);
            v68.size.width = v37;
            v41 = MinX;
            v68.origin.x = v39;
            v68.origin.y = v9 + *&v35;
            v68.size.height = v33;
            MinY = CGRectGetMinY(v68);
            CGContextTranslateCTM(a1, v41, MinY);
            v31(a1);
            CGContextRestoreGState(a1);
            outlined consume of DOCFastLabel.AttachmentRenderer?(v32, *&v33, v36, v35, v31);
            v10 = v53;
            v2 = v54;
            v11 = v52;
          }
        }

        if (v55 == v13)
        {
          v43 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
          v44 = v2 + *(v43 + 44);
          v45 = *(v44 + 32);
          if (v45)
          {
            v46 = v2;
            v48 = *v44;
            v47 = *(v44 + 8);
            v50 = *(v44 + 16);
            v49 = *(v44 + 24);
            v51 = *v44;
            if (*(v46 + *(v43 + 52)) == 1)
            {
              v17 = -v51 - *&v50;
            }

            else
            {

              v69.origin.x = v26;
              v69.origin.y = v27;
              v69.size.width = v24;
              v69.size.height = v25;
              v17 = CGRectGetWidth(v69) + *&v50;
            }

            v18 = v28 + v17;
            CGContextSaveGState(a1);
            v63.origin.x = v18;
            v63.origin.y = v9 + *&v49;
            v63.size.width = v51;
            v63.size.height = v47;
            v19 = CGRectGetMinX(v63);
            v64.origin.x = v18;
            v64.origin.y = v9 + *&v49;
            v64.size.width = v51;
            v64.size.height = v47;
            v20 = CGRectGetMinY(v64);
            CGContextTranslateCTM(a1, v19, v20);
            v45(a1);
            CGContextRestoreGState(a1);
            outlined consume of DOCFastLabel.AttachmentRenderer?(v48, *&v47, v50, v49, v45);
            v10 = v53;
            v2 = v54;
            v11 = v52;
          }
        }

        ++v13;
        CGContextRef.textPosition.setter();
        CTLineDraw(v22, a1);

        v16 = 0;
        v15 += 4;
        if (v11 == v13)
        {
          return;
        }
      }

      if (v13 < *(v57 + 16))
      {
        break;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v12 = __CocoaSet.count.getter();
      v59 = *(v2 + 80);
      v11 = __CocoaSet.count.getter();
      if (!v11)
      {
        return;
      }
    }

    v21 = *(v10 + 8 * v13 + 32);
    goto LABEL_13;
  }
}

void DOCFastLabel.FastLabelLayer.traitCollection.setter(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_traitCollection];
  *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_traitCollection] = a1;
  if (a1)
  {
    v3 = v1;
    v7 = v2;
    v4 = one-time initialization token for userInterfaceStyle;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v8 = static UITraitCollection.Traits.userInterfaceStyle;
    v9 = qword_27EEE9CA8;

    v6 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v8, v7);

    if (v6)
    {
      [v3 setNeedsDisplay];
    }

    v2 = v7;
  }
}

id DOCFastLabel.FastLabelLayer.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_traitCollection] = 0;
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
  v4 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DOCFastLabel.FastLabelLayer(0);
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [v7 setOpaque_];
    [v7 setContentsFormat_];
  }

  return v6;
}

id DOCFastLabel.FastLabelLayer.init(layer:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v17 - v5;
  *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_traitCollection] = 0;
  v7 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
  v8 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10 = type metadata accessor for DOCFastLabel.FastLabelLayer(0);
  v19.receiver = v1;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, sel_initWithLayer_, v9);
  swift_unknownObjectRelease();
  v12 = v11;
  [v12 setOpaque_];
  [v12 setContentsFormat_];
  outlined init with copy of Any(a1, v18);
  if (swift_dynamicCast())
  {
    v13 = v17[1];
    v14 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v13 + v14, v6, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);

    __swift_destroy_boxed_opaque_existential_0(a1);
    v15 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
    swift_beginAccess();
    outlined assign with take of DOCFastLabel.LabelInformation?(v6, v12 + v15);
    swift_endAccess();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v12;
}

void DOCFastLabel.FastLabelLayer.draw(in:)(CGContext *a1)
{
  v29 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  MEMORY[0x28223BE20](v29, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for DOCFastLabel.FastLabelLayer(0);
  v32.receiver = v1;
  v32.super_class = v19;
  v30 = a1;
  [(CGContext *)&v32 drawInContext:a1];
  v20 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&v1[v20], v18, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v21 = *(v7 + 48);
  v22 = v21(v18, 1, v6);
  v31 = v6;
  if (v22)
  {
    outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  }

  else
  {
    outlined init with copy of DOCFastLabel.TextDrawInformation(v18, v10, type metadata accessor for DOCFastLabel.LabelInformation);
    outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    outlined init with copy of DOCFastLabel.TextDrawInformation(&v10[*(v6 + 20)], v5, type metadata accessor for DOCFastLabel.TextDrawInformation);
    outlined destroy of DOCFastLabel.LabelInformation(v10, type metadata accessor for DOCFastLabel.LabelInformation);
    v23 = *&v5[*(v29 + 48)];
    outlined destroy of DOCFastLabel.LabelInformation(v5, type metadata accessor for DOCFastLabel.TextDrawInformation);
    CGContextSetAlpha(v30, v23);
  }

  v24 = *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_traitCollection];
  if (v24)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 _currentTraitCollection];
    [v25 _setCurrentTraitCollection_];
    outlined init with copy of DOCGridLayout.Spec?(&v1[v20], v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    v28 = v31;
    if (v21(v14, 1, v31))
    {
      outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    }

    else
    {
      outlined init with copy of DOCFastLabel.TextDrawInformation(v14, v10, type metadata accessor for DOCFastLabel.LabelInformation);
      outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
      outlined init with copy of DOCFastLabel.TextDrawInformation(&v10[*(v28 + 20)], v5, type metadata accessor for DOCFastLabel.TextDrawInformation);
      outlined destroy of DOCFastLabel.LabelInformation(v10, type metadata accessor for DOCFastLabel.LabelInformation);
      DOCFastLabel.TextDrawInformation.drawText(in:)(v30);
      outlined destroy of DOCFastLabel.LabelInformation(v5, type metadata accessor for DOCFastLabel.TextDrawInformation);
    }

    [v25 _setCurrentTraitCollection_];
  }
}

id DOCFastLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *DOCFastLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_disableWorkaroundFor160718780;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BF7350);
  v12 = [v10 BOOLForKey_];

  v4[v9] = v12;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for DOCFastLabel.FastLabelLayer(0)) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for DOCFastLabel();
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *((*MEMORY[0x277D85000] & *v14) + 0x60);
  v16 = v14;
  v15();

  return v16;
}

id DOCFastLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall DOCFastLabel.commonInit()()
{
  v1 = [v0 layer];
  [v1 addSublayer_];
}

uint64_t key path setter for DOCFastLabel.labelInformation : DOCFastLabel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x70))(v7);
}

uint64_t DOCFastLabel.labelInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer);
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v3 + v4, a1, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
}

uint64_t DOCFastLabel.labelInformation.setter(uint64_t a1)
{
  v3 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v39 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v39 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer);
  v41 = a1;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v39 - v20, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v23 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
  swift_beginAccess();
  outlined assign with copy of DOCFastLabel.LabelInformation?(v21, v22 + v23);
  swift_endAccess();
  [v22 setNeedsDisplay];
  v24 = v6;
  v25 = outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  (*((*MEMORY[0x277D85000] & *v1) + 0x68))(v25);
  v26 = *(v7 + 48);
  if (v26(v17, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  }

  else
  {
    v27 = v39;
    outlined init with take of DOCFastLabel.LabelInformation(v17, v39, type metadata accessor for DOCFastLabel.LabelInformation);
    [v1 setFont_];
    outlined destroy of DOCFastLabel.LabelInformation(v27, type metadata accessor for DOCFastLabel.LabelInformation);
  }

  v28 = v41;
  outlined init with copy of DOCGridLayout.Spec?(v41, v13, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  if (v26(v13, 1, v24) == 1)
  {
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v33 = v40;
    outlined init with copy of DOCFastLabel.TextDrawInformation(&v13[*(v24 + 20)], v40, type metadata accessor for DOCFastLabel.TextDrawInformation);
    outlined destroy of DOCFastLabel.LabelInformation(v13, type metadata accessor for DOCFastLabel.LabelInformation);
    [v1 bounds];
    [v1 contentScaleFactor];
    v31 = *(v33 + 48);
    v32 = *(v33 + 56);
    UIPointRoundToScale();
    v35 = v34;
    v37 = v36;
    outlined destroy of DOCFastLabel.LabelInformation(v33, type metadata accessor for DOCFastLabel.TextDrawInformation);
    v30 = v37;
    v29 = v35;
  }

  [v22 setFrame_];
  [v1 invalidateIntrinsicContentSize];
  return outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
}

void (*DOCFastLabel.labelInformation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer);
  v10 = OBJC_IVAR____TtCC26DocumentManagerExecutables12DOCFastLabelP33_7A870AD7C1D347BBEBBED490F5FAB73B14FastLabelLayer_labelInformation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v9 + v10, v8, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  return DOCFastLabel.labelInformation.modify;
}

void DOCFastLabel.labelInformation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of DOCGridLayout.Spec?(*(*a1 + 40), v3, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    DOCFastLabel.labelInformation.setter(v3);
    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  }

  else
  {
    DOCFastLabel.labelInformation.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DOCFastLabel.text.getter()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCFastLabel();
  v1 = objc_msgSendSuper2(&v5, sel_text);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DOCFastLabel.attributedText.getter()
{
  v1 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v17 - v13;
  (*((*MEMORY[0x277D85000] & *v0) + 0x68))(v12);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    return 0;
  }

  else
  {
    outlined init with copy of DOCFastLabel.TextDrawInformation(v14, v9, type metadata accessor for DOCFastLabel.LabelInformation);
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    outlined init with copy of DOCFastLabel.TextDrawInformation(&v9[*(v5 + 20)], v4, type metadata accessor for DOCFastLabel.TextDrawInformation);
    outlined destroy of DOCFastLabel.LabelInformation(v9, type metadata accessor for DOCFastLabel.LabelInformation);
    v16 = v4[8];
    outlined destroy of DOCFastLabel.LabelInformation(v4, type metadata accessor for DOCFastLabel.TextDrawInformation);
    return v16;
  }
}

id DOCFastLabel.contentScaleFactor.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFastLabel();
  return objc_msgSendSuper2(&v2, sel_contentScaleFactor);
}

id DOCFastLabel.contentScaleFactor.setter(double a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCFastLabel();
  objc_msgSendSuper2(&v11, sel_setContentScaleFactor_, a1);
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer];
  v4 = [v1 layer];
  [v4 contentsScale];
  v6 = v5;

  [v3 setContentsScale_];
  v7 = [v1 layer];
  [v7 rasterizationScale];
  v9 = v8;

  return [v3 setRasterizationScale_];
}

Swift::Void __swiftcall DOCFastLabel.layoutSubviews()()
{
  v1 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for DOCFastLabel();
  v25.receiver = v0;
  v25.super_class = v14;
  v15 = objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v16 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer);
  (*((*MEMORY[0x277D85000] & *v0) + 0x68))(v15);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
  }

  else
  {
    outlined init with copy of DOCFastLabel.TextDrawInformation(v13, v9, type metadata accessor for DOCFastLabel.LabelInformation);
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    outlined init with copy of DOCFastLabel.TextDrawInformation(&v9[*(v5 + 20)], v4, type metadata accessor for DOCFastLabel.TextDrawInformation);
    outlined destroy of DOCFastLabel.LabelInformation(v9, type metadata accessor for DOCFastLabel.LabelInformation);
    [v0 bounds];
    [v0 contentScaleFactor];
    v19 = v4[6];
    v20 = v4[7];
    UIPointRoundToScale();
    v22 = v21;
    v24 = v23;
    outlined destroy of DOCFastLabel.LabelInformation(v4, type metadata accessor for DOCFastLabel.TextDrawInformation);
    v18 = v24;
    v17 = v22;
  }

  [v16 setFrame_];
}

Swift::Void __swiftcall DOCFastLabel.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFastLabel();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    DOCFastLabel.FastLabelLayer.traitCollection.setter([v0 traitCollection]);
  }
}

Swift::Void __swiftcall DOCFastLabel.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCFastLabel();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  DOCFastLabel.FastLabelLayer.traitCollection.setter([v1 traitCollection]);
}

id DOCFastLabel.FastLabelLayer.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCyy26DocumentManagerExecutables45DOCProgressProvidingOperationCollectionSource_pcGMd, &_ss23_ContiguousArrayStorageCyy26DocumentManagerExecutables45DOCProgressProvidingOperationCollectionSource_pcGMR, &_syycMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables29DOCProgressProvidingOperation_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables29DOCProgressProvidingOperation_pGMR, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMR, type metadata accessor for DOCDocumentSourceIdentifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCImmutableSidebarSection_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables26DOCImmutableSidebarSection_pGMR, &_s26DocumentManagerExecutables26DOCImmutableSidebarSection_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables18DOCTypeToFocusItem_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables18DOCTypeToFocusItem_pGMR, &_s26DocumentManagerExecutables18DOCTypeToFocusItem_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySo5FPTagCGGMd, &_ss23_ContiguousArrayStorageCySaySo5FPTagCGGMR, &_sSaySo5FPTagCGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo10UIDragItemC11itemContext_So7DOCNode_p4nodetGMd, &_ss23_ContiguousArrayStorageCySo10UIDragItemC11itemContext_So7DOCNode_p4nodetGMR, &_sSo10UIDragItemC11itemContext_So7DOCNode_p4nodetMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo12FPProviderIDaGMd, &_ss23_ContiguousArrayStorageCySo12FPProviderIDaGMR, type metadata accessor for FPProviderID);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay12CoreGraphics7CGFloatVGGMd, &_ss23_ContiguousArrayStorageCySay12CoreGraphics7CGFloatVGGMR, &_sSay12CoreGraphics7CGFloatVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo28NSFileProviderItemIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo28NSFileProviderItemIdentifieraGMR, type metadata accessor for NSFileProviderItemIdentifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCyShySSGGMd, &_ss23_ContiguousArrayStorageCyShySSGGMR, &_sShySSGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables25DOCNodeObserverSubscriberC5token_AC0gH0C8observertGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables25DOCNodeObserverSubscriberC5token_AC0gH0C8observertGMR, &_s26DocumentManagerExecutables25DOCNodeObserverSubscriberC5token_AA0dE0C8observertMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCGoToFolderCandidate_pGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCGoToFolderCandidate_pGMR, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo18FPProviderDomainIDaGMd, &_ss23_ContiguousArrayStorageCySo18FPProviderDomainIDaGMR, type metadata accessor for FPProviderDomainID);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo19DOCConcreteLocationC8location_26DocumentManagerExecutables29DOCBrowserContainerControllerC09containerL0tGMd, &_ss23_ContiguousArrayStorageCySo19DOCConcreteLocationC8location_26DocumentManagerExecutables29DOCBrowserContainerControllerC09containerL0tGMR, &_sSo19DOCConcreteLocationC8location_26DocumentManagerExecutables29DOCBrowserContainerControllerC09containerI0tMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo14NSItemProviderC11itemContext_So7DOCNode_p4nodetGMd, &_ss23_ContiguousArrayStorageCySo14NSItemProviderC11itemContext_So7DOCNode_p4nodetGMR, &_sSo14NSItemProviderC11itemContext_So7DOCNode_p4nodetMd);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR, MEMORY[0x277D74AE0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCFileOperationVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCFileOperationVGMR, type metadata accessor for DOCFileOperation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMR, type metadata accessor for DOCOperationItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMR, type metadata accessor for DOCDragPasteboardType);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMR, type metadata accessor for FINodeEntity);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMR, &_s10Foundation3URLVSgMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCMultiNodeObserverC10Subscriber33_E535D8FE95141299AF62B2664D0DF15ELLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCMultiNodeObserverC10Subscriber33_E535D8FE95141299AF62B2664D0DF15ELLVGMR, type metadata accessor for DOCMultiNodeObserver.Subscriber);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR, type metadata accessor for DOCBrowserHistoryItem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10AppIntents14SiriVocabularyO11DynamicTermVGMd, &_ss23_ContiguousArrayStorageCy10AppIntents14SiriVocabularyO11DynamicTermVGMR, MEMORY[0x277CB9E88]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAC07DOCFileI0V_GGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAC07DOCFileI0V_GGMR, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR, MEMORY[0x277D85578]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables28DOCItemSharedByGroupCategoryO3key_So7DOCNode_p5valuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23UIDocumentBrowserActionC6action_Sb7enabledtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23UIDocumentBrowserActionC6action_Sb7enabledtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6FPItemC4item_Sd5scoretGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemC4item_Sd5scoretMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables13DOCGridLayoutV4SpecV0H7MetricsV9Scenarios33_282165E317DD05969D6EF6C181B16702LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 72 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(_ss23_ContiguousArrayStorageCys11AnyHashableVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCProgressStateOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryO3key_s5Int64V5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyytGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCItemSortDescriptorVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables13LocationColor33_0BFB980FCBDEF78F05FB1DEEFECAD8EFLLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6FPItemC26DocumentManagerExecutablesE11DOCDragInfoVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11PermissionsVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCUTIDescriptorVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGSizeVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexM0tGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexM0tGMR, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, MEMORY[0x277CC9AF8]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0H0V5valuetGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0H0V5valuetGMR, &_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 + 31;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 6);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[64 * v9])
    {
      memmove(v14, v15, v9 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV_AETt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesVAEGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v6 = v4[9];
      v43 = v4[8];
      v44 = v6;
      v45 = *(v4 + 20);
      v7 = v4[5];
      v39 = v4[4];
      v40 = v7;
      v8 = v4[7];
      v41 = v4[6];
      v42 = v8;
      v9 = v4[1];
      v35 = *v4;
      v36 = v9;
      v10 = v4[3];
      v37 = v4[2];
      v38 = v10;
      outlined init with copy of DOCGridLayout.Spec?(__dst, &v33, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesV_ACtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v35);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 168 * result;
      v14 = v44;
      *(v13 + 128) = v43;
      *(v13 + 144) = v14;
      *(v13 + 160) = v45;
      v15 = v40;
      *(v13 + 64) = v39;
      *(v13 + 80) = v15;
      v16 = v42;
      *(v13 + 96) = v41;
      *(v13 + 112) = v16;
      v17 = v36;
      *v13 = v35;
      *(v13 + 16) = v17;
      v18 = v38;
      *(v13 + 32) = v37;
      *(v13 + 48) = v18;
      v19 = (v3[7] + 224 * result);
      v20 = *&__dst[23];
      *v19 = *&__dst[21];
      v19[1] = v20;
      v21 = *&__dst[31];
      v23 = *&__dst[25];
      v22 = *&__dst[27];
      v19[4] = *&__dst[29];
      v19[5] = v21;
      v19[2] = v23;
      v19[3] = v22;
      v24 = *&__dst[39];
      v26 = *&__dst[33];
      v25 = *&__dst[35];
      v19[8] = *&__dst[37];
      v19[9] = v24;
      v19[6] = v26;
      v19[7] = v25;
      v27 = *&__dst[41];
      v28 = *&__dst[43];
      v29 = *&__dst[47];
      v19[12] = *&__dst[45];
      v19[13] = v29;
      v19[10] = v27;
      v19[11] = v28;
      v30 = v3[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_11;
      }

      v3[2] = v32;
      if (!i)
      {

        return v3;
      }

      v4 = (v4 + 392);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC24HeightDeterminingFactorsV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC24HeightDeterminingFactorsV12CoreGraphics7CGFloatVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 3);
      v15 = *(i - 5);
      v16 = v5;
      v17 = *(i - 1);
      v18 = v17;
      v6 = *i;
      v19 = v5;
      v20 = *(&v15 + 1);
      outlined init with copy of DOCFastLabel.TextDrawInformation(&v20, v14, type metadata accessor for UIFontTextStyle);
      outlined init with copy of DOCFastLabel.TextDrawInformation(&v19, v14, type metadata accessor for UIFontTextStyle);
      outlined init with copy of DOCFastLabel.TextDrawInformation(&v18, v14, type metadata accessor for UIContentSizeCategory);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v16;
      *v9 = v15;
      *(v9 + 16) = v10;
      *(v9 + 32) = v17;
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