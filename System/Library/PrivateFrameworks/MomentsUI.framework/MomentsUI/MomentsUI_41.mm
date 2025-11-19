uint64_t lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DBAssetModel.basePairedPhotoVideo.getter()
{
  result = (*(*v0 + 336))();
  if (result)
  {
    v2 = result;
    v3 = DBAssetModel.baseVideo.getter();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PairedPhotoVideo();
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      *(v5 + 16) = 0;
      swift_beginAccess();
      *(v5 + 16) = v2;
      swift_beginAccess();
      result = v5;
      *(v5 + 24) = v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t PairedPhotoVideo.assetData.getter()
{
  v1 = (*(*v0 + 96))();
  if (v1)
  {
    v2 = v1;
    v3 = specialized static DBAssetModel.baseImage2DB(_:)(v1);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*v0 + 120))();
  if (v4)
  {
    v5 = v4;
    if (v3)
    {
      v6 = Video.assetData.getter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v3;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v9);

      return v9;
    }

    else
    {
    }
  }

  return v3;
}

void *OverflowView.__allocating_init(overflowCount:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame_];
  v4 = *((*MEMORY[0x277D85000] & *v3) + 0xA0);
  v5 = v3;
  v4(a1);

  return v5;
}

void one-time initialization function for font()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76918];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = v4;
    v6 = [v0 fontWithDescriptor:v5 size:0.0];

    static OverflowView.font = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *OverflowView.font.unsafeMutableAddressor()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  return &static OverflowView.font;
}

void one-time initialization function for config()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v0 = static OverflowView.font;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  static OverflowView.config = v3;
}

uint64_t *OverflowView.config.unsafeMutableAddressor()
{
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  return &static OverflowView.config;
}

void one-time initialization function for symbolColor()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent_];

  static OverflowView.symbolColor = v1;
}

uint64_t *OverflowView.symbolColor.unsafeMutableAddressor()
{
  if (one-time initialization token for symbolColor != -1)
  {
    swift_once();
  }

  return &static OverflowView.symbolColor;
}

id one-time initialization function for numberColor()
{
  result = [objc_opt_self() systemWhiteColor];
  static OverflowView.numberColor = result;
  return result;
}

uint64_t *OverflowView.numberColor.unsafeMutableAddressor()
{
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  return &static OverflowView.numberColor;
}

void OverflowView.overflowCount.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCountLabel);
  type metadata accessor for OverflowView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 bundleForClass_];
  v16._object = 0x8000000216588A10;
  v6._countAndFlagsBits = 25637;
  v6._object = 0xE200000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21658CA50;
  v9 = OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCount;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v11;
  *(v8 + 32) = v10;
  v12 = static String.localizedStringWithFormat(_:_:)();
  v14 = v13;

  v15 = MEMORY[0x21CE91FC0](v12, v14);

  [v4 setText_];
}

uint64_t OverflowView.overflowCount.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void OverflowView.overflowCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
  OverflowView.overflowCount.didset();
}

void (*OverflowView.overflowCount.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return OverflowView.overflowCount.modify;
}

void OverflowView.overflowCount.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    OverflowView.overflowCount.didset();
  }
}

id OverflowView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OverflowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI12OverflowView_blurEffectView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  *&v4[OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCount] = 0;
  v10 = OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCountLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v11 setTextColor_];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v11 setFont_];
  [v11 setAdjustsFontForContentSizeCategory_];
  *&v4[v10] = v11;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for OverflowView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setClipsToBounds_];
  OverflowView.initOverflowView()();

  return v12;
}

id OverflowView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void OverflowView.initOverflowView()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI12OverflowView_blurEffectView];
  v3 = [objc_opt_self() effectWithStyle_];
  [v2 setEffect_];

  v4 = [objc_opt_self() blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  [v2 setBackgroundColor_];
  [v1 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v6 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAxis_];
  [v6 setDistribution_];
  [v6 setAlignment_];
  [v1 addSubview_];
  v7 = [v6 superview];
  if (v7)
  {
    v8 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v6 leadingAnchor];
    v10 = [v8 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setConstant_];
    if (v11)
    {
      [v11 setActive_];
    }
  }

  v12 = [v6 superview];
  if (v12)
  {
    v13 = v12;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = [v6 trailingAnchor];
    v15 = [v13 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    [v16 setConstant_];
    if (v16)
    {
      [v16 setActive_];
    }
  }

  v17 = [v6 superview];
  if (v17)
  {
    v18 = v17;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v19 = [v6 topAnchor];
    v20 = [v18 topAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    [v21 setConstant_];
    if (v21)
    {
      [v21 setActive_];
    }
  }

  v22 = [v6 superview];
  if (v22)
  {
    v23 = v22;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v24 = [v6 bottomAnchor];
    v25 = [v23 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    if (v26)
    {
      [v26 setConstant_];
      [v26 setActive_];
    }
  }

  v27 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  v28 = static OverflowView.config;
  v29 = MEMORY[0x21CE91FC0](1937075312, 0xE400000000000000);
  v30 = [objc_opt_self() systemImageNamed:v29 withConfiguration:v28];

  [v27 setImage_];
  if (one-time initialization token for symbolColor != -1)
  {
    swift_once();
  }

  [v27 setTintColor_];
  v37 = v27;
  [v37 setOverrideUserInterfaceStyle_];
  v31 = *MEMORY[0x277D76808];
  [v37 setMaximumContentSizeCategory_];

  [v6 addArrangedSubview_];
  v32 = OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCountLabel;
  v33 = one-time initialization token for numberColor;
  v34 = *&v1[OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCountLabel];
  if (v33 != -1)
  {
    swift_once();
  }

  [v34 setTextColor_];

  v35 = one-time initialization token for font;
  v36 = *&v1[v32];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setFont_];

  [*&v1[v32] setMaximumContentSizeCategory_];
  [v6 addArrangedSubview_];
}

Swift::Void __swiftcall OverflowView.updateOverflow(count:)(Swift::Int count)
{
  type metadata accessor for OverflowView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v16._object = 0x8000000216588970;
  v5._countAndFlagsBits = 25637;
  v5._object = 0xE200000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D83B88];
  *(v7 + 16) = xmmword_21658CA50;
  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = count;
  v10 = static String.localizedStringWithFormat(_:_:)();
  v12 = v11;

  v13 = *(v1 + OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCountLabel);
  v14 = MEMORY[0x21CE91FC0](v10, v12);

  [v13 setText_];
}

id OverflowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverflowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized OverflowView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI12OverflowView_blurEffectView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCount) = 0;
  v2 = OBJC_IVAR____TtC9MomentsUI12OverflowView_overflowCountLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v3 setTextColor_];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v3 setFont_];
  [v3 setAdjustsFontForContentSizeCategory_];
  *(v0 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id InterstitialContentView.__allocating_init(suggestionTitle:suggestionSubtitle:suggestionDateInterval:isSingleDaySuggestion:addButtonTitle:tintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = objc_allocWithZone(v9);
  v15 = &v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addToEntryButtonAction];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableSelection];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableBackButton];
  *v17 = 0;
  v17[1] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionTitleView] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionDateLabel] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionAssetTypesLabel] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView] = 0;
  v18 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView;
  *&v14[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v19 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_scrollViewContainerView;
  *&v14[v19] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___scrollView] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___emptySelectionLabel] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewWidthEqualHeightConstraint] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewTopConstraint] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewCenterYConstraint] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewStretchToTheBottomConstraint] = 0;
  v20 = &v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionTitle];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionSubtitle];
  *v21 = a3;
  v21[1] = a4;
  v22 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionDateInterval;
  v23 = type metadata accessor for DateInterval();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v14[v22], a5, v23);
  v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_isSingleDaySuggestion] = a6;
  v25 = &v14[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addButtonTitle];
  *v25 = a7;
  v25[1] = a8;
  v32.receiver = v14;
  v32.super_class = v9;
  v26 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v26 setTintColor_];
  InterstitialContentView.setupViews()();

  (*(v24 + 8))(a5, v23);
  return v26;
}

uint64_t key path getter for InterstitialContentView.addToEntryButtonAction : InterstitialContentView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for InterstitialContentView.addToEntryButtonAction : InterstitialContentView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x108);
  _sSuSgIegd_SgWOy_0(v3);
  return v7(v6, v5);
}

uint64_t key path getter for InterstitialContentView.disableSelection : InterstitialContentView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for InterstitialContentView.disableSelection : InterstitialContentView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x120);
  _sSuSgIegd_SgWOy_0(v3);
  return v7(v6, v5);
}

uint64_t key path getter for InterstitialContentView.disableBackButton : InterstitialContentView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for InterstitialContentView.disableBackButton : InterstitialContentView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x138);
  _sSuSgIegd_SgWOy_0(v3);
  return v7(v6, v5);
}

uint64_t InterstitialContentView.addToEntryButtonAction.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  _sSuSgIegd_SgWOy_0(*v2);
  return v3;
}

uint64_t InterstitialContentView.addToEntryButtonAction.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

id InterstitialContentView.init(suggestionTitle:suggestionSubtitle:suggestionDateInterval:isSingleDaySuggestion:addButtonTitle:tintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  v15 = &v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addToEntryButtonAction];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableSelection];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableBackButton];
  *v17 = 0;
  v17[1] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionTitleView] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionDateLabel] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionAssetTypesLabel] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView] = 0;
  v18 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView;
  *&v9[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v19 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_scrollViewContainerView;
  *&v9[v19] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___scrollView] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___emptySelectionLabel] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewWidthEqualHeightConstraint] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewTopConstraint] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewCenterYConstraint] = 0;
  *&v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewStretchToTheBottomConstraint] = 0;
  v20 = &v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionTitle];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionSubtitle];
  *v21 = a3;
  v21[1] = a4;
  v22 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionDateInterval;
  v23 = type metadata accessor for DateInterval();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v9[v22], a5, v23);
  v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_isSingleDaySuggestion] = a6;
  v25 = &v9[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addButtonTitle];
  *v25 = a7;
  v25[1] = a8;
  v31.receiver = v9;
  v31.super_class = type metadata accessor for InterstitialContentView();
  v26 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v26 setTintColor_];
  InterstitialContentView.setupViews()();

  (*(v24 + 8))(a5, v23);
  return v26;
}

void closure #1 in InterstitialContentView.suggestionTitleView.getter(char *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];

  if (v5)
  {
    v6 = [v2 fontWithDescriptor:v5 size:0.0];

    v7 = [objc_opt_self() configurationWithFont_];
    v8 = [a1 tintColor];
    if (!v8)
    {
      v8 = [objc_opt_self() systemBlueColor];
    }

    v9 = MEMORY[0x21CE91FC0](0x6C69636E6570, 0xE600000000000000);
    v10 = [objc_opt_self() systemImageNamed_];

    if (v10)
    {
      v11 = [v10 imageWithTintColor_];

      v10 = [v11 imageWithSymbolConfiguration_];
    }

    v12 = &a1[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionTitle];
    v13 = *&a1[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionTitle];
    v14 = *(v12 + 1);
    v15 = objc_allocWithZone(type metadata accessor for EditableLabelView());
    v16 = v10;

    [EditableLabelView.init(title:image:)(v13 v14];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in InterstitialContentView.labelsView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v1 setAxis_];
  [v1 setDistribution_];
  [v1 setSpacing_];
  v2 = InterstitialContentView.suggestionTitleView.getter();
  [v1 addArrangedSubview_];

  v3 = InterstitialContentView.suggestionDateLabel.getter();
  [v1 addArrangedSubview_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setAxis_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  [v4 addArrangedSubview_];
  v5 = InterstitialContentView.suggestionAssetTypesLabel.getter();
  [v4 addArrangedSubview_];

  [v0 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  return v0;
}

id InterstitialContentView.suggestionTitleView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in InterstitialContentView.scrollView.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setShowsVerticalScrollIndicator_];
  [v2 _setHiddenPocketEdges_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = InterstitialContentView.labelsView.getter();
  [v3 addSubview_];

  v5 = *(a1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 addSubview_];
  [v2 addSubview_];
  v43 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2165A6D30;
  v7 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView;
  v8 = [*(a1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView) topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v6 + 32) = v10;
  v11 = [*(a1 + v7) leadingAnchor];
  v12 = [v3 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:32.0];

  *(v6 + 40) = v13;
  v14 = [*(a1 + v7) trailingAnchor];
  v15 = [v3 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-32.0];

  *(v6 + 48) = v16;
  v17 = [v5 leadingAnchor];
  v18 = [v3 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v6 + 56) = v19;
  v20 = [v5 trailingAnchor];
  v21 = [v3 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v6 + 64) = v22;
  v23 = [v5 bottomAnchor];
  v24 = [v3 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v6 + 72) = v25;
  v26 = [v3 topAnchor];
  v27 = [v2 topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v6 + 80) = v28;
  v29 = [v3 leadingAnchor];
  v30 = [v2 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v6 + 88) = v31;
  v32 = [v3 trailingAnchor];
  v33 = [v2 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v6 + 96) = v34;
  v35 = [v3 bottomAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v6 + 104) = v37;
  v38 = [v2 widthAnchor];

  v39 = [v3 widthAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v6 + 112) = v40;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints_];

  return v2;
}

id InterstitialContentView.suggestionDateLabel.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id InterstitialContentView.addButton.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton;
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton];
LABEL_5:
    v12 = v2;
    return v3;
  }

  v4 = *&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addButtonTitle];
  v5 = *&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addButtonTitle + 8];

  result = [v0 tintColor];
  if (result)
  {
    v7 = result;
    v8 = objc_allocWithZone(type metadata accessor for Button());
    v9 = specialized Button.init(title:backgroundColor:)(v4, v5, v7);

    [v9 addTarget:v0 action:sel_addToEntry forControlEvents:64];
    LODWORD(v10) = 1148846080;
    [v9 setContentHuggingPriority:1 forAxis:v10];
    v11 = *&v0[v1];
    *&v0[v1] = v9;
    v3 = v9;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id InterstitialContentView.spinner.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
    [v4 setHidesWhenStopped_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setColor_];

    [v4 setActivityIndicatorViewStyle_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*InterstitialContentView.addToEntry()())(void)
{
  v1 = v0;
  v2 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v3)
  {
    v2 = 1;
  }

  v4 = 1 << specialized DefaultsManager.SheetTransfer.TransferUIMode.init(rawValue:)(v2);
  v5 = MEMORY[0x277D85000];
  if ((v4 & 0x19) == 0)
  {
    if ((v4 & 0x22) != 0)
    {
      v6 = (*((*MEMORY[0x277D85000] & *v0) + 0x130))();
      if (v6)
      {
        v7 = v6;
        v6();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
      }
    }

    v8 = InterstitialContentView.spinner.getter();
    [v8 startAnimating];

    v9 = InterstitialContentView.addButton.getter();
    [v9 setEnabled_];

    v10 = [*(v1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton) titleLabel];
    if (v10)
    {
      v11 = v10;
      [v10 setAlpha_];
    }
  }

  v12 = InterstitialContentView.suggestionTitleView.getter();
  [v12 setUserInteractionEnabled_];

  v13 = (*((*v5 & *v1) + 0x118))();
  if (v13)
  {
    v14 = v13;
    v13();
    v13 = outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);
  }

  result = (*((*v5 & *v1) + 0x100))(v13);
  if (result)
  {
    v16 = result;
    result();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v16);
  }

  return result;
}

void one-time initialization function for fullDateFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setFormattingContext_];
  v6 = MEMORY[0x21CE91FC0](0x4D4D202C45454545, 0xEC00000064204D4DLL);
  [v4 setLocalizedDateFormatFromTemplate_];

  static InterstitialContentView.fullDateFormatter = v4;
}

uint64_t *InterstitialContentView.fullDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  return &static InterstitialContentView.fullDateFormatter;
}

id static InterstitialContentView.fullDateFormatter.getter()
{
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  v1 = static InterstitialContentView.fullDateFormatter;

  return v1;
}

uint64_t InterstitialContentView.suggestionDatString()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  v6 = static InterstitialContentView.fullDateFormatter;
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = [v6 stringFromDate_];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if ((*(v1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_isSingleDaySuggestion) & 1) == 0)
  {
    DateInterval.end.getter();
    v13 = Date._bridgeToObjectiveC()().super.isa;
    v8(v5, v2);
    v14 = [v6 stringFromDate_];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    type metadata accessor for InterstitialContentView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v25._object = 0x8000000216577810;
    v20._countAndFlagsBits = 2108704;
    v20._object = 0xE300000000000000;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0xD000000000000034;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v25);

    v24[0] = v10;
    v24[1] = v12;

    MEMORY[0x21CE92100](v22._countAndFlagsBits, v22._object);

    MEMORY[0x21CE92100](v15, v17);

    return v24[0];
  }

  return v10;
}

Swift::String __swiftcall InterstitialContentView.latestSuggestionTitle()()
{
  v0 = InterstitialContentView.suggestionTitleView.getter();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x108))();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void InterstitialContentView.setupViews()()
{
  v1 = InterstitialContentView.suggestionDateLabel.getter();
  if (*&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionSubtitle + 8])
  {
    v2 = *&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionSubtitle];
    v3 = *&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionSubtitle + 8];
  }

  else
  {
    v2 = InterstitialContentView.suggestionDatString()();
    v3 = v4;
  }

  v5 = MEMORY[0x21CE91FC0](v2, v3);

  [v1 setText_];

  v6 = *&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_scrollViewContainerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = InterstitialContentView.scrollView.getter();
  [v6 addSubview_];

  [v0 &off_27821E7F8];
  v76 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_216597AE0;
  v9 = [v6 topAnchor];
  v10 = [v0 safeAreaLayoutGuide];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:28.0];
  *(v8 + 32) = v12;
  v13 = [v6 leadingAnchor];
  v14 = [v0 &selRef_setShadowRadius_ + 2];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [v6 trailingAnchor];
  v18 = [v0 &selRef_setShadowRadius_ + 2];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___scrollView;
  v22 = [*&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___scrollView] topAnchor];
  v23 = [v6 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v8 + 56) = v24;
  v25 = [*&v0[v21] leadingAnchor];
  v26 = [v6 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v8 + 64) = v27;
  v28 = [*&v0[v21] trailingAnchor];
  v29 = [v6 trailingAnchor];
  v30 = [v28 &selRef_safeAreaLayoutGuide + 5];

  *(v8 + 72) = v30;
  v31 = [*&v0[v21] bottomAnchor];
  v32 = [v6 bottomAnchor];
  v33 = [v31 &selRef_safeAreaLayoutGuide + 5];

  *(v8 + 80) = v33;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints_];

  v35 = InterstitialContentView.emptySelectionLabel.getter();
  [v0 addSubview_];

  v36 = InterstitialContentView.addButton.getter();
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];

  v37 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton;
  [v0 addSubview_];
  v38 = InterstitialContentView.spinner.getter();
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];

  v74 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner;
  [*&v0[v37] addSubview_];
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2165A6D40;
  v40 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___emptySelectionLabel;
  v41 = [*&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___emptySelectionLabel] topAnchor];
  v42 = [v6 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:16.0];

  *(v39 + 32) = v43;
  v44 = [*&v0[v40] leadingAnchor];
  v45 = InterstitialContentView.labelsView.getter();
  v46 = [v45 leadingAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  *(v39 + 40) = v47;
  v48 = [*&v0[v40] trailingAnchor];
  v49 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView;
  v50 = [*&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView] trailingAnchor];
  v51 = [v48 constraintEqualToAnchor_];

  *(v39 + 48) = v51;
  v52 = [*&v0[v37] topAnchor];
  v53 = [*&v0[v40] bottomAnchor];
  v54 = [v52 constraintLessThanOrEqualToAnchor:v53 constant:8.0];

  *(v39 + 56) = v54;
  v55 = [*&v0[v37] bottomAnchor];
  v56 = [v0 safeAreaLayoutGuide];
  v57 = [v56 bottomAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:-40.0];
  *(v39 + 64) = v58;
  v59 = [*&v0[v37] centerXAnchor];
  v60 = [v0 centerXAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v39 + 72) = v61;
  v62 = [*&v0[v37] leadingAnchor];
  v63 = [*&v0[v49] leadingAnchor];
  v64 = [v62 constraintGreaterThanOrEqualToAnchor_];

  *(v39 + 80) = v64;
  v65 = [*&v0[v37] trailingAnchor];
  v66 = [*&v0[v49] trailingAnchor];
  v67 = [v65 constraintLessThanOrEqualToAnchor_];

  *(v39 + 88) = v67;
  v68 = [*&v0[v74] centerXAnchor];
  v69 = [*&v0[v37] centerXAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v39 + 96) = v70;
  v71 = [*&v0[v74] centerYAnchor];
  v72 = [*&v0[v37] centerYAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v39 + 104) = v73;
  v75 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints_];
}

id InterstitialContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InterstitialContentView.childViewHeightEqualToWidthConstraint(traitCollection:)(void *a1)
{
  v2 = [a1 verticalSizeClass];
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_scrollViewContainerView);
  [v3 frame];
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 0.0;
  v10.size.height = 0.0;
  if (CGRectEqualToRect(v9, v10))
  {
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
  }

  if (v2 == 1)
  {
    v4 = 1.3;
  }

  else
  {
    v4 = 0.6;
  }

  v5 = [*(v1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView) heightAnchor];
  v6 = [v3 heightAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 multiplier:v4];

  return v7;
}

Swift::Void __swiftcall InterstitialContentView.resetHeightEqualWidthConstraint(traitCollection:)(UITraitCollection traitCollection)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewWidthEqualHeightConstraint;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = InterstitialContentView.childViewHeightEqualToWidthConstraint(traitCollection:)(traitCollection.super.isa);
  v6 = *&v1[v3];
  *&v1[v3] = v5;
  v7 = v5;

  [v7 setActive_];
  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];
}

Swift::Void __swiftcall InterstitialContentView.addChild(view:)(UIView *view)
{
  [(UIView *)view setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView) addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
}

Swift::Void __swiftcall InterstitialContentView.centerVertically()()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x2C0))(1);
  v2 = *((*v1 & *v0) + 0x2D8);

  v2();
}

Swift::Void __swiftcall InterstitialContentView.alignToTop()()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x2E0))();
  v2 = *((*v1 & *v0) + 0x2C0);

  v2(0);
}

Swift::Void __swiftcall InterstitialContentView.resetChildViewTopConstraint(relation:)(NSLayoutRelation relation)
{
  v3 = *&v1[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewTopConstraint];
  if (!v3 || [v3 relation] != relation)
  {
    closure #1 in InterstitialContentView.resetChildViewTopConstraint(relation:)(v1, relation);
    [v1 setNeedsLayout];

    [v1 layoutIfNeeded];
  }
}

void closure #1 in InterstitialContentView.resetChildViewTopConstraint(relation:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewTopConstraint;
  v5 = *(a1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewTopConstraint);
  if (v5)
  {
    [v5 setActive_];
  }

  v6 = *(a1 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView);
  v7 = InterstitialContentView.labelsView.getter();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 constraintWithItem:v9 attribute:3 relatedBy:a2 toItem:v7 attribute:4 multiplier:1.0 constant:28.0];

  [v10 setActive_];
  v11 = *(a1 + v4);
  *(a1 + v4) = v10;
}

Swift::Void __swiftcall InterstitialContentView.activateWidthEqualHeightConstraint()()
{
  v1 = [v0 traitCollection];
  v2 = InterstitialContentView.childViewHeightEqualToWidthConstraint(traitCollection:)(v1);

  v3 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewWidthEqualHeightConstraint;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    *&v0[v3] = v2;
    v5 = v2;
    v4 = v2;
  }

  [v4 setActive_];
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  swift_endAccess();
}

Swift::Void __swiftcall InterstitialContentView.activateCenterYConstraint()()
{
  v1 = [*&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView] centerYAnchor];
  v2 = [v0 centerYAnchor];
  v3 = [v1 constraintEqualToAnchor_];

  LODWORD(v4) = 1144750080;
  [v3 setPriority_];
  v5 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewCenterYConstraint;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (!v6)
  {
    *&v0[v5] = v3;
    v7 = v3;
    v6 = v3;
  }

  [v6 setActive_];
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  swift_endAccess();
}

Swift::Void __swiftcall InterstitialContentView.activateStretchToBottomConstraint()()
{
  v1 = [*&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView] bottomAnchor];
  v2 = [*&v0[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_scrollViewContainerView] bottomAnchor];
  v3 = [v1 constraintEqualToAnchor_];

  v4 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewStretchToTheBottomConstraint;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (!v5)
  {
    *&v0[v4] = v3;
    v6 = v3;
    v5 = v3;
  }

  [v5 setActive_];
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  swift_endAccess();
}

void InterstitialContentView.deactivateWidthEqualHeightConstraint()(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
    if ([v4 isActive])
    {
      [v4 setActive_];
      [v1 setNeedsLayout];
      [v1 layoutIfNeeded];
    }
  }
}

Swift::Void __swiftcall InterstitialContentView.hideEmptySelectionLabel(_:)(Swift::Bool a1)
{
  v2 = InterstitialContentView.emptySelectionLabel.getter();
  [v2 setHidden_];
}

Swift::Void __swiftcall InterstitialContentView.hideAssetTypesLabel(_:)(Swift::Bool a1)
{
  v2 = InterstitialContentView.suggestionAssetTypesLabel.getter();
  [v2 setHidden_];
}

Swift::Void __swiftcall InterstitialContentView.enableAddButton(_:)(Swift::Bool a1)
{
  v2 = InterstitialContentView.addButton.getter();
  [v2 setEnabled_];
}

Swift::Void __swiftcall InterstitialContentView.setAssetTypesString(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v3 = InterstitialContentView.suggestionAssetTypesLabel.getter();
  v4 = object;
  v5 = v3;
  if (v4)
  {
    v6 = MEMORY[0x21CE91FC0](countAndFlagsBits);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setText_];
}

id InterstitialContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InterstitialContentView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for InterstitialContentView()
{
  result = type metadata singleton initialization cache for InterstitialContentView;
  if (!type metadata singleton initialization cache for InterstitialContentView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id specialized closure #1 in InterstitialContentView.suggestionDateLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  return v0;
}

id specialized closure #1 in InterstitialContentView.suggestionAssetTypesLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v3 = [objc_opt_self() secondaryLabelColor];
  v4 = [v3 colorWithAlphaComponent_];

  [v0 setTextColor_];
  return v0;
}

id specialized closure #1 in InterstitialContentView.emptySelectionLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  type metadata accessor for InterstitialContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v13._object = 0x8000000216588E30;
  v4._object = 0x8000000216588E00;
  v13._countAndFlagsBits = 0xD000000000000049;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v7 = MEMORY[0x21CE91FC0](v6._countAndFlagsBits, v6._object);

  [v0 setText_];

  v8 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = [v9 colorWithAlphaComponent_];

  [v0 setTextColor_];
  [v0 setHidden_];

  LODWORD(v11) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v11];
  return v0;
}

id specialized Button.init(title:backgroundColor:)(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v33 = a1;
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v31 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Button();
  v35.receiver = v3;
  v35.super_class = v18;
  v30 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  static UIButton.Configuration.filled()();
  v19 = _UISolariumEnabled();
  v20 = MEMORY[0x277D74FD8];
  if (!v19)
  {
    v20 = MEMORY[0x277D74FC8];
  }

  (*(v11 + 104))(v13, *v20, v10);
  UIButton.Configuration.cornerStyle.setter();
  (*(v7 + 104))(v9, *MEMORY[0x277D75020], v31);
  UIButton.Configuration.buttonSize.setter();
  UIButton.Configuration.contentInsets.setter();
  v21 = v32;
  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v15 + 16))(v6, v17, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v22 = v30;
  UIButton.configuration.setter();
  [v22 setRole_];
  v24 = v33;
  v23 = v34;
  v25 = MEMORY[0x21CE91FC0](v33, v34);
  [v22 setTitle:v25 forState:0];

  v26 = v22;
  v27 = MEMORY[0x21CE91FC0](v24, v23);

  [v26 setAccessibilityLabel_];

  [v26 setMaximumContentSizeCategory_];
  (*(v15 + 8))(v17, v14);
  return v26;
}

void specialized InterstitialContentView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addToEntryButtonAction);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableSelection);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableBackButton);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionTitleView) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionDateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionAssetTypesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView) = 0;
  v4 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_scrollViewContainerView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___emptySelectionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewWidthEqualHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewCenterYConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewStretchToTheBottomConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata completion function for InterstitialContentView()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t MutablePosterViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutablePosterViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

void *MutablePosterViewModel.posterImage.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t MutablePosterViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = Image.uiImage.getter();

  if (!v4)
  {
    return 0;
  }

  return 1;
}

id MutablePosterViewModel.__allocating_init(intendedViewport:supportedStyles:spotlightIdentifier:bundleID:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:spotlightIdentifier:bundleID:dateInterval:)(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

id static MutablePosterViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutablePosterViewModel.empty;

  return v1;
}

uint64_t MutablePosterViewModel.spotlightIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier);

  return v1;
}

uint64_t MutablePosterViewModel.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID);

  return v1;
}

uint64_t MutablePosterViewModel.isHost.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MutablePosterViewModel.isHost.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MutablePosterViewModel.locationDisplayName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MutablePosterViewModel.locationDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id MutablePosterViewModel.init(intendedViewport:supportedStyles:spotlightIdentifier:bundleID:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:spotlightIdentifier:bundleID:dateInterval:)(a1, a2, a3, a4, a5, a6, a7);

  return v8;
}

id MutablePosterViewModel.__allocating_init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(a1, a2, a3, a4, a5, a6);

  return v14;
}

id MutablePosterViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(a1, a2, a3, a4, a5, a6);

  return v8;
}

id MutablePosterViewModel.__allocating_init(intendedViewport:supportedStyles:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:)(a1, a2);

  return v6;
}

id MutablePosterViewModel.init(intendedViewport:supportedStyles:)(void *a1, uint64_t a2)
{
  v3 = specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:)(a1, a2);

  return v3;
}

uint64_t MutablePosterViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutablePosterViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutablePosterViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v3 = type metadata accessor for EntityData();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(&v1[v6], 1, 1, v7);
  v8(&v1[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate], 1, 1, v7);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutablePosterViewModel.init(from:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v2 = type metadata accessor for EntityData();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost) = 2;
  v8 = (v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
  *v8 = 0;
  v8[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutablePosterViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v3 = type metadata accessor for EntityData();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(&v1[v6], 1, 1, v7);
  v8(&v1[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate], 1, 1, v7);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutablePosterViewModel.render()()
{
  v1[23] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v1[24] = swift_task_alloc();
  v2 = type metadata accessor for EntityData();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10EntityDataVSgMd);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](MutablePosterViewModel.render(), 0, 0);
}

{
  v27 = v0;
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  v0[30] = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  if (!*(v1 + v2) && (v14 = v0[23], *(v14 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier + 8)) && (v15 = (v14 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID), (v16 = v15[1]) != 0))
  {
    v17 = *v15;
    v18 = swift_task_alloc();
    v0[31] = v18;
    *v18 = v0;
    v18[1] = MutablePosterViewModel.render();
    v19 = v0[29];

    return MutablePosterViewModel.getEntityData(bundleID:)(v19, v17, v16);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v3 = v0[23];
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static CommonLogger.viewModel);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = 7104878;
      v9 = v0[23];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315394;
      if (*(v9 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier + 8))
      {
        v12 = *(v9 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier);
        v13 = *(v9 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier + 8);
      }

      else
      {
        v13 = 0xE300000000000000;
        v12 = 7104878;
      }

      v21 = v0[23];

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

      *(v10 + 4) = v22;
      *(v10 + 12) = 2080;
      if (*(v21 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID + 8))
      {
        v8 = *(v21 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID);
        v23 = *(v21 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID + 8);
      }

      else
      {
        v23 = 0xE300000000000000;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v23, &v26);

      *(v10 + 14) = v24;
      _os_log_impl(&dword_21607C000, v6, v7, "poster failed render - spotlightIdentifier: %s, bundleID: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v11, -1, -1);
      MEMORY[0x21CE94770](v10, -1, -1);
    }

    v25 = v0[1];

    return v25();
  }
}

{

  return MEMORY[0x2822009F8](MutablePosterViewModel.render(), 0, 0);
}

{
  v34 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  swift_beginAccess();
  outlined assign with take of AttributedString?(v2, v5 + v6, &_s9MomentsUI10EntityDataVSgMd);
  swift_endAccess();
  outlined init with copy of DateInterval?(v5 + v6, v1, &_s9MomentsUI10EntityDataVSgMd);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    outlined destroy of UTType?(v0[28], &_s9MomentsUI10EntityDataVSgMd);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static CommonLogger.viewModel);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21607C000, v8, v9, "[PosterViewModel] nil entityData", v10, 2u);
      MEMORY[0x21CE94770](v10, -1, -1);
    }
  }

  else
  {
    v11 = v0[30];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[25];
    v15 = v0[23];
    outlined init with take of EntityData(v0[28], v12);
    v16 = v14[6];
    v17 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
    swift_beginAccess();
    outlined assign with copy of DateInterval?(v12 + v16, v15 + v17, &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v18 = v14[7];
    v19 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate;
    swift_beginAccess();
    outlined assign with copy of DateInterval?(v12 + v18, v15 + v19, &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v20 = *(v12 + v14[8]) & 1;
    v21 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost;
    swift_beginAccess();
    *(v15 + v21) = v20;
    v22 = (v12 + v14[9]);
    v24 = *v22;
    v23 = v22[1];
    v25 = (v15 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
    swift_beginAccess();
    *v25 = v24;
    v25[1] = v23;

    type metadata accessor for Image();
    v26 = *v12;
    v33 = *(v15 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    v27 = v26;
    v28 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v26, 0, &v33);
    v29 = *(v15 + v11);
    *(v15 + v11) = v28;

    outlined init with copy of DateInterval?(v12 + v14[5], v13, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of EntityData(v12);
    v30 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v13, v15 + v30, &_s10Foundation16AttributedStringVSgMd);
    swift_endAccess();
  }

  v31 = v0[1];

  return v31();
}

uint64_t MutablePosterViewModel.getEntityData(bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](MutablePosterViewModel.getEntityData(bundleID:), 0, 0);
}

uint64_t MutablePosterViewModel.getEntityData(bundleID:)()
{
  v1 = (v0[5] + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier);
  v2 = v1[1];
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = *v1;
    v6 = swift_task_alloc();
    v0[6] = v6;
    v6[2] = v5;
    v6[3] = v2;
    v6[4] = v4;
    v6[5] = v3;
    v7 = swift_task_alloc();
    v0[7] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10EntityDataVSgMd);
    *v7 = v0;
    v7[1] = MutablePosterViewModel.getEntityData(bundleID:);
    v9 = v0[2];

    return MEMORY[0x2822007B8](v9, 0, 0, 0xD000000000000018, 0x8000000216588E80, partial apply for closure #1 in MutablePosterViewModel.getEntityData(bundleID:), v6, v8);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.viewModel);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21607C000, v11, v12, "[PosterViewModel] nil spotlightIdentifier", v13, 2u);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    v14 = v0[2];

    v15 = type metadata accessor for EntityData();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = v0[1];

    return v16();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Bool __swiftcall MutablePosterViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

void *MutablePosterViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for PosterView());
  return PosterView.init(viewModel:style:)(v1, &v3);
}

uint64_t MutablePosterViewModel.__ivar_destroyer()
{

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData, &_s9MomentsUI10EntityDataVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate, &_s10Foundation4DateVSgMd);

  return swift_weakDestroy();
}

id MutablePosterViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for PosterViewModel.locationDisplayName.getter in conformance MutablePosterViewModel()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t protocol witness for PosterViewModel.attributedTitle.getter in conformance MutablePosterViewModel@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v3 + v6, a3, a2);
}

uint64_t protocol witness for PosterViewModel.isHost.getter in conformance MutablePosterViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t protocol witness for PosterViewModel.spotlightIdentifier.getter in conformance MutablePosterViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier);

  return v1;
}

uint64_t closure #1 in MutablePosterViewModel.getEntityData(bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI10EntityDataVSgs5NeverOGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  (*(v13 + 16))(&v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = v22;
  v19[7] = a5;
  v19[8] = partial apply for closure #1 in closure #1 in MutablePosterViewModel.getEntityData(bundleID:);
  v19[9] = v17;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:), v19);
}

uint64_t closure #1 in closure #1 in MutablePosterViewModel.getEntityData(bundleID:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10EntityDataVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of DateInterval?(a1, &v5 - v3, &_s9MomentsUI10EntityDataVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI10EntityDataVSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t specialized MutablePosterViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v24[3] = a3;
  v24[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v9 = type metadata accessor for EntityData();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&a2[v12], 1, 1, v13);
  v14(&a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate], 1, 1, v13);
  a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost] = 2;
  v15 = &a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName];
  *v15 = 0;
  v15[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBPosterModel();
  if (swift_dynamicCast())
  {
    v16 = *(v22 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier + 8);
    v17 = &a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier];
    *v17 = *(v22 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier);
    v17[1] = v16;
    swift_weakAssign();
    v18 = *(v22 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID + 8);
    v19 = &a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID];
    *v19 = *(v22 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID);
    v19[1] = v18;

    v20 = specialized AssetViewModel.init(dbObject:)(v22, a2);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutablePosterViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutablePosterViewModel.init(dbObject:)(v9, v11, a3, a4);
}

id specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:spotlightIdentifier:bundleID:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v44 = a6;
  v45 = a7;
  v43 = a5;
  v46 = a1;
  v47 = a2;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v17 = type metadata accessor for EntityData();
  (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v19 = type metadata accessor for AttributedString();
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);
  v22(&v7[v20], 1, 1, v21);
  v22(&v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate], 1, 1, v21);
  v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost] = 2;
  v23 = &v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName];
  *v23 = 0;
  v23[1] = 0;
  swift_weakInit();
  v24 = &v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier];
  *v24 = a3;
  v24[1] = a4;
  v25 = &v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID];
  v26 = v44;
  *v25 = v43;
  v25[1] = v26;
  swift_weakAssign();
  v27 = type metadata accessor for DateInterval();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v15, a7, v27);
  v29 = *(v28 + 56);
  v29(v15, 0, 1, v27);
  type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(ObjectType, &v50);
  LODWORD(v44) = v50;
  v30 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v31 = &v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v29(&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v27);
  UUID.init()();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v34 = v46;
  v33 = v47;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v46;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v33;
  swift_beginAccess();
  v35 = *&v8[v30];
  *&v8[v30] = 0;
  v36 = v34;

  swift_beginAccess();
  *v31 = 0;
  v31[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v15, &v8[v32], &_s10Foundation12DateIntervalVSgMd);
  v37 = swift_endAccess();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v44;
  (*(ObjectType + 328))(v49, v37);
  LOBYTE(v31) = v49[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v38 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v38 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + 112) = v31;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v38;
  v39 = type metadata accessor for AssetViewModel();
  v48.receiver = v8;
  v48.super_class = v39;
  v40 = objc_msgSendSuper2(&v48, sel_init);
  (*(v28 + 8))(v45, v27);
  outlined destroy of UTType?(v15, &_s10Foundation12DateIntervalVSgMd);
  return v40;
}

id specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v48 = a6;
  v49 = a1;
  v51 = a4;
  v52 = a5;
  v50 = a2;
  ObjectType = swift_getObjectType();
  v46 = ObjectType;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v15 = type metadata accessor for EntityData();
  (*(*(v15 - 8) + 56))(&v6[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v17 = type metadata accessor for AttributedString();
  (*(*(v17 - 8) + 56))(&v6[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(&v7[v18], 1, 1, v19);
  v20(&v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate], 1, 1, v19);
  v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost] = 2;
  v21 = &v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName];
  *v21 = 0;
  v21[1] = 0;
  swift_weakInit();
  v22 = &v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v7[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID];
  *v23 = 0;
  v23[1] = 0;
  swift_weakAssign();
  v24 = type metadata accessor for DateInterval();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v47 = v13;
  v26(v13, a6, v24);
  v27 = *(v25 + 56);
  v27(v13, 0, 1, v24);
  type metadata accessor for DBAssetModel();
  v28 = a3;
  static DBAssetModel.subscript.getter(ObjectType, v55);
  v45 = v55[0];
  v29 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v30 = &v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v27(&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v24);
  UUID.init()();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v33 = v49;
  v32 = v50;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v49;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v32;
  swift_beginAccess();
  v34 = *&v7[v29];
  *&v7[v29] = a3;
  v35 = v28;
  v36 = v33;

  swift_beginAccess();
  v37 = v52;
  *v30 = v51;
  v30[1] = v37;

  swift_beginAccess();
  v38 = v47;
  outlined assign with copy of DateInterval?(v47, &v7[v31], &_s10Foundation12DateIntervalVSgMd);
  v39 = swift_endAccess();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v45;
  (*(v46 + 328))(v54, v39);
  LOBYTE(v34) = v54[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v40 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v40 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v40 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v40 + 112) = v34;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v40;
  v41 = type metadata accessor for AssetViewModel();
  v53.receiver = v7;
  v53.super_class = v41;
  v42 = objc_msgSendSuper2(&v53, sel_init);

  (*(v25 + 8))(v48, v24);
  outlined destroy of UTType?(v38, &_s10Foundation12DateIntervalVSgMd);
  return v42;
}

id specialized MutablePosterViewModel.init(intendedViewport:supportedStyles:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v9 = type metadata accessor for EntityData();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v3[v12], 1, 1, v13);
  v14(&v3[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate], 1, 1, v13);
  v3[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost] = 2;
  v15 = &v3[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName];
  *v15 = 0;
  v15[1] = 0;
  swift_weakInit();
  v16 = &v3[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier];
  *v16 = 0;
  v16[1] = 0;
  swift_weakAssign();
  v17 = &v3[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID];
  v18 = type metadata accessor for DateInterval();
  *v17 = 0;
  v17[1] = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v7, 1, 1, v18);
  type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(ObjectType, &v37);
  v20 = v37;
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v22 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v19(&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v18);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v25 = v33;
  v24 = v34;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v33;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v24;
  swift_beginAccess();
  v26 = *&v3[v21];
  *&v3[v21] = 0;
  v27 = v25;

  swift_beginAccess();
  *v22 = 0;
  v22[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v7, &v3[v23], &_s10Foundation12DateIntervalVSgMd);
  v28 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v20;
  (*(ObjectType + 328))(v36, v28);
  LOBYTE(v23) = v36[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v29 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 112) = v23;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v29;
  v30 = type metadata accessor for AssetViewModel();
  v35.receiver = v3;
  v35.super_class = v30;
  v31 = objc_msgSendSuper2(&v35, sel_init);
  outlined destroy of UTType?(v7, &_s10Foundation12DateIntervalVSgMd);
  return v31;
}

void specialized MutablePosterViewModel.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v2 = type metadata accessor for EntityData();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost) = 2;
  v8 = (v0 + OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName);
  *v8 = 0;
  v8[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined init with take of EntityData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MutablePosterViewModel()
{
  result = type metadata singleton initialization cache for MutablePosterViewModel;
  if (!type metadata singleton initialization cache for MutablePosterViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MutablePosterViewModel()
{
  type metadata accessor for EntityData?(319, &lazy cache variable for type metadata for EntityData?, type metadata accessor for EntityData);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntityData?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x277CC8C40]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for EntityData?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for EntityData?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in MutablePosterViewModel.getEntityData(bundleID:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI10EntityDataVSgs5NeverOGMd);

  return closure #1 in closure #1 in MutablePosterViewModel.getEntityData(bundleID:)(a1);
}

id SuggestionJournalButton.__allocating_init(frame:isSingleCell:)(char a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped];
  *v12 = 0;
  v12[1] = 0;
  v11[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_singleCellAsset] = a1;
  v15.receiver = v11;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
  SuggestionJournalButton.sharedInit()();

  return v13;
}

uint64_t key path getter for SuggestionJournalButton.buttonTapped : SuggestionJournalButton@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for SuggestionJournalButton.buttonTapped : SuggestionJournalButton(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  _sSuSgIegd_SgWOy_0(v3);
  return v7(v6, v5);
}

uint64_t SuggestionJournalButton.buttonTapped.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped);
  swift_beginAccess();
  v2 = *v1;
  _sSuSgIegd_SgWOy_0(*v1);
  return v2;
}

uint64_t SuggestionJournalButton.buttonTapped.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

id SuggestionJournalButton.init(frame:isSingleCell:)(char a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped];
  *v10 = 0;
  v10[1] = 0;
  v5[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_singleCellAsset] = a1;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for SuggestionJournalButton();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
  SuggestionJournalButton.sharedInit()();

  return v11;
}

id SuggestionJournalButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SuggestionJournalButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_singleCellAsset] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SuggestionJournalButton();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    SuggestionJournalButton.sharedInit()();
  }

  return v5;
}

void SuggestionJournalButton.sharedInit()()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setClipsToBounds_];
  SuggestionJournalButton.setupConfiguration()();
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_singleCellAsset))
  {
    v2 = MEMORY[0x277D76828];
  }

  else
  {
    v2 = MEMORY[0x277D76808];
  }

  [v0 setMaximumContentSizeCategory_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v12._object = 0x8000000216588FD0;
  v5._countAndFlagsBits = 0x206C616E72756F4ALL;
  v5._object = 0xEB00000000776F4ELL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD00000000000002ELL;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v12);

  v8 = MEMORY[0x21CE91FC0](v7._countAndFlagsBits, v7._object);

  [v1 setAccessibilityLabel_];

  type metadata accessor for UIAction();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v10 forControlEvents:{64, 0, 0, 0, partial apply for closure #1 in SuggestionJournalButton.sharedInit(), v9}];
}

void closure #1 in SuggestionJournalButton.sharedInit()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x60))();
    if (v2)
    {
      v3 = v2;
      v2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
    }
  }
}

uint64_t SuggestionJournalButton.setupConfiguration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration.Size();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    MEMORY[0x21CE92D80]();
    v15 = MEMORY[0x277D75020];
  }

  else
  {
    static UIButton.Configuration.filled()();
    v15 = MEMORY[0x277D75030];
  }

  (*(v8 + 104))(v10, *v15, v7);
  UIButton.Configuration.buttonSize.setter();
  (*(v4 + 104))(v6, *MEMORY[0x277D74FD8], v3);
  UIButton.Configuration.cornerStyle.setter();
  v16 = objc_opt_self();
  v17 = [v16 tertiarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v18 = [v16 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withWeight(_:)(*MEMORY[0x277D74420]).super.isa;

  v21 = [objc_opt_self() configurationWithFont_];
  v22 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216588FB0);
  v23 = [objc_opt_self() systemImageNamed:v22 withConfiguration:v21];

  UIButton.Configuration.image.setter();
  (*(v12 + 16))(v2, v14, v11);
  (*(v12 + 56))(v2, 0, 1, v11);
  UIButton.configuration.setter();
  return (*(v12 + 8))(v14, v11);
}

id SuggestionJournalButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SuggestionJournalButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionJournalButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CloudLog.LogBegin(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  if (a1)
  {
    (*(a6 + 16))(a5, a6);

    v18 = Logger.logObject.getter();
    v19 = a7();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v11;
      v22 = v21;
      v52 = v21;
      *v20 = 136446722;
      (*(a6 + 8))(a5, a6);
      v23 = StaticString.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v52);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      v26 = StaticString.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v52);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2080;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pSgMd);
      v30 = MEMORY[0x21CE922B0](a1, v29);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v52);

      *(v20 + 24) = v32;
      _os_log_impl(&dword_21607C000, v18, v19, "%{public}s.%{public}s(%s) BEGIN", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v22, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);

      return (*(v12 + 8))(v17, v48);
    }

    v45 = *(v12 + 8);
    v46 = v17;
  }

  else
  {
    (*(a6 + 16))(a5, a6);
    v34 = Logger.logObject.getter();
    v35 = a7();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v11;
      v38 = v37;
      v52 = v37;
      *v36 = 136446466;
      (*(a6 + 8))(a5, a6);
      v39 = StaticString.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v52);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2082;
      v42 = StaticString.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v52);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_21607C000, v34, v35, "%{public}s.%{public}s BEGIN", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v38, -1, -1);
      MEMORY[0x21CE94770](v36, -1, -1);

      return (*(v12 + 8))(v15, v48);
    }

    v45 = *(v12 + 8);
    v46 = v15;
  }

  return v45(v46, v11);
}

uint64_t static CloudLog.LogEndInfo(_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v27 = a1;
  v28 = a2;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 16))(a4, a5);
  v14 = Logger.logObject.getter();
  v15 = a6();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26[1] = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136446466;
    (*(a5 + 8))(a4, a5);
    v19 = StaticString.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v29);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = StaticString.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_21607C000, v14, v15, "%{public}s.%{public}s END", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v18, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  return (*(v11 + 8))(v13, v10);
}

Swift::String __swiftcall Date.getFullDateNumber()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for fullDateFormatter, &static MomentDateFormatter.fullDateFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getDayName()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for dayNameFormatter, &static MomentDateFormatter.dayNameFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getRelativeDate()()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  if (Calendar.isDateInToday(_:)() & 1) != 0 || (Calendar.isDateInYesterday(_:)())
  {
    if (one-time initialization token for relativeDateFormatter != -1)
    {
      swift_once();
    }

    v11 = static MomentDateFormatter.relativeDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    static Date.now.getter();
    v13 = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v14 = [v11 localizedStringForDate:isa relativeToDate:v13];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v38 = v8;
    v39 = v1;
    v37 = v4;
    if (one-time initialization token for dayNameFormatter != -1)
    {
      swift_once();
    }

    v18 = static MomentDateFormatter.dayNameFormatter;
    v19 = Date._bridgeToObjectiveC()().super.isa;
    v20 = [v18 stringFromDate_];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v21;

    Date.timeIntervalSinceNow.getter();
    if (fabs(v22) >= 604800.0)
    {

      if (one-time initialization token for fullDateFormatter != -1)
      {
        swift_once();
      }

      v26 = static MomentDateFormatter.fullDateFormatter;
      v27 = Date._bridgeToObjectiveC()().super.isa;
      v28 = [v26 stringFromDate_];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v29;
    }

    else
    {
      v34 = *MEMORY[0x277CC9940];
      v33 = *(v39 + 104);
      v33(v3);
      v23 = Calendar.component(_:from:)();
      v35 = *(v39 + 8);
      v36 = v23;
      v39 += 8;
      v35(v3, v0);
      (v33)(v3, v34, v0);
      static Date.now.getter();
      v24 = Calendar.component(_:from:)();
      (*(v5 + 8))(v7, v37);
      v35(v3, v0);
      if (v36 < v24)
      {

        v15 = Date.dayOfLastWeekString(calendar:)();
        v17 = v25;
      }
    }

    v8 = v38;
  }

  (*(v40 + 8))(v10, v8);
  v30 = v15;
  v31 = v17;
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

Swift::String __swiftcall Date.getMonthDateNumber()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for monthDateFormatter, &static MomentDateFormatter.monthDateFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Date.daysInMonthString(calendar:)()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658CA50;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CC9998], v4);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v8 = DateComponents.month.getter();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  result = 0;
  if ((v10 & 1) == 0)
  {
    result = 0;
    if (v8 > 6)
    {
      if (v8 > 9)
      {
        if (v8 != 10)
        {
          if (v8 == 11)
          {
            v22 = 0x8000000216589020;
            type metadata accessor for MomentDateFormatter();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v24 = [objc_opt_self() bundleForClass_];
          }

          else
          {
            if (v8 != 12)
            {
              return result;
            }

            v22 = 0x8000000216589000;
            type metadata accessor for MomentDateFormatter();
            v23 = swift_getObjCClassFromMetadata();
            v24 = [objc_opt_self() bundleForClass_];
          }

          goto LABEL_28;
        }

        type metadata accessor for MomentDateFormatter();
        v28 = swift_getObjCClassFromMetadata();
        v13 = [objc_opt_self() bundleForClass_];
        v14 = 0xEF7265626F74634FLL;
      }

      else if (v8 == 7)
      {
        type metadata accessor for MomentDateFormatter();
        v26 = swift_getObjCClassFromMetadata();
        v13 = [objc_opt_self() bundleForClass_];
        v14 = 0xEC000000796C754ALL;
      }

      else
      {
        if (v8 != 8)
        {
          type metadata accessor for MomentDateFormatter();
          v15 = swift_getObjCClassFromMetadata();
          v13 = [objc_opt_self() bundleForClass_];
          v33 = 0x8000000216589040;
          v16 = 0xD000000000000011;
          v17 = 0xD000000000000011;
          v14 = 0x8000000216589040;
          v18.super.isa = v13;
          v19 = 0;
          v20 = 0xE000000000000000;
LABEL_29:
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*(&v14 - 1), 0, v18, *&v19, *&v17)._countAndFlagsBits;

          return countAndFlagsBits;
        }

        type metadata accessor for MomentDateFormatter();
        v30 = swift_getObjCClassFromMetadata();
        v13 = [objc_opt_self() bundleForClass_];
        v14 = 0xEE00747375677541;
      }
    }

    else if (v8 > 3)
    {
      if (v8 == 4)
      {
        type metadata accessor for MomentDateFormatter();
        v27 = swift_getObjCClassFromMetadata();
        v13 = [objc_opt_self() bundleForClass_];
        v14 = 0xED00006C69727041;
      }

      else
      {
        type metadata accessor for MomentDateFormatter();
        v21 = swift_getObjCClassFromMetadata();
        v13 = [objc_opt_self() bundleForClass_];
        if (v8 == 5)
        {
          v14 = 0xEB0000000079614DLL;
        }

        else
        {
          v14 = 0xEC000000656E754ALL;
        }
      }
    }

    else
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          if (v8 != 3)
          {
            return result;
          }

          type metadata accessor for MomentDateFormatter();
          v12 = swift_getObjCClassFromMetadata();
          v13 = [objc_opt_self() bundleForClass_];
          v14 = 0xED0000686372614DLL;
          goto LABEL_26;
        }

        v22 = 0x8000000216589060;
        type metadata accessor for MomentDateFormatter();
        v29 = swift_getObjCClassFromMetadata();
        v24 = [objc_opt_self() bundleForClass_];
LABEL_28:
        v13 = v24;
        v33 = v22;
        v16 = 0xD000000000000010;
        v14 = v22;
        v18.super.isa = v13;
        v19 = 0;
        v20 = 0xE000000000000000;
        v17 = 0xD000000000000010;
        goto LABEL_29;
      }

      type metadata accessor for MomentDateFormatter();
      v25 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = 0xEF797261756E614ALL;
    }

LABEL_26:
    v33 = v14;
    v16 = 0x206E692073796144;
    v18.super.isa = v13;
    v19 = 0;
    v20 = 0xE000000000000000;
    v17 = 0x206E692073796144;
    goto LABEL_29;
  }

  return result;
}

Swift::String __swiftcall Date.getDayNameInEnglish()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for dayNameEnglishFormatter, &static MomentDateFormatter.dayNameEnglishFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getMonthName()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for monthNameFormatter, &static MomentDateFormatter.monthNameFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getMonthNameInEnglish()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for monthNameEnglishFormatter, &static MomentDateFormatter.monthNameEnglishFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getMonthDayNumber()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for monthDayNumberFormatter, &static MomentDateFormatter.monthDayNumberFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getShortenedFullDateNumber()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for shortenedFullDateFormatter, &static MomentDateFormatter.shortenedFullDateFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.getFullDateTimeNumber()()
{
  v0 = Date.getFullDateNumber()(&one-time initialization token for fullDateTimeFormatter, &static MomentDateFormatter.fullDateTimeFormatter);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Date.getFullDateNumber()(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v2 = *a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v2 stringFromDate_];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t Date.dayOfLastWeekString(calendar:)()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658CA50;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CC99B8], v4);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v8 = DateComponents.weekday.getter();
  LOBYTE(v7) = v9;
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    goto LABEL_2;
  }

  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1:
        type metadata accessor for MomentDateFormatter();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        v15 = 0xEB00000000796164;
        v26 = 0xEB00000000796164;
        v16 = 0x6E7553207473614CLL;
        goto LABEL_20;
      case 2:
        type metadata accessor for MomentDateFormatter();
        v21 = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        v15 = 0xEB00000000796164;
        v26 = 0xEB00000000796164;
        v16 = 0x6E6F4D207473614CLL;
        goto LABEL_20;
      case 3:
        type metadata accessor for MomentDateFormatter();
        v17 = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        v15 = 0xEC00000079616473;
        v26 = 0xEC00000079616473;
        v16 = 0x657554207473614CLL;
LABEL_20:
        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        v23 = v16;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, 0, v12, v22, *(&v26 - 1))._countAndFlagsBits;
        goto LABEL_21;
    }
  }

  else
  {
    if (v8 <= 5)
    {
      type metadata accessor for MomentDateFormatter();
      v14 = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      if (v8 == 4)
      {
        v15 = 0xEE0079616473656ELL;
        v26 = 0xEE0079616473656ELL;
        v16 = 0x646557207473614CLL;
      }

      else
      {
        v15 = 0xED00007961647372;
        v26 = 0xED00007961647372;
        v16 = 0x756854207473614CLL;
      }

      goto LABEL_20;
    }

    if (v8 == 6)
    {
      type metadata accessor for MomentDateFormatter();
      v20 = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      v15 = 0xEB00000000796164;
      v26 = 0xEB00000000796164;
      v16 = 0x697246207473614CLL;
      goto LABEL_20;
    }

    if (v8 == 7)
    {
      type metadata accessor for MomentDateFormatter();
      v18 = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      v15 = 0xED00007961647275;
      v26 = 0xED00007961647275;
      v16 = 0x746153207473614CLL;
      goto LABEL_20;
    }
  }

LABEL_2:
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  v10 = static MomentDateFormatter.fullDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = [v10 stringFromDate_];

  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_21:
  v24 = countAndFlagsBits;

  return v24;
}

Swift::Bool __swiftcall Date.isLastMonth()()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v135 = v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v141 = v120 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = v120 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v130 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v134 = v120 - v11;
  MEMORY[0x28223BE20](v10);
  v138 = v120 - v12;
  v13 = type metadata accessor for DateComponents();
  v14 = *(v13 - 8);
  v156 = v13;
  v157 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v131 = v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v132 = v120 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v139 = v120 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v142 = v120 - v22;
  MEMORY[0x28223BE20](v21);
  v150 = v120 - v23;
  v155 = type metadata accessor for Date();
  v152 = *(v155 - 8);
  v24 = MEMORY[0x28223BE20](v155);
  v129 = v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v133 = v120 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v137 = v120 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v120 - v30;
  v32 = type metadata accessor for Calendar();
  v153 = *(v32 - 8);
  v154 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  Date.init()();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
  v36 = *(v1 + 72);
  v37 = *(v1 + 80);
  v38 = (v37 + 32) & ~v37;
  v147 = v35;
  v145 = v38 + 2 * v36;
  v39 = swift_allocObject();
  v144 = xmmword_21658CA60;
  *(v39 + 16) = xmmword_21658CA60;
  v146 = v38;
  v40 = v39 + v38;
  v41 = *MEMORY[0x277CC9998];
  v136 = v1;
  v43 = v1 + 104;
  v42 = *(v1 + 104);
  v149 = v41;
  v44 = v0;
  v42(v40);
  v45 = *MEMORY[0x277CC9988];
  v143 = v36;
  (v42)(v40 + v36, v45, v44);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v39);
  swift_setDeallocating();
  v46 = v31;
  v148 = v44;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = v150;
  v151 = v34;
  Calendar.dateComponents(_:from:)();

  v48 = DateComponents.month.getter();
  LOBYTE(v39) = v49;
  v50 = *(v157 + 8);
  v157 += 8;
  v50(v47, v156);
  if (v39)
  {
    (*(v152 + 8))(v46, v155);
    (*(v153 + 8))(v151, v154);
LABEL_5:
    v58 = 0;
    return v58 & 1;
  }

  v150 = v48;
  v126 = v37;
  v51 = swift_allocObject();
  *(v51 + 16) = v144;
  v52 = v51 + v146;
  v53 = v148;
  (v42)(v51 + v146, v149, v148);
  v125 = v45;
  v127 = v43;
  v128 = v42;
  (v42)(v52 + v143, v45, v53);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = v142;
  v55 = v151;
  Calendar.dateComponents(_:from:)();

  DateComponents.year.getter();
  LOBYTE(v52) = v56;
  v57 = v156;
  v50(v54, v156);
  if (v52)
  {
    (*(v152 + 8))(v46, v155);
    (*(v153 + 8))(v55, v154);
    goto LABEL_5;
  }

  v142 = v46;
  v60 = v50;
  v62 = v153;
  v61 = v154;
  v63 = *(v153 + 56);
  v124 = v153 + 56;
  v123 = v63;
  v63(v140, 1, 1, v154);
  v64 = type metadata accessor for TimeZone();
  v65 = *(v64 - 8);
  v66 = *(v65 + 56);
  v122 = v64;
  v121 = v66;
  v120[1] = v65 + 56;
  (v66)(v141, 1, 1);
  v67 = v139;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v68 = v138;
  Calendar.date(from:)();
  v150 = v60;
  (v60)(v67, v57);
  v69 = v152;
  v71 = v152 + 48;
  v70 = *(v152 + 48);
  v72 = v155;
  if (v70(v68, 1, v155) == 1)
  {
    (*(v69 + 8))(v142, v72);
    (*(v62 + 8))(v55, v61);
    v73 = v68;
LABEL_11:
    outlined destroy of Date?(v73);
    goto LABEL_5;
  }

  v74 = v71;
  v76 = (v69 + 32);
  v75 = *(v69 + 32);
  v77 = v69;
  v78 = v137;
  v120[0] = v75;
  v75(v137, v68, v72);
  v138 = v70;
  v79 = v135;
  v80 = v148;
  (v128)(v135, v149, v148);
  v81 = v134;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v82 = v155;
  (*(v136 + 8))(v79, v80);
  v136 = v74;
  if ((v138)(v81, 1, v82) == 1)
  {
    v83 = *(v77 + 8);
    v83(v78, v82);
    v83(v142, v82);
    (*(v153 + 8))(v55, v154);
    v73 = v81;
    goto LABEL_11;
  }

  v84 = v133;
  v135 = v76;
  (v120[0])(v133, v81, v82);
  v85 = swift_allocObject();
  *(v85 + 16) = v144;
  v86 = v82;
  v87 = v85 + v146;
  v88 = v128;
  (v128)(v85 + v146, v149, v80);
  v89 = v143;
  (v88)(v87 + v143, v125, v80);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v85);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v90 = v132;
  Calendar.dateComponents(_:from:)();

  v91 = DateComponents.month.getter();
  v93 = v92;
  v94 = v90;
  v95 = v150;
  (v150)(v94, v156);
  if (v93)
  {
    v96 = *(v152 + 8);
    v96(v84, v86);
    v96(v137, v86);
    v96(v142, v86);
    (*(v153 + 8))(v55, v154);
    goto LABEL_5;
  }

  v134 = v91;
  v97 = swift_allocObject();
  *(v97 + 16) = v144;
  v98 = v89;
  v99 = v95;
  v100 = v97 + v146;
  v101 = v128;
  (v128)(v97 + v146, v149, v80);
  (v101)(v100 + v98, v125, v80);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v97);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v102 = v131;
  Calendar.dateComponents(_:from:)();

  DateComponents.year.getter();
  LOBYTE(v97) = v103;
  v104 = v102;
  v105 = v156;
  v106 = v99;
  v99(v104, v156);
  if (v97)
  {
    v107 = *(v152 + 8);
    v108 = v155;
    v107(v133, v155);
    v107(v137, v108);
    v107(v142, v108);
    (*(v153 + 8))(v55, v154);
    goto LABEL_5;
  }

  v109 = v154;
  v123(v140, 1, 1, v154);
  v121(v141, 1, 1, v122);
  v110 = v139;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v111 = v130;
  Calendar.date(from:)();
  v106(v110, v105);
  v112 = v155;
  v113 = (v138)(v111, 1, v155);
  v114 = v153;
  if (v113 == 1)
  {
    v115 = *(v152 + 8);
    v115(v133, v112);
    v115(v137, v112);
    v115(v142, v112);
    (*(v114 + 8))(v55, v109);
    v73 = v111;
    goto LABEL_11;
  }

  v116 = v129;
  (v120[0])(v129, v111, v112);
  _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v117 = v112;
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v58 = 0;
    v118 = v137;
  }

  else
  {
    v118 = v137;
    v58 = static Date.< infix(_:_:)();
  }

  v119 = *(v152 + 8);
  v119(v116, v117);
  v119(v133, v117);
  v119(v118, v117);
  v119(v142, v117);
  (*(v114 + 8))(v55, v154);
  return v58 & 1;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4UUIDV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo22UNNotificationCategoryC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = __CocoaSet.count.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v44 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v41 = v4;
    while (1)
    {
      v13 = MEMORY[0x21CE93180](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        type metadata accessor for NSAttributedString(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v44;
            v4 = v41;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        v4 = v41;
        if (v12 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v42)
    {
      v28 = *(v6 + 40);
      v29 = *(v4 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v11 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        type metadata accessor for NSAttributedString(0, a4);
        while (1)
        {
          v37 = *(*(v6 + 48) + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *(v11 + 8 * (v32 >> 6));
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v33) = v35 | v34;
        *(*(v6 + 48) + 8 * v32) = v29;
        v39 = *(v6 + 16);
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v40;
      }

      if (++v27 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t _s10Foundation4DateVACSLAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void static DBAssetModel.subscript.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    goto LABEL_21;
  }

  v47 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI16ContactViewModel_pXpMd);
  v4 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v4)
  {
    goto LABEL_21;
  }

  v46 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI16ContactViewModel_pmMd);
  v5 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v5)
  {
    goto LABEL_21;
  }

  type metadata accessor for DBContactModel();
  if (swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  v46 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14DBContactModelCmMd);
  v6 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v6)
  {
    goto LABEL_21;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    if (a1)
    {
      goto LABEL_21;
    }
  }

  v47 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24MediaFirstPartyViewModel_pXpMd);
  v7 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_21;
  }

  v46 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24MediaFirstPartyViewModel_pmMd);
  v8 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v8)
  {
    goto LABEL_21;
  }

  type metadata accessor for DBMediaFirstPartyModel();
  if (swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  v46 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI22DBMediaFirstPartyModelCmMd);
  v9 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v9)
  {
    goto LABEL_21;
  }

  type metadata accessor for MediaFirstPartyView();
  if (swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  v46 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19MediaFirstPartyViewCmMd);
  v10 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v10)
  {
    goto LABEL_21;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    if (a1)
    {
      goto LABEL_21;
    }
  }

  v47 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24MediaThirdPartyViewModel_pXpMd);
  v11 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v11)
  {
    goto LABEL_21;
  }

  v46 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24MediaThirdPartyViewModel_pmMd);
  v12 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_21;
  }

  type metadata accessor for DBMediaThirdPartyModel();
  if (swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  v46 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI22DBMediaThirdPartyModelCmMd);
  v13 = swift_dynamicCast();
  swift_unknownObjectRelease();
  if (v13)
  {
    goto LABEL_21;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1 || (v47 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI12MapViewModel_pXpMd), v15 = swift_dynamicCast(), swift_unknownObjectRelease(), (v15 & 1) != 0) || (v46 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI12MapViewModel_pmMd), v16 = swift_dynamicCast(), swift_unknownObjectRelease(), (v16 & 1) != 0) || (type metadata accessor for DBMapModel(), swift_dynamicCastClass()) || (v46 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10DBMapModelCmMd), v17 = swift_dynamicCast(), swift_unknownObjectRelease(), (v17 & 1) != 0) || (swift_getObjectType(), swift_conformsToProtocol2()) && a1 || (v47 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI23MotionActivityViewModel_pXpMd), v18 = swift_dynamicCast(), swift_unknownObjectRelease(), (v18 & 1) != 0) || (v46 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI23MotionActivityViewModel_pmMd), v19 = swift_dynamicCast(), swift_unknownObjectRelease(), (v19 & 1) != 0) || (type metadata accessor for DBMotionActivityModel(), swift_dynamicCastClass()) || (v46 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI21DBMotionActivityModelCmMd), v20 = swift_dynamicCast(), swift_unknownObjectRelease(), (v20 & 1) != 0))
  {
LABEL_35:
    v14 = 0;
    goto LABEL_22;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !a1)
  {
    v47 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI21PhotosFamilyViewModel_pXpMd);
    v21 = swift_dynamicCast();
    swift_unknownObjectRelease();
    if ((v21 & 1) == 0)
    {
      v46 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI21PhotosFamilyViewModel_pmMd);
      v22 = swift_dynamicCast();
      swift_unknownObjectRelease();
      if ((v22 & 1) == 0)
      {
        type metadata accessor for DBPhotosFamilyModel();
        if (!swift_dynamicCastClass())
        {
          v46 = a1;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBPhotosFamilyModelCmMd);
          v23 = swift_dynamicCast();
          swift_unknownObjectRelease();
          if ((v23 & 1) == 0)
          {
            swift_getObjectType();
            if (!swift_conformsToProtocol2() || !a1)
            {
              v47 = a1;
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI15PosterViewModel_pXpMd);
              v24 = swift_dynamicCast();
              swift_unknownObjectRelease();
              if ((v24 & 1) == 0)
              {
                v46 = a1;
                swift_unknownObjectRetain();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI15PosterViewModel_pmMd);
                v25 = swift_dynamicCast();
                swift_unknownObjectRelease();
                if ((v25 & 1) == 0)
                {
                  type metadata accessor for DBPosterModel();
                  if (!swift_dynamicCastClass())
                  {
                    v46 = a1;
                    swift_unknownObjectRetain();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI13DBPosterModelCmMd);
                    v26 = swift_dynamicCast();
                    swift_unknownObjectRelease();
                    if ((v26 & 1) == 0)
                    {
                      swift_getObjectType();
                      if (!swift_conformsToProtocol2() || !a1)
                      {
                        v47 = a1;
                        swift_unknownObjectRetain();
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19ReflectionViewModel_pXpMd);
                        v27 = swift_dynamicCast();
                        swift_unknownObjectRelease();
                        if ((v27 & 1) == 0)
                        {
                          v46 = a1;
                          swift_unknownObjectRetain();
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19ReflectionViewModel_pmMd);
                          v28 = swift_dynamicCast();
                          swift_unknownObjectRelease();
                          if ((v28 & 1) == 0)
                          {
                            type metadata accessor for DBReflectionModel();
                            if (!swift_dynamicCastClass())
                            {
                              v46 = a1;
                              swift_unknownObjectRetain();
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17DBReflectionModelCmMd);
                              v29 = swift_dynamicCast();
                              swift_unknownObjectRelease();
                              if ((v29 & 1) == 0)
                              {
                                swift_getObjectType();
                                if (swift_conformsToProtocol2() && a1)
                                {
                                  goto LABEL_35;
                                }

                                v47 = a1;
                                swift_unknownObjectRetain();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI20StateOfMindViewModel_pXpMd);
                                v30 = swift_dynamicCast();
                                swift_unknownObjectRelease();
                                if (v30)
                                {
                                  goto LABEL_35;
                                }

                                v46 = a1;
                                swift_unknownObjectRetain();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI20StateOfMindViewModel_pmMd);
                                v31 = swift_dynamicCast();
                                swift_unknownObjectRelease();
                                if (v31)
                                {
                                  goto LABEL_35;
                                }

                                type metadata accessor for DBStateOfMindModel();
                                if (swift_dynamicCastClass())
                                {
                                  goto LABEL_35;
                                }

                                v46 = a1;
                                swift_unknownObjectRetain();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI18DBStateOfMindModelCmMd);
                                v32 = swift_dynamicCast();
                                swift_unknownObjectRelease();
                                if (v32)
                                {
                                  goto LABEL_35;
                                }

                                swift_getObjectType();
                                if (swift_conformsToProtocol2())
                                {
                                  if (a1)
                                  {
                                    goto LABEL_35;
                                  }
                                }

                                v47 = a1;
                                swift_unknownObjectRetain();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI16WorkoutViewModel_pXpMd);
                                v33 = swift_dynamicCast();
                                swift_unknownObjectRelease();
                                if (v33)
                                {
                                  goto LABEL_35;
                                }

                                v46 = a1;
                                swift_unknownObjectRetain();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI16WorkoutViewModel_pmMd);
                                v34 = swift_dynamicCast();
                                swift_unknownObjectRelease();
                                if (v34)
                                {
                                  goto LABEL_35;
                                }

                                type metadata accessor for DBWorkoutModel();
                                if (swift_dynamicCastClass())
                                {
                                  goto LABEL_35;
                                }

                                v46 = a1;
                                swift_unknownObjectRetain();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14DBWorkoutModelCmMd);
                                v35 = swift_dynamicCast();
                                swift_unknownObjectRelease();
                                if (v35)
                                {
                                  goto LABEL_35;
                                }

                                type metadata accessor for AssetViewModel();
                                if (!swift_dynamicCastClass())
                                {
                                  v46 = a1;
                                  swift_unknownObjectRetain();
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14AssetViewModelCmMd);
                                  v36 = swift_dynamicCast();
                                  swift_unknownObjectRelease();
                                  if ((v36 & 1) == 0)
                                  {
                                    type metadata accessor for DBAssetModel();
                                    if (!swift_dynamicCastClass())
                                    {
                                      v46 = a1;
                                      swift_unknownObjectRetain();
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI12DBAssetModelCmMd);
                                      v37 = swift_dynamicCast();
                                      swift_unknownObjectRelease();
                                      if ((v37 & 1) == 0)
                                      {
                                        if (one-time initialization token for database != -1)
                                        {
                                          swift_once();
                                        }

                                        v38 = type metadata accessor for Logger();
                                        __swift_project_value_buffer(v38, static CommonLogger.database);
                                        swift_unknownObjectRetain();
                                        v39 = Logger.logObject.getter();
                                        v40 = static os_log_type_t.error.getter();
                                        swift_unknownObjectRelease();
                                        if (os_log_type_enabled(v39, v40))
                                        {
                                          v41 = swift_slowAlloc();
                                          v42 = swift_slowAlloc();
                                          v46 = v42;
                                          *v41 = 136315138;
                                          v47 = a1;
                                          swift_unknownObjectRetain();
                                          v43 = String.init<A>(describing:)();
                                          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v46);

                                          *(v41 + 4) = v45;
                                          _os_log_impl(&dword_21607C000, v39, v40, "Missing AssetClass mapping for %s", v41, 0xCu);
                                          __swift_destroy_boxed_opaque_existential_1(v42);
                                          MEMORY[0x21CE94770](v42, -1, -1);
                                          MEMORY[0x21CE94770](v41, -1, -1);
                                        }

                                        goto LABEL_35;
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  v14 = 1;
LABEL_22:
  *a2 = v14;
}

uint64_t DBWorkoutModel.activityType.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue);
  }
}

id DBWorkoutModel.activeEnergyBurned.getter(void *a1, void *a2)
{
  v3 = (v2 + *a1);
  if (!v3[1])
  {
    return 0;
  }

  v4 = v2 + *a2;
  if (*(v4 + 8))
  {
    return 0;
  }

  v6 = *v4;
  v7 = MEMORY[0x21CE91FC0](*v3);
  v8 = [objc_opt_self() unitFromString_];

  v9 = [objc_opt_self() quantityWithUnit:v8 doubleValue:v6];
  return v9;
}

uint64_t DBWorkoutModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:workoutViewModels:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:route:legacyRoute:duration:durationLocalizedString:renderState:workoutUUIDs:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, char *a26, char a27, uint64_t a28, uint64_t a29, void *a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, unsigned __int8 *a36, uint64_t a37)
{
  v39 = specialized DBWorkoutModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:workoutViewModels:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:route:legacyRoute:duration:durationLocalizedString:renderState:workoutUUIDs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14, a15 & 1, a16, a17, a18, a19, a20, a21 & 1, a22, a23, a24, a25, a26, a27 & 1, a28, a29, a30, a31, a32, a33 & 1, a34, a35, a36, a37);

  return v39;
}

unint64_t DBWorkoutModel.workouts.getter()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
  result = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  while (1)
  {
    if (v4 == v1)
    {
      if (result >> 62)
      {
        goto LABEL_13;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return result;
      }

LABEL_10:

      return 0;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 60 == 3)
    {

      MEMORY[0x21CE92260](v6);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v9;
    }
  }

  __break(1u);
LABEL_13:
  v7 = result;
  v8 = __CocoaSet.count.getter();
  result = v7;
  if (!v8)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t DBWorkoutModel.activeEnergyBurnedUnitString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedUnitString);

  return v1;
}

uint64_t DBWorkoutModel.activeEnergyBurnedLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedLocalizedString);

  return v1;
}

uint64_t DBWorkoutModel.distanceUnitString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceUnitString);

  return v1;
}

uint64_t DBWorkoutModel.distanceLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceLocalizedString);

  return v1;
}

uint64_t DBWorkoutModel.averageHeartRateUnitString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateUnitString);

  return v1;
}

uint64_t DBWorkoutModel.averageHeartRateLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateLocalizedString);

  return v1;
}

void *DBWorkoutModel.routeLocations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel__legacyRouteLocations);
  if (v1)
  {
    return specialized static Route.filterDummyLocations(_:)(v1);
  }

  result = DBWorkoutModel.route.getter();
  if (result)
  {
    v3 = result;
    v4 = (*((*MEMORY[0x277D85000] & *result) + 0xB8))();

    return v4;
  }

  return result;
}

id DBWorkoutModel.route.getter()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData);
  swift_beginAccess();
  v3 = v2[1];
  v25[0] = *v2;
  v25[1] = v3;
  v4 = v2[3];
  v6 = *v2;
  v5 = v2[1];
  v25[2] = v2[2];
  v25[3] = v4;
  v28 = v6;
  v29 = v5;
  v7 = v2[3];
  v30 = v2[2];
  v31 = v7;

  outlined init with copy of DBAssetModel.AssetDataHelper(v25, v27);
  v8 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x636F4C6574756F72, 0xEE00736E6F697461);
  v10 = v9;
  v26[0] = v28;
  v26[1] = v29;
  v26[2] = v30;
  v26[3] = v31;
  outlined destroy of DBAssetModel.AssetDataHelper(v26);

  v11 = v2[1];
  v27[0] = *v2;
  v27[1] = v11;
  v12 = v2[3];
  v14 = *v2;
  v13 = v2[1];
  v27[2] = v2[2];
  v27[3] = v12;
  v21 = v14;
  v22 = v13;
  v15 = v2[3];
  v23 = v2[2];
  v24 = v15;

  outlined init with copy of DBAssetModel.AssetDataHelper(v27, &v28);
  v16 = DBAssetModel.AssetDataHelper.urlFutureFor(_:)(0x636F4C6574756F72, 0xEE00736E6F697461);
  v18 = v17;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  outlined destroy of DBAssetModel.AssetDataHelper(&v28);

  LOBYTE(v1) = *(v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
  v19 = objc_allocWithZone(type metadata accessor for Route());
  *&v19[OBJC_IVAR____TtC9MomentsUI5Route__routeLocations] = 0;
  LOBYTE(v21) = v1;
  return Blob.init(dataFuture:dataURLFuture:assetClass:)(v8, v10, v16, v18, &v21);
}

uint64_t DBWorkoutModel.AssetDataKeys.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBWorkoutModel.AssetDataKeys.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBWorkoutModel.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBWorkoutModel.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBWorkoutModel.AssetDataKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DBWorkoutModel.AssetDataKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t DBWorkoutModel.durationLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_durationLocalizedString);

  return v1;
}

unint64_t DBWorkoutModel.CodingKeys.rawValue.getter(char a1)
{
  result = 0x7374756F6B726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0x636F4C6574756F72;
      break;
    case 12:
      result = 0x6E6F697461727564;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x5574756F6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBWorkoutModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DBWorkoutModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == DBWorkoutModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBWorkoutModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBWorkoutModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBWorkoutModel.CodingKeys()
{
  DBWorkoutModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBWorkoutModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBWorkoutModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBWorkoutModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBWorkoutModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBWorkoutModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = DBWorkoutModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBWorkoutModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBWorkoutModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBWorkoutModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBWorkoutModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int DBWorkoutModel.metadataHash.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs))
  {
    *&v19[0] = *(v0 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);

    specialized MutableCollection<>.sort(by:)(v19);
    v5 = *(*&v19[0] + 16);
    if (v5)
    {
      v8 = *(v2 + 16);
      v6 = v2 + 16;
      v7 = v8;
      v9 = (*(v6 + 64) + 32) & ~*(v6 + 64);
      v13[1] = *&v19[0];
      v10 = *&v19[0] + v9;
      v11 = *(v6 + 56);
      do
      {
        v7(v4, v10, v1);
        _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        dispatch thunk of Hashable.hash(into:)();
        (*(v6 - 8))(v4, v1);
        v10 += v11;
        --v5;
      }

      while (v5);
    }
  }

  v19[2] = v16;
  v19[3] = v17;
  v20 = v18;
  v19[0] = v14;
  v19[1] = v15;
  return Hasher.finalize()();
}

uint64_t DBWorkoutModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI14DBWorkoutModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBWorkoutModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v47[0]) = 1;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue;
    *v10 = v9;
    *(v10 + 8) = v11 & 1;
    LOBYTE(v47[0]) = 2;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = (v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedUnitString);
    *v14 = v12;
    v14[1] = v15;
    LOBYTE(v47[0]) = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedDoubleValue;
    *v17 = v16;
    *(v17 + 8) = v18 & 1;
    LOBYTE(v47[0]) = 4;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = (v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedLocalizedString);
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v47[0]) = 5;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = (v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceUnitString);
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v47[0]) = 6;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceDoubleValue;
    *v26 = v25;
    *(v26 + 8) = v27 & 1;
    LOBYTE(v47[0]) = 7;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = (v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceLocalizedString);
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v47[0]) = 8;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = (v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateUnitString);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v47[0]) = 9;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateDoubleValue;
    *v35 = v34;
    *(v35 + 8) = v36 & 1;
    LOBYTE(v47[0]) = 10;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = (v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateLocalizedString);
    *v38 = v37;
    v38[1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI13RouteLocationVGMd);
    v48 = 11;
    _sSay9MomentsUI13RouteLocationVGSayxGSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type [RouteLocation] and conformance <A> [A], &lazy protocol witness table cache variable for type RouteLocation and conformance RouteLocation);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel__legacyRouteLocations) = v47[0];
    LOBYTE(v47[0]) = 12;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_duration;
    *v41 = v40;
    *(v41 + 8) = v42 & 1;
    LOBYTE(v47[0]) = 13;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = (v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_durationLocalizedString);
    *v44 = v43;
    v44[1] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
    v48 = 14;
    _sSay10Foundation4UUIDVGSayxGSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type [UUID] and conformance <A> [A], &lazy protocol witness table cache variable for type UUID and conformance UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs) = v47[0];
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(v47);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBWorkoutModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI14DBWorkoutModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10[0]) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[0] = *(v3 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel__legacyRouteLocations);
    v11 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI13RouteLocationVGMd);
    _sSay9MomentsUI13RouteLocationVGSayxGSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type [RouteLocation] and conformance <A> [A], &lazy protocol witness table cache variable for type RouteLocation and conformance RouteLocation);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10[0]) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[0] = *(v3 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);
    v11 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
    _sSay10Foundation4UUIDVGSayxGSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type [UUID] and conformance <A> [A], &lazy protocol witness table cache variable for type UUID and conformance UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DBWorkoutModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:workouts:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:legacyRouteLocations:duration:durationLocalizedString:renderState:workoutUUIDs:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t *a10, char a11, uint64_t a12, uint64_t a13, int64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int64_t a28, void (**a29)(char *, uint64_t, uint64_t), uint64_t a30, unsigned int (**a31)(uint64_t, uint64_t, uint64_t), char a32, unsigned int (**a33)(uint64_t, uint64_t, uint64_t), uint64_t a34, unsigned __int8 *a35, uint64_t a36)
{
  swift_allocObject();
  v36 = specialized DBWorkoutModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:workouts:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:legacyRouteLocations:duration:durationLocalizedString:renderState:workoutUUIDs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14, a15 & 1, a16, a17, a18, a19, a20, a21 & 1, a22, a23, a24, a25, a26, a27 & 1, a28, a29, a30, a31, a32 & 1, a33, a34, a35, a36);

  return v36;
}

uint64_t DBWorkoutModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:workouts:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:legacyRouteLocations:duration:durationLocalizedString:renderState:workoutUUIDs:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t *a10, char a11, uint64_t a12, uint64_t a13, int64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int64_t a28, void (**a29)(char *, uint64_t, uint64_t), uint64_t a30, unsigned int (**a31)(uint64_t, uint64_t, uint64_t), char a32, unsigned int (**a33)(uint64_t, uint64_t, uint64_t), uint64_t a34, unsigned __int8 *a35, uint64_t a36)
{
  v37 = specialized DBWorkoutModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:workouts:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:legacyRouteLocations:duration:durationLocalizedString:renderState:workoutUUIDs:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14, a15 & 1, a16, a17, a18, a19, a20, a21 & 1, a22, a23, a24, a25, a26, a27 & 1, a28, a29, a30, a31, a32 & 1, a33, a34, a35, a36);

  return v37;
}

uint64_t DBWorkoutModel.__ivar_destroyer()
{
}

uint64_t DBWorkoutModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBWorkoutModel.__deallocating_deinit()
{
  DBWorkoutModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t DBWorkoutModel.WorkoutAssetDataHelper.string2Data.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DBWorkoutModel.WorkoutAssetDataHelper.subscript.getter()
{
  (*v0)(&v3);
  v1 = DBAssetModel.AssetDataHelper.subscript.getter(0x636F4C6574756F72, 0xEE00736E6F697461);
  outlined destroy of DBAssetModel.AssetDataHelper(&v3);
  return v1;
}

uint64_t DBWorkoutModel.WorkoutAssetDataHelper.dataFutureFor(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  (*v2)(v6);
  v4 = a2(0x636F4C6574756F72, 0xEE00736E6F697461);
  v7[0] = v6[0];
  v7[1] = v6[1];
  v7[2] = v6[2];
  v7[3] = v6[3];
  outlined destroy of DBAssetModel.AssetDataHelper(v7);
  return v4;
}

uint64_t DBWorkoutModel.WorkoutAssetDataHelper.init(string2Data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DBWorkoutModel.workoutAssetData.getter@<X0>(void *a1@<X8>)
{
  *a1 = partial apply for closure #1 in DBMapModel.mapAssetData.getter;
  a1[1] = v1;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = type metadata accessor for UUID();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = *(a3 + 1);
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)(&v123[*(v5 + 72) * v125], &v123[*(v5 + 72) * v126], &v123[*(v5 + 72) * v29], v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
          }

          if (v122 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v127 = &a3[16 * v122];
          *v127 = v125;
          *(v127 + 1) = v29;
          v155 = a3;
          result = specialized Array.remove(at:)(v122 - 1);
          v29 = v155;
          v122 = *(v155 + 16);
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, &v32[v33 * v30], v9);
      v31 = UUID.uuidString.getter();
      v37 = v36;
      v38 = UUID.uuidString.getter();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = &v32[v42];
      v44 = v144 * v5;
      v45 = &v32[v144 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = UUID.uuidString.getter();
        v52 = v51;
        if (v50 == UUID.uuidString.getter() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = a3 + 1;
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              (v148)(v138, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(&v118[*(v143 + 72) * v119], &v118[*(v143 + 72) * v120], &v118[*(v143 + 72) * v29], v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v155 = a3;
        result = specialized Array.remove(at:)(v31);
        v29 = v155;
        v77 = *(v155 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = &v60[v31 * v61];
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = UUID.uuidString.getter();
    v69 = v68;
    if (v5 == UUID.uuidString.getter() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v71 = type metadata accessor for UUID();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v22;
    if (v22 < 1)
    {
      v44 = a4 + v22;
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = a4 + v22;
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = (a2 + v42);
          v69 = (a2 + v42);
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = UUID.uuidString.getter();
            v52 = v51;
            if (v50 == UUID.uuidString.getter() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = (a4 + v21);
    v72 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = UUID.uuidString.getter();
        v32 = v31;
        if (v30 == UUID.uuidString.getter() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = v26 + v66;
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 += v66;
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v74, &v73, &v72, MEMORY[0x277CC95F0]);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, MEMORY[0x277CC8990]);
}

{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized Set.formSymmetricDifference(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v55 = &v40 - v8;
  v9 = 0;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v53 = v7;
  v48 = (v7 + 8);
  v44 = a1 + 56;
  v45 = v1;
  v43 = v14;
  v42 = a1;
  v50 = v7 + 16;
  while (1)
  {
    if (!v13)
    {
      do
      {
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_41;
        }

        if (v15 >= v14)
        {
        }

        v13 = *(v10 + 8 * v15);
        ++v9;
      }

      while (!v13);
      v9 = v15;
    }

    v16 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v13)))));
    v17 = *v1;
    v18 = *(*v1 + 16);
    v47 = (v13 - 1) & v13;
    if (v18)
    {
      break;
    }

LABEL_6:
    v1 = v45;
    specialized Set._Variant.insert(_:)(v56, v16);
LABEL_7:

    v10 = v44;
    v14 = v43;
    v13 = v47;
  }

  v46 = v17;
  Hasher.init(_seed:)();
  if (v16)
  {
    Hasher._combine(_:)(1u);
    v19 = *(v16 + 16);
    MEMORY[0x21CE937C0](v19);
    if (v19)
    {
      v20 = v16 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v21 = *(v53 + 72);
      _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);

      do
      {
        dispatch thunk of Hashable.hash(into:)();
        v20 += v21;
        --v19;
      }

      while (v19);
    }

    else
    {
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v22 = Hasher._finalize()();
  v23 = v46;
  v24 = v46 + 56;
  v25 = -1 << *(v46 + 32);
  v26 = v22 & ~v25;
  v27 = v55;
  if (((*(v46 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    goto LABEL_6;
  }

  v28 = ~v25;
  v41 = v46 + 56;
  v40 = ~v25;
  while (1)
  {
    v29 = *(*(v23 + 48) + 8 * v26);
    if (v29)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_37;
    }

LABEL_24:
    v26 = (v26 + 1) & v28;
    if (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (!v16)
  {
    goto LABEL_24;
  }

  v30 = *(v16 + 16);
  v54 = *(v29 + 16);
  if (v54 != v30)
  {
    goto LABEL_24;
  }

  if (!v54 || v29 == v16)
  {
LABEL_37:
    v1 = v45;
    v39 = specialized Set._Variant.remove(_:)(v16);
    outlined consume of [UUID : DBSuggestion]??(v39);
    goto LABEL_7;
  }

  v31 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v51 = v16 + v31;
  v52 = v29 + v31;

  v32 = 0;
  while (v32 < *(v29 + 16))
  {
    v33 = *(v53 + 72) * v32;
    v34 = *(v53 + 16);
    result = v34(v27, v52 + v33, v3);
    if (v32 >= *(v16 + 16))
    {
      goto LABEL_40;
    }

    v35 = v49;
    v34(v49, v51 + v33, v3);
    _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37 = *v48;
    v38 = v35;
    v27 = v55;
    (*v48)(v38, v3);
    result = (v37)(v27, v3);
    if ((v36 & 1) == 0)
    {

      a1 = v42;
      v23 = v46;
      v24 = v41;
      v28 = v40;
      goto LABEL_24;
    }

    if (v54 == ++v32)
    {

      a1 = v42;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v37 - v4;
  v5 = type metadata accessor for UUID();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v37 - v10;
  result = MEMORY[0x28223BE20](v9);
  v42 = &v37 - v13;
  v43 = v12;
  v14 = 0;
  v44 = v1;
  v45 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v39 = v12 + 32;
  v40 = v21;
  v48 = (v12 + 8);
  v49 = v12 + 16;
  v41 = v16;
  if ((v19 & v15) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      do
      {
LABEL_9:
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = v42;
        v24 = v43;
        v26 = *(v43 + 72);
        v27 = *(v45 + 48) + v26 * (v23 | (v14 << 6));
        v46 = *(v43 + 16);
        v47 = v26;
        v46(v42, v27, v5);
        (*(v24 + 32))(v50, v25, v5);
        v28 = *v1;
        if (*(*v1 + 16) && (_s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]), v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          while (1)
          {
            v46(v8, *(v28 + 48) + v31 * v47, v5);
            _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v33 = dispatch thunk of static Equatable.== infix(_:_:)();
            v34 = *v48;
            (*v48)(v8, v5);
            if (v33)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v35 = v38;
          v36 = v50;
          v1 = v44;
          specialized Set._Variant.remove(_:)(v50, v38);
          outlined destroy of UTType?(v35, &_s10Foundation4UUIDVSgMd);
          result = v34(v36, v5);
        }

        else
        {
LABEL_14:
          v1 = v44;
          specialized Set._Variant.insert(_:)(v8, v50);
          result = (*v48)(v8, v5);
        }

        v21 = v40;
        v16 = v41;
      }

      while (v20);
    }
  }

  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized static DBWorkoutModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);
  if (!v2)
  {
    return *(a2 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs) == 0;
  }

  v3 = *(a2 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel__legacyRouteLocations);
  if (!*(a2 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel__legacyRouteLocations))
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

LABEL_11:

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v2);

  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v3);

  specialized Set.formSymmetricDifference(_:)(v10);
  v11 = *(v9 + 16);

  if (v11)
  {
    return 0;
  }

  v13 = (*(*a1 + 512))(v12);
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  v15 = (*(*a2 + 512))();
  if (!v15)
  {

    return 1;
  }

  v16 = v15;
  if (v14 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v19 = v41;
    if ((v14 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v17; ++i)
      {
        v21 = *(MEMORY[0x21CE93180](i, v14) + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);

        swift_unknownObjectRelease();
        v23 = *(v41 + 16);
        v22 = *(v41 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        *(v41 + 16) = v23 + 1;
        *(v41 + 8 * v23 + 32) = v21;
      }
    }

    else
    {
      v24 = (v14 + 32);
      do
      {
        v25 = *(*v24 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);
        v27 = *(v41 + 16);
        v26 = *(v41 + 24);

        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        }

        *(v41 + 16) = v27 + 1;
        *(v41 + 8 * v27 + 32) = v25;
        ++v24;
        --v17;
      }

      while (v17);
    }

    v18 = MEMORY[0x277D84F90];
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSay10Foundation4UUIDVGSg_SayAHGTt0g5Tf4g_n(v19);

  if (v16 >> 62)
  {
    v29 = __CocoaSet.count.getter();
    if (v29)
    {
LABEL_35:
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 & ~(v29 >> 63), 0);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v30 = v18;
        if ((v16 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != v29; ++j)
          {
            v32 = *(MEMORY[0x21CE93180](j, v16) + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);

            swift_unknownObjectRelease();
            v34 = *(v30 + 16);
            v33 = *(v30 + 24);
            if (v34 >= v33 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
            }

            *(v30 + 16) = v34 + 1;
            *(v30 + 8 * v34 + 32) = v32;
          }
        }

        else
        {
          v35 = (v16 + 32);
          do
          {
            v36 = *(*v35 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs);
            v37 = *(v30 + 16);
            v38 = *(v30 + 24);

            if (v37 >= v38 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v37 + 1, 1);
            }

            *(v30 + 16) = v37 + 1;
            *(v30 + 8 * v37 + 32) = v36;
            ++v35;
            --v29;
          }

          while (v29);
        }

        goto LABEL_50;
      }

LABEL_52:
      __break(1u);
      return result;
    }
  }

  else
  {
    v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_35;
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_50:
  v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSay10Foundation4UUIDVGSg_SayAHGTt0g5Tf4g_n(v30);

  specialized Set.formSymmetricDifference(_:)(v39);
  v40 = *(v28 + 16);

  return v40 == 0;
}

unint64_t specialized static DBWorkoutModel.route2DB(_:)(void *a1)
{
  v1 = specialized static Route.route2DB(_:)(a1);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574756F722D2DLL, 0xE700000000000000), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9MomentsUI11DBAssetDataCtGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21658CA50;
    *(inited + 32) = 0x636F4C6574756F72;
    v6 = inited + 32;
    *(inited + 40) = 0xEE00736E6F697461;
    *(inited + 48) = v4;
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UTType?(v6, &_sSS_9MomentsUI11DBAssetDataCtMd);
    return v7;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(v9);
  }
}

uint64_t specialized DBWorkoutModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:workouts:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:legacyRouteLocations:duration:durationLocalizedString:renderState:workoutUUIDs:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t *a10, char a11, uint64_t a12, uint64_t a13, int64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 a27, int64_t a28, void (**a29)(char *, uint64_t, uint64_t), uint64_t a30, unsigned int (**a31)(uint64_t, uint64_t, uint64_t), unsigned __int8 a32, unsigned int (**a33)(uint64_t, uint64_t, uint64_t), uint64_t a34, unsigned __int8 *a35, uint64_t a36)
{
  v37 = v36;
  *&v189 = a8;
  v174 = a7;
  v156 = a6;
  v155 = a5;
  v154 = a4;
  v157 = a3;
  v175 = a2;
  v176 = a1;
  *&v191 = a34;
  v185 = a33;
  LODWORD(v184) = a32;
  v183 = a31;
  v179 = a30;
  v178 = a29;
  v177 = a28;
  LODWORD(v169) = a27;
  v167 = a26;
  v166 = a25;
  v165 = a24;
  v164 = a23;
  v163 = a22;
  v161 = a21;
  v160 = a20;
  v159 = a19;
  v158 = a18;
  v153 = *v36;
  v38 = a14;
  v39 = a10;
  v162 = a35;
  v152 = type metadata accessor for Date();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v41 - 8);
  v188 = &v147 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v43 - 8);
  v187 = &v147 - v44;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v168 = *(v186 - 8);
  v45 = MEMORY[0x28223BE20](v186);
  v149 = &v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v148 = &v147 - v47;
  v173 = type metadata accessor for DateInterval();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v181 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for UUID();
  v182 = *(v190 - 8);
  v49 = MEMORY[0x28223BE20](v190);
  v180 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v171 = &v147 - v52;
  MEMORY[0x28223BE20](v51);
  v170 = &v147 - v53;
  v54 = v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue;
  *v54 = a10;
  v54[8] = a11 & 1;
  v55 = (v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedUnitString);
  *v55 = a12;
  v55[1] = a13;
  v56 = v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedDoubleValue;
  *v56 = a14;
  v56[8] = a15 & 1;
  v57 = (v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedLocalizedString);
  *v57 = a16;
  v57[1] = a17;
  v58 = (v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceUnitString);
  v59 = v159;
  *v58 = v158;
  v58[1] = v59;
  v60 = v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceDoubleValue;
  *v60 = v160;
  v60[8] = v161 & 1;
  v61 = (v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceLocalizedString);
  v62 = v164;
  *v61 = v163;
  v61[1] = v62;
  v63 = (v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateUnitString);
  v64 = v166;
  *v63 = v165;
  v63[1] = v64;
  v65 = v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateDoubleValue;
  *v65 = v167;
  v65[8] = v169 & 1;
  v66 = (v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateLocalizedString);
  v67 = v178;
  *v66 = v177;
  v66[1] = v67;
  *(v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel__legacyRouteLocations) = v179;
  v68 = *v162;
  v69 = v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_duration;
  *v69 = v183;
  v69[8] = v184 & 1;
  v70 = (v36 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_durationLocalizedString);
  v71 = v191;
  *v70 = v185;
  v70[1] = v71;
  if (a36)
  {
    v72 = *(a36 + 16);
    if (!v72)
    {

      v73 = MEMORY[0x277D84F90];
      goto LABEL_7;
    }

    v73 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(a36 + 16), 0);
    v74 = v182;
    v75 = specialized Sequence._copySequenceContents(initializing:)(&v192, (v73 + ((*(v182 + 80) + 32) & ~*(v182 + 80))), v72, a36);
    outlined consume of [String : DBAssetData].Iterator._Variant();
    if (v75 == v72)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v73 = 0;
LABEL_7:
  v74 = v182;
LABEL_8:
  v76 = a9;
  *(v37 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_workoutUUIDs) = v73;
  v77 = MEMORY[0x277D84F90];
  LODWORD(v179) = v68;
  if (a9)
  {
    if (a9 >> 62)
    {
      v78 = __CocoaSet.count.getter();
      if (v78)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v78 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v78)
      {
LABEL_11:
        v192 = v77;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78 & ~(v78 >> 63), 0);
        if (v78 < 0)
        {
LABEL_49:
          __break(1u);

          v145 = *(v182 + 8);
          v146 = v190;
          v145(v183 + v37, v190);
          v145(v39 + v37, v146);

          (*(v172 + 8))(v37 + v76, v173);
          swift_deallocPartialClassInstance();
          __break(1u);
          goto LABEL_50;
        }

        v77 = v192;
        if ((a9 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v78; ++i)
          {
            v81 = MEMORY[0x21CE93180](i, a9);
            v192 = v77;
            v83 = *(v77 + 16);
            v82 = *(v77 + 24);
            if (v83 >= v82 >> 1)
            {
              v84 = v81;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1);
              v81 = v84;
              v77 = v192;
            }

            *(v77 + 16) = v83 + 1;
            *(v77 + 8 * v83 + 32) = v81 | 0x3000000000000000;
          }
        }

        else
        {
          v85 = (a9 + 32);
          v86 = *(v192 + 16);
          do
          {
            v87 = *v85;
            v192 = v77;
            v88 = *(v77 + 24);

            if (v86 >= v88 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v86 + 1, 1);
              v77 = v192;
            }

            *(v77 + 16) = v86 + 1;
            *(v77 + 8 * v86 + 32) = v87 | 0x3000000000000000;
            ++v85;
            ++v86;
            --v78;
          }

          while (v78);
        }
      }
    }
  }

  v89 = *(v74 + 16);
  v90 = v170;
  v91 = v190;
  v89(v170, v176, v190);
  v92 = v171;
  v89(v171, v175, v91);
  v184 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v153, &v194);
  LODWORD(v185) = v194;
  v93 = *(v172 + 16);
  v94 = v173;
  v93(v181, v174, v173);
  *(v37 + 16) = 0;
  *&v191 = v37 + 16;
  v183 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v89((v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v90, v91);
  v89((v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v92, v91);
  *(v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v185;
  v95 = v157;
  *(v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v157;
  v185 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles;
  *(v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v154;
  v96 = (v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v97 = v156;
  *v96 = v155;
  v96[1] = v97;
  v76 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v93((v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v181, v94);
  v98 = v95;
  v99 = v189;
  v100 = specialized Dictionary.compactMapValues<A>(_:)(v189);
  v165 = 0;
  *(v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v100;
  *(v37 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = v77;
  v101 = v100;
  swift_beginAccess();
  v167 = v37;
  *(v37 + 16) = v179;
  v102 = v99 + 64;
  v103 = 1 << *(v99 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  v105 = v104 & *(v99 + 64);
  v106 = (v103 + 63) >> 6;
  v185 = (v182 + 48);
  v178 = (v182 + 32);
  v184 = v168 + 56;
  v183 = (v168 + 48);
  v166 = v101;

  v79 = 0;
  v169 = MEMORY[0x277D84F90];
  v39 = &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd;
  v179 = v99 + 64;
  v177 = v106;
  while (v105)
  {
    v38 = v79;
LABEL_33:
    v107 = __clz(__rbit64(v105)) | (v38 << 6);
    v108 = *(*(v99 + 48) + 16 * v107 + 8);
    v109 = *(*(v99 + 56) + 8 * v107);
    v110 = *(*v109 + 192);
    *&v191 = v108;

    v112 = v188;
    v110(v111);
    v113 = v190;
    if ((*v185)(v112, 1, v190) == 1)
    {
      outlined destroy of UTType?(v112, &_s10Foundation4UUIDVSgMd);
      v76 = v187;
      v37 = v186;
      (*v184)(v187, 1, 1, v186);
    }

    else
    {
      v114 = *v178;
      v115 = v39;
      v116 = v180;
      (*v178)(v180, v112, v113);
      v117 = v113;
      v37 = v186;
      v118 = *(v186 + 48);
      v76 = v187;
      v119 = v116;
      v39 = v115;
      v114(v187, v119, v117);
      v106 = v177;
      v102 = v179;
      *(v76 + v118) = v109;
      (*v184)(v76, 0, 1, v37);
    }

    v105 &= v105 - 1;

    if ((*v183)(v76, 1, v37) == 1)
    {
      outlined destroy of UTType?(v76, v39);
      v79 = v38;
      v99 = v189;
    }

    else
    {
      v37 = v148;
      outlined init with take of (UUID, DBAssetData)(v76, v148);
      outlined init with take of (UUID, DBAssetData)(v37, v149);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169[2] + 1, 1, v169);
      }

      v121 = v169[2];
      v120 = v169[3];
      if (v121 >= v120 >> 1)
      {
        v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120 > 1, v121 + 1, 1, v169);
      }

      v122 = v169;
      v169[2] = v121 + 1;
      outlined init with take of (UUID, DBAssetData)(v149, v122 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v121);
      v79 = v38;
      v99 = v189;
    }
  }

  while (1)
  {
    v38 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v38 >= v106)
    {
      break;
    }

    v105 = *(v102 + 8 * v38);
    ++v79;
    if (v105)
    {
      goto LABEL_33;
    }
  }

  if (v169[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v123 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v123 = MEMORY[0x277D84F98];
  }

  v124 = v167;
  v125 = v182;
  v193 = v123;

  v127 = v165;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v126, 1, &v193);
  if (!v127)
  {

    v128 = v193;
    v129 = swift_allocObject();
    *(v129 + 16) = v128;
    v130 = (v124 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v130 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v130[1] = v129;
    v131 = swift_allocObject();
    *(v131 + 16) = v128;
    v132 = (v124 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v132 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v132[1] = v131;
    v133 = (v124 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v133 = closure #3 in DBAssetModel.init(from:);
    v133[1] = 0;
    v134 = swift_allocObject();
    *(v134 + 16) = v166;
    swift_beginAccess();
    v191 = *v130;
    swift_beginAccess();
    v189 = *v132;
    swift_beginAccess();
    v135 = *v133;
    v136 = v133[1];
    v137 = v124 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v137 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v137 + 8) = v134;
    v138 = v189;
    *(v137 + 16) = v191;
    *(v137 + 32) = v138;
    *(v137 + 48) = v135;
    *(v137 + 56) = v136;

    v139 = v150;
    static Date.now.getter();
    v140 = *(v172 + 8);
    v141 = v173;
    v140(v174, v173);
    v142 = *(v125 + 8);
    v143 = v190;
    v142(v175, v190);
    v142(v176, v143);
    v140(v181, v141);
    v142(v171, v143);
    v142(v170, v143);
    (*(v151 + 32))(v124 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v139, v152);
    return v124;
  }

LABEL_50:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized DBWorkoutModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:workoutViewModels:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:route:legacyRoute:duration:durationLocalizedString:renderState:workoutUUIDs:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, char *a26, char a27, uint64_t a28, uint64_t a29, void *a30, char a31, uint64_t a32, unsigned __int8 a33, uint64_t a34, uint64_t a35, unsigned __int8 *a36, uint64_t a37)
{
  v114 = a5;
  v122 = a7;
  v123 = a2;
  v108 = a6;
  v124 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v40 - 8);
  v117 = &v86 - v41;
  v113 = type metadata accessor for DateInterval();
  v42 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UUID();
  v120 = *(v44 - 8);
  v121 = v44;
  v45 = MEMORY[0x28223BE20](v44);
  v119 = &v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v118 = &v86 - v47;
  v48 = 0;
  v111 = *a36;
  if (a31)
  {
    v48 = 0;
    if (a30)
    {
      v48 = (*((*MEMORY[0x277D85000] & *a30) + 0xC0))(0);
    }
  }

  v112 = v48;
  v49 = specialized static DBWorkoutModel.route2DB(_:)(a30);
  v50 = specialized static DBAssetModel.baseImage2DB(_:)(a8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v49;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v50, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v125);

  v52 = MEMORY[0x277D84F90];
  v110 = v125;
  if (a9)
  {
    v125 = MEMORY[0x277D84F90];
    v53 = *(a9 + 16);
    if (v53)
    {
      v54 = 0;
      v55 = (a9 + 32);
      v107 = v53 - 1;
      v116 = MEMORY[0x277D84F90];
      v106 = a3;
      v86 = v42;
      do
      {
        v42 = &v55[16 * v54];
        v52 = v54;
        while (1)
        {
          if (v52 >= *(a9 + 16))
          {
            __break(1u);
            goto LABEL_43;
          }

          v49 = *v42;
          type metadata accessor for MutableWorkoutViewModel();
          v56 = swift_dynamicCastClass();
          if (v56)
          {
            v57 = v56;
            a3 = v55;
            v58 = v49;
            v49 = v57;
            v59 = MutableWorkoutViewModel.build()();

            v55 = a3;
            if (v59)
            {
              break;
            }
          }

          ++v52;
          v42 += 16;
          if (v53 == v52)
          {
            v42 = v86;
            a3 = v106;
            v52 = MEMORY[0x277D84F90];
            goto LABEL_20;
          }
        }

        v49 = &v125;
        MEMORY[0x21CE92260]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v54 = v52 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v116 = v125;
        v60 = v107 == v52;
        v42 = v86;
        v52 = MEMORY[0x277D84F90];
        v55 = a3;
        a3 = v106;
      }

      while (!v60);
    }

    else
    {
      v116 = MEMORY[0x277D84F90];
    }

LABEL_20:
  }

  else
  {
    v116 = 0;
  }

  v61 = v121;
  v62 = *(v120 + 16);
  v62(v118, v124, v121);
  v62(v119, v123, v61);
  if (!a3)
  {
    v49 = v117;
    if (one-time initialization token for zero != -1)
    {
LABEL_43:
      swift_once();
    }

    v107 = static ScreenSize.zero;
    v63 = *(a4 + 16);
    if (v63)
    {
      goto LABEL_23;
    }

LABEL_30:
    v71 = a3;

    v66 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v107 = a3;
  v49 = v117;
  v63 = *(a4 + 16);
  if (!v63)
  {
    goto LABEL_30;
  }

LABEL_23:
  v64 = v42;
  v125 = v52;
  v65 = a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
  v49 = v117;
  v66 = v125;
  v67 = *(v125 + 16);
  v68 = 32;
  do
  {
    v69 = *(a4 + v68);
    v125 = v66;
    v70 = v66[3];
    if (v67 >= v70 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v67 + 1, 1);
      v49 = v117;
      v66 = v125;
    }

    v66[2] = v67 + 1;
    *(v66 + v67 + 32) = v69;
    ++v68;
    ++v67;
    --v63;
  }

  while (v63);

  v42 = v64;
LABEL_31:
  v93 = a37;
  v90 = a35;
  v89 = a34;
  v87 = a33;
  v88 = a32;
  v92 = a29;
  v91 = a28;
  v117 = a26;
  v106 = a25;
  v105 = a24;
  v104 = a23;
  v103 = a22;
  v102 = a20;
  v101 = a19;
  v100 = a18;
  v99 = a17;
  v98 = a16;
  v97 = a14;
  v96 = a13;
  v95 = a12;
  v94 = a10;
  outlined init with copy of DateInterval?(v122, v49);
  v72 = v42;
  v73 = *(v42 + 6);
  v74 = v113;
  if (v73(v49, 1, v113) == 1)
  {
    v75 = v49;
    v76 = v109;
    DateInterval.init()();
    v77 = v73(v75, 1, v74);
    v78 = v76;
    v79 = v108;
    if (v77 != 1)
    {
      outlined destroy of UTType?(v75, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    v78 = v109;
    (*(v72 + 4))(v109, v49, v74);
    v79 = v108;
  }

  if (v79)
  {
    v80 = v79;
  }

  else
  {
    v80 = 0xE000000000000000;
  }

  if (v79)
  {
    v81 = v114;
  }

  else
  {
    v81 = 0;
  }

  LOBYTE(v125) = v111;
  v82 = (*(v115 + 528))(v118, v119, v107, v66, v81, v80, v78, v110, v116, v94, a11 & 1, v95, v96, v97, a15 & 1, v98, v99, v100, v101, v102, a21 & 1, v103, v104, v105, v106, v117, a27 & 1, v91, v92, v112, v88, v87 & 1, v89, v90, &v125, v93);
  outlined destroy of UTType?(v122, &_s10Foundation12DateIntervalVSgMd);
  v83 = v121;
  v84 = *(v120 + 8);
  v84(v123, v121);
  v84(v124, v83);
  return v82;
}

unint64_t specialized DBWorkoutModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBWorkoutModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWorkoutModel.CodingKeys and conformance DBWorkoutModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBWorkoutModel()
{
  result = type metadata singleton initialization cache for DBWorkoutModel;
  if (!type metadata singleton initialization cache for DBWorkoutModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSay9MomentsUI13RouteLocationVGSayxGSesSeRzlWlTm_0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI13RouteLocationVGMd);
    _s10Foundation4UUIDVACSHAAWlTm_5(a2, type metadata accessor for RouteLocation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay10Foundation4UUIDVGSayxGSesSeRzlWlTm_0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd);
    _s10Foundation4UUIDVACSHAAWlTm_5(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBWorkoutModel.AssetDataKeys and conformance DBWorkoutModel.AssetDataKeys()
{
  result = lazy protocol witness table cache variable for type DBWorkoutModel.AssetDataKeys and conformance DBWorkoutModel.AssetDataKeys;
  if (!lazy protocol witness table cache variable for type DBWorkoutModel.AssetDataKeys and conformance DBWorkoutModel.AssetDataKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWorkoutModel.AssetDataKeys and conformance DBWorkoutModel.AssetDataKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBWorkoutModel.AssetDataKeys] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DBWorkoutModel.AssetDataKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DBWorkoutModel.AssetDataKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI14DBWorkoutModelC13AssetDataKeysOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBWorkoutModel.AssetDataKeys] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of DBWorkoutModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:workouts:activityTypeRawValue:activeEnergyBurnedUnitString:activeEnergyBurnedDoubleValue:activeEnergyBurnedLocalizedString:distanceUnitString:distanceDoubleValue:distanceLocalizedString:averageHeartRateUnitString:averageHeartRateDoubleValue:averageHeartRateLocalizedString:legacyRouteLocations:duration:durationLocalizedString:renderState:workoutUUIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = *(v23 + 528);
  LOBYTE(a11) = a11 & 1;
  LOBYTE(a21) = a21 & 1;
  LOBYTE(a15) = a15 & 1;

  return v24(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

id TransferLivePhotoViewModel.__allocating_init(livePhotoViewModel:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized TransferLivePhotoViewModel.init(livePhotoViewModel:)(a1, a2);

  return v6;
}

void *TransferLivePhotoViewModel.urlBasedVideo.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferLivePhotoViewModel.urlBasedVideo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TransferLivePhotoViewModel.urlBasedImage.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferLivePhotoViewModel.urlBasedImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

MomentsUI::TransferLivePhotoViewModel::CodingKeys_optional __swiftcall TransferLivePhotoViewModel.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferLivePhotoViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_TransferLivePhotoViewModel_CodingKeys_urlBasedImage;
  }

  else
  {
    v4.value = MomentsUI_TransferLivePhotoViewModel_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

MomentsUI::TransferLivePhotoViewModel::CodingKeys_optional __swiftcall TransferLivePhotoViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferLivePhotoViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_TransferLivePhotoViewModel_CodingKeys_urlBasedImage;
  }

  else
  {
    v4.value = MomentsUI_TransferLivePhotoViewModel_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferLivePhotoViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xED00006567616D49;
  }

  else
  {
    v2 = 0xED00006F65646956;
  }

  if (*a2)
  {
    v3 = 0xED00006567616D49;
  }

  else
  {
    v3 = 0xED00006F65646956;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferLivePhotoViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferLivePhotoViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferLivePhotoViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferLivePhotoViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferLivePhotoViewModel.CodingKeys.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferLivePhotoViewModel.CodingKeys(void *a1@<X8>)
{
  v2 = 0xED00006F65646956;
  if (*v1)
  {
    v2 = 0xED00006567616D49;
  }

  *a1 = 0x64657361426C7275;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferLivePhotoViewModel.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferLivePhotoViewModel.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferLivePhotoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferLivePhotoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferLivePhotoViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo;
  *(v2 + OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo) = 0;
  v5 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage;
  *(v2 + OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage) = 0;
  type metadata accessor for URLBasedVideo();
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v7 = *(v2 + v4);
  *(v2 + v4) = v6;

  type metadata accessor for URLBasedImage();
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v9 = *(v2 + v5);
  *(v2 + v5) = v8;

  return TransferPhotoFamilyViewModel.init(coder:)(a1);
}

Swift::Void __swiftcall TransferLivePhotoViewModel.encode(with:)(NSCoder with)
{
  TransferPhotoFamilyViewModel.encode(with:)(with);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x2A0))();
  v5 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006F65646956);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = (*((*v3 & *v1) + 0x2B8))();
  v7 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006567616D49);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

void TransferLivePhotoViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferLivePhotoViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferLivePhotoViewModel.init(livePhotoViewModel:)(void *a1, uint64_t a2)
{
  v3 = specialized TransferLivePhotoViewModel.init(livePhotoViewModel:)(a1, a2);

  return v3;
}

void TransferLivePhotoViewModel.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage);
}

id TransferLivePhotoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferLivePhotoViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized TransferLivePhotoViewModel.init(livePhotoViewModel:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v115 = &v104[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v104[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v109 = &v104[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v13);
  v110 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo;
  *&v2[OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedVideo] = 0;
  v111 = OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage;
  *&v2[OBJC_IVAR____TtC9MomentsUI26TransferLivePhotoViewModel_urlBasedImage] = 0;
  v14 = swift_getObjectType();
  v15 = *(a2 + 16);
  v112 = (a2 + 16);
  v113 = v15;
  v16 = v15(v14, a2);
  v116 = v10;
  if (v16)
  {
    v17 = (*(*v16 + 120))(v16);

    if (v17)
    {
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static CommonLogger.assets);
      v108 = v17;
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      v22 = os_log_type_enabled(v20, v21);
      v107 = a2;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *&v127.origin.x = v106;
        *v23 = 136315138;
        v24 = *((*MEMORY[0x277D85000] & *v19) + 0x70);
        v105 = v21;
        v24();
        v25 = String.init<A>(describing:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v127);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_21607C000, v20, v105, "[TransferLivePhotoViewModel] video path %s", v23, 0xCu);
        v28 = v106;
        __swift_destroy_boxed_opaque_existential_1(v106);
        MEMORY[0x21CE94770](v28, -1, -1);
        MEMORY[0x21CE94770](v23, -1, -1);
      }

      v106 = type metadata accessor for URLBasedVideo();
      v29 = objc_allocWithZone(v106);
      v30 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__videoURL;
      v31 = type metadata accessor for URL();
      (*(*(v31 - 8) + 56))(&v29[v30], 1, 1, v31);
      v32 = OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__token;
      v33 = type metadata accessor for UUID();
      v34 = *(*(v33 - 8) + 56);
      v34(&v29[v32], 1, 1, v33);
      *&v29[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__video] = v108;
      v29[OBJC_IVAR____TtC9MomentsUI13URLBasedVideo__filterExif] = 1;
      v108 = v19;
      v35 = v109;
      UUID.init()();
      v34(v35, 0, 1, v33);
      swift_beginAccess();
      outlined assign with take of UUID?(v35, &v29[v32]);
      swift_endAccess();
      v117.receiver = v29;
      v117.super_class = v106;
      v36 = objc_msgSendSuper2(&v117, sel_init);

      v37 = v110;
      swift_beginAccess();
      v38 = *&v3[v37];
      *&v3[v37] = v36;

      a2 = v107;
    }
  }

  v39 = v113(v14, a2);
  if (v39)
  {
    v40 = (*(*v39 + 96))(v39);

    if (v40)
    {
      v41 = objc_allocWithZone(type metadata accessor for URLBasedImage());
      v42 = specialized URLBasedImage.init(image:filterExif:)(v40);

      v43 = v111;
      swift_beginAccess();
      v44 = *&v3[v43];
      *&v3[v43] = v42;
    }
  }

  v45 = *(a2 + 8);
  v46 = *(v45 + 8);
  v47 = (*(v46 + 8))(v14, v46);
  v112 = v48;
  v113 = v47;
  (*(v46 + 24))(v14, v46);
  (*(v45 + 24))(&v123, v14, v45);
  (*(v45 + 16))(&v125, v14, v45);
  (*(v45 + 32))(&v127, v14, v45);
  v49 = (*(v45 + 40))(v14, v45);
  v51 = v50;
  LODWORD(v111) = *(a1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v52 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect] = 0;
  v53 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect] = 0;
  v54 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect] = 0;
  v55 = &v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier];
  *v55 = 0;
  v55[1] = 0;
  if (v124)
  {
    if (v126)
    {
      goto LABEL_13;
    }
  }

  else
  {
    width = v123.size.width;
    height = v123.size.height;
    x = v123.origin.x;
    y = v123.origin.y;
    v88 = CGRectGetWidth(v123);
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = width;
    v130.size.height = height;
    *&height = CGRectGetHeight(v130);
    v89 = type metadata accessor for ScreenRect();
    v90 = objc_allocWithZone(v89);
    v86 = x;
    *&v90[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v86;
    v87 = y;
    *&v90[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v87;
    *&v90[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v88;
    *&v90[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(height);
    v118.receiver = v90;
    v118.super_class = v89;
    v91 = objc_msgSendSuper2(&v118, sel_init);
    swift_beginAccess();
    v92 = *&v3[v52];
    *&v3[v52] = v91;

    if (v126)
    {
LABEL_13:
      if (v128)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v94 = v125.size.width;
  v93 = v125.size.height;
  v96 = v125.origin.x;
  v95 = v125.origin.y;
  v99 = CGRectGetWidth(v125);
  v131.origin.x = v96;
  v131.origin.y = v95;
  v131.size.width = v94;
  v131.size.height = v93;
  *&v93 = CGRectGetHeight(v131);
  v100 = type metadata accessor for ScreenRect();
  v101 = objc_allocWithZone(v100);
  v97 = v96;
  *&v101[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v97;
  v98 = v95;
  *&v101[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v98;
  *&v101[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v99;
  *&v101[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v93);
  v119.receiver = v101;
  v119.super_class = v100;
  v102 = objc_msgSendSuper2(&v119, sel_init);
  swift_beginAccess();
  v103 = *&v3[v53];
  *&v3[v53] = v102;

  if ((v128 & 1) == 0)
  {
LABEL_14:
    v57 = v127.size.width;
    v56 = v127.size.height;
    v59 = v127.origin.x;
    v58 = v127.origin.y;
    v62 = CGRectGetWidth(v127);
    v129.origin.x = v59;
    v129.origin.y = v58;
    v129.size.width = v57;
    v129.size.height = v56;
    *&v56 = CGRectGetHeight(v129);
    v63 = type metadata accessor for ScreenRect();
    v64 = objc_allocWithZone(v63);
    v60 = v59;
    *&v64[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v60;
    v61 = v58;
    *&v64[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v61;
    *&v64[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v62;
    *&v64[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v56);
    v120.receiver = v64;
    v120.super_class = v63;
    v65 = objc_msgSendSuper2(&v120, sel_init);
    swift_beginAccess();
    v66 = *&v3[v54];
    *&v3[v54] = v65;
  }

LABEL_15:
  swift_beginAccess();
  *v55 = v49;
  v55[1] = v51;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v67 = static ScreenSize.zero;
  v68 = v115;
  v69 = v116;
  outlined init with copy of DateInterval?(v116, v115);
  v70 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v71 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v71 = 0;
  v71[1] = 0;
  v72 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v73 = type metadata accessor for DateInterval();
  (*(*(v73 - 8) + 56))(&v3[v72], 1, 1, v73);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v67;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v74 = *&v3[v70];
  *&v3[v70] = 0;
  v75 = v67;

  swift_beginAccess();
  v76 = v112;
  *v71 = v113;
  v71[1] = v76;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v68, &v3[v72]);
  v77 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v111;
  (*(ObjectType + 328))(v122, v77);
  LOBYTE(v72) = v122[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v78 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v78 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v78 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v78 + 112) = v72;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v78;
  v79 = type metadata accessor for AssetViewModel();
  v121.receiver = v3;
  v121.super_class = v79;
  v80 = objc_msgSendSuper2(&v121, sel_init);
  outlined destroy of DateInterval?(v68);
  outlined destroy of DateInterval?(v69);
  return v80;
}

uint64_t type metadata accessor for TransferLivePhotoViewModel()
{
  result = type metadata singleton initialization cache for TransferLivePhotoViewModel;
  if (!type metadata singleton initialization cache for TransferLivePhotoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferLivePhotoViewModel.CodingKeys and conformance TransferLivePhotoViewModel.CodingKeys);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9MomentsUI16WorkoutViewModel_ps5NeverOTg503_s9f11UI23Mutablehij122C16intendedViewport15supportedStyles12workoutUUIDsAcA10ScreenSizeC_SayAA05AsseteF0C5StyleOGShy10Foundation4UUIDVGtcfcAA0deZ9_pAPXEfU_AJ0uV0CSayAJ05AssetiJ0C5StyleOGTf1cn_n(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9MomentsUI16WorkoutViewModel_ps5NeverOTg503_s9f11UI23Mutablehij122C16intendedViewport15supportedStyles12workoutUUIDsAcA10ScreenSizeC_SayAA05AsseteF0C5StyleOGShy10Foundation4UUIDVGtcfcAA0deZ9_pAPXEfU_AJ0uV0CSayAJ05AssetiJ0C5StyleOGTf1cn_nTf4ngg_n(a1, a2, a3);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    v6 = v5;

    return v6;
  }

  return result;
}

uint64_t HKWorkout.distanceType.getter()
{
  v1 = [v0 workoutActivityType];
  v2 = 0;
  v3 = MEMORY[0x277CCCB40];
  if (v1 > 45)
  {
    v4 = v1 - 60;
    if ((v1 - 60) <= 0xE)
    {
      if (((1 << v4) & 0x83) != 0)
      {
LABEL_12:
        v3 = MEMORY[0x277CCCB18];
        goto LABEL_18;
      }

      if (((1 << v4) & 0xC00) != 0)
      {
        v3 = MEMORY[0x277CCCB48];
        goto LABEL_18;
      }

      if (v1 == 74)
      {
LABEL_14:
        v3 = MEMORY[0x277CCCB10];
        goto LABEL_18;
      }
    }

    if (v1 == 52)
    {
      goto LABEL_18;
    }

    if (v1 == 46)
    {
      v3 = MEMORY[0x277CCCB38];
      goto LABEL_18;
    }

    return v2;
  }

  if (v1 <= 36)
  {
    if (v1 != 13)
    {
      if (v1 != 24)
      {
        return v2;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v1 == 37)
  {
LABEL_18:
    v5 = *v3;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKQuantityType);
    v2 = MEMORY[0x21CE92900](v5);

    return v2;
  }

  if (v1 == 40)
  {
    goto LABEL_12;
  }

  return v2;
}

uint64_t *WorkoutUtilities.healthStore.unsafeMutableAddressor()
{
  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  return &static WorkoutUtilities.healthStore;
}

uint64_t MutableWorkoutViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableWorkoutViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t key path setter for MutableWorkoutViewModel.workoutUUIDs : MutableWorkoutViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutUUIDs;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t MutableWorkoutViewModel.isSingleWorkout.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts);
  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result == 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      return result;
    }
  }

  v3 = *((*((*MEMORY[0x277D85000] & *v0) + 0x280))() + 16);

  return v3 == 1;
}

unint64_t MutableWorkoutViewModel.isRouteBasedWorkout.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x2D0))();
  if (result)
  {
    if (result >> 62)
    {
      v2 = __CocoaSet.count.getter();
    }

    else
    {
      v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v2 > 1;
  }

  return result;
}

uint64_t MutableWorkoutViewModel.routelocations.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routelocations;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for MutableWorkoutViewModel.workoutViewModels : MutableWorkoutViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutViewModels;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void *MutableWorkoutViewModel.activeEnergyBurned.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurned;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *MutableWorkoutViewModel.distance.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for MutableWorkoutViewModel.activeEnergyBurned : MutableWorkoutViewModel(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *MutableWorkoutViewModel.averageHeartRate.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t key path setter for MutableWorkoutViewModel.activeEnergyBurnedLocalizedString : MutableWorkoutViewModel(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

Swift::Int MutableWorkoutViewModel.RouteErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1);
  return Hasher._finalize()();
}

void *MutableWorkoutViewModel.routeMapSnapshotter.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routeMapSnapshotter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MutableWorkoutViewModel.routeMapSnapshotter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routeMapSnapshotter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MutableWorkoutViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableWorkoutViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

id MutableWorkoutViewModel.__allocating_init(intendedViewport:supportedStyles:title:dateInterval:image:activityType:activeEnergyBurned:distance:averageHeartRate:duration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, char a12)
{
  v18 = objc_allocWithZone(v12);
  v19 = specialized MutableWorkoutViewModel.init(intendedViewport:supportedStyles:title:dateInterval:image:activityType:activeEnergyBurned:distance:averageHeartRate:duration:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12 & 1);

  return v19;
}

id MutableWorkoutViewModel.init(intendedViewport:supportedStyles:title:dateInterval:image:activityType:activeEnergyBurned:distance:averageHeartRate:duration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, char a12)
{
  v15 = specialized MutableWorkoutViewModel.init(intendedViewport:supportedStyles:title:dateInterval:image:activityType:activeEnergyBurned:distance:averageHeartRate:duration:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12 & 1);

  return v15;
}

id MutableWorkoutViewModel.init(intendedViewport:supportedStyles:workoutUUIDs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v37 = &v37 - v9;
  v11 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutUUIDs;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutUUIDs] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routelocations] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutViewModels] = 0;
  v12 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activityType];
  *v12 = 0;
  v12[8] = 1;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurned] = 0;
  v13 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurnedLocalizedString];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distance] = 0;
  v14 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distanceLocalizedString];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRate] = 0;
  v15 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRateLocalizedString];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_duration];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_durationLocalizedString];
  *v17 = 0;
  v17[1] = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routeMapSnapshotter] = 0;
  swift_beginAccess();
  v39 = a3;
  *&v4[v11] = a3;

  swift_weakAssign();
  v18 = type metadata accessor for DateInterval();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  type metadata accessor for DBAssetModel();
  v20 = v38;

  static DBAssetModel.subscript.getter(ObjectType, &v42);
  LODWORD(v38) = v42;
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v22 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v19(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v18);
  UUID.init()();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v20;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = a2;
  swift_beginAccess();
  v24 = *&v4[v21];
  *&v4[v21] = 0;
  v25 = v20;

  swift_beginAccess();
  *v22 = 0;
  v22[1] = 0;

  swift_beginAccess();
  v26 = v37;
  outlined assign with copy of DateInterval?(v37, &v4[v23]);
  v27 = swift_endAccess();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v38;
  (*(ObjectType + 328))(v41, v27);
  LOBYTE(v24) = v41[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 112) = v24;
  v29 = v39;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v28;
  v30 = type metadata accessor for AssetViewModel();
  v40.receiver = v4;
  v40.super_class = v30;
  v31 = objc_msgSendSuper2(&v40, sel_init);

  outlined destroy of UTType?(v26, &_s10Foundation12DateIntervalVSgMd);
  if (*(v29 + 16) < 2uLL)
  {
  }

  else
  {
    v32 = v25;

    v33 = v31;
    v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_9MomentsUI16WorkoutViewModel_ps5NeverOTg503_s9f11UI23Mutablehij122C16intendedViewport15supportedStyles12workoutUUIDsAcA10ScreenSizeC_SayAA05AsseteF0C5StyleOGShy10Foundation4UUIDVGtcfcAA0deZ9_pAPXEfU_AJ0uV0CSayAJ05AssetiJ0C5StyleOGTf1cn_n(v29, v32, a2);

    v35 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutViewModels;
    swift_beginAccess();
    *&v33[v35] = v34;
  }

  return v31;
}

uint64_t MutableWorkoutViewModel.__allocating_init(intendedViewport:supportedStyles:workoutUUID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21658CA50;
  (*(v8 + 16))(v10 + v9, a3, v7);
  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4UUIDV_Tt0g5Tf4g_n(v10);
  swift_setDeallocating();
  v12 = *(v8 + 8);
  v12(v10 + v9, v7);
  swift_deallocClassInstance();
  v13 = (*(v3 + 1040))(a1, a2, v11);
  v12(a3, v7);
  return v13;
}

id MutableWorkoutViewModel.init(intendedViewport:supportedStyles:workouts:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v57 = ObjectType;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  *&v56 = &v52 - v10;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutUUIDs] = MEMORY[0x277D84FA0];
  v12 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routelocations] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutViewModels] = 0;
  v13 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activityType];
  *v13 = 0;
  v13[8] = 1;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurned] = 0;
  v14 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurnedLocalizedString];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distance] = 0;
  v15 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distanceLocalizedString];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRate] = 0;
  v16 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRateLocalizedString];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_duration];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_durationLocalizedString];
  *v18 = 0;
  v18[1] = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routeMapSnapshotter] = 0;
  v55 = a3;
  *&v4[v12] = a3;

  swift_weakAssign();
  v19 = type metadata accessor for DateInterval();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  type metadata accessor for DBAssetModel();
  v21 = a1;

  static DBAssetModel.subscript.getter(ObjectType, v61);
  LOBYTE(v11) = v61[0];
  v22 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v23 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v20(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v19);
  UUID.init()();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v21;
  v58 = a2;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = a2;
  swift_beginAccess();
  v25 = *&v4[v22];
  *&v4[v22] = 0;
  v26 = v21;

  swift_beginAccess();
  *v23 = 0;
  v23[1] = 0;

  swift_beginAccess();
  v27 = v56;
  outlined assign with copy of DateInterval?(v56, &v4[v24]);
  v28 = swift_endAccess();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v11;
  v57[41](v60, v28);
  LOBYTE(v23) = v60[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v29 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 112) = v23;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v29;
  v30 = type metadata accessor for AssetViewModel();
  v59.receiver = v4;
  v59.super_class = v30;
  v31 = objc_msgSendSuper2(&v59, sel_init);
  v57 = v26;

  outlined destroy of UTType?(v27, &_s10Foundation12DateIntervalVSgMd);
  v32 = v55;
  if (!(v55 >> 62))
  {
    v33 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33 >= 2)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v33 = __CocoaSet.count.getter();
  if (v33 < 2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v60[0] = MEMORY[0x277D84F90];
  v54 = v31;
  v53 = v31;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
  v34 = 0;
  v35 = v60[0];
  v36 = v32;
  v37 = v32 & 0xC000000000000001;
  v56 = xmmword_21658E210;
  v38 = v32;
  do
  {
    if (v37)
    {
      v39 = MEMORY[0x21CE93180](v34, v36);
    }

    else
    {
      v39 = *(v36 + 8 * v34 + 32);
    }

    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v41 = swift_allocObject();
    *(v41 + 16) = v56;
    *(v41 + 32) = v40;
    v42 = objc_allocWithZone(type metadata accessor for MutableWorkoutViewModel());
    v43 = v57;
    v44 = v58;

    v45 = MutableWorkoutViewModel.init(intendedViewport:supportedStyles:workouts:)(v43, v44, v41);
    v60[0] = v35;
    v47 = *(v35 + 16);
    v46 = *(v35 + 24);
    if (v47 >= v46 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
      v35 = v60[0];
    }

    ++v34;
    *(v35 + 16) = v47 + 1;
    v48 = v35 + 16 * v47;
    *(v48 + 32) = v45;
    *(v48 + 40) = &protocol witness table for MutableWorkoutViewModel;
    v36 = v38;
  }

  while (v33 != v34);

  v49 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutViewModels;
  v50 = v53;
  swift_beginAccess();
  *&v50[v49] = v35;

  v31 = v54;
LABEL_13:

  return v31;
}

uint64_t MutableWorkoutViewModel.__allocating_init(intendedViewport:supportedStyles:workout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658E210;
  *(v7 + 32) = a3;
  v8 = *(v3 + 1048);

  return v8(a1, a2, v7);
}

void MutableWorkoutViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutUUIDs) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routelocations) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workoutViewModels) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activityType;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurned) = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurnedLocalizedString);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distance) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distanceLocalizedString);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRate) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRateLocalizedString);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_duration;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_durationLocalizedString);
  *v6 = 0;
  v6[1] = 0;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_routeMapSnapshotter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:), 0, 0);
}

uint64_t MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)()
{
  v31 = v0;
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 48)) + 0x2B0))();
  v2 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts;
  v3 = *(v0 + 48);
  if ((v1 & 1) == 0)
  {
LABEL_12:
    v10 = *(v3 + v2);
    if (v10 >> 62)
    {
      if (__CocoaSet.count.getter() >= 2)
      {
LABEL_14:
        v11 = *(v0 + 32);
        v12 = *(v3 + v2);
        *(v0 + 72) = v12;

        v29 = (v11 + *v11);
        v13 = swift_task_alloc();
        *(v0 + 80) = v13;
        *v13 = v0;
        v13[1] = MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:);
        v8 = v12;
        v9 = v29;

        return v9(v8);
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_14;
    }

    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 48);
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static CommonLogger.views);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 48);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      v22 = [v19 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_21607C000, v17, v18, "[%s] failed to perform action for workouts: workouts array is empty)", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);
    }

    v27 = *(v0 + 8);

    return v27();
  }

  v4 = *(v3 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts);
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_11:
    v2 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts;
    v3 = *(v0 + 48);
    goto LABEL_12;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x21CE93180](0, v4);

LABEL_7:
    *(v0 + 56) = v6;
    v28 = (*(v0 + 16) + **(v0 + 16));
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:);
    v8 = v6;
    v9 = v28;

    return v9(v8);
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall MutableWorkoutViewModel.setMockLocations(_:)(Swift::OpaquePointer a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x2D8);

  v3(v2);
}

uint64_t MutableWorkoutViewModel.render()()
{
  *(v1 + 144) = v0;
  return MEMORY[0x2822009F8](MutableWorkoutViewModel.render(), 0, 0);
}

{
  v28 = v0;
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts;
  v0[19] = OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_workouts;
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      v4 = v0[18];
      v5 = *((*MEMORY[0x277D85000] & *v4) + 0x2B0);
      v6 = ((*MEMORY[0x277D85000] & *v4) + 688) & 0xFFFFFFFFFFFFLL | 0xB3CD000000000000;
      v0[21] = v5;
      v0[22] = v6;
      if (v5())
      {
        v7 = *(v0[18] + v0[19]);
        if (v7 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
            goto LABEL_6;
          }
        }

        else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_6:
          if ((v7 & 0xC000000000000001) != 0)
          {

            v4 = MEMORY[0x21CE93180](0, v7);
          }

          else
          {
            if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_28;
            }

            v4 = *(v7 + 32);
          }

          v0[23] = v4;
          v8 = HKWorkout.distanceType.getter();
          if (v8)
          {

            if (one-time initialization token for assets == -1)
            {
LABEL_11:
              v9 = type metadata accessor for Logger();
              v0[24] = __swift_project_value_buffer(v9, static CommonLogger.assets);
              v10 = v4;
              v11 = Logger.logObject.getter();
              v12 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v11, v12))
              {
                v13 = swift_slowAlloc();
                v14 = swift_slowAlloc();
                v27 = v14;
                *v13 = 136315138;
                v15 = [v10 debugDescription];
                v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v18 = v17;

                v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v27);

                *(v13 + 4) = v19;
                _os_log_impl(&dword_21607C000, v11, v12, "[MutableWorkoutViewModel] Processing route based workout: %s", v13, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v14);
                MEMORY[0x21CE94770](v14, -1, -1);
                MEMORY[0x21CE94770](v13, -1, -1);
              }

              v20 = swift_task_alloc();
              v0[25] = v20;
              *v20 = v0;
              v20[1] = MutableWorkoutViewModel.render();

              return MutableWorkoutViewModel.setImageAndRoute(for:)(v10);
            }

LABEL_28:
            swift_once();
            goto LABEL_11;
          }
        }
      }

      v22 = v0[18];
      v23 = swift_task_alloc();
      v0[27] = v23;
      *(v23 + 16) = v22;
      *(v23 + 24) = 1;
      v24 = swift_task_alloc();
      v0[28] = v24;
      *(v24 + 16) = 1;
      *(v24 + 24) = v22;
      v25 = swift_task_alloc();
      v0[29] = v25;
      *v25 = v0;
      v25[1] = MutableWorkoutViewModel.render();

      return MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)(&async function pointer to partial apply for closure #1 in MutableWorkoutViewModel.setImage(for:render:size:), v23, &async function pointer to partial apply for closure #2 in MutableWorkoutViewModel.setImage(for:render:size:), v24);
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = MutableWorkoutViewModel.render();

  return MutableWorkoutViewModel.setWorkouts()();
}

{

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.render(), 0, 0);
}

{
  v24 = v0;
  v1 = v0[18];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x2B0);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 688) & 0xFFFFFFFFFFFFLL | 0xB3CD000000000000;
  v0[21] = v2;
  v0[22] = v3;
  if ((v2() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(v0[18] + v0[19]);
  if (v4 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_15;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v1 = MEMORY[0x21CE93180](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v1 = *(v4 + 32);
  }

  v0[23] = v1;
  v5 = HKWorkout.distanceType.getter();
  if (v5)
  {

    if (one-time initialization token for assets == -1)
    {
LABEL_9:
      v6 = type metadata accessor for Logger();
      v0[24] = __swift_project_value_buffer(v6, static CommonLogger.assets);
      v7 = v1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v23 = v11;
        *v10 = 136315138;
        v12 = [v7 debugDescription];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v23);

        *(v10 + 4) = v16;
        _os_log_impl(&dword_21607C000, v8, v9, "[MutableWorkoutViewModel] Processing route based workout: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x21CE94770](v11, -1, -1);
        MEMORY[0x21CE94770](v10, -1, -1);
      }

      v17 = swift_task_alloc();
      v0[25] = v17;
      *v17 = v0;
      v17[1] = MutableWorkoutViewModel.render();

      return MutableWorkoutViewModel.setImageAndRoute(for:)(v7);
    }

LABEL_22:
    swift_once();
    goto LABEL_9;
  }

LABEL_15:
  v19 = v0[18];
  v20 = swift_task_alloc();
  v0[27] = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = 1;
  v21 = swift_task_alloc();
  v0[28] = v21;
  *(v21 + 16) = 1;
  *(v21 + 24) = v19;
  v22 = swift_task_alloc();
  v0[29] = v22;
  *v22 = v0;
  v22[1] = MutableWorkoutViewModel.render();

  return MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)(&async function pointer to partial apply for closure #1 in MutableWorkoutViewModel.setImage(for:render:size:), v20, &async function pointer to partial apply for closure #2 in MutableWorkoutViewModel.setImage(for:render:size:), v21);
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = MutableWorkoutViewModel.render();
  }

  else
  {
    v2 = MutableWorkoutViewModel.render();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 144);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = MutableWorkoutViewModel.render();

  return MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)(&async function pointer to partial apply for closure #1 in MutableWorkoutViewModel.render(), v2, &async function pointer to partial apply for closure #2 in MutableWorkoutViewModel.render(), v3);
}

{

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.render(), 0, 0);
}

{
  v1 = v0[18];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = MutableWorkoutViewModel.render();

  return MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)(&async function pointer to partial apply for closure #1 in MutableWorkoutViewModel.render(), v2, &async function pointer to partial apply for closure #2 in MutableWorkoutViewModel.render(), v3);
}

{

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.render(), 0, 0);
}

{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 144)) + 0x330))();
  if (!v3)
  {
    v4 = (*((*v1 & **(v0 + 144)) + 0x318))(v2);
    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = *(v0 + 144);
    v6 = v4;
    specialized static WorkoutUtilities.localizedActiveEnergyBurnedString(_:)(v4);
    v8 = v7;
    v10 = v9;

    v11 = (v5 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_activeEnergyBurnedLocalizedString);
    swift_beginAccess();
    *v11 = v8;
    v11[1] = v10;
  }

LABEL_5:
  v12 = (*((*v1 & **(v0 + 144)) + 0x360))(v4);
  if (v13)
  {

    goto LABEL_16;
  }

  result = (*(v0 + 168))(v12);
  if (result)
  {
    v15 = *(*(v0 + 144) + *(v0 + 152));
    if (v15 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_16;
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {

      v16 = MEMORY[0x21CE93180](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 + 32);
    }

    v17 = (*((*v1 & **(v0 + 144)) + 0x348))();
    if (v17)
    {
      v18 = v17;
      v19 = *(v0 + 144);
      v20 = [objc_opt_self() activityTypeWithWorkout_];
      v21 = FIUIDistanceTypeForActivityType();
      v22 = [v18 _unit];
      [v18 doubleValueForUnit_];
      v24 = v23;

      specialized static WorkoutUtilities.localizedDistanceString(_:distanceType:)(v21, v24);
      v26 = v25;
      v28 = v27;

      v29 = (v19 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_distanceLocalizedString);
      swift_beginAccess();
      *v29 = v26;
      v29[1] = v28;
    }

    else
    {
    }
  }

LABEL_16:
  v30 = (*((*v1 & **(v0 + 144)) + 0x390))(result);
  if (!v31)
  {
    v32 = (*((*v1 & **(v0 + 144)) + 0x378))(v30);
    if (!v32)
    {
      goto LABEL_20;
    }

    v33 = *(v0 + 144);
    v34 = v32;
    specialized static WorkoutUtilities.localizedAverageHeartRateString(_:)(v32);
    v36 = v35;
    v38 = v37;

    v39 = (v33 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_averageHeartRateLocalizedString);
    swift_beginAccess();
    *v39 = v36;
    v39[1] = v38;
  }

LABEL_20:
  v40 = (*((*v1 & **(v0 + 144)) + 0x3C0))(v32);
  if (v41)
  {
LABEL_23:

    goto LABEL_24;
  }

  v42 = COERCE_DOUBLE((*((*v1 & **(v0 + 144)) + 0x3A8))(v40));
  if ((v43 & 1) == 0)
  {
    v44 = *(v0 + 144);
    specialized static WorkoutUtilities.localizedDurationString(_:)(v42);
    v46 = v45;
    v48 = v47;
    v49 = (v44 + OBJC_IVAR____TtC9MomentsUI23MutableWorkoutViewModel_durationLocalizedString);
    swift_beginAccess();
    *v49 = v46;
    v49[1] = v48;
    goto LABEL_23;
  }

LABEL_24:
  v50 = *(v0 + 8);

  return v50();
}

{
  v16 = v0;
  v1 = v0[26];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21607C000, v3, v4, "[MutableWorkoutViewModel] failed to generate route, error=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v10 = v0[18];
  v11 = swift_task_alloc();
  v0[33] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  v12 = swift_task_alloc();
  v0[34] = v12;
  *(v12 + 16) = 1;
  *(v12 + 24) = v10;
  v13 = swift_task_alloc();
  v0[35] = v13;
  *v13 = v0;
  v13[1] = MutableWorkoutViewModel.render();

  return MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)(&closure #1 in MutableWorkoutViewModel.setImage(for:render:size:)partial apply, v11, &closure #2 in MutableWorkoutViewModel.setImage(for:render:size:)partial apply, v12);
}

{

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);
  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = MutableWorkoutViewModel.render();

  return MutableWorkoutViewModel.asyncPerformForSingleWorkoutOrGroup(_:forGroup:)(&async function pointer to partial apply for closure #1 in MutableWorkoutViewModel.render(), v3, &async function pointer to partial apply for closure #2 in MutableWorkoutViewModel.render(), v4);
}