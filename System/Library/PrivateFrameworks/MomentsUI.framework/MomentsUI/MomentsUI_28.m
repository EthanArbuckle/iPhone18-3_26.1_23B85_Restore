void *StateOfMindCollectionViewCell.stateOfMindView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI29StateOfMindCollectionViewCell_stateOfMindView);
  v2 = v1;
  return v1;
}

id StateOfMindCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t static StateOfMindCollectionViewSmallCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static StateOfMindCollectionViewSmallCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *StateOfMindCollectionViewSmallCell.stateOfMindView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34StateOfMindCollectionViewSmallCell_stateOfMindView);
  v2 = v1;
  return v1;
}

void StateOfMindCollectionViewCell.init(coder:)(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *a2;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v6 = static MutableStateOfMindViewModel.empty;
  v8 = a3;
  v7 = objc_allocWithZone(type metadata accessor for StateOfMindView());
  *(v3 + v5) = StateOfMindView.init(viewModel:style:)(v6, &v8);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc StateOfMindCollectionViewCell.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v7 = *a4;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v8 = static MutableStateOfMindViewModel.empty;
  v10 = a5;
  v9 = objc_allocWithZone(type metadata accessor for StateOfMindView());
  *(a1 + v7) = StateOfMindView.init(viewModel:style:)(v8, &v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void StateOfMindCollectionViewCell.releaseResources()(const char *a1, void *a2)
{
  v5 = v2;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.views);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21607C000, v7, v8, a1, v9, 2u);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  v10 = *(v5 + *a2);
  if (v10)
  {
    v11 = *(*(v10 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView) + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);

    [v11 setImage_];
  }
}

id StateOfMindCollectionViewCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *specialized StateOfMindCollectionViewCell.init(frame:)(uint64_t *a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  if (one-time initialization token for empty != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  v5 = static MutableStateOfMindViewModel.empty;
  v16 = a2;
  v6 = objc_allocWithZone(type metadata accessor for StateOfMindView());
  v7 = StateOfMindView.init(viewModel:style:)(v5, &v16);
  *(v3 + v4) = v7;
  if (v7)
  {
    v8 = v7;
    v9 = CollectionViewAssetCell.init(assetView:)(v8);
    v10 = *((*MEMORY[0x277D85000] & *v9) + 0x90);
    v11 = v9;
    v12 = v10();
    [v12 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v11;
  }

  else
  {
    v14 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v14);
  }
}

unint64_t NotificationAnalyticsAddress.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000039;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

MomentsUI::NotificationPromptType_optional __swiftcall NotificationPromptType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::SmartNotificationTimerSource_optional __swiftcall SmartNotificationTimerSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::NotificationEventTrigger_optional __swiftcall NotificationEventTrigger.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::NotificationActivityTrigger_optional __swiftcall NotificationActivityTrigger.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::NotificationAnalyticsAddress_optional __swiftcall NotificationAnalyticsAddress.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NotificationAnalyticsAddress.init(rawValue:), v3);

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

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationEventTrigger and conformance NotificationEventTrigger()
{
  result = lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger;
  if (!lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationActivityTrigger and conformance NotificationActivityTrigger()
{
  result = lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger;
  if (!lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationPromptType and conformance NotificationPromptType()
{
  result = lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType;
  if (!lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource()
{
  result = lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource;
  if (!lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting()
{
  result = lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting;
  if (!lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NotificationAnalyticsAddress(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000039;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "com.apple.Moments.Notifications";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000039;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v7 = "com.apple.Moments.Notifications";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t lazy protocol witness table accessor for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress()
{
  result = lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress;
  if (!lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NotificationAnalyticsAddress()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NotificationAnalyticsAddress()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NotificationAnalyticsAddress()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NotificationAnalyticsAddress@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NotificationAnalyticsAddress.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance NotificationAnalyticsAddress(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000039;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "com.apple.Moments.Notifications";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id closure #1 in variable initialization expression of MediaThirdPartyView.iconView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 _setCornerRadius_];
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor_];
  v4 = [v0 layer];
  LODWORD(v5) = 1036831949;
  [v4 setShadowOpacity_];

  v6 = [v0 layer];
  [v6 setShadowRadius_];

  v7 = [v0 layer];
  [v7 setShadowOffset_];

  return v0;
}

void closure #1 in variable initialization expression of MediaThirdPartyView.titleLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont_];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 colorWithAlphaComponent_];

    [v0 setTextColor_];
    [v0 setMaximumContentSizeCategory_];
    [v0 setLineBreakMode_];
    [v0 setTextAlignment_];
    [v0 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of MediaThirdPartyView.subtitleLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() whiteColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v0 setTextColor_];
  [v0 setMaximumContentSizeCategory_];
  [v0 setLineBreakMode_];
  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

void closure #1 in variable initialization expression of MediaThirdPartyView.categoryLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont_];
    v6 = v0;
    [v6 setAlpha_];
    v7 = [objc_opt_self() whiteColor];
    v8 = [v7 colorWithAlphaComponent_];

    [v6 setTextColor_];
    [v6 setMaximumContentSizeCategory_];

    [v6 setLineBreakMode_];
    [v6 setTextAlignment_];
    [v6 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

void *MediaThirdPartyView.leadingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.leadingConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.trailingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.trailingConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.topConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.topConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.bottomConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyView.bottomConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MediaThirdPartyView.init(viewModel:style:)(void *a1, char *a2)
{
  v37 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView;
  type metadata accessor for MediaThirdPartyEffectBackgroundView();
  v36 = v4;
  *&v2[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView;
  *&v2[v35] = closure #1 in variable initialization expression of MediaThirdPartyView.iconView();
  v5 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.titleLabel();
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel;
  *&v2[v7] = closure #1 in variable initialization expression of MediaThirdPartyView.subtitleLabel();
  v8 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.categoryLabel();
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v11 setAxis_];
  [v11 setSpacing_];
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint] = 0;
  v13 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint] = 0;
  v14 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint] = 0;
  v15 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint;
  *&v2[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint] = 0;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v16 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v17 = static MediaThirdPartyView.Constants.accessibilityString;
    v18 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v19 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v20 = a1;
    *&v2[v18] = [v19 init];
    swift_unknownObjectWeakInit();
    v21 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 56))(&v2[v21], 1, 1, v22);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v37;
    v38.receiver = v2;
    v38.super_class = type metadata accessor for AssetView();
    v23 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v24 = *((*MEMORY[0x277D85000] & *v23) + 0xE8);
    v25 = v23;
    v24();
    AssetView.setFallBackView()();
    [v25 setIsAccessibilityElement_];
    v26 = [v25 accessibilityTraits];
    if ((v16 & ~v26) != 0)
    {
      v27 = v16;
    }

    else
    {
      v27 = 0;
    }

    [v25 setAccessibilityTraits_];
    v28 = MEMORY[0x21CE91FC0](v17, *(&v17 + 1));
    [v25 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21658CA50;
    v30 = type metadata accessor for UITraitUserInterfaceStyle();
    v31 = MEMORY[0x277D74BF0];
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    v32 = v25;
    MEMORY[0x21CE92C30](v29, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v32 handleTraitChange];
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];

    [v32 setClipsToBounds_];
    v33 = v32;
    MediaThirdPartyView.addSubViews()();
    MediaThirdPartyView.addConstraints()();

    return v23;
  }

  else
  {

    type metadata accessor for MediaThirdPartyView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for MediaThirdPartyView()
{
  result = type metadata singleton initialization cache for MediaThirdPartyView;
  if (!type metadata singleton initialization cache for MediaThirdPartyView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MediaThirdPartyView.addSubViews()()
{
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView];
  [v0 addSubview_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel];

  [v1 addArrangedSubview_];
}

Swift::Void __swiftcall MediaThirdPartyView.addConstraints()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView) setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v1 leadingAnchor];
    v5 = [v3 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    [v6 setConstant_];
    if (v6)
    {
      [v6 setActive_];
    }
  }

  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v1 trailingAnchor];
    v10 = [v8 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setConstant_];
    if (v11)
    {
      [v11 setActive_];
    }
  }

  v12 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v12 leadingAnchor];
    v16 = [v14 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setConstant_];
    if (v17)
    {
      [v17 setActive_];
    }
  }

  v18 = [v12 superview];
  if (v18)
  {
    v19 = v18;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [v12 trailingAnchor];
    v21 = [v19 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    [v22 setConstant_];
    if (v22)
    {
      [v22 setActive_];
    }
  }

  v23 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
  v24 = [v23 superview];
  if (v24)
  {
    v25 = v24;
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    v26 = [v23 leadingAnchor];
    v27 = [v25 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    [v28 setConstant_];
    if (v28)
    {
      [v28 setActive_];
    }
  }

  v29 = [v23 superview];
  if (v29)
  {
    v30 = v29;
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    v31 = [v23 trailingAnchor];
    v32 = [v30 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    [v33 setConstant_];
    if (v33)
    {
      [v33 setActive_];
    }
  }

  MediaThirdPartyView.adjustStackViewConstraints()();
}

id MediaThirdPartyView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall MediaThirdPartyView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView);

  [v1 setHidden_];
}

Swift::Void __swiftcall MediaThirdPartyView.showViews()()
{
  AssetView.showViews()();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView);

  [v1 setHidden_];
}

uint64_t MediaThirdPartyView.updateAndShowViews()()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MediaThirdPartyView.updateAndShowViews(), v3, v2);
}

{
  v1 = *(v0 + 16);

  MediaThirdPartyView.updateData()();
  MediaThirdPartyView.adjustIconConstraints()();
  MediaThirdPartyView.adjustStackViewConstraints()();
  MediaThirdPartyView.adjustLabels()();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall MediaThirdPartyView.updateData()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v3)
  {
    v21 = v3;
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    v6 = v21;
    if (v5)
    {
      v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView);
      (*(v5 + 24))(v23, ObjectType, v5);
      if (v24)
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v23[0] green:v23[1] blue:v23[2] alpha:v23[3]];
      }

      (*(v5 + 32))(v23, ObjectType, v5);
      (*((*v2 & *v7) + 0xA8))(v8, v23);

      v9 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView);
      v10 = (*(v5 + 56))(ObjectType, v5);
      if (v10)
      {
        v11 = v10;
        v12 = Image.uiImage.getter();
      }

      else
      {
        v12 = 0;
      }

      [v9 setImage_];

      v13 = *(v1 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
      v14 = (*(v5 + 48))(ObjectType, v5);
      if (v15)
      {
        v16 = MEMORY[0x21CE91FC0](v14);
      }

      else
      {
        v16 = 0;
      }

      [v13 setText_];

      v17 = *(v1 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
      v18 = (*(v5 + 40))(ObjectType, v5);
      if (v19)
      {
        v20 = MEMORY[0x21CE91FC0](v18);
      }

      else
      {
        v20 = 0;
      }

      [v17 setText_];

      MediaThirdPartyView.setCategoryLabelText()();
      v6 = v22;
    }
  }
}

Swift::Void __swiftcall MediaThirdPartyView.adjustIconConstraints()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView);
  UIView.removeAllConstraints()();
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v30);
  if (v30)
  {
    v2 = v30 == 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    if (v30 == 6)
    {
      v3 = [v1 superview];
      if (v3)
      {
        v4 = v3;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v5 = [v1 topAnchor];
        v6 = [v4 topAnchor];
        v7 = [v5 constraintEqualToAnchor_];

        [v7 setConstant_];
        if (v7)
        {
          [v7 setActive_];
        }
      }

      v8 = [v1 superview];
      if (v8)
      {
        v9 = v8;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v10 = [v1 leadingAnchor];
        v11 = [v9 leadingAnchor];
        v12 = [v10 constraintEqualToAnchor_];

        [v12 setConstant_];
        if (v12)
        {
          [v12 setActive_];
        }
      }

      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v13 = [v1 widthAnchor];
      v14 = [v13 constraintEqualToConstant_];

      [v14 setActive_];
      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v15 = [v1 heightAnchor];
      v16 = [v15 constraintEqualToConstant_];
    }

    else
    {
      v17 = [v1 superview];
      if (v17)
      {
        v18 = v17;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v19 = [v1 bottomAnchor];
        v20 = [v18 bottomAnchor];
        v21 = [v19 constraintEqualToAnchor_];

        if (v21)
        {
          [v21 setConstant_];
          [v21 setActive_];
        }
      }

      v22 = [v1 superview];
      if (v22)
      {
        v23 = v22;
        [v1 setTranslatesAutoresizingMaskIntoConstraints_];
        v24 = [v1 leadingAnchor];
        v25 = [v23 leadingAnchor];
        v26 = [v24 constraintEqualToAnchor_];

        [v26 setConstant_];
        if (v26)
        {
          [v26 setActive_];
        }
      }

      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v27 = [v1 widthAnchor];
      v28 = [v27 constraintEqualToConstant_];

      [v28 setActive_];
      [v1 setTranslatesAutoresizingMaskIntoConstraints_];
      v15 = [v1 heightAnchor];
      v16 = [v15 constraintEqualToConstant_];
    }

    v29 = v16;

    [v29 setActive_];
  }
}

Swift::Void __swiftcall MediaThirdPartyView.adjustStackViewConstraints()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
  if (v2)
  {
    v3 = v2;
    [v2 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  v4 = (*((*v1 & *v0) + 0x170))();
  if (v4)
  {
    v5 = v4;
    [v4 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  v6 = (*((*v1 & *v0) + 0x188))();
  if (v6)
  {
    v7 = v6;
    [v6 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  v8 = (*((*v1 & *v0) + 0x1A0))();
  if (v8)
  {
    v9 = v8;
    [v8 setActive_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView) removeConstraint_];
  }

  (*((*v1 & *v0) + 0x88))(&v58);
  if (v58 - 3 < 3)
  {
    v10 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView);
    v16 = [v10 superview];
    if (v16)
    {
      v17 = v16;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v18 = [v10 topAnchor];
      v19 = [v17 topAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      [v20 setConstant_];
      if (v20)
      {
        [v20 setActive_];
      }
    }

    else
    {
      v20 = 0;
    }

    (*((*v1 & *v0) + 0x190))(v20);
    v29 = [v10 superview];
    if (v29)
    {
      v30 = v29;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v31 = [v10 leadingAnchor];
      v32 = [v30 leadingAnchor];
      v33 = [v31 constraintEqualToAnchor_];

      [v33 setConstant_];
      if (v33)
      {
        [v33 setActive_];
      }
    }

    else
    {
      v33 = 0;
    }

    (*((*v1 & *v0) + 0x160))(v33);
    v34 = [v10 superview];
    if (v34)
    {
      v35 = v34;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v36 = [v10 trailingAnchor];
      v37 = [v35 trailingAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      [v38 setConstant_];
LABEL_40:
      if (v38)
      {
        [v38 setActive_];
      }

      goto LABEL_44;
    }

LABEL_43:
    v38 = 0;
LABEL_44:
    (*((*v1 & *v0) + 0x178))(v38);
    [v10 setAlignment_];
    [v10 setCustomSpacing:*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel) afterView:3.0];
    v47 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);

    [v10 setCustomSpacing:v47 afterView:8.0];
    return;
  }

  if (v58 - 1 < 2)
  {
    v10 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView);
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v13 = [v10 topAnchor];
      v14 = [v12 topAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      [v15 setConstant_];
      if (v15)
      {
        [v15 setActive_];
      }
    }

    else
    {
      v15 = 0;
    }

    (*((*v1 & *v0) + 0x190))(v15);
    v39 = [v10 superview];
    if (v39)
    {
      v40 = v39;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v41 = [v10 leadingAnchor];
      v42 = [v40 leadingAnchor];
      v43 = [v41 constraintEqualToAnchor_];

      [v43 setConstant_];
      if (v43)
      {
        [v43 setActive_];
      }
    }

    else
    {
      v43 = 0;
    }

    (*((*v1 & *v0) + 0x160))(v43);
    v44 = [v10 superview];
    if (v44)
    {
      v35 = v44;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      v45 = [v10 trailingAnchor];
      v46 = [v35 trailingAnchor];
      v38 = [v45 constraintEqualToAnchor_];

      [v38 setConstant_];
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  if (v58 == 6)
  {
    v21 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView);
    v22 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v23 = [v21 superview];
    v24 = &unk_27821E000;
    if (v23)
    {
      v25 = v23;
      [v21 setTranslatesAutoresizingMaskIntoConstraints_];
      v26 = [v21 leadingAnchor];
      v27 = [v25 leadingAnchor];
      v28 = [v26 constraintEqualToAnchor_];

      [v28 setConstant_];
      if (v28)
      {
        [v28 setActive_];
      }

      v24 = &unk_27821E000;
    }

    else
    {
      v28 = 0;
    }

    (*((*v1 & *v0) + 0x160))(v28);
    v48 = [v21 superview];
    if (v48)
    {
      v49 = v48;
      [v21 v24[440]];
      v50 = [v21 trailingAnchor];
      v51 = [v49 trailingAnchor];
      v52 = [v50 constraintEqualToAnchor_];

      [v52 setConstant_];
      if (v52)
      {
        [v52 setActive_];
      }

      v24 = &unk_27821E000;
      v22 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }

    else
    {
      v52 = 0;
    }

    (*((*v1 & *v0) + 0x178))(v52);
    v53 = [v21 v22[5]];
    if (v53)
    {
      v54 = v53;
      [v21 v24[440]];
      v55 = [v21 bottomAnchor];
      v56 = [v54 bottomAnchor];
      v57 = [v55 constraintEqualToAnchor_];

      if (v57)
      {
        [v57 setConstant_];
        [v57 setActive_];
      }
    }

    else
    {
      v57 = 0;
    }

    (*((*v1 & *v0) + 0x1A8))(v57);
    [v21 setAlignment_];
    [v21 setCustomSpacing:*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel) afterView:3.0];
    [v21 setCustomSpacing:*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel) afterView:8.0];
  }
}

Swift::Void __swiftcall MediaThirdPartyView.adjustLabels()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v9);
  if (v9 > 4u)
  {
    if (v9 > 6u)
    {
      if (v9 != 7)
      {
        return;
      }

LABEL_11:
      [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel) setHidden_];
      [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel) setHidden_];
      v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
      v8 = 1;
      goto LABEL_12;
    }

    if (v9 == 5)
    {
      v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
      [v3 setNumberOfLines_];
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
      [v4 setNumberOfLines_];
      [v4 setAlpha_];
LABEL_16:
      [v3 setHidden_];
      [v4 setHidden_];
      [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel) setHidden_];
      return;
    }
  }

  else if (v9 <= 2u)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
        [v1 setNumberOfLines_];
        v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
        [v2 setNumberOfLines_];
        [v1 setHidden_];
        [v2 setHidden_];
        [*(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel) setHidden_];
        return;
      }

      v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
      [v3 setNumberOfLines_];
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
      [v4 setNumberOfLines_];
      [v4 setAlpha_];
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel);
  [v5 setNumberOfLines_];
  v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel);
  [v6 setNumberOfLines_];
  [v6 setAlpha_];
  [v5 setHidden_];
  [v6 setHidden_];
  v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
  v8 = 0;
LABEL_12:

  [v7 setHidden_];
}

id MediaThirdPartyView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MediaThirdPartyView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint);
}

id MediaThirdPartyView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaThirdPartyView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance MediaThirdPartyView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 440))(a1, &v6);
  *a3 = result;
  return result;
}

Swift::Void __swiftcall MediaThirdPartyView.setCategoryLabelText()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v1)
  {
    v18 = v1;
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 16))(&v19, ObjectType, v3);
      if (v19 > 1u)
      {
        if (v19 == 2)
        {
          v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
          type metadata accessor for MediaThirdPartyView();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v6 = [objc_opt_self() bundleForClass_];
          v17 = 0x8000000216583200;
          v7 = 0x747369747241;
          v9 = 0xD000000000000015;
          v10 = 0xE600000000000000;
          v11.super.isa = v6;
          v12 = 0;
          v13 = 0xE000000000000000;
LABEL_13:
          v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v11, *&v12, *(&v17 - 1));

          v16 = MEMORY[0x21CE91FC0](v15._countAndFlagsBits, v15._object);

          [v4 setText_];

          return;
        }
      }

      else if (v19)
      {
        v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
        type metadata accessor for MediaThirdPartyView();
        v5 = swift_getObjCClassFromMetadata();
        v6 = [objc_opt_self() bundleForClass_];
        v17 = 0x8000000216583220;
        v7 = 0x6D75626C41;
LABEL_12:
        v10 = 0xE500000000000000;
        v11.super.isa = v6;
        v12 = 0;
        v13 = 0xE000000000000000;
        v9 = 0xD000000000000014;
        goto LABEL_13;
      }

      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel);
      type metadata accessor for MediaThirdPartyView();
      v14 = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v17 = 0x80000002165831E0;
      v7 = 0x616964654DLL;
      goto LABEL_12;
    }
  }
}

void specialized MediaThirdPartyView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_colorView;
  type metadata accessor for MediaThirdPartyEffectBackgroundView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_iconView;
  *(v0 + v2) = closure #1 in variable initialization expression of MediaThirdPartyView.iconView();
  v3 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_titleLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.titleLabel();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_subtitleLabel;
  *(v0 + v5) = closure #1 in variable initialization expression of MediaThirdPartyView.subtitleLabel();
  v6 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_categoryLabel;
  closure #1 in variable initialization expression of MediaThirdPartyView.categoryLabel();
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_stackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v9 setAxis_];
  [v9 setSpacing_];
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_leadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_trailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19MediaThirdPartyView_bottomConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AssetType.pluralLocalizedString.getter(int a1, Swift::Int count)
{
  v2 = AssetType.assetTypeAsPluralString(count:includeCount:)(count, 0);
  v3 = StaticString.description.getter();
  v5 = v4;
  v6 = [objc_opt_self() mainBundle];
  v10._object = v5;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = v3;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v6, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::String __swiftcall AssetType.assetTypeAsPluralString(count:includeCount:)(Swift::Int count, Swift::Bool includeCount)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v8 - 8);
  type metadata accessor for InterstitialListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  switch(v3)
  {
    case 1:
    case 2:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x6F697461636F4C20;
        v13 = 0xEA0000000000736ELL;
        goto LABEL_46;
      }

      v16 = 0x6E6F697461636F4CLL;
      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v17 = 0xE900000000000073;
        goto LABEL_106;
      }

      v52 = 0x800000021657B360;
      goto LABEL_75;
    case 3:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x74756F6B726F5720;
        goto LABEL_32;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v38 = 0x756F6B726F57;
        goto LABEL_74;
      }

      v52 = 0x800000021657B360;
      v42 = 0x756F6B726F57;
      goto LABEL_98;
    case 4:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v28._object = 0x8000000216583380;
        v28._countAndFlagsBits = 0xD000000000000012;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        goto LABEL_47;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v16 = 0x2074756F6B726F57;
        v17 = 0xEF7972616D6D7553;
      }

      else
      {
        v16 = 0xD000000000000011;
        v52 = 0x800000021657B360;
        v17 = 0x8000000216583360;
      }

      goto LABEL_106;
    case 5:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x74756F6B726F5720;
        v13 = 0xEF736574756F5220;
        goto LABEL_46;
      }

      v16 = 0x2074756F6B726F57;
      v52 = 0x800000021657B360;
      if (count < 2)
      {
        v17 = 0xED00006574756F52;
      }

      else
      {
        v17 = 0xEE00736574756F52;
      }

      goto LABEL_106;
    case 6:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x6F20657461745320;
        v13 = 0xEF73646E694D2066;
        goto LABEL_46;
      }

      v52 = 0x800000021657B360;
      v16 = 0x666F206574617453;
      if (count < 2)
      {
        v17 = 0xED0000646E694D20;
      }

      else
      {
        v17 = 0xEE0073646E694D20;
      }

      goto LABEL_106;
    case 7:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x736E755220;
        v13 = 0xE500000000000000;
        goto LABEL_46;
      }

      v52 = 0x800000021657B360;
      if (count < 2)
      {
        v16 = 7238994;
        v17 = 0xE300000000000000;
      }

      else
      {
        v16 = 1936618834;
        v17 = 0xE400000000000000;
      }

      goto LABEL_106;
    case 8:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x736B6C615720;
        goto LABEL_39;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v39 = 1802264919;
        goto LABEL_69;
      }

      v52 = 0x800000021657B360;
      v16 = 1802264919;
      v17 = 0xE400000000000000;
      goto LABEL_106;
    case 9:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v18._countAndFlagsBits = 0;
        v18._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x572026206E755220;
        v13 = 0xEC000000736B6C61;
        goto LABEL_46;
      }

      v52 = 0x800000021657B360;
      v16 = 0x61572026206E7552;
      if (count < 2)
      {
        v17 = 0xEA00000000006B6CLL;
      }

      else
      {
        v17 = 0xEB00000000736B6CLL;
      }

      goto LABEL_106;
    case 10:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x73676E6F5320;
        v13 = 0xE600000000000000;
        goto LABEL_46;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v16 = 1735290707;
        v17 = 0xE400000000000000;
        goto LABEL_106;
      }

      v52 = 0x800000021657B360;
      v39 = 1735290707;
LABEL_69:
      v16 = v39 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      goto LABEL_105;
    case 11:
    case 14:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v14._countAndFlagsBits = 0;
        v14._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v15 = 0x6D75626C4120;
        goto LABEL_44;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v16 = 0x736D75626C41;
        v17 = 0xE600000000000000;
        goto LABEL_106;
      }

      v52 = 0x800000021657B360;
      v16 = 0x6D75626C41;
      goto LABEL_105;
    case 12:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x74736163646F5020;
LABEL_32:
        v13 = 0xE900000000000073;
        goto LABEL_46;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v42 = 0x736163646F50;
LABEL_98:
        v16 = v42 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        v17 = 0xE700000000000000;
      }

      else
      {
        v52 = 0x800000021657B360;
        v38 = 0x736163646F50;
LABEL_74:
        v16 = v38 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
LABEL_75:
        v17 = 0xE800000000000000;
      }

      goto LABEL_106;
    case 13:
      if (!includeCount)
      {
        v52 = 0x800000021657B360;
        v16 = 0x616964654DLL;
        goto LABEL_105;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v12 = 0x616964654D20;
LABEL_39:
      v13 = 0xE600000000000000;
      goto LABEL_46;
    case 15:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v19._countAndFlagsBits = 0;
        v19._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x7374736974724120;
        v13 = 0xE800000000000000;
        goto LABEL_46;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v37 = 0x747369747241;
        goto LABEL_64;
      }

      v52 = 0x800000021657B360;
      v16 = 0x747369747241;
      v17 = 0xE600000000000000;
      goto LABEL_106;
    case 16:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v15 = 0x6F746F685020;
        goto LABEL_44;
      }

      if (count >= 2)
      {
        v52 = 0x800000021657B360;
        v41 = 1953458256;
        goto LABEL_86;
      }

      v52 = 0x800000021657B360;
      v43 = 1953458256;
      goto LABEL_104;
    case 17:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x73726574736F5020;
        v13 = 0xE800000000000000;
        goto LABEL_46;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v16 = 0x726574736F50;
        v17 = 0xE600000000000000;
      }

      else
      {
        v52 = 0x800000021657B360;
        v37 = 0x726574736F50;
LABEL_64:
        v16 = v37 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
        v17 = 0xE700000000000000;
      }

      goto LABEL_106;
    case 18:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x6850206576694C20;
        v13 = 0xEC000000736F746FLL;
        goto LABEL_46;
      }

      v16 = 0x6F6850206576694CLL;
      if (count < 2)
      {
        v40 = 0xEA00000000006B6CLL;
      }

      else
      {
        v40 = 0xEB00000000736B6CLL;
      }

      v52 = 0x800000021657B360;
      v17 = v40 + 1032;
      goto LABEL_106;
    case 19:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v15 = 0x6F6564695620;
LABEL_44:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
        goto LABEL_45;
      }

      if (count < 2)
      {
        v52 = 0x800000021657B360;
        v43 = 1701079382;
LABEL_104:
        v16 = v43 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
LABEL_105:
        v17 = 0xE500000000000000;
      }

      else
      {
        v52 = 0x800000021657B360;
        v41 = 1701079382;
LABEL_86:
        v16 = v41 & 0xFFFF0000FFFFFFFFLL | 0x736F00000000;
        v17 = 0xE600000000000000;
      }

      goto LABEL_106;
    default:
      if (includeCount)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v12 = 0x656C706F655020;
LABEL_45:
        v13 = 0xE700000000000000;
LABEL_46:
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v12);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
LABEL_47:
        countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      }

      else
      {
        v52 = 0x800000021657B360;
        if (count < 2)
        {
          v16 = 0x6E6F73726550;
        }

        else
        {
          v16 = 0x656C706F6550;
        }

        v17 = 0xE600000000000000;
LABEL_106:
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        v45 = 0xD00000000000001ALL;
        v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, 0, v10, v44, *(&v52 - 1));
        object = v46._object;
        countAndFlagsBits = v46._countAndFlagsBits;
      }

      v47 = countAndFlagsBits;
      v48 = object;

      v49 = v47;
      v50 = v48;
      result._object = v50;
      result._countAndFlagsBits = v49;
      return result;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AssetType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AssetType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

Swift::String __swiftcall AssetType.localizedStringWithCount(_:)(Swift::Int a1)
{
  v3 = AssetType.assetTypeAsPluralString(count:includeCount:)(a1, 1);
  object = v3._object;
  countAndFlagsBits = v3._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t specialized AssetType.init(_:)(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 64))(ObjectType, v3);

    v6 = (v5 & 1) == 0;
    v7 = 1;
LABEL_4:
    if (v6)
    {
      return v7;
    }

    else
    {
      return v7 + 1;
    }
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    v11 = swift_getObjectType();
    if ((*(v10 + 104))(v11, v10))
    {

      return 3;
    }

    v26 = (*(v10 + 112))(v11, v10);

    v6 = (v26 & 1) == 0;
    v7 = 4;
    goto LABEL_4;
  }

  if (swift_conformsToProtocol2() && a1)
  {

    return 6;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && a1)
  {
    v13 = v12;
    v14 = swift_getObjectType();
    (*(v13 + 16))(&v34, v14, v13);
    if ((v35 & 1) == 0)
    {
      switch(v34)
      {
        case 3:

          return 9;
        case 2:

          return 8;
        case 1:

          return 7;
      }
    }
  }

  else
  {
    v27 = swift_conformsToProtocol2();
    if (v27 && a1)
    {
      v28 = v27;
      v29 = swift_getObjectType();
      (*(v28 + 32))(&v34, v29, v28);
      if (v34 <= 1u)
      {
        if (v34)
        {

          return 10;
        }
      }

      else
      {
        if (v34 == 2)
        {

          return 11;
        }

        if (v34 == 3)
        {

          return 12;
        }
      }
    }

    else
    {
      v30 = swift_conformsToProtocol2();
      if (v30 && a1)
      {
        v31 = v30;
        v32 = swift_getObjectType();
        (*(v31 + 16))(&v34, v32, v31);
        v33 = v34;
        if (v34 != 3)
        {

          return (v33 + 13);
        }
      }

      else
      {
        if (swift_conformsToProtocol2() && a1 || swift_conformsToProtocol2() && a1)
        {

          return 16;
        }

        if (swift_conformsToProtocol2() && a1)
        {

          return 17;
        }

        if (swift_conformsToProtocol2() && a1)
        {

          return 19;
        }

        if (swift_conformsToProtocol2() && a1)
        {

          return 0;
        }
      }
    }
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static CommonLogger.assets);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    v16 = v16;
    v21 = [v16 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v34);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_21607C000, v17, v18, "Unable to map viewModel=%s to asset type", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x21CE94770](v20, -1, -1);
    MEMORY[0x21CE94770](v19, -1, -1);
  }

  return 20;
}

unint64_t specialized AssetType.init(rawValue:)(unint64_t result)
{
  if (result >= 0x14)
  {
    return 20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetType and conformance AssetType()
{
  result = lazy protocol witness table cache variable for type AssetType and conformance AssetType;
  if (!lazy protocol witness table cache variable for type AssetType and conformance AssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetType and conformance AssetType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *SelectableAssetView.init(assetView:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView;
  type metadata accessor for CheckmarkView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor;
  v7 = objc_opt_self();
  *&v1[v6] = [v7 systemBlueColor];
  v8 = &v1[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_subtitle];
  v10 = type metadata accessor for SelectableAssetView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v82.receiver = v1;
  v82.super_class = v10;
  v11 = objc_msgSendSuper2(&v82, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = *&v11[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView];
  v13 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView;
  v79 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView;
  v14 = v11;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = v14;
  v16 = *&v11[v13];
  v17 = v15;
  [v17 addSubview_];
  v18 = a1;
  [v18 &off_27821E5B8 + 2];
  v80 = v18;
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  [v17 &off_27821E7F8];
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v20 setAxis_];
  [v20 setDistribution_];
  [v20 setAlignment_];
  [v20 setSpacing_];
  v21 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_titleLabel;
  v22 = *&v17[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_titleLabel];
  v23 = objc_opt_self();
  v24 = *MEMORY[0x277D76920];
  v25 = v22;
  v26 = [v23 preferredFontForTextStyle_];
  [v25 setFont_];

  [*&v17[v21] setNumberOfLines_];
  [*&v17[v21] setAdjustsFontForContentSizeCategory_];
  LODWORD(v27) = 1148846080;
  [*&v17[v21] setContentCompressionResistancePriority:1 forAxis:v27];
  v28 = *&v17[v21];
  v29 = v7;
  v30 = [v7 labelColor];
  [v28 setTextColor_];

  v31 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_subtitleLabel;
  v32 = *MEMORY[0x277D76968];
  v33 = *&v17[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_subtitleLabel];
  v34 = [v23 preferredFontForTextStyle_];
  [v33 setFont_];

  v35 = *&v17[v31];
  v36 = [v29 secondaryLabelColor];
  [v35 setTextColor_];

  [*&v17[v31] setNumberOfLines_];
  [*&v17[v31] setAdjustsFontForContentSizeCategory_];
  LODWORD(v37) = 1148846080;
  [*&v17[v31] setContentCompressionResistancePriority:1 forAxis:v37];
  [*&v17[v21] setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 addArrangedSubview_];
  [*&v17[v31] setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 addArrangedSubview_];
  v78 = v20;
  [v78 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 addSubview_];
  v81 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2165A0B50;
  v39 = [*&v11[v79] leadingAnchor];
  v40 = [v17 leadingAnchor];

  v41 = [v39 constraintEqualToAnchor:v40 constant:12.0];
  *(v38 + 32) = v41;
  v42 = [*&v11[v79] widthAnchor];
  v43 = [v42 constraintEqualToConstant_];

  *(v38 + 40) = v43;
  v44 = [*&v11[v79] centerYAnchor];
  v45 = [v17 centerYAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v38 + 48) = v46;
  v47 = [v80 leadingAnchor];
  v48 = [*&v11[v79] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];

  *(v38 + 56) = v49;
  v50 = [v80 centerYAnchor];
  v51 = [*&v11[v79] centerYAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v38 + 64) = v52;
  v53 = [v80 widthAnchor];
  v54 = [v53 constraintEqualToConstant_];

  *(v38 + 72) = v54;
  v55 = [v80 heightAnchor];
  v56 = [v80 widthAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v38 + 80) = v57;
  v58 = [v80 topAnchor];
  v59 = [v17 topAnchor];

  v60 = [v58 constraintGreaterThanOrEqualToAnchor:v59 constant:10.0];
  *(v38 + 88) = v60;
  v61 = [v80 bottomAnchor];
  v62 = [v17 bottomAnchor];

  v63 = [v61 constraintLessThanOrEqualToAnchor:v62 constant:10.0];
  *(v38 + 96) = v63;
  v64 = [v78 topAnchor];
  v65 = [v17 topAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:12.0];
  *(v38 + 104) = v66;
  v67 = [v78 leadingAnchor];
  v68 = [v80 trailingAnchor];

  v69 = [v67 constraintEqualToAnchor:v68 constant:10.0];
  *(v38 + 112) = v69;
  v70 = [v78 trailingAnchor];
  v71 = [v17 trailingAnchor];

  v72 = [v70 constraintEqualToAnchor:v71 constant:-16.0];
  *(v38 + 120) = v72;
  v73 = [v78 bottomAnchor];

  v74 = [v17 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-12.0];

  *(v38 + 128) = v75;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints_];

  return v17;
}

void InterstitialListViewCell.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_text];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  v6 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView;
  v7 = *&v2[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView];
  if (v7 || (type metadata accessor for InterstitialListViewCell.HeaderView(), v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], objc_msgSend(v8, sel_setTranslatesAutoresizingMaskIntoConstraints_, 0), objc_msgSend(v2, sel_addSubview_, v8), UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0), , v9 = *&v2[v6], *&v2[v6] = v8, v9, (v7 = *&v2[v6]) != 0))
  {
    v11 = *v5;
    v10 = *(v5 + 1);
    v12 = *((*MEMORY[0x277D85000] & *v7) + 0x80);

    v13 = v7;
    v12(v11, v10);
  }
}

void (*InterstitialListViewCell.text.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_text;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.text.modify;
}

void InterstitialListViewCell.text.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView;
    v6 = *&v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView];
    if (!v6)
    {
      type metadata accessor for InterstitialListViewCell.HeaderView();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v7 setTranslatesAutoresizingMaskIntoConstraints_];
      [v4 addSubview_];
      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

      v8 = *&v4[v5];
      *&v4[v5] = v7;

      v6 = *&v4[v5];
      if (!v6)
      {
        goto LABEL_6;
      }

      v4 = v3[3];
    }

    v9 = &v4[v3[4]];
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *((*MEMORY[0x277D85000] & *v6) + 0x80);

    v13 = v6;
    v12(v10, v11);
  }

LABEL_6:

  free(v3);
}

uint64_t InterstitialListViewCell.showsButton.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_showsButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void InterstitialListViewCell.showsButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_showsButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView);
  if (v4)
  {
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
    v6 = v4;
    v5(a1 & 1);
  }
}

void (*InterstitialListViewCell.showsButton.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_showsButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.showsButton.modify;
}

void InterstitialListViewCell.showsButton.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      v7 = *((*MEMORY[0x277D85000] & *v5) + 0x98);
      v8 = v5;
      v7(v6);
    }
  }

  free(v3);
}

uint64_t key path setter for InterstitialListViewCell.buttonAction : InterstitialListViewCell(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x108);
  v5 = *(a1 + 16);
  outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(*a1, v3, v5);
  return v4(v2, v3, v5);
}

uint64_t outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of InterstitialListViewCell.HeaderView.ButtonAction();
  }

  return result;
}

void InterstitialListViewCell.buttonAction.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_buttonAction;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(a1, a2, a3);
  outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(v8, v9, v10);
  v11 = *(v3 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView);
  if (v11)
  {
    v12 = *v7;
    v13 = *(v7 + 8);
    v14 = *((*MEMORY[0x277D85000] & *v11) + 0xB0);
    v15 = *(v7 + 16);
    v16 = v11;
    outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(v12, v13, v15);
    v14(v12, v13, v15);
    outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(a1, a2, a3);
  }

  else
  {
    outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(a1, a2, a3);
  }
}

uint64_t outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of InterstitialListViewCell.HeaderView.ButtonAction();
  }

  return result;
}

void (*InterstitialListViewCell.buttonAction.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_buttonAction;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.buttonAction.modify;
}

void InterstitialListViewCell.buttonAction.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView);
    if (v5)
    {
      v6 = v4 + v3[4];
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);
      v10 = *(v6 + 16);
      v11 = v5;
      outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(v7, v8, v10);
      v9(v7, v8, v10);
    }
  }

  free(v3);
}

id InterstitialListViewCell.checkmarkColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_checkmarkColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void InterstitialListViewCell.checkmarkColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_checkmarkColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView);
  if (v6)
  {
    v7 = *(v1 + v3);
    v8 = *&v6[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor];
    *&v6[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor] = v7;
    v9 = v7;
    v10 = v6;

    v11 = *&v10[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView];
    v12 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor;
    v13 = *(v11 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor);
    *(v11 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor) = v9;
    v14 = v9;

    v15 = CheckmarkView.buttonView.getter();
    (*((*MEMORY[0x277D85000] & *v15) + 0x70))(*(v11 + v12));

    v5 = v15;
  }
}

void (*InterstitialListViewCell.checkmarkColor.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_checkmarkColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.checkmarkColor.modify;
}

void InterstitialListViewCell.checkmarkColor.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      v7 = *&v5[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor];
      *&v5[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor] = v6;
      v8 = v6;
      v9 = v5;

      v10 = *&v9[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView];
      v11 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor;
      v12 = *(v10 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor);
      *(v10 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor) = v8;
      v13 = v8;

      v14 = CheckmarkView.buttonView.getter();
      (*((*MEMORY[0x277D85000] & *v14) + 0x70))(*(v10 + v11));
    }
  }

  free(v3);
}

Swift::Void __swiftcall InterstitialListViewCell.setCheckmark(selected:)(Swift::Bool selected)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView];
    v4 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_isSelected;
    *(v3 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_isSelected) = selected;
    v5 = v2;
    v6 = CheckmarkView.buttonView.getter();
    (*((*MEMORY[0x277D85000] & *v6) + 0x88))(*(v3 + v4));
  }
}

void (*InterstitialListViewCell.title.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.title.modify;
}

void InterstitialListViewCell.title.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = (v5 + *a3);
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  v11 = *(v5 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView);
  if (v11)
  {
    v13 = *v10;
    v12 = v10[1];
    v14 = &v11[*a4];
    *v14 = v13;
    *(v14 + 1) = v12;
    v15 = v11;

    v16 = *&v15[*a5];
    if (v12)
    {

      v17 = MEMORY[0x21CE91FC0](v13, v12);
    }

    else
    {
      v17 = 0;
    }

    [v16 setText_];
  }
}

void (*InterstitialListViewCell.subtitle.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_subtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.subtitle.modify;
}

void InterstitialListViewCell.title.modify(void **a1, char a2, void *a3, void *a4)
{
  v7 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v8 = v7[3];
    v9 = *(v8 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView);
    if (v9)
    {
      v10 = (v8 + v7[4]);
      v12 = *v10;
      v11 = v10[1];
      v13 = &v9[*a3];
      *v13 = v12;
      *(v13 + 1) = v11;
      v14 = v9;

      v15 = *&v14[*a4];
      if (v11)
      {

        v16 = MEMORY[0x21CE91FC0](v12, v11);
      }

      else
      {
        v16 = 0;
      }

      [v15 setText_];
    }
  }

  free(v7);
}

void InterstitialListViewCell.assetViewChanged(assetView:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView;
  if (!*(v1 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView))
  {
    v5 = objc_allocWithZone(type metadata accessor for SelectableAssetView());
    v6 = SelectableAssetView.init(assetView:)(a1);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addSubview_];
    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_216597AD0;
    v9 = [v6 topAnchor];
    v10 = [v2 topAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [v6 leadingAnchor];
    v13 = [v2 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v8 + 40) = v14;
    v15 = [v6 trailingAnchor];
    v16 = [v2 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v8 + 48) = v17;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 activateConstraints_];

    v19 = [v6 bottomAnchor];
    v20 = [v2 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    LODWORD(v22) = 1148829696;
    [v21 setPriority_];
    v23 = [v21 setActive_];
    v24 = MEMORY[0x277D85000];
    v25 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))(v23);
    v26 = *&v6[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor];
    *&v6[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor] = v25;
    v27 = v25;

    v28 = *&v6[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView];
    v29 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor;
    v30 = *(v28 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor);
    *(v28 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor) = v27;
    v31 = v27;

    v32 = CheckmarkView.buttonView.getter();
    (*((*v24 & *v32) + 0x70))(*(v28 + v29));

    v33 = *(v2 + v3);
    *(v2 + v3) = v6;
  }
}

Swift::Void __swiftcall InterstitialListViewCell.prepareForReuse()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for InterstitialListViewCell();
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView];
  *&v0[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView] = 0;

  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView];
  *&v0[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView] = 0;
}

id InterstitialListViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView] = 0;
  v9 = &v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_text];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_showsButton] = 1;
  v10 = &v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_buttonAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = -1;
  *&v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView] = 0;
  v11 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_checkmarkColor;
  *&v4[v11] = [objc_opt_self() systemBlueColor];
  v12 = &v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_title];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_subtitle];
  v14 = type metadata accessor for InterstitialListViewCell();
  *v13 = 0;
  v13[1] = 0;
  v16.receiver = v4;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
}

id InterstitialListViewCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView] = 0;
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_text];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_showsButton] = 1;
  v4 = &v1[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_buttonAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = -1;
  *&v1[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView] = 0;
  v5 = OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_checkmarkColor;
  *&v1[v5] = [objc_opt_self() systemBlueColor];
  v6 = &v1[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_title];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_subtitle];
  v8 = type metadata accessor for InterstitialListViewCell();
  *v7 = 0;
  v7[1] = 0;
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t InterstitialListViewCell.__ivar_destroyer()
{

  outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(*(v0 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_buttonAction), *(v0 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_buttonAction + 8), *(v0 + OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_buttonAction + 16));
}

void InterstitialListViewCell.HeaderView.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_text);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  v6 = *(v2 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_label);
  if (a2)
  {
    v7 = MEMORY[0x21CE91FC0](a1, a2);
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];
}

void (*InterstitialListViewCell.HeaderView.text.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_text;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.HeaderView.text.modify;
}

void InterstitialListViewCell.HeaderView.text.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *(v4 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_label);
    v7 = v5[1];
    if (v7)
    {
      v8 = *v5;

      v9 = MEMORY[0x21CE91FC0](v8, v7);
    }

    else
    {
      v9 = 0;
    }

    [v6 setText_];
  }

  free(v3);
}

uint64_t InterstitialListViewCell.HeaderView.showsButton.getter()
{
  v1 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_showsButton;
  swift_beginAccess();
  return *(v0 + v1);
}

id InterstitialListViewCell.HeaderView.showsButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_showsButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button) setHidden_];
}

void (*InterstitialListViewCell.HeaderView.showsButton.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_showsButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return InterstitialListViewCell.HeaderView.showsButton.modify;
}

void InterstitialListViewCell.HeaderView.showsButton.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button) setHidden_];
  }

  free(v3);
}

uint64_t key path setter for InterstitialListViewCell.HeaderView.buttonAction : InterstitialListViewCell.HeaderView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xB0);
  v5 = *(a1 + 16);
  outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(*a1, v3, v5);
  return v4(v2, v3, v5);
}

uint64_t InterstitialListViewCell.HeaderView.buttonAction.didset()
{
  v1 = v0 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_buttonAction;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 != 255)
  {
    v5 = *v1;
    v4 = *(v1 + 8);
    v6 = *(v0 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button);
    type metadata accessor for InterstitialListViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    outlined copy of InterstitialListViewCell.HeaderView.ButtonAction();
    v9 = [v8 bundleForClass_];
    if (v3)
    {
      v18 = 0x8000000216583590;
      v10 = 0x41207463656C6553;
      v11 = 0xEA00000000006C6CLL;
      v12.super.isa = v9;
      v13 = 0;
      v14 = 0xE000000000000000;
      v15 = 0xD000000000000010;
    }

    else
    {
      v18 = 0xEF6E6F697463656CLL;
      v10 = 0x7261656C43;
      v15 = 0x6553207261656C43;
      v11 = 0xE500000000000000;
      v12.super.isa = v9;
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, 0, v12, *&v13, *&v15);

    v17 = MEMORY[0x21CE91FC0](v16._countAndFlagsBits, v16._object);

    [v6 setTitle:v17 forState:0];

    return outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(v5, v4, v3);
  }

  return result;
}

uint64_t InterstitialListViewCell.buttonAction.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(*v2, *(v2 + 8), *(v2 + 16));
  return v3;
}

uint64_t InterstitialListViewCell.HeaderView.buttonAction.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_buttonAction;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  outlined copy of InterstitialListViewCell.HeaderView.ButtonAction?(a1, a2, a3);
  outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(v8, v9, v10);
  InterstitialListViewCell.HeaderView.buttonAction.didset();
  return outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(a1, a2, a3);
}

uint64_t (*InterstitialListViewCell.HeaderView.buttonAction.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return InterstitialListViewCell.HeaderView.buttonAction.modify;
}

uint64_t InterstitialListViewCell.HeaderView.buttonAction.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return InterstitialListViewCell.HeaderView.buttonAction.didset();
  }

  return result;
}

id InterstitialListViewCell.HeaderView.tintColor.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for InterstitialListViewCell.HeaderView();
  v1 = objc_msgSendSuper2(&v3, sel_tintColor);

  return v1;
}

void InterstitialListViewCell.HeaderView.tintColor.setter(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InterstitialListViewCell.HeaderView();
  objc_msgSendSuper2(&v5, sel_setTintColor_, a1);
  v3 = *&v1[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button];
  v4 = [v1 tintColor];
  [v3 setTintColor_];
}

void InterstitialListViewCell.HeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_label;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = &v4[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_text];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button;
  *&v4[v11] = [objc_opt_self() buttonWithType_];
  v4[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_showsButton] = 0;
  v12 = &v4[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_buttonAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -1;
  v54.receiver = v4;
  v54.super_class = type metadata accessor for InterstitialListViewCell.HeaderView();
  v13 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v15 = v13;
  v16 = [v14 init];
  [v16 setDistribution_];
  [v16 setAxis_];
  v17 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_label;
  v18 = *&v15[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_label];
  v19 = objc_opt_self();
  v20 = *MEMORY[0x277D769D0];
  v21 = v18;
  v22 = [v19 preferredFontForTextStyle_];
  v23 = [v22 fontDescriptor];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];

  if (v24)
  {
    v25 = [v19 fontWithDescriptor:v24 size:0.0];

    [v21 setFont_];
    v26 = *&v15[v17];
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 secondaryLabelColor];
    [v28 setTextColor_];

    [*&v15[v17] setNumberOfLines_];
    [*&v15[v17] setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v15[v17] setAdjustsFontForContentSizeCategory_];
    [v16 addArrangedSubview_];
    v30 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button;
    v31 = [*&v15[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button] titleLabel];
    [v31 setAdjustsFontForContentSizeCategory_];

    v32 = [*&v15[v30] titleLabel];
    if (v32)
    {
      v33 = v32;
      v34 = [v19 preferredFontForTextStyle_];
      [v33 setFont_];
    }

    [*&v15[v30] setContentHorizontalAlignment_];
    [*&v15[v30] addTarget:v15 action:sel_performButtonAction forControlEvents:64];
    [*&v15[v30] setTranslatesAutoresizingMaskIntoConstraints_];
    [v16 addArrangedSubview_];
    v35 = v16;
    [v35 setTranslatesAutoresizingMaskIntoConstraints_];
    v36 = v15;
    [v36 addSubview_];
    v37 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_216590220;
    v39 = [v35 leadingAnchor];
    v40 = [v36 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:16.0];

    *(v38 + 32) = v41;
    v42 = [v35 topAnchor];
    v43 = [v36 topAnchor];

    v44 = [v42 constraintEqualToAnchor:v43 constant:12.0];
    *(v38 + 40) = v44;
    v45 = [v35 bottomAnchor];
    v46 = [v36 bottomAnchor];

    v47 = [v45 constraintEqualToAnchor:v46 constant:-12.0];
    *(v38 + 48) = v47;
    v48 = [v35 trailingAnchor];

    v49 = [v36 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-16.0];

    *(v38 + 56) = v50;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v37 activateConstraints_];

    v52 = *&v15[v30];
    v53 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_showsButton;
    swift_beginAccess();
    [v52 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

id InterstitialListViewCell.HeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SelectableAssetView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized SelectableAssetView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkView;
  type metadata accessor for CheckmarkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_subtitleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_checkmarkColor;
  *(v0 + v4) = [objc_opt_self() systemBlueColor];
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_title);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F19SelectableAssetView_subtitle);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized InterstitialListViewCell.HeaderView.init(coder:)()
{
  v1 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = (v0 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_text);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button;
  *(v0 + v3) = [objc_opt_self() buttonWithType_];
  *(v0 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_showsButton) = 0;
  v4 = v0 + OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_buttonAction;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for InterstitialListViewCell.HeaderView.ButtonAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for InterstitialListViewCell.HeaderView.ButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (qword_2165A0C98[v6] != qword_2165A0C98[a1]);
  return v4 != 0;
}

id Asset.transferrable.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (!v5)
  {
    return 0;
  }

  if (v5 >> 62)
  {
LABEL_22:
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 0;
    }
  }

  v7 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x21CE93180](v7, v5);
    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_16;
    }

LABEL_9:
    v10 = *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles];
    if (v10)
    {
      v11 = *(v10 + 16);
      v12 = (v10 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == 8)
        {
          goto LABEL_17;
        }
      }
    }

    if (v7 == v6)
    {
      return 0;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v5 + 32 + 8 * v7);
  v9 = __OFADD__(v7++, 1);
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v14 = v8;
  v15 = specialized static Asset.mappedTransferViewModel(_:)(v8);
  if (v15)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21658E210;
    *(v17 + 32) = v16;
    v18 = v16;
    UUID.init()();
    v19 = type metadata accessor for Asset();
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
    *&v20[v21] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v22 = &v20[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
    *v22 = 0;
    v22[8] = 1;
    (*(v2 + 16))(&v20[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v4, v1);
    *&v20[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v17;
    swift_beginAccess();
    *v22 = 0;
    v22[8] = 1;
    v26.receiver = v20;
    v26.super_class = v19;
    v23 = objc_msgSendSuper2(&v26, sel_init);

    (*(v2 + 8))(v4, v1);
    return v23;
  }

  return 0;
}

uint64_t Asset.transferRepresentation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CE93180](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  result = v4;
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {

    return 0;
  }

  return result;
}

id specialized static Asset.mappedTransferViewModel(_:)(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    v4 = objc_allocWithZone(type metadata accessor for TransferContactViewModel());
    return TransferContactViewModel.init(contactViewModel:)(a1, v3);
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && a1)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for TransferWorkoutViewModel());
    return TransferWorkoutViewModel.init(workoutViewModel:)(a1, v7);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    v11 = objc_allocWithZone(type metadata accessor for TransferMapViewModel());
    return TransferMapViewModel.init(mapViewModel:)(a1, v10);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && a1)
  {
    v13 = v12;
    v14 = objc_allocWithZone(type metadata accessor for TransferMotionActivityViewModel());
    return TransferMotionActivityViewModel.init(motionAcitvityViewModel:)(a1, v13);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && a1)
  {
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for TransferStateOfMindViewModel());
    return TransferStateOfMindViewModel.init(stateOfMindViewModel:)(a1, v16);
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && a1)
  {
    v19 = v18;
    v20 = objc_allocWithZone(type metadata accessor for TransferMediaFirstPartyViewModel());
    return TransferMediaFirstPartyViewModel.init(mediaFirstPartyViewModel:)(a1, v19);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && a1)
  {
    v22 = v21;
    v23 = objc_allocWithZone(type metadata accessor for TransferMediaThirdPartyViewModel());
    return TransferMediaThirdPartyViewModel.init(mediaThirdPartyViewModel:)(a1, v22);
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && a1)
  {
    v25 = v24;
    v26 = objc_allocWithZone(type metadata accessor for TransferPhotoViewModel());
    v27 = a1;
    v28 = specialized TransferPhotoViewModel.init(photoViewModel:)(v27, v25);
LABEL_25:
    v29 = v28;

    return v29;
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && a1)
  {
    v31 = v30;
    v32 = objc_allocWithZone(type metadata accessor for TransferReflectionViewModel());
    return TransferReflectionViewModel.init(reflectionViewModel:)(a1, v31);
  }

  else
  {
    v33 = swift_conformsToProtocol2();
    if (v33 && a1)
    {
      v34 = v33;
      v35 = objc_allocWithZone(type metadata accessor for TransferVideoViewModel());
      v27 = a1;
      v28 = specialized TransferVideoViewModel.init(videoViewModel:)(v27, v34);
      goto LABEL_25;
    }

    v36 = swift_conformsToProtocol2();
    if (v36 && a1)
    {
      v37 = v36;
      v38 = objc_allocWithZone(type metadata accessor for TransferLivePhotoViewModel());
      v27 = a1;
      v28 = specialized TransferLivePhotoViewModel.init(livePhotoViewModel:)(v27, v37);
      goto LABEL_25;
    }

    v39 = swift_conformsToProtocol2();
    result = 0;
    if (v39)
    {
      if (a1)
      {
        objc_allocWithZone(type metadata accessor for TransferPosterViewModel());
        return TransferPosterViewModel.init(posterViewModel:)(a1, v39);
      }
    }
  }

  return result;
}

uint64_t one-time initialization function for CommonLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static BTask.CommonLogger);
  __swift_project_value_buffer(v0, static BTask.CommonLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t BTask.CommonLogger.unsafeMutableAddressor()
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static BTask.CommonLogger);
}

uint64_t static BTask.CommonLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static BTask.CommonLogger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in BTask.init(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static BTask.CommonLogger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165835D0, v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v12);
    _os_log_impl(&dword_21607C000, v7, v8, "BTask.%{public}s Cancelling background task for: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  result = swift_beginAccess();
  *(a3 + 16) = 1;
  return result;
}

uint64_t specialized closure #2 in BTask.init(name:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](specialized closure #2 in BTask.init(name:operation:), 0, 0);
}

uint64_t specialized closure #2 in BTask.init(name:operation:)()
{
  v15 = v0;
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static BTask.CommonLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165835D0, &v14);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_21607C000, v2, v3, "BTask.%{public}s Starting background task for: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v8 = v0[4];
  v9 = v0[6] + 16;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *(v10 + 16) = v9;
  v13 = (v8 + *v8);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = specialized closure #2 in BTask.init(name:operation:);

  return v13(partial apply for closure #1 in closure #2 in BTask.init(name:operation:), v10);
}

{

  return MEMORY[0x2822009F8](specialized closure #2 in BTask.init(name:operation:), 0, 0);
}

{
  v11 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165835D0, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v10);
    _os_log_impl(&dword_21607C000, v1, v2, "BTask.%{public}s Finishing background task for: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v0[11] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized closure #2 in BTask.init(name:operation:), v8, v7);
}

{
  v1 = *(v0 + 88);

  *(v0 + 104) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](specialized closure #2 in BTask.init(name:operation:), 0, 0);
}

{
  v1 = v0[13];
  [v1 endBackgroundTask_];

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in static BTask.detached(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static BTask.CommonLogger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165835B0, v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v12);
    _os_log_impl(&dword_21607C000, v7, v8, "BTask.%{public}s Cancelling background task for: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  result = swift_beginAccess();
  *(a3 + 16) = 1;
  return result;
}

uint64_t specialized closure #2 in static BTask.detached(name:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](specialized closure #2 in static BTask.detached(name:operation:), 0, 0);
}

uint64_t specialized closure #2 in static BTask.detached(name:operation:)()
{
  v15 = v0;
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static BTask.CommonLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165835B0, &v14);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_21607C000, v2, v3, "BTask.%{public}s Starting background task for: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v8 = v0[4];
  v9 = v0[6] + 16;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *(v10 + 16) = v9;
  v13 = (v8 + *v8);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = specialized closure #2 in static BTask.detached(name:operation:);

  return v13(partial apply for closure #1 in closure #2 in static BTask.detached(name:operation:), v10);
}

{

  return MEMORY[0x2822009F8](specialized closure #2 in static BTask.detached(name:operation:), 0, 0);
}

{
  v11 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165835B0, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v10);
    _os_log_impl(&dword_21607C000, v1, v2, "BTask.%{public}s Finishing background task for: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v0[11] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized closure #2 in static BTask.detached(name:operation:), v8, v7);
}

{
  v1 = *(v0 + 88);

  *(v0 + 104) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](specialized closure #2 in static BTask.detached(name:operation:), 0, 0);
}

uint64_t specialized BTask.init(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9;
  v11 = one-time initialization token for CommonLogger;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static BTask.CommonLogger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165835D0, aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&dword_21607C000, v13, v14, "BTask.%{public}s Creating background task for: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = [objc_opt_self() sharedApplication];
  v19 = MEMORY[0x21CE91FC0](a1, a2);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v17;
  aBlock[4] = partial apply for closure #1 in BTask.init(name:operation:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15_4;
  v21 = _Block_copy(aBlock);

  v22 = [v18 beginBackgroundTaskWithName:v19 expirationHandler:v21];
  _Block_release(v21);

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a1;
  v24[5] = a2;
  v24[6] = a3;
  v24[7] = a4;
  v24[8] = v17;
  v24[9] = v22;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in BTask.init(name:operation:), v24);
}

uint64_t specialized static BTask.detached(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9;
  v11 = one-time initialization token for CommonLogger;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static BTask.CommonLogger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000002165835B0, aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&dword_21607C000, v13, v14, "BTask.%{public}s Creating background task for: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = [objc_opt_self() sharedApplication];
  v19 = MEMORY[0x21CE91FC0](a1, a2);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v17;
  aBlock[4] = partial apply for closure #1 in static BTask.detached(name:operation:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_28;
  v21 = _Block_copy(aBlock);

  v22 = [v18 beginBackgroundTaskWithName:v19 expirationHandler:v21];
  _Block_release(v21);

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a1;
  v24[5] = a2;
  v24[6] = a3;
  v24[7] = a4;
  v24[8] = v17;
  v24[9] = v22;

  v25 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in static BTask.detached(name:operation:), v24);

  outlined destroy of TaskPriority?(v10);

  return v25;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #2 in static BTask.detached(name:operation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return specialized closure #2 in static BTask.detached(name:operation:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_2Tm_3()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_5Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for specialized closure #2 in BTask.init(name:operation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return specialized closure #2 in BTask.init(name:operation:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in closure #2 in BTask.init(name:operation:)()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *v1;
}

uint64_t Client.isFirstPartyJournal.getter()
{
  v1 = (v0 + *(type metadata accessor for Client() + 32));
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  if (*v1 == 0xD000000000000011 && v2 == 0x8000000216578900)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t type metadata accessor for Client()
{
  result = type metadata singleton initialization cache for Client;
  if (!type metadata singleton initialization cache for Client)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Client.connectionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *Client.rootPresenterViewController.getter()
{
  v1 = *(v0 + *(type metadata accessor for Client() + 20));
  v2 = v1;
  return v1;
}

uint64_t Client.appName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Client() + 28));

  return v1;
}

uint64_t Client.connectionBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Client() + 32));

  return v1;
}

int *Client.init(connectionUUID:rootPresenterViewController:sharedServer:appName:connectionBundleIdentifier:isInternalBuild:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for Client();
  v21 = (a9 + result[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + result[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + result[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + result[8]);
  *v24 = a8;
  v24[1] = a10;
  *(a9 + result[9]) = a11;
  return result;
}

void type metadata completion function for Client()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SuggestionSheetPresenterControllerDelegate?(319, &lazy cache variable for type metadata for SuggestionSheetPresenterControllerDelegate?, &_s9MomentsUI42SuggestionSheetPresenterControllerDelegate_pMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SuggestionSheetPresenterControllerDelegate?(319, &lazy cache variable for type metadata for SharedServer?, &_s9MomentsUI12SharedServer_pMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for SuggestionSheetPresenterControllerDelegate?(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t TransferReflectionViewModel.prompt.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_prompt);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TransferReflectionViewModel.prompt.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_prompt);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *TransferReflectionViewModel.lightBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferReflectionViewModel.lightBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TransferReflectionViewModel.darkBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferReflectionViewModel.darkBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

MomentsUI::TransferReflectionViewModel::CodingKeys_optional __swiftcall TransferReflectionViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferReflectionViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t TransferReflectionViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000013;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferReflectionViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x8000000216575CF0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000216575CF0;
  }

  else
  {
    v6 = 0x8000000216575D10;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74706D6F7270;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x8000000216575D10;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x74706D6F7270;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferReflectionViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferReflectionViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferReflectionViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferReflectionViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferReflectionViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferReflectionViewModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x8000000216575CF0;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2 != 1)
  {
    v4 = 0x8000000216575D10;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74706D6F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferReflectionViewModel.CodingKeys()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferReflectionViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferReflectionViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferReflectionViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferReflectionViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferReflectionViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_prompt);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor;
  *(v1 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor) = 0;
  v6 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor;
  *(v1 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor) = 0;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v4 = 0;
  v4[1] = 0;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v9 = *(v2 + v5);
  *(v2 + v5) = v8;

  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v11 = *(v2 + v6);
  *(v2 + v6) = v10;

  v12 = specialized AssetViewModel.init(coder:)(a1);
  return v12;
}

Swift::Void __swiftcall TransferReflectionViewModel.encode(with:)(NSCoder with)
{
  AssetViewModel.encode(with:)(with);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x220))();
  if (v5)
  {
    v6 = MEMORY[0x21CE91FC0](v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x21CE91FC0](0x74706D6F7270, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  v8 = (*((*v3 & *v1) + 0x238))();
  v9 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216575CF0);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = (*((*v3 & *v1) + 0x250))();
  v11 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216575D10);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
}

void TransferReflectionViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_prompt);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferReflectionViewModel.init(dbObject:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_prompt);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferReflectionViewModel.init(reflectionViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v48 - v7;
  v8 = &v2[OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_prompt];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor;
  *&v2[OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_lightBackgroundColor] = 0;
  v50 = OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor;
  *&v2[OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor] = 0;
  v10 = swift_getObjectType();
  v11 = *(a2 + 16);
  v12 = v11(v10, a2);
  if (v12)
  {
    v13 = v12;
    v14 = *(a2 + 24);
    v49 = v10;
    v15 = v14(v10, a2);
    if ((v15 & 0x8000000000000000) == 0 && v15 < *(v13 + 16))
    {
      v16 = v13 + 16 * v15;
      v18 = *(v16 + 32);
      v17 = *(v16 + 40);

      v10 = v49;
      goto LABEL_11;
    }

    v10 = v49;
  }

  v19 = v11(v10, a2);
  if (v19)
  {
    if (v19[2])
    {
      v18 = v19[4];
      v17 = v19[5];

      goto LABEL_11;
    }
  }

  v18 = 0;
  v17 = 0;
LABEL_11:
  swift_beginAccess();
  *v8 = v18;
  v8[1] = v17;

  v20 = (*(a2 + 48))(v10, a2);
  swift_beginAccess();
  v21 = *&v3[v9];
  *&v3[v9] = v20;

  v22 = (*(a2 + 56))(v10, a2);
  v23 = v50;
  swift_beginAccess();
  v24 = *&v3[v23];
  *&v3[v23] = v22;

  v25 = v10;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v26 = static ScreenSize.zero;
  v27 = MEMORY[0x277D85000];
  v28 = *((*MEMORY[0x277D85000] & *a1) + 0xB8);
  v29 = a1;
  v30 = v28();

  v31 = *((*v27 & *v29) + 0xD0);
  v32 = v29;
  v49 = v31();
  v48 = v33;

  v34 = v52;
  (*(*(a2 + 8) + 24))(v25);
  LODWORD(v50) = *(v32 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v35 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v36 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v38 = type metadata accessor for DateInterval();
  (*(*(v38 - 8) + 56))(&v3[v37], 1, 1, v38);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v26;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v39 = *&v3[v35];
  *&v3[v35] = v30;
  v40 = v26;
  v41 = v30;

  swift_beginAccess();
  v42 = v48;
  *v36 = v49;
  v36[1] = v42;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v34, &v3[v37]);
  v43 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v50;
  (*(ObjectType + 328))(v54, v43);
  LOBYTE(v37) = v54[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v44 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v44 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v44 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v44 + 112) = v37;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v44;
  v45 = type metadata accessor for AssetViewModel();
  v53.receiver = v3;
  v53.super_class = v45;
  v46 = objc_msgSendSuper2(&v53, sel_init);

  outlined destroy of DateInterval?(v34);
  return v46;
}

void TransferReflectionViewModel.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI27TransferReflectionViewModel_darkBackgroundColor);
}

id TransferReflectionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferReflectionViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferReflectionViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferReflectionViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for TransferReflectionViewModel()
{
  result = type metadata singleton initialization cache for TransferReflectionViewModel;
  if (!type metadata singleton initialization cache for TransferReflectionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferReflectionViewModel.CodingKeys and conformance TransferReflectionViewModel.CodingKeys);
  }

  return result;
}

id TransferPhotoViewModel.__allocating_init(photoViewModel:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized TransferPhotoViewModel.init(photoViewModel:)(a1, a2);

  return v6;
}

void *TransferPhotoViewModel.urlBasedImage.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferPhotoViewModel.urlBasedImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL TransferPhotoViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPhotoViewModel.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL TransferPhotoViewModel.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPhotoViewModel.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferPhotoViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferPhotoViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferPhotoViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TransferPhotoViewModel.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferPhotoViewModel.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TransferPhotoViewModel.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferPhotoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferPhotoViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferPhotoViewModel.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage] = 0;
  type metadata accessor for URLBasedImage();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = v5;

  return TransferPhotoFamilyViewModel.init(coder:)(a1);
}

id TransferPhotoViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage;
  *(v2 + OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage) = 0;
  type metadata accessor for URLBasedImage();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v6 = *(v2 + v4);
  *(v2 + v4) = v5;

  return TransferPhotoFamilyViewModel.init(coder:)(a1);
}

Swift::Void __swiftcall TransferPhotoViewModel.encode(with:)(NSCoder with)
{
  TransferPhotoFamilyViewModel.encode(with:)(with);
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x298))();
  v4 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006567616D49);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

void TransferPhotoViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferPhotoViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferPhotoViewModel.init(photoViewModel:)(void *a1, uint64_t a2)
{
  v3 = specialized TransferPhotoViewModel.init(photoViewModel:)(a1, a2);

  return v3;
}

id TransferPhotoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferPhotoViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized TransferPhotoViewModel.init(photoViewModel:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v12 = OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage;
  *&v2[OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage] = 0;
  v13 = swift_getObjectType();
  v14 = (*(a2 + 16))(v13, a2);
  if (v14)
  {
    v15 = v14;
    v16 = objc_allocWithZone(type metadata accessor for URLBasedImage());
    v17 = specialized URLBasedImage.init(image:filterExif:)(v15);

    swift_beginAccess();
    v18 = *&v3[v12];
    *&v3[v12] = v17;
  }

  v19 = *(a2 + 8);
  v20 = *(v19 + 8);
  v21 = (*(v20 + 8))(v13, v20);
  v78 = v22;
  v79 = v21;
  (*(v20 + 24))(v13, v20);
  (*(v19 + 24))(&v86, v13, v19);
  (*(v19 + 16))(&v88, v13, v19);
  (*(v19 + 32))(&v90, v13, v19);
  v76 = (*(v19 + 40))(v13, v19);
  v24 = v23;
  v77 = *(a1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v25 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect] = 0;
  v26 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect] = 0;
  v27 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  *&v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect] = 0;
  v28 = &v3[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier];
  *v28 = 0;
  v28[1] = 0;
  if (v87)
  {
    if (v89)
    {
      goto LABEL_5;
    }
  }

  else
  {
    width = v86.size.width;
    height = v86.size.height;
    x = v86.origin.x;
    y = v86.origin.y;
    v59 = CGRectGetWidth(v86);
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    *&height = CGRectGetHeight(v93);
    v60 = type metadata accessor for ScreenRect();
    v61 = objc_allocWithZone(v60);
    v57 = x;
    *&v61[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v57;
    v58 = y;
    *&v61[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v58;
    *&v61[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v59;
    *&v61[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(height);
    v81.receiver = v61;
    v81.super_class = v60;
    v62 = objc_msgSendSuper2(&v81, sel_init);
    swift_beginAccess();
    v63 = *&v3[v25];
    *&v3[v25] = v62;

    if (v89)
    {
LABEL_5:
      if (v91)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v65 = v88.size.width;
  v64 = v88.size.height;
  v67 = v88.origin.x;
  v66 = v88.origin.y;
  v70 = CGRectGetWidth(v88);
  v94.origin.x = v67;
  v94.origin.y = v66;
  v94.size.width = v65;
  v94.size.height = v64;
  *&v64 = CGRectGetHeight(v94);
  v71 = type metadata accessor for ScreenRect();
  v72 = objc_allocWithZone(v71);
  v68 = v67;
  *&v72[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v68;
  v69 = v66;
  *&v72[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v69;
  *&v72[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v70;
  *&v72[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v64);
  v82.receiver = v72;
  v82.super_class = v71;
  v73 = objc_msgSendSuper2(&v82, sel_init);
  swift_beginAccess();
  v74 = *&v3[v26];
  *&v3[v26] = v73;

  if ((v91 & 1) == 0)
  {
LABEL_6:
    v30 = v90.size.width;
    v29 = v90.size.height;
    v32 = v90.origin.x;
    v31 = v90.origin.y;
    v35 = CGRectGetWidth(v90);
    v92.origin.x = v32;
    v92.origin.y = v31;
    v92.size.width = v30;
    v92.size.height = v29;
    *&v29 = CGRectGetHeight(v92);
    v36 = type metadata accessor for ScreenRect();
    v37 = objc_allocWithZone(v36);
    v33 = v32;
    *&v37[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v33;
    v34 = v31;
    *&v37[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v34;
    *&v37[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v35;
    *&v37[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v29);
    v83.receiver = v37;
    v83.super_class = v36;
    v38 = objc_msgSendSuper2(&v83, sel_init);
    swift_beginAccess();
    v39 = *&v3[v27];
    *&v3[v27] = v38;
  }

LABEL_7:
  swift_beginAccess();
  *v28 = v76;
  v28[1] = v24;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v40 = static ScreenSize.zero;
  outlined init with copy of DateInterval?(v11, v9);
  v41 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v42 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v42 = 0;
  v42[1] = 0;
  v43 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v44 = type metadata accessor for DateInterval();
  (*(*(v44 - 8) + 56))(&v3[v43], 1, 1, v44);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v40;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v45 = *&v3[v41];
  *&v3[v41] = 0;
  v46 = v40;

  swift_beginAccess();
  v47 = v78;
  *v42 = v79;
  v42[1] = v47;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v9, &v3[v43]);
  v48 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v77;
  (*(ObjectType + 328))(v85, v48);
  LOBYTE(v43) = v85[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v49 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v49 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v49 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v49 + 112) = v43;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v49;
  v50 = type metadata accessor for AssetViewModel();
  v84.receiver = v3;
  v84.super_class = v50;
  v51 = objc_msgSendSuper2(&v84, sel_init);
  outlined destroy of DateInterval?(v9);
  outlined destroy of DateInterval?(v11);
  return v51;
}

uint64_t type metadata accessor for TransferPhotoViewModel()
{
  result = type metadata singleton initialization cache for TransferPhotoViewModel;
  if (!type metadata singleton initialization cache for TransferPhotoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoViewModel.CodingKeys and conformance TransferPhotoViewModel.CodingKeys);
  }

  return result;
}

uint64_t HostingIndicatorView.style.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_style;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t HostingIndicatorView.style.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_style;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v2 != v5)
  {
    v6 = v2;
    return (*((*MEMORY[0x277D85000] & *v1) + 0xF8))(&v6);
  }

  return result;
}

void (*HostingIndicatorView.style.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return HostingIndicatorView.style.modify;
}

void HostingIndicatorView.style.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v3 != v6)
    {
      v7 = v2[3];
      v9 = v3;
      (*((*MEMORY[0x277D85000] & *v7) + 0xF8))(&v9);
    }
  }

  else if (v3 != v6)
  {
    v8 = v2[3];
    v10 = v3;
    (*((*MEMORY[0x277D85000] & *v8) + 0xF8))(&v10);
  }

  free(v2);
}

id HostingIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *HostingIndicatorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingStackView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v10 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingIcon;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4[OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_style] = 3;
  *&v4[OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_iconHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackTrailingConstraint] = 0;
  v12 = type metadata accessor for HostingIndicatorView();
  v21.receiver = v4;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21658CA50;
  v15 = type metadata accessor for UITraitHorizontalSizeClass();
  v16 = MEMORY[0x277D74C50];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v20[3] = v12;
  v20[0] = v13;
  v17 = v13;
  MEMORY[0x21CE92C40](v14, v20, sel_horizontalSizeClassDidChange);
  swift_unknownObjectRelease();

  v18 = __swift_destroy_boxed_opaque_existential_1(v20);
  (*((*MEMORY[0x277D85000] & *v17) + 0xE8))(v18);

  return v17;
}

id HostingIndicatorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall HostingIndicatorView.setUpView()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v66 - v5;
  [v1 setClipsToBounds_];
  static _UICornerMaskingConfiguration.capsule.getter();
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D76938];
  v10 = [v8 preferredFontForTextStyle_];
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingIcon);
  v13 = v11;
  v14 = MEMORY[0x21CE91FC0](0x69662E6E776F7263, 0xEA00000000006C6CLL);
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  v68 = v13;
  [v12 setImage_];

  v16 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingLabel);
  String.LocalizationValue.init(stringLiteral:)();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v20 = MEMORY[0x21CE91FC0](v19);

  [v16 setText_];

  v21 = [v8 preferredFontForTextStyle_];
  [v16 setFont_];

  v22 = objc_opt_self();
  v23 = [v22 whiteColor];
  [v16 setTextColor_];

  v24 = [objc_opt_self() effectWithStyle_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v1 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v26 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingStackView);
  [v26 setAxis_];
  v67 = v25;
  v27 = [v25 contentView];
  [v27 addSubview_];

  [v12 setContentMode_];
  v28 = [v22 whiteColor];
  [v12 setTintColor_];

  [v26 addArrangedSubview_];
  v66 = v16;
  [v26 addArrangedSubview_];
  v29 = &unk_27821E000;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v12 heightAnchor];
  v31 = [v12 widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 multiplier:1.0];

  [v32 setActive_];
  v33 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  v34 = [v26 superview];
  if (v34)
  {
    v35 = v34;
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v36 = [v26 topAnchor];
    v37 = [v35 topAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    v33 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v38 setConstant_];
    [v38 setActive_];

    v29 = &unk_27821E000;
  }

  v39 = [v26 superview];
  if (v39)
  {
    v40 = v39;
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v41 = [v26 bottomAnchor];
    v42 = [v40 bottomAnchor];
    v43 = [v41 &selRef_safeAreaLayoutGuide + 5];

    if (v43)
    {
      [v43 setConstant_];
      [v43 setActive_];
    }

    v29 = &unk_27821E000;
    v33 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  v44 = [v26 superview];
  if (v44)
  {
    v45 = v44;
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v46 = [v26 leadingAnchor];
    v47 = [v45 leadingAnchor];
    v48 = [v46 &selRef_safeAreaLayoutGuide + 5];

    [v48 setConstant_];
    if (v48)
    {
      [v48 setActive_];
    }

    v29 = &unk_27821E000;
    v33 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  else
  {
    v48 = 0;
  }

  v49 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackLeadingConstraint);
  *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackLeadingConstraint) = v48;

  v50 = [v26 v33[5]];
  if (v50)
  {
    v51 = v50;
    [v26 v29[440]];
    v52 = [v26 trailingAnchor];
    v53 = [v51 trailingAnchor];
    v54 = [v52 &selRef_safeAreaLayoutGuide + 5];

    [v54 setConstant_];
    if (v54)
    {
      [v54 setActive_];
    }

    v29 = &unk_27821E000;
  }

  else
  {
    v54 = 0;
  }

  v55 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackTrailingConstraint);
  *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackTrailingConstraint) = v54;

  [v12 v29[440]];
  v56 = [v12 heightAnchor];
  v57 = [v12 widthAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 multiplier:1.0];

  [v58 setActive_];
  [v12 v29[440]];
  v59 = [v12 heightAnchor];
  v60 = [v59 constraintEqualToConstant_];

  [v60 setActive_];
  v61 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_iconHeightConstraint);
  *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_iconHeightConstraint) = v60;

  LODWORD(v62) = 1144750080;
  [v26 setContentHuggingPriority:0 forAxis:v62];
  LODWORD(v63) = 1132068864;
  v64 = [v66 setContentCompressionResistancePriority:0 forAxis:v63];
  v65 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(&v69, v64);
  (*((*v65 & *v1) + 0xF8))(&v69);
}

Swift::Void __swiftcall HostingIndicatorView.updateAssetLayout(for:)(MomentsUI::AssetViewModel::Style a1)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v14 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingLabel);
      [v14 setHidden_];
      v21 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackLeadingConstraint);
      if (v21)
      {
        [v21 setConstant_];
      }

      v22 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackTrailingConstraint);
      if (v22)
      {
        [v22 setConstant_];
      }

      v23 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingIcon);
      v24 = *MEMORY[0x277D76938];
      v25 = [objc_opt_self() configurationWithTextStyle_];
      [v23 setPreferredSymbolConfiguration_];

      v20 = [objc_opt_self() preferredFontForTextStyle_];
    }

    else
    {
      if (v3 != 2)
      {
LABEL_31:
        v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingLabel);
        v13 = sel_setHidden_;

LABEL_29:
        [v12 v13];
        return;
      }

      v14 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingLabel);
      [v14 setHidden_];
      v15 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackLeadingConstraint);
      if (v15)
      {
        [v15 setConstant_];
      }

      v16 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackTrailingConstraint);
      if (v16)
      {
        [v16 setConstant_];
      }

      v17 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingIcon);
      [*(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingStackView) setCustomSpacing:v17 afterView:3.0];
      v18 = *MEMORY[0x277D76938];
      v19 = [objc_opt_self() configurationWithTextStyle_];
      [v17 setPreferredSymbolConfiguration_];

      v20 = [objc_opt_self() preferredFontForTextStyle_];
    }

    v26 = v20;
    [v14 setFont_];

    v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_iconHeightConstraint);
    if (v12)
    {
      v13 = sel_setConstant_;
      v2 = 24.0;
LABEL_27:

      goto LABEL_29;
    }
  }

  else
  {
    if (v3 - 3 >= 2 && v3 != 6)
    {
      goto LABEL_31;
    }

    v5 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingLabel);
    [v5 setHidden_];
    v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackLeadingConstraint);
    if (v6)
    {
      [v6 setConstant_];
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackTrailingConstraint);
    if (v7)
    {
      [v7 setConstant_];
    }

    v8 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingIcon);
    [*(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingStackView) setCustomSpacing:v8 afterView:3.0];
    v9 = *MEMORY[0x277D76968];
    v10 = [objc_opt_self() configurationWithTextStyle_];
    [v8 setPreferredSymbolConfiguration_];

    v11 = [objc_opt_self() preferredFontForTextStyle_];
    [v5 setFont_];

    v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_iconHeightConstraint);
    if (v12)
    {
      v13 = sel_setConstant_;
      v2 = 28.0;
      goto LABEL_27;
    }
  }
}

id HostingIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostingIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized HostingIndicatorView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingStackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingIcon;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_hostingLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_style) = 3;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_iconHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20HostingIndicatorView_stackTrailingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t key path setter for CapsuleButton.buttonTapped : CapsuleButton(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t CapsuleButton.buttonTapped.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CapsuleButton.buttonTapped.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id CapsuleButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CapsuleButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped];
  *v9 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for CapsuleButton();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  CapsuleButton.sharedInit()();

  return v10;
}

id CapsuleButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CapsuleButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI13CapsuleButton_buttonTapped];
  *v3 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  *(v3 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CapsuleButton();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    CapsuleButton.sharedInit()();
  }

  return v5;
}

uint64_t CapsuleButton.sharedInit()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &ObjectType - v1;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration.Size();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x21CE92D80](v13);
  (*(v8 + 104))(v10, *MEMORY[0x277D75030], v7);
  UIButton.Configuration.buttonSize.setter();
  (*(v4 + 104))(v6, *MEMORY[0x277D74FD8], v3);
  UIButton.Configuration.cornerStyle.setter();
  v16 = objc_opt_self();
  v17 = [v16 systemBackgroundColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v18 = [v16 secondaryLabelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v30._object = 0x800000021657C8A0;
  v21._countAndFlagsBits = 0x726F4D20776F6853;
  v21._object = 0xE900000000000065;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD00000000000004ALL;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v30);

  v24 = MEMORY[0x21CE91FC0](v23._countAndFlagsBits, v23._object);

  v25 = v29;
  [v29 setAccessibilityLabel_];

  (*(v12 + 16))(v2, v15, v11);
  (*(v12 + 56))(v2, 0, 1, v11);
  UIButton.configuration.setter();
  type metadata accessor for UIAction();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v25 addAction:v26 forControlEvents:64];

  return (*(v12 + 8))(v15, v11);
}

void *closure #1 in CapsuleButton.sharedInit()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*((*MEMORY[0x277D85000] & *result) + 0x58))();

    v2();
  }

  return result;
}

id CapsuleButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CapsuleButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DBPhotosFamilyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), void (**a6)(char *, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void (**a14)(char *, uint64_t, uint64_t), uint64_t a15, unsigned __int8 *a16)
{
  v17 = specialized DBPhotosFamilyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v17;
}

uint64_t DBPhotosFamilyModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI19DBPhotosFamilyModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBPhotosFamilyModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGRect(0);
    v28 = 0;
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9 = v27;
    v10 = v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect;
    v11 = v26;
    *v10 = v25;
    *(v10 + 16) = v11;
    *(v10 + 32) = v9;
    v28 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v27;
    v13 = v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect;
    v14 = v26;
    *v13 = v25;
    *(v13 + 16) = v14;
    *(v13 + 32) = v12;
    v28 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = v27;
    v16 = v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect;
    v17 = v26;
    *v16 = v25;
    *(v16 + 16) = v17;
    *(v16 + 32) = v15;
    LOBYTE(v25) = 3;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = (v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    *v20 = v18;
    v20[1] = v21;
    LOBYTE(v25) = 4;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = (v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    *v23 = v22;
    v23[1] = v24;
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(&v25);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBPhotosFamilyModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI19DBPhotosFamilyModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
  v10 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
  v16 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
  v17 = v10;
  v18 = v9;
  v19 = 0;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v16 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    v17 = v12;
    v18 = v11;
    v19 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v14 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v16 = *(v3 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    v17 = v14;
    v18 = v13;
    v19 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(&v16);
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DBPhotosFamilyModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

__n128 DBPhotosFamilyModel.squareCropRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 DBPhotosFamilyModel.landscapeCropRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 DBPhotosFamilyModel.portraitCropRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t DBPhotosFamilyModel.cloudIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);

  return v1;
}

uint64_t DBPhotosFamilyModel.localIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);

  return v1;
}

MomentsUI::DBPhotosFamilyModel::CodingKeys_optional __swiftcall DBPhotosFamilyModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBPhotosFamilyModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t DBPhotosFamilyModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7243657261757173;
  v2 = 0x65644964756F6C63;
  if (a1 != 3)
  {
    v2 = 0x6564496C61636F6CLL;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBPhotosFamilyModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DBPhotosFamilyModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == DBPhotosFamilyModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBPhotosFamilyModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBPhotosFamilyModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBPhotosFamilyModel.CodingKeys()
{
  DBPhotosFamilyModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBPhotosFamilyModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBPhotosFamilyModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBPhotosFamilyModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBPhotosFamilyModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBPhotosFamilyModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = DBPhotosFamilyModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBPhotosFamilyModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBPhotosFamilyModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBPhotosFamilyModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBPhotosFamilyModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBPhotosFamilyModel.AssetDataKeys.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBPhotosFamilyModel.AssetDataKeys.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBPhotosFamilyModel.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBPhotosFamilyModel.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBPhotosFamilyModel.AssetDataKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DBPhotosFamilyModel.AssetDataKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBPhotosFamilyModel.AssetDataKeys(uint64_t a1@<X8>)
{
  strcpy(a1, "primaryVideo");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t DBPhotosFamilyModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), void (**a6)(char *, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void (**a14)(char *, uint64_t, uint64_t), uint64_t a15, unsigned __int8 *a16)
{
  swift_allocObject();
  v23 = specialized DBPhotosFamilyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v23;
}

uint64_t DBPhotosFamilyModel.__ivar_destroyer()
{
}

uint64_t DBPhotosFamilyModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DBPhotosFamilyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), void (**a6)(char *, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void (**a14)(char *, uint64_t, uint64_t), uint64_t a15, unsigned __int8 *a16)
{
  v17 = v16;
  *&v143 = a8;
  v130 = a7;
  v138 = a6;
  v137 = a5;
  v136 = a4;
  v134 = a3;
  v131 = a2;
  v133 = a14;
  v128 = a13;
  v126 = a12;
  v132 = a15;
  v124 = a16;
  v142 = *v17;
  v122 = type metadata accessor for Date();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v119 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v20 - 8);
  *&v141 = &v113 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v140 = &v113 - v23;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v125 = *(v139 - 8);
  v24 = MEMORY[0x28223BE20](v139);
  v114 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v113 = &v113 - v26;
  v129 = type metadata accessor for DateInterval();
  v27 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v29 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v29;
  v30 = type metadata accessor for UUID();
  v31 = MEMORY[0x28223BE20](v30);
  v135 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v113 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v113 - v36;
  LODWORD(v124) = *v124;
  v38 = v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect;
  v39 = *(a9 + 16);
  *v38 = *a9;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a9 + 32);
  v40 = v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect;
  v41 = *(a10 + 16);
  *v40 = *a10;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(a10 + 32);
  v42 = v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect;
  v43 = *(a11 + 16);
  *v42 = *a11;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a11 + 32);
  v44 = (v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
  v45 = v128;
  *v44 = v126;
  v44[1] = v45;
  v46 = (v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v47 = v132;
  *v46 = v133;
  v46[1] = v47;
  v128 = v48;
  v49 = *(v48 + 16);
  v121 = a1;
  v49(&v113 - v36, a1, v30);
  v49(v35, v131, v30);
  v132 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v142, &v145);
  LODWORD(v133) = v145;
  v118 = v27;
  v50 = *(v27 + 16);
  v51 = v29;
  v52 = v129;
  v50(v51, v130, v129);
  *(v17 + 16) = 0;
  v126 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v116 = v37;
  v49((v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v37, v30);
  v123 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v117 = v35;
  v53 = v35;
  v54 = v143;
  v142 = v30;
  v49((v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v53, v30);
  *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v133;
  v55 = v134;
  *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v134;
  *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v136;
  v56 = (v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v57 = v138;
  *v56 = v137;
  v56[1] = v57;
  v138 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v50((v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v127, v52);
  v58 = v55;
  v59 = specialized Dictionary.compactMapValues<A>(_:)(v54);
  v115 = 0;
  *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v59;
  v126 = MEMORY[0x277D84F90];
  *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v60 = v59;
  swift_beginAccess();
  v123 = v17;
  *(v17 + 16) = v124;
  v61 = v54 + 64;
  v62 = 1 << *(v54 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v54 + 64);
  v65 = (v62 + 63) >> 6;
  v66 = (v128 + 48);
  v133 = (v128 + 32);
  v138 = (v125 + 56);
  v137 = (v125 + 48);
  v124 = v60;

  v67 = 0;
  v68 = v54;
  v134 = v66;
  v132 = v65;
  if (v64)
  {
    while (1)
    {
      v69 = v67;
LABEL_8:
      v70 = __clz(__rbit64(v64)) | (v69 << 6);
      v71 = *(v68 + 56);
      v72 = *(*(v68 + 48) + 16 * v70 + 8);
      v73 = *(v71 + 8 * v70);
      v74 = *(*v73 + 192);

      v76 = v141;
      v74(v75);
      v60 = v142;
      if ((*v66)(v76, 1, v142) == 1)
      {
        outlined destroy of UTType?(v76, &_s10Foundation4UUIDVSgMd);
        v77 = v140;
        v17 = v139;
        (*v138)(v140, 1, 1, v139);
      }

      else
      {
        v136 = v72;
        v78 = *v133;
        v79 = v61;
        v80 = v135;
        (*v133)(v135, v76, v60);
        v81 = v60;
        v17 = v139;
        v60 = *(v139 + 48);
        v77 = v140;
        v82 = v80;
        v61 = v79;
        v65 = v132;
        v78(v140, v82, v81);
        v66 = v134;
        *(v77 + v60) = v73;
        (*v138)(v77, 0, 1, v17);
      }

      v64 &= v64 - 1;

      if ((*v137)(v77, 1, v17) == 1)
      {
        outlined destroy of UTType?(v77, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      }

      else
      {
        v83 = v113;
        outlined init with take of (UUID, DBAssetData)(v77, v113);
        outlined init with take of (UUID, DBAssetData)(v83, v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
        }

        v85 = v126[2];
        v84 = v126[3];
        v86 = v125;
        if (v85 >= v84 >> 1)
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v85 + 1, 1, v126);
          v86 = v125;
          v126 = v88;
        }

        v87 = v126;
        v126[2] = v85 + 1;
        outlined init with take of (UUID, DBAssetData)(v114, v87 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v85);
      }

      v67 = v69;
      v68 = v143;
      if (!v64)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);

      v111 = *(v128 + 8);
      v112 = v142;
      v111(v126 + v17, v142);
      v111((v17 + v123), v112);

      (*(v118 + 8))(v138 + v17, v129);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_26;
    }

    if (v69 >= v65)
    {
      break;
    }

    v64 = *(v61 + 8 * v69);
    ++v67;
    if (v64)
    {
      goto LABEL_8;
    }
  }

  v89 = v123;
  if (v126[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v90 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v90 = MEMORY[0x277D84F98];
  }

  v91 = v128;
  v144 = v90;

  v93 = v115;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v92, 1, &v144);
  if (!v93)
  {

    v94 = v144;
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    v96 = (v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v96 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v96[1] = v95;
    v97 = swift_allocObject();
    *(v97 + 16) = v94;
    v98 = (v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v98 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v98[1] = v97;
    v99 = (v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v99 = closure #3 in DBAssetModel.init(from:);
    v99[1] = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = v124;
    swift_beginAccess();
    v143 = *v96;
    swift_beginAccess();
    v141 = *v98;
    swift_beginAccess();
    v101 = *v99;
    v102 = v99[1];
    v103 = v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v103 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v103 + 8) = v100;
    v104 = v141;
    *(v103 + 16) = v143;
    *(v103 + 32) = v104;
    *(v103 + 48) = v101;
    *(v103 + 56) = v102;

    v105 = v119;
    static Date.now.getter();
    v106 = *(v118 + 8);
    v107 = v129;
    v106(v130, v129);
    v108 = *(v91 + 8);
    v109 = v142;
    v108(v131, v142);
    v108(v121, v109);
    v106(v127, v107);
    v108(v117, v109);
    v108(v116, v109);
    (*(v120 + 32))(v89 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v105, v122);
    return v89;
  }

LABEL_26:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPhotosFamilyModel.CodingKeys and conformance DBPhotosFamilyModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBPhotosFamilyModel()
{
  result = type metadata singleton initialization cache for DBPhotosFamilyModel;
  if (!type metadata singleton initialization cache for DBPhotosFamilyModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGRect and conformance CGRect(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized DBPhotosFamilyModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBPhotosFamilyModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBPhotosFamilyModel.AssetDataKeys and conformance DBPhotosFamilyModel.AssetDataKeys()
{
  result = lazy protocol witness table cache variable for type DBPhotosFamilyModel.AssetDataKeys and conformance DBPhotosFamilyModel.AssetDataKeys;
  if (!lazy protocol witness table cache variable for type DBPhotosFamilyModel.AssetDataKeys and conformance DBPhotosFamilyModel.AssetDataKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBPhotosFamilyModel.AssetDataKeys and conformance DBPhotosFamilyModel.AssetDataKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBPhotosFamilyModel.AssetDataKeys] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DBPhotosFamilyModel.AssetDataKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DBPhotosFamilyModel.AssetDataKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI19DBPhotosFamilyModelC13AssetDataKeysOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBPhotosFamilyModel.AssetDataKeys] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of DBPhotosFamilyModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a9 + 32);
  v15 = *(a10 + 32);
  v16 = *(a11 + 32);
  v17 = *(v13 + 440);
  v18 = *(a9 + 16);
  v26[0] = *a9;
  v26[1] = v18;
  v27 = v14;
  v19 = *(a10 + 16);
  v24[0] = *a10;
  v24[1] = v19;
  v25 = v15;
  v20 = *(a11 + 16);
  v22[0] = *a11;
  v22[1] = v20;
  v23 = v16;
  return v17(a1, a2, a3, a4, a5, a6, a7, a8, v26, v24, v22, a12, a13);
}

uint64_t static MediaFirstPartyLandscapeCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MediaFirstPartyLandscapeCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *MediaFirstPartyLandscapeCollectionViewCell.mediaFirstPartyView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI42MediaFirstPartyLandscapeCollectionViewCell_mediaFirstPartyView);
  v2 = v1;
  return v1;
}

id MediaFirstPartyLandscapeCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MediaFirstPartyLandscapeCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MediaFirstPartyLandscapeCollectionViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI42MediaFirstPartyLandscapeCollectionViewCell_mediaFirstPartyView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMediaFirstPartyViewModel.empty;
  v4 = 2;
  v3 = objc_allocWithZone(type metadata accessor for MediaFirstPartyView());
  *(v0 + v1) = MediaFirstPartyView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MediaFirstPartyLandscapeCollectionViewCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[MediaFirstPartyLandscapeCollectionViewCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI42MediaFirstPartyLandscapeCollectionViewCell_mediaFirstPartyView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x268))();
  }
}

id MediaFirstPartyLandscapeCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaFirstPartyLandscapeCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized MediaFirstPartyLandscapeCollectionViewCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI42MediaFirstPartyLandscapeCollectionViewCell_mediaFirstPartyView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMediaFirstPartyViewModel.empty;
  v12 = 2;
  v3 = objc_allocWithZone(type metadata accessor for MediaFirstPartyView());
  v4 = MediaFirstPartyView.init(viewModel:style:)(v2, &v12);
  *(v0 + v1) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = CollectionViewAssetCell.init(assetView:)(v5);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
    v8 = v6;
    v9 = v7();
    [v9 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v8;
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v11);
  }
}

uint64_t type metadata accessor for MediaFirstPartyLandscapeCollectionViewCell()
{
  result = type metadata singleton initialization cache for MediaFirstPartyLandscapeCollectionViewCell;
  if (!type metadata singleton initialization cache for MediaFirstPartyLandscapeCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s9MomentsUI10CloudSubDBPAAE15bgAssertDBFiles5dbURL9className11mustAcquireSb10Foundation0J0V_s12StaticStringVSbtFZAA0c4SyncE0C_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v168 = a5;
  v173 = a4;
  v172 = a3;
  v171 = a2;
  v178 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = MEMORY[0x28223BE20](v6);
  v169 = v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v144 - v11;
  v13 = URL.pathExtension.getter();
  v15 = v14;
  URL.deletingPathExtension()();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v17 = *(v7 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v144[3] = *(v8 + 80);
  v144[4] = v16;
  v19 = swift_allocObject();
  v147 = v18;
  v144[2] = v19;
  v20 = v19 + v18;
  v160 = *(v8 + 16);
  v160(v19 + v18, a1, v6);
  v176 = v13;
  v177 = v15;

  MEMORY[0x21CE92100](1818326829, 0xE400000000000000);
  v165 = v17;
  URL.appendingPathExtension(_:)();

  v146 = v13;
  v176 = v13;
  v177 = v15;
  v145 = v15;

  MEMORY[0x21CE92100](1835561773, 0xE400000000000000);
  v148 = v12;
  v21 = v169;
  URL.appendingPathExtension(_:)();

  v167 = objc_opt_self();
  v155 = objc_opt_self();
  v149 = 0;
  v154 = *MEMORY[0x277CCA1B0];
  v153 = *MEMORY[0x277CCA198];
  v152 = "deleteDBFiles(dbURL:className:)";
  v170 = "andscapeCollectionViewCell";
  v161 = v8 + 16;
  v166 = (v8 + 8);
  v151 = 1;
  v22 = 3;
  *(&v23 + 1) = 2;
  v164 = xmmword_21658CA50;
  *&v23 = 136446722;
  v150 = v23;
  *&v23 = 136446978;
  v162 = v23;
  v144[1] = v20;
  v24 = v20;
  v163 = v6;
  do
  {
    v174 = v22;
    v160(v21, v24, v6);
    v32 = URL.path(percentEncoded:)(1);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_So0D14ProtectionTypeatGMd);
    inited = swift_initStackObject();
    *(inited + 16) = v164;
    v34 = v154;
    *(inited + 32) = v154;
    v35 = v153;
    *(inited + 40) = v153;
    v157 = v34;
    v36 = v35;
    v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_So0C14ProtectionTypeaTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UTType?(inited + 32, &_sSo18NSFileAttributeKeya_So0A14ProtectionTypeatMd);
    v38 = [v167 defaultManager];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v37);

    type metadata accessor for NSFileAttributeKey(0);
    v40 = v39;
    v41 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
    v158 = v40;
    v156 = v41;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    countAndFlagsBits = v32._countAndFlagsBits;
    v43 = MEMORY[0x21CE91FC0](v32._countAndFlagsBits, v32._object);
    v176 = 0;
    v44 = [v38 setAttributes:isa ofItemAtPath:v43 error:&v176];

    if (v44)
    {
      v45 = one-time initialization token for database;
      v46 = v176;
      if (v45 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static CommonLogger.database);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v176 = v51;
        *v50 = v150;
        v52 = StaticString.description.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v176);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2082;
        *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
        *(v50 + 22) = 2080;
        *(v50 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v32._object, &v176);
        _os_log_impl(&dword_21607C000, v48, v49, "%{public}s.%{public}s Set file protection level to ClassB: %s", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v51, -1, -1);
        MEMORY[0x21CE94770](v50, -1, -1);
      }

      v55 = v168;
    }

    else
    {
      v56 = v176;
      v57 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v149 = 0;
      v55 = v168;
      if (v168)
      {
        if (one-time initialization token for database != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        __swift_project_value_buffer(v58, static CommonLogger.database);

        v59 = v57;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v176 = v64;
          *v62 = v162;
          v65 = StaticString.description.getter();
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v176);
          v21 = v169;

          *(v62 + 4) = v67;
          v55 = v168;
LABEL_20:
          *(v62 + 12) = 2082;
          *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
          *(v62 + 22) = 2080;
          *(v62 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v32._object, &v176);
          *(v62 + 32) = 2112;
          v73 = v57;
          v74 = _swift_stdlib_bridgeErrorToNSError();
          *(v62 + 34) = v74;
          *v63 = v74;
          _os_log_impl(&dword_21607C000, v60, v61, "%{public}s.%{public}s Error setting file protection level to ClassB: %s (%@)", v62, 0x2Au);
          outlined destroy of UTType?(v63, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v63, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v64, -1, -1);
          MEMORY[0x21CE94770](v62, -1, -1);

          goto LABEL_22;
        }
      }

      else
      {
        if (one-time initialization token for database != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        __swift_project_value_buffer(v68, static CommonLogger.database);

        v69 = v57;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v176 = v64;
          *v62 = v162;
          v70 = StaticString.description.getter();
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v176);
          v55 = v168;

          *(v62 + 4) = v72;
          v21 = v169;
          goto LABEL_20;
        }
      }
    }

LABEL_22:
    v75 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v76)
    {
      v77 = 86400.0;
    }

    else
    {
      v77 = v75;
    }

    if (one-time initialization token for database != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static CommonLogger.database);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v176 = v82;
      *v81 = v162;
      v83 = StaticString.description.getter();
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v176);

      *(v81 + 4) = v85;
      v21 = v169;
      *(v81 + 12) = 2082;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
      *(v81 + 22) = 2080;
      *(v81 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v32._object, &v176);
      *(v81 + 32) = 2048;
      *(v81 + 34) = v77;
      _os_log_impl(&dword_21607C000, v79, v80, "%{public}s.%{public}s Acquiring background assertion for: %s (%f seconds)", v81, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v82, -1, -1);
      MEMORY[0x21CE94770](v81, -1, -1);
    }

    URL._bridgeToObjectiveC()(v86);
    v88 = v87;
    v89 = [v155 acquireBackgroundProcessingPermissionForURL:v87 duration:v55 & 1 mustAcquire:v77];

    v90 = Logger.logObject.getter();
    if (v89)
    {
      v91 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v176 = v26;
        *v25 = v162;
        v27 = StaticString.description.getter();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v176);
        v21 = v169;

        *(v25 + 4) = v29;
        *(v25 + 12) = 2082;
        *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
        *(v25 + 22) = 2080;
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v32._object, &v176);

        *(v25 + 24) = v30;
        *(v25 + 32) = 2048;
        *(v25 + 34) = v77;
        _os_log_impl(&dword_21607C000, v90, v91, "%{public}s.%{public}s Acquired background assertion for: %s (%f seconds)", v25, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v26, -1, -1);
        MEMORY[0x21CE94770](v25, -1, -1);
      }

      else
      {
      }

      v31 = *v166;
      v6 = v163;
      (*v166)(v21, v163);
    }

    else
    {
      if (v55)
      {
        v92 = static os_log_type_t.error.getter();
      }

      else
      {
        v92 = static os_log_type_t.debug.getter();
      }

      v93 = v92;

      if (os_log_type_enabled(v90, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v176 = v95;
        *v94 = v150;
        v96 = StaticString.description.getter();
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v176);
        v21 = v169;

        *(v94 + 4) = v98;
        *(v94 + 12) = 2082;
        *(v94 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
        *(v94 + 22) = 2080;
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v32._object, &v176);

        *(v94 + 24) = v99;
        _os_log_impl(&dword_21607C000, v90, v93, "%{public}s.%{public}s Error setting background assertion for: %s", v94, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v95, -1, -1);
        MEMORY[0x21CE94770](v94, -1, -1);
      }

      else
      {
      }

      v31 = *v166;
      v6 = v163;
      (*v166)(v21, v163);
      v151 = 0;
    }

    v24 += v165;
    v22 = v174 - 1;
  }

  while (v174 != 1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v100 = swift_allocObject();
  v176 = v146;
  v177 = v145;
  MEMORY[0x21CE92100](0x626F6C622DLL, 0xE500000000000000);
  URL.appendingPathExtension(_:)();

  v101 = *MEMORY[0x277CCA1A0];
  v102 = URL.path(percentEncoded:)(1);
  v103 = [v167 defaultManager];
  v104 = MEMORY[0x21CE91FC0](v102._countAndFlagsBits, v102._object);
  v176 = 0;
  v105 = [v103 createDirectoryIfNeededAtPath:v104 error:&v176];

  if (v105)
  {
    v106 = v176;
  }

  else
  {
    v107 = v176;
    v108 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v109 = swift_initStackObject();
  *(v109 + 16) = v164;
  v110 = v157;
  *(v109 + 32) = v157;
  *(v109 + 40) = v101;
  v111 = v110;
  v112 = v101;
  v113 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_So0C14ProtectionTypeaTt0g5Tf4g_n(v109);
  swift_setDeallocating();
  outlined destroy of UTType?(v109 + 32, &_sSo18NSFileAttributeKeya_So0A14ProtectionTypeatMd);
  v114 = [v167 defaultManager];
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v113);

  v115 = Dictionary._bridgeToObjectiveC()().super.isa;

  v116 = MEMORY[0x21CE91FC0](v102._countAndFlagsBits, v102._object);
  v176 = 0;
  v117 = [v114 setAttributes:v115 ofItemAtPath:v116 error:&v176];

  if (v117)
  {
    v118 = v176;

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v176 = v122;
      *v121 = v150;
      v123 = StaticString.description.getter();
      countAndFlagsBits = v102._countAndFlagsBits;
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v176);

      *(v121 + 4) = v125;
      *(v121 + 12) = 2082;
      *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
      *(v121 + 22) = 2080;
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v102._object, &v176);

      *(v121 + 24) = v126;
      _os_log_impl(&dword_21607C000, v119, v120, "%{public}s.%{public}s Set file protection level to ClassC: %s", v121, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v122, -1, -1);
      MEMORY[0x21CE94770](v121, -1, -1);
    }

    else
    {
    }

    v142 = v151;
  }

  else
  {
    v127 = v176;
    v128 = _convertNSErrorToError(_:)();

    swift_willThrow();

    v129 = v128;
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      countAndFlagsBits = swift_slowAlloc();
      v176 = countAndFlagsBits;
      *v132 = v162;
      v133 = StaticString.description.getter();
      v135 = v100;
      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v176);
      v6 = v163;

      *(v132 + 4) = v136;
      v100 = v135;
      *(v132 + 12) = 2082;
      *(v132 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
      *(v132 + 22) = 2080;
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102._countAndFlagsBits, v102._object, &v176);

      *(v132 + 24) = v137;
      *(v132 + 32) = 2112;
      v138 = v128;
      v139 = _swift_stdlib_bridgeErrorToNSError();
      *(v132 + 34) = v139;
      v140 = v174;
      *v174 = v139;
      _os_log_impl(&dword_21607C000, v130, v131, "%{public}s.%{public}s Error setting file protection level to ClassC: %s (%@)", v132, 0x2Au);
      outlined destroy of UTType?(v140, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v140, -1, -1);
      v141 = countAndFlagsBits;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v141, -1, -1);
      MEMORY[0x21CE94770](v132, -1, -1);
    }

    else
    {
    }

    v142 = 0;
  }

  v31(v148, v6);
  swift_setDeallocating();
  v31((v100 + v147), v6);
  swift_deallocClassInstance();
  return v142 & 1;
}

uint64_t static CloudSubDB.bgAssertDBFiles(dbURL:className:mustAcquire:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v168 = a5;
  v173 = a4;
  v172 = a3;
  v171 = a2;
  v178 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = MEMORY[0x28223BE20](v6);
  v169 = v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v144 - v11;
  v13 = URL.pathExtension.getter();
  v15 = v14;
  URL.deletingPathExtension()();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v17 = *(v7 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v144[3] = *(v8 + 80);
  v144[4] = v16;
  v19 = swift_allocObject();
  v147 = v18;
  v144[2] = v19;
  v20 = v19 + v18;
  v160 = *(v8 + 16);
  v160(v19 + v18, a1, v6);
  v176 = v13;
  v177 = v15;

  MEMORY[0x21CE92100](1818326829, 0xE400000000000000);
  v165 = v17;
  URL.appendingPathExtension(_:)();

  v146 = v13;
  v176 = v13;
  v177 = v15;
  v145 = v15;

  MEMORY[0x21CE92100](1835561773, 0xE400000000000000);
  v148 = v12;
  v21 = v169;
  URL.appendingPathExtension(_:)();

  v167 = objc_opt_self();
  v155 = objc_opt_self();
  v149 = 0;
  v154 = *MEMORY[0x277CCA1B0];
  v153 = *MEMORY[0x277CCA198];
  v152 = "deleteDBFiles(dbURL:className:)";
  v170 = "andscapeCollectionViewCell";
  v161 = v8 + 16;
  v166 = (v8 + 8);
  v151 = 1;
  v22 = 3;
  *(&v23 + 1) = 2;
  v164 = xmmword_21658CA50;
  *&v23 = 136446722;
  v150 = v23;
  *&v23 = 136446978;
  v162 = v23;
  v144[1] = v20;
  v24 = v20;
  v163 = v6;
  do
  {
    v174 = v22;
    v160(v21, v24, v6);
    v26 = URL.path(percentEncoded:)(1);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_So0D14ProtectionTypeatGMd);
    inited = swift_initStackObject();
    *(inited + 16) = v164;
    v28 = v154;
    *(inited + 32) = v154;
    v29 = v153;
    *(inited + 40) = v153;
    v157 = v28;
    v30 = v29;
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_So0C14ProtectionTypeaTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UTType?(inited + 32, &_sSo18NSFileAttributeKeya_So0A14ProtectionTypeatMd);
    v32 = [v167 defaultManager];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v31);

    type metadata accessor for NSFileAttributeKey(0);
    v34 = v33;
    v35 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
    v158 = v34;
    v156 = v35;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    countAndFlagsBits = v26._countAndFlagsBits;
    v37 = MEMORY[0x21CE91FC0](v26._countAndFlagsBits, v26._object);
    v176 = 0;
    v38 = [v32 setAttributes:isa ofItemAtPath:v37 error:&v176];

    if (v38)
    {
      v39 = one-time initialization token for database;
      v40 = v176;
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static CommonLogger.database);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v176 = v45;
        *v44 = v150;
        v46 = StaticString.description.getter();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v176);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2082;
        *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
        *(v44 + 22) = 2080;
        *(v44 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v26._object, &v176);
        _os_log_impl(&dword_21607C000, v42, v43, "%{public}s.%{public}s Set file protection level to ClassB: %s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v45, -1, -1);
        MEMORY[0x21CE94770](v44, -1, -1);
      }

      v49 = v168;
    }

    else
    {
      v50 = v176;
      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v149 = 0;
      v49 = v168;
      if (v168)
      {
        if (one-time initialization token for database != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static CommonLogger.database);

        v53 = v51;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v176 = v58;
          *v56 = v162;
          v59 = StaticString.description.getter();
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v176);
          v21 = v169;

          *(v56 + 4) = v61;
          v49 = v168;
LABEL_20:
          *(v56 + 12) = 2082;
          *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
          *(v56 + 22) = 2080;
          *(v56 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v26._object, &v176);
          *(v56 + 32) = 2112;
          v67 = v51;
          v68 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 34) = v68;
          *v57 = v68;
          _os_log_impl(&dword_21607C000, v54, v55, "%{public}s.%{public}s Error setting file protection level to ClassB: %s (%@)", v56, 0x2Au);
          outlined destroy of UTType?(v57, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v57, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v58, -1, -1);
          MEMORY[0x21CE94770](v56, -1, -1);

          goto LABEL_22;
        }
      }

      else
      {
        if (one-time initialization token for database != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        __swift_project_value_buffer(v62, static CommonLogger.database);

        v63 = v51;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v176 = v58;
          *v56 = v162;
          v64 = StaticString.description.getter();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v176);
          v49 = v168;

          *(v56 + 4) = v66;
          v21 = v169;
          goto LABEL_20;
        }
      }
    }

LABEL_22:
    v69 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v70)
    {
      v71 = 86400.0;
    }

    else
    {
      v71 = v69;
    }

    if (one-time initialization token for database != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static CommonLogger.database);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v176 = v76;
      *v75 = v162;
      v77 = StaticString.description.getter();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v176);

      *(v75 + 4) = v79;
      v21 = v169;
      *(v75 + 12) = 2082;
      *(v75 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
      *(v75 + 22) = 2080;
      *(v75 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v26._object, &v176);
      *(v75 + 32) = 2048;
      *(v75 + 34) = v71;
      _os_log_impl(&dword_21607C000, v73, v74, "%{public}s.%{public}s Acquiring background assertion for: %s (%f seconds)", v75, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v76, -1, -1);
      MEMORY[0x21CE94770](v75, -1, -1);
    }

    URL._bridgeToObjectiveC()(v80);
    v82 = v81;
    v83 = [v155 acquireBackgroundProcessingPermissionForURL:v81 duration:v49 & 1 mustAcquire:v71];

    v84 = Logger.logObject.getter();
    if (v83)
    {
      v85 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v176 = v87;
        *v86 = v162;
        v88 = StaticString.description.getter();
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v176);
        v21 = v169;

        *(v86 + 4) = v90;
        *(v86 + 12) = 2082;
        *(v86 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
        *(v86 + 22) = 2080;
        v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v26._object, &v176);

        *(v86 + 24) = v91;
        *(v86 + 32) = 2048;
        *(v86 + 34) = v71;
        _os_log_impl(&dword_21607C000, v84, v85, "%{public}s.%{public}s Acquired background assertion for: %s (%f seconds)", v86, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v87, -1, -1);
        MEMORY[0x21CE94770](v86, -1, -1);
      }

      else
      {
      }

      v25 = *v166;
      v6 = v163;
      (*v166)(v21, v163);
    }

    else
    {
      if (v49)
      {
        v92 = static os_log_type_t.error.getter();
      }

      else
      {
        v92 = static os_log_type_t.debug.getter();
      }

      v93 = v92;

      if (os_log_type_enabled(v84, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v176 = v95;
        *v94 = v150;
        v96 = StaticString.description.getter();
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v176);
        v21 = v169;

        *(v94 + 4) = v98;
        *(v94 + 12) = 2082;
        *(v94 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
        *(v94 + 22) = 2080;
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v26._object, &v176);

        *(v94 + 24) = v99;
        _os_log_impl(&dword_21607C000, v84, v93, "%{public}s.%{public}s Error setting background assertion for: %s", v94, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v95, -1, -1);
        MEMORY[0x21CE94770](v94, -1, -1);
      }

      else
      {
      }

      v25 = *v166;
      v6 = v163;
      (*v166)(v21, v163);
      v151 = 0;
    }

    v24 += v165;
    v22 = v174 - 1;
  }

  while (v174 != 1);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v100 = swift_allocObject();
  v176 = v146;
  v177 = v145;
  MEMORY[0x21CE92100](0x626F6C622DLL, 0xE500000000000000);
  URL.appendingPathExtension(_:)();

  v101 = *MEMORY[0x277CCA1A0];
  v102 = URL.path(percentEncoded:)(1);
  v103 = [v167 defaultManager];
  v104 = MEMORY[0x21CE91FC0](v102._countAndFlagsBits, v102._object);
  v176 = 0;
  v105 = [v103 createDirectoryIfNeededAtPath:v104 error:&v176];

  if (v105)
  {
    v106 = v176;
  }

  else
  {
    v107 = v176;
    v108 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v109 = swift_initStackObject();
  *(v109 + 16) = v164;
  v110 = v157;
  *(v109 + 32) = v157;
  *(v109 + 40) = v101;
  v111 = v110;
  v112 = v101;
  v113 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_So0C14ProtectionTypeaTt0g5Tf4g_n(v109);
  swift_setDeallocating();
  outlined destroy of UTType?(v109 + 32, &_sSo18NSFileAttributeKeya_So0A14ProtectionTypeatMd);
  v114 = [v167 defaultManager];
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v113);

  v115 = Dictionary._bridgeToObjectiveC()().super.isa;

  v116 = MEMORY[0x21CE91FC0](v102._countAndFlagsBits, v102._object);
  v176 = 0;
  v117 = [v114 setAttributes:v115 ofItemAtPath:v116 error:&v176];

  if (v117)
  {
    v118 = v176;

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v176 = v122;
      *v121 = v150;
      v123 = StaticString.description.getter();
      countAndFlagsBits = v102._countAndFlagsBits;
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v176);

      *(v121 + 4) = v125;
      *(v121 + 12) = 2082;
      *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
      *(v121 + 22) = 2080;
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v102._object, &v176);

      *(v121 + 24) = v126;
      _os_log_impl(&dword_21607C000, v119, v120, "%{public}s.%{public}s Set file protection level to ClassC: %s", v121, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v122, -1, -1);
      MEMORY[0x21CE94770](v121, -1, -1);
    }

    else
    {
    }

    v142 = v151;
  }

  else
  {
    v127 = v176;
    v128 = _convertNSErrorToError(_:)();

    swift_willThrow();

    v129 = v128;
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      countAndFlagsBits = swift_slowAlloc();
      v176 = countAndFlagsBits;
      *v132 = v162;
      v133 = StaticString.description.getter();
      v135 = v100;
      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v176);
      v6 = v163;

      *(v132 + 4) = v136;
      v100 = v135;
      *(v132 + 12) = 2082;
      *(v132 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, v170 | 0x8000000000000000, &v176);
      *(v132 + 22) = 2080;
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102._countAndFlagsBits, v102._object, &v176);

      *(v132 + 24) = v137;
      *(v132 + 32) = 2112;
      v138 = v128;
      v139 = _swift_stdlib_bridgeErrorToNSError();
      *(v132 + 34) = v139;
      v140 = v174;
      *v174 = v139;
      _os_log_impl(&dword_21607C000, v130, v131, "%{public}s.%{public}s Error setting file protection level to ClassC: %s (%@)", v132, 0x2Au);
      outlined destroy of UTType?(v140, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v140, -1, -1);
      v141 = countAndFlagsBits;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v141, -1, -1);
      MEMORY[0x21CE94770](v132, -1, -1);
    }

    else
    {
    }

    v142 = 0;
  }

  v25(v148, v6);
  swift_setDeallocating();
  v25((v100 + v147), v6);
  swift_deallocClassInstance();
  return v142 & 1;
}

uint64_t static CloudSubDB.deleteDBFiles(dbURL:className:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v243 = a4;
  v242 = a3;
  v241 = a2;
  v259 = *MEMORY[0x277D85DE8];
  v246 = type metadata accessor for CocoaError.Code();
  v254 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v245 = &v210[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v226 = type metadata accessor for URL.DirectoryHint();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v224 = &v210[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v251 = type metadata accessor for URL();
  v7 = *(v251 - 8);
  v8 = v7;
  v9 = MEMORY[0x28223BE20](v251);
  v234 = &v210[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v238 = &v210[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v249 = &v210[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v248 = &v210[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v214 = &v210[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v227 = &v210[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v237 = &v210[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v231 = &v210[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v210[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v210[-v28];
  v30 = URL.pathExtension.getter();
  v32 = v31;
  URL.deletingPathExtension()();
  *&v228 = URL.lastPathComponent.getter();
  *(&v228 + 1) = v33;
  v230 = v27;
  URL.deletingLastPathComponent()();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v35 = *(v7 + 72);
  v36 = *(v7 + 80);
  v37 = (v36 + 32) & ~v36;
  v217 = 3 * v35;
  v218 = v36;
  v220 = v34;
  v38 = swift_allocObject();
  v219 = v37;
  v216 = v38;
  v39 = v38 + v37;
  v40 = *(v8 + 16);
  v8 += 16;
  v252 = v40;
  v41 = v251;
  v40((v38 + v37), a1, v251);
  *&v257 = v30;
  *(&v257 + 1) = v32;

  MEMORY[0x21CE92100](1818326829, 0xE400000000000000);
  URL.appendingPathExtension(_:)();

  v222 = v30;
  *&v257 = v30;
  *(&v257 + 1) = v32;
  v221 = v32;

  MEMORY[0x21CE92100](1835561773, 0xE400000000000000);
  v223 = 2 * v35;
  v42 = v237;
  v229 = v29;
  URL.appendingPathExtension(_:)();
  v43 = v231;
  v44 = v41;

  v250 = objc_opt_self();
  v253 = (v8 - 8);
  v236 = *MEMORY[0x277CCA1C0];
  v240 = "DBManager._setUIActiveCount(_:)";
  v212 = "deleteDBFiles(dbURL:className:)";
  v244 = (v254 + 8);
  v45 = 3;
  *&v46 = 136446978;
  v233 = v46;
  *&v46 = 136446722;
  v239 = v46;
  v215 = v39;
  v247 = v8;
  v235 = v35;
  do
  {
    v48 = v44;
    v252(v43, v39, v44);
    v49 = [v250 defaultManager];
    v50 = v43;
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v52 = MEMORY[0x21CE91FC0](countAndFlagsBits);

    *&v257 = 0;
    v53 = [v49 attributesOfItemAtPath:v52 error:&v257];

    v54 = v257;
    if (v53)
    {
      type metadata accessor for NSFileAttributeKey(0);
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
      v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v54;

      if (!*(v55 + 16) || (v57 = specialized __RawDictionaryStorage.find<A>(_:)(v236), (v58 & 1) == 0))
      {

LABEL_14:
        v43 = v50;
        v44 = v48;
        v254 = *v253;
        (v254)(v50, v48);
        goto LABEL_3;
      }

      outlined init with copy of Any(*(v55 + 56) + 32 * v57, &v257);

      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v59 = v255;
      v43 = v50;
      v44 = v48;
      if ([v255 longLongValue] < 1)
      {
        v254 = *v253;
        (v254)(v50, v48);

        goto LABEL_3;
      }

      v232 = v59;
      if (one-time initialization token for database != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      v61 = __swift_project_value_buffer(v60, static CommonLogger.database);
      v252(v42, v50, v44);
      v62 = Logger.logObject.getter();
      v63 = v44;
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v213 = v61;
        v67 = v66;
        *&v257 = v66;
        *v65 = v239;
        v68 = StaticString.description.getter();
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v257);

        *(v65 + 4) = v70;
        *(v65 + 12) = 2082;
        *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
        *(v65 + 22) = 2080;
        lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v254 = *v253;
        (v254)(v42, v251);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v257);
        v35 = v235;

        *(v65 + 24) = v74;
        _os_log_impl(&dword_21607C000, v62, v64, "%{public}s.%{public}s Deleting old DB: %s", v65, 0x20u);
        swift_arrayDestroy();
        v44 = v251;
        MEMORY[0x21CE94770](v67, -1, -1);
        MEMORY[0x21CE94770](v65, -1, -1);
      }

      else
      {

        v254 = *v253;
        (v254)(v42, v63);
        v44 = v63;
      }

      v104 = [v250 defaultManager];
      URL._bridgeToObjectiveC()(v105);
      v107 = v106;
      *&v257 = 0;
      v108 = [v104 removeItemAtURL:v106 error:&v257];

      if (v108)
      {
        v109 = one-time initialization token for momentsUI;
        v110 = v257;
        if (v109 != -1)
        {
          swift_once();
        }

        v111 = static DefaultsManager.momentsUI;
        v112 = v214;
        if (static DefaultsManager.momentsUI)
        {
          v113 = MEMORY[0x21CE91FC0](0xD000000000000017, v212 | 0x8000000000000000);
          v114 = [v111 objectForKey_];

          if (v114)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v255 = 0u;
            v256 = 0u;
          }

          v257 = v255;
          v258 = v256;
          if (*(&v256 + 1))
          {
            if (swift_dynamicCast())
            {
              v116 = *&v255;
              goto LABEL_39;
            }

LABEL_38:
            v116 = 86400.0;
LABEL_39:
            v117 = objc_opt_self();
            URL._bridgeToObjectiveC()(v118);
            v120 = v119;
            LODWORD(v117) = [v117 acquireBackgroundProcessingPermissionForURL:v119 duration:0 mustAcquire:v116];

            if (v117)
            {
              v252(v227, v50, v44);
              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v213 = swift_slowAlloc();
                *&v257 = v213;
                *v123 = v233;
                v124 = StaticString.description.getter();
                v211 = v122;
                v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v257);

                *(v123 + 4) = v126;
                *(v123 + 12) = 2082;
                *(v123 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
                *(v123 + 22) = 2080;
                lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
                v127 = dispatch thunk of CustomStringConvertible.description.getter();
                v129 = v128;
                v130 = v254;
                (v254)(v227, v251);
                v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v257);
                v132 = v251;

                *(v123 + 24) = v131;
                *(v123 + 32) = 2048;
                *(v123 + 34) = v116;
                v133 = v211;
                v134 = v121;
                v135 = "%{public}s.%{public}s Acquired background assertion for: %s (%f seconds)";
                v136 = v123;
                v137 = 42;
LABEL_44:
                _os_log_impl(&dword_21607C000, v134, v133, v135, v136, v137);
                v147 = v213;
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v147, -1, -1);
                v148 = v123;
                v44 = v132;
                MEMORY[0x21CE94770](v148, -1, -1);

                v130(v50, v132);
LABEL_48:
                v42 = v237;
                v43 = v50;
                goto LABEL_3;
              }

              v149 = v227;
            }

            else
            {
              v252(v112, v50, v44);
              v121 = Logger.logObject.getter();
              v138 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v121, v138))
              {
                v123 = swift_slowAlloc();
                v213 = swift_slowAlloc();
                *&v257 = v213;
                *v123 = v239;
                v139 = StaticString.description.getter();
                v211 = v138;
                v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &v257);

                *(v123 + 4) = v141;
                *(v123 + 12) = 2082;
                *(v123 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
                *(v123 + 22) = 2080;
                lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
                v142 = dispatch thunk of CustomStringConvertible.description.getter();
                v144 = v143;
                v145 = v112;
                v130 = v254;
                (v254)(v145, v251);
                v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, &v257);
                v132 = v251;

                *(v123 + 24) = v146;
                v133 = v211;
                v134 = v121;
                v135 = "%{public}s.%{public}s Error setting background assertion for: %s";
                v136 = v123;
                v137 = 32;
                goto LABEL_44;
              }

              v149 = v112;
            }

            v150 = v254;
            (v254)(v149, v44);
            v150(v50, v44);
            goto LABEL_48;
          }
        }

        else
        {
          v257 = 0u;
          v258 = 0u;
        }

        outlined destroy of UTType?(&v257, &_sypSgMd);
        goto LABEL_38;
      }

      v48 = v44;
      v115 = v257;
      v76 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v75 = v257;
      v76 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v77 = v76;
    v78 = v245;
    static CocoaError.fileNoSuchFile.getter();
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
    v79 = v246;
    v80 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*v244)(v78, v79);
    if (v80)
    {
      v43 = v50;
      v44 = v48;
      v254 = *v253;
      (v254)(v50, v48);
    }

    else
    {
      v81 = v48;
      if (one-time initialization token for database != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      __swift_project_value_buffer(v82, static CommonLogger.database);
      v83 = v50;
      v252(v238, v50, v81);
      v84 = v76;
      v85 = v81;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v86, v87))
      {

        v47 = *v253;
        (*v253)(v238, v85);
        v254 = v47;
        (v47)(v83, v85);
        v42 = v237;
        v43 = v83;
        v44 = v85;
        goto LABEL_3;
      }

      v88 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      *&v257 = v254;
      *v88 = v233;
      v89 = StaticString.description.getter();
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v257);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2082;
      *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
      *(v88 + 22) = 2080;
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v95 = *v253;
      (*v253)(v238, v251);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v257);

      *(v88 + 24) = v96;
      *(v88 + 32) = 2112;
      v97 = v76;
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v88 + 34) = v98;
      v99 = v232;
      *v232 = v98;
      _os_log_impl(&dword_21607C000, v86, v87, "%{public}s.%{public}s Error deleting old DB: %s (%@)", v88, 0x2Au);
      outlined destroy of UTType?(v99, &_sSo8NSObjectCSgMd);
      v100 = v99;
      v101 = v251;
      MEMORY[0x21CE94770](v100, -1, -1);
      v102 = v254;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v102, -1, -1);
      v103 = v88;
      v35 = v235;
      MEMORY[0x21CE94770](v103, -1, -1);

      v44 = v101;
      v43 = v231;
      v254 = v95;
      (v95)(v231, v44);
    }

    v42 = v237;
LABEL_3:
    v39 += v35;
    --v45;
  }

  while (v45);
  swift_setDeallocating();
  v151 = 3;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v152 = v219;
  v232 = swift_allocObject();
  v153 = &v232[v152];
  *&v257 = v222;
  *(&v257 + 1) = v221;
  MEMORY[0x21CE92100](0x626F6C622DLL, 0xE500000000000000);
  v236 = v153;
  URL.appendingPathExtension(_:)();

  *&v257 = 46;
  *(&v257 + 1) = 0xE100000000000000;
  MEMORY[0x21CE92100](v228, *(&v228 + 1));
  MEMORY[0x21CE92100](0x54524F505055535FLL, 0xE800000000000000);
  v154 = *MEMORY[0x277CC91D8];
  v155 = v225;
  v238 = *(v225 + 104);
  v156 = v224;
  v157 = v226;
  (v238)(v224, v154, v226);
  v237 = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  v158 = *(v155 + 8);
  v158(v156, v157);

  v257 = v228;
  MEMORY[0x21CE92100](0x74657373416B635FLL, 0xE900000000000073);
  (v238)(v156, v154, v157);
  v159 = v236;
  v160 = v235;
  URL.appending<A>(path:directoryHint:)();
  v158(v156, v157);
  v161 = v251;

  v162 = v159;
  v163 = v248;
  v164 = v249;
  do
  {
    v165 = v252;
    v252(v163, v162, v161);
    if (one-time initialization token for database != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    __swift_project_value_buffer(v166, static CommonLogger.database);
    v165(v164, v163, v161);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&v257 = v170;
      *v169 = v239;
      v171 = StaticString.description.getter();
      v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v172, &v257);

      *(v169 + 4) = v173;
      *(v169 + 12) = 2082;
      *(v169 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
      *(v169 + 22) = 2080;
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v174 = dispatch thunk of CustomStringConvertible.description.getter();
      v176 = v175;
      (v254)(v249, v251);
      v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v176, &v257);
      v161 = v251;

      *(v169 + 24) = v177;
      _os_log_impl(&dword_21607C000, v167, v168, "%{public}s.%{public}s Deleting old DB: %s", v169, 0x20u);
      swift_arrayDestroy();
      v178 = v170;
      v164 = v249;
      MEMORY[0x21CE94770](v178, -1, -1);
      MEMORY[0x21CE94770](v169, -1, -1);
    }

    else
    {

      (v254)(v164, v161);
    }

    v179 = [v250 defaultManager];
    v163 = v248;
    URL._bridgeToObjectiveC()(v180);
    v182 = v181;
    *&v257 = 0;
    v183 = [v179 removeItemAtURL:v181 error:&v257];

    v184 = v257;
    if (v183)
    {
      (v254)(v163, v161);
    }

    else
    {
      v185 = v184;
      v186 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v187 = v186;
      v188 = v245;
      static CocoaError.fileNoSuchFile.getter();
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
      v189 = v246;
      LOBYTE(v185) = static _ErrorCodeProtocol.~= infix(_:_:)();

      (*v244)(v188, v189);
      if (v185)
      {
        v163 = v248;
        (v254)(v248, v161);
      }

      else
      {
        v190 = v234;
        v191 = v248;
        v252(v234, v248, v161);
        v192 = v186;
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v237 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          *&v257 = v238;
          *v195 = v233;
          v196 = StaticString.description.getter();
          v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v197, &v257);

          *(v195 + 4) = v198;
          *(v195 + 12) = 2082;
          *(v195 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
          *(v195 + 22) = 2080;
          lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v199 = dispatch thunk of CustomStringConvertible.description.getter();
          v201 = v200;
          (v254)(v190, v251);
          v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v201, &v257);
          v160 = v235;

          *(v195 + 24) = v202;
          *(v195 + 32) = 2112;
          v203 = v186;
          v204 = _swift_stdlib_bridgeErrorToNSError();
          *(v195 + 34) = v204;
          v205 = v237;
          *v237 = v204;
          _os_log_impl(&dword_21607C000, v193, v194, "%{public}s.%{public}s Error deleting old DB: %s (%@)", v195, 0x2Au);
          outlined destroy of UTType?(v205, &_sSo8NSObjectCSgMd);
          v161 = v251;
          MEMORY[0x21CE94770](v205, -1, -1);
          v206 = v238;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v206, -1, -1);
          MEMORY[0x21CE94770](v195, -1, -1);

          v163 = v248;
          (v254)(v248, v161);
        }

        else
        {

          v207 = v254;
          (v254)(v190, v161);
          v207(v191, v161);
          v163 = v191;
        }

        v164 = v249;
      }
    }

    v162 += v160;
    --v151;
  }

  while (v151);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v208 = v254;
  (v254)(v230, v161);
  return v208(v229, v161);
}

uint64_t static CloudSubDB.tryAssertDBFiles(dbURL:className:lastAttempt:lastSuccess:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 104) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](static CloudSubDB.tryAssertDBFiles(dbURL:className:lastAttempt:lastSuccess:), 0, 0);
}

uint64_t static CloudSubDB.tryAssertDBFiles(dbURL:className:lastAttempt:lastSuccess:)()
{
  *(v0 + 80) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](static CloudSubDB.tryAssertDBFiles(dbURL:className:lastAttempt:lastSuccess:), v2, v1);
}

{
  v1 = *(v0 + 80);

  *(v0 + 96) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](static CloudSubDB.tryAssertDBFiles(dbURL:className:lastAttempt:lastSuccess:), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = [v1 isProtectedDataAvailable];

  if (!v2)
  {
    goto LABEL_9;
  }

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  if (v3 <= 3600.0)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_9:
    v10 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  Date.timeIntervalSince(_:)();
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v7 <= 300.0)
  {
    (*(v5 + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_9;
  }

  v8 = 1;
  v9 = _s9MomentsUI10CloudSubDBPAAE15bgAssertDBFiles5dbURL9className11mustAcquireSb10Foundation0J0V_s12StaticStringVSbtFZAA0c4SyncE0C_Tt2g5(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 104), 1);
  (*(v5 + 8))(v4, v6);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  v11 = *(v0 + 8);

  return v11(v10 | v8);
}

uint64_t static CloudSubDB.zones.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v2 + 40;
    do
    {
      v5 = (*(*v4 + 32))();
      v7 = v6;
      v8 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
      v9 = MEMORY[0x21CE91FC0](v5, v7);

      v10 = [v8 initWithZoneName_];

      v11 = [v10 zoneID];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 16;
      --v3;
    }

    while (v3);

    v12 = v15;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo14CKRecordZoneIDC_SayAEGTt0g5Tf4g_nTm(v12, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8, &lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, specialized Set._Variant.insert(_:));

  return v13;
}

uint64_t protocol witness for CloudSubDB.hasZone(_:) in conformance CloudSuggestionsDB()
{
  v1 = *(v0 + 16);
  v2 = specialized static CloudSubDB.zones.getter();
  v3 = specialized Set.contains(_:)(v1, v2);

  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t CloudSubDB.hasZone(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return specialized CloudSubDB.hasZone(_:)(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return specialized CloudSubDB.hasZone(_:)(a1, a2, a3);
}

uint64_t static CloudSubDB.recordTypes.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v15;
    v5 = v2 + 40;
    do
    {
      v6 = (*(*v5 + 40))();
      v16 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v4 = v16;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v4);

  return v13;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI18HashableCoordinateV_SD4KeysVyAFSo7CGPointV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type HashableCoordinate and conformance HashableCoordinate();
  result = MEMORY[0x21CE925E0](v2, &type metadata for HashableCoordinate, v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = specialized Set._Variant.insert(_:)(v13, *v12, v12[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAFShyAFG_GTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  result = MEMORY[0x21CE925E0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x28223BE20](v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV5valuetMd);
  v5 = MEMORY[0x28223BE20](v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    outlined init with take of URL?(v26, v45, &_sSS3key_10Foundation3URLV5valuetMd);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    outlined init with take of Any(&v51, v53);
    outlined init with take of Any(v53, v54);
    outlined init with take of Any(v54, &v52);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = outlined init with take of Any(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = outlined init with take of Any(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for NSFileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    outlined init with take of Any((v27 + 8), v25);
    outlined init with take of Any(v25, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = outlined init with take of Any(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIFont);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    outlined init with take of Any((v27 + 8), v25);
    outlined init with take of Any(v25, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = outlined init with take of Any(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
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
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
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

{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Si5count_9MomentsUI9AssetTypeO05assetH0t5valuetMd);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_Si5count_9MomentsUI9AssetTypeO05assetG0ttMd);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v49 - v4;
  v5 = type metadata accessor for UUID();
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Si_9MomentsUI9AssetTypeOt5valuetMd);
  v7 = MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v49 - v9;
  v60 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSi5count_9MomentsUI9AssetTypeO05assetI0tGMd);
    v10 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v60 + 64;
  v12 = 1 << *(v60 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v60 + 64);
  v15 = (v12 + 63) >> 6;
  v51 = v59 + 16;
  v63 = v59 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v49 = v15;
  v50 = v11;
  v52 = v10;
  while (v14)
  {
LABEL_15:
    v22 = __clz(__rbit64(v14)) | (v18 << 6);
    v23 = v59;
    v24 = v60;
    v25 = *(v60 + 48);
    v62 = *(v59 + 72);
    v26 = v53;
    (*(v59 + 16))(v53, v25 + v62 * v22, v5);
    v27 = *(v24 + 56) + 16 * v22;
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 8);
    v29 = v55;
    v30 = &v26[*(v55 + 48)];
    *v30 = v28;
    v30[8] = v27;
    v31 = v26;
    v32 = v54;
    outlined init with take of URL?(v31, v54, &_s10Foundation4UUIDV3key_Si_9MomentsUI9AssetTypeOt5valuetMd);
    v33 = v5;
    v34 = v32 + *(v29 + 48);
    v35 = v57;
    v36 = &v57[*(v58 + 48)];
    v37 = *(v23 + 32);
    v37(v57, v32, v33);
    v38 = *(v34 + 8);
    v65 = *v34;
    v66 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9MomentsUI9AssetTypeOtMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5count_9MomentsUI9AssetTypeO05assetE0tMd);
    swift_dynamicCast();
    v39 = v56;
    v37(v56, v35, v33);
    v40 = *v36;
    v61 = v36[8];
    v41 = v39;
    v5 = v33;
    v37(v64, v41, v33);
    v10 = v52;
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v42 = -1 << *(v10 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v16 + 8 * (v43 >> 6))) == 0)
    {
      v45 = 0;
      v46 = (63 - v42) >> 6;
      while (++v44 != v46 || (v45 & 1) == 0)
      {
        v47 = v44 == v46;
        if (v44 == v46)
        {
          v44 = 0;
        }

        v45 |= v47;
        v48 = *(v16 + 8 * v44);
        if (v48 != -1)
        {
          v19 = __clz(__rbit64(~v48)) + (v44 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v43) & ~*(v16 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = (v37)(*(v10 + 48) + v19 * v62, v64, v33);
    v20 = *(v10 + 56) + 16 * v19;
    *v20 = v40;
    *(v20 + 8) = v61;
    ++*(v10 + 16);
    v15 = v49;
    v11 = v50;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v18;
    if (v14)
    {
      v18 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17NSManagedObjectIDCGMd);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    outlined init with take of Any(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    outlined init with take of Any(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = outlined init with take of Any(v30, (*(v2 + 56) + 32 * v10));
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