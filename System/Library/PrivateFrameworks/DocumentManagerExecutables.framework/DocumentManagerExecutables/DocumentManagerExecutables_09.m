char *closure #2 in DOCFileProviderSyncStateFooterView.updateActionButton(state:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    result = _DocumentManagerBundle();
    if (result)
    {
      v20 = result;
      v32._object = 0x8000000249BCAEC0;
      v21._countAndFlagsBits = 0x676E696D75736552;
      v21._object = 0xAB00000000A680E2;
      v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v22.value._object = 0xEB00000000656C62;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0xD00000000000003ALL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v32);

      v24 = DOCFileProviderSyncStateFooterView.actionButton.getter();
      UIButton.configuration.getter();
      v25 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v25 - 8) + 48))(v17, 1, v25))
      {

        outlined init with copy of UIButton.Configuration?(v17, v13);
        UIButton.configuration.setter();

        outlined destroy of UIButton.Configuration?(v17);
      }

      else
      {
        v26 = *MEMORY[0x277D76968];
        v27 = [a3 traitCollection];
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v31 = [objc_opt_self() preferredFontForTextStyle:v26 compatibleWithTraitCollection:v27];
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();

        v28 = type metadata accessor for AttributedString();
        (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
        UIButton.Configuration.attributedTitle.setter();
        UIButton.configuration.setter();
      }

      [*&v19[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton] setUserInteractionEnabled_];
      v29 = *(**&v19[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel] + 304);

      v29(v30);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *closure #1 in DOCFileProviderSyncStateFooterView.updateActionButton(state:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    result = _DocumentManagerBundle();
    if (result)
    {
      v20 = result;
      v32._object = 0x8000000249BCAE80;
      v21._countAndFlagsBits = 0xE2676E6973756150;
      v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v22.value._object = 0xEB00000000656C62;
      v21._object = 0xAA0000000000A680;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0xD000000000000039;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v32);

      v24 = DOCFileProviderSyncStateFooterView.actionButton.getter();
      UIButton.configuration.getter();
      v25 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v25 - 8) + 48))(v17, 1, v25))
      {

        outlined init with copy of UIButton.Configuration?(v17, v13);
        UIButton.configuration.setter();

        outlined destroy of UIButton.Configuration?(v17);
      }

      else
      {
        v26 = *MEMORY[0x277D76968];
        v27 = [a3 traitCollection];
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v31 = [objc_opt_self() preferredFontForTextStyle:v26 compatibleWithTraitCollection:v27];
        lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
        AttributedString.subscript.setter();

        v28 = type metadata accessor for AttributedString();
        (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
        UIButton.Configuration.attributedTitle.setter();
        UIButton.configuration.setter();
      }

      [*&v19[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___actionButton] setUserInteractionEnabled_];
      v29 = *(**&v19[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel] + 296);

      v29(v30);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void DOCFileProviderSyncStateFooterView.updateTitleContainer(state:localizedDisconnectedText:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = DOCFileProviderSyncStateFooterView.titleContainer.getter();
  v6 = [v5 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___titleContainer;
    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [*&v4[v9] removeArrangedSubview_];
      [v12 removeFromSuperview];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_12:

  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel;
  v15 = v4;
  v16 = *(**&v4[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel] + 336);

  v18 = v16(v17);

  if (v18)
  {
    v19 = *&v4[v9];
    v20 = DOCFileProviderSyncStateFooterView.titleLabel.getter();
    [v19 addArrangedSubview_];
  }

  v21 = *(**&v15[v14] + 360);

  v23 = v21(v22);

  if (v23)
  {
    v24 = *&v15[v9];
    v25 = DOCFileProviderSyncStateFooterView.separatorLabel.getter();
    [v24 addArrangedSubview_];

    v26 = *&v15[v9];
    v27 = DOCFileProviderSyncStateFooterView.actionButton.getter();
    [v26 addArrangedSubview_];
  }

  [v15 setNeedsLayout];
  DOCFileProviderSyncStateFooterView.updateTitleLabel(state:localizedDisconnectedText:)(a1, a2, v28, a4);

  DOCFileProviderSyncStateFooterView.updateActionButton(state:)(a1, a2);
}

void DOCFileProviderSyncStateFooterView.updateSubtitleContainer(state:localizedDisconnectedText:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = DOCFileProviderSyncStateFooterView.subtitleContainer.getter();
  v6 = [v5 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___subtitleContainer;
    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [*(v4 + v9) removeArrangedSubview_];
      [v12 removeFromSuperview];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_12:

  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel;
  v15 = v4;
  v16 = *(**(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel) + 352);

  v18 = v16(v17);

  if (v18)
  {
    v19 = *(v4 + v9);
    v20 = DOCFileProviderSyncStateFooterView.subtitleLabel.getter();
    [v19 addArrangedSubview_];
  }

  v21 = *(**(v15 + v14) + 368);

  v23 = v21(v22);

  if (v23)
  {
    v24 = *(v15 + v9);
    v25 = DOCFileProviderSyncStateFooterView.separatorLabel.getter();
    [v24 addArrangedSubview_];

    v26 = *(v15 + v9);
    v27 = DOCFileProviderSyncStateFooterView.actionButton.getter();
    [v26 addArrangedSubview_];
  }

  DOCFileProviderSyncStateFooterView.updateSubtitleLabel(state:localizedDisconnectedText:)(a1, a2, a3, a4);

  DOCFileProviderSyncStateFooterView.updateActionButton(state:)(a1, a2);
}

void DOCFileProviderSyncStateFooterView.updateViews(state:localizedDisconnectedText:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = DOCFileProviderSyncStateFooterView.mainContainer.getter();
  v7 = [v6 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v41 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___mainContainer;
    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [*(v5 + v41) removeArrangedSubview_];
      [v12 removeFromSuperview];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_12:

  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel;
  v15 = *(**(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_viewModel) + 320);

  v17 = v15(v16);

  if (v17)
  {
    v18 = DOCFileProviderSyncStateFooterView.progressBar.getter();
    if (v18)
    {
      v19 = v18;
      [*(v5 + v41) addArrangedSubview_];
      v20 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_249BA0290;
      v22 = [v19 widthAnchor];
      v23 = [*(v5 + v41) widthAnchor];
      v24 = [v22 constraintLessThanOrEqualToAnchor_];

      *(v21 + 32) = v24;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 activateConstraints_];
    }
  }

  v26 = *(**(v5 + v14) + 328);

  v28 = v26(v27);

  if (v28)
  {
    v29 = *(v5 + v41);
    v30 = DOCFileProviderSyncStateFooterView.titleContainer.getter();
    [v29 addArrangedSubview_];
  }

  v31 = *(**(v5 + v14) + 344);

  v33 = v31(v32);

  if (v33)
  {
    v35 = *(v5 + v41);
    v36 = DOCFileProviderSyncStateFooterView.subtitleContainer.getter();
    [v35 addArrangedSubview_];
  }

  DOCFileProviderSyncStateFooterView.updateTitleContainer(state:localizedDisconnectedText:)(a1, a2, v34, a4);

  DOCFileProviderSyncStateFooterView.updateSubtitleContainer(state:localizedDisconnectedText:)(a1, a2, a3, a4);
}

id DOCFileProviderSyncStateFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCFileProviderSyncStateFooterView.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView_delegate);

  outlined consume of DOCProgressCollectionIndicatorView??(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___progressBar));

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCFileProviderSyncStateFooterView____lazy_storage___mainContainer);
}

id DOCFileProviderSyncStateFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFileProviderSyncStateFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for DOCFileProviderSyncStateFooterView.Metrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCFileProviderSyncStateFooterView.Metrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIButton.Configuration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id outlined copy of DOCProgressCollectionIndicatorView??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

char *specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(char a1, uint64_t a2, _BYTE *a3, double a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_enabled] = 1;
  v13 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_combinedProgress];
  *v13 = 0;
  v13[8] = 1;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_autohideContentOnCompletion] = 1;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_preferredIconColor] = 0;
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup;
  type metadata accessor for DOCGenericOperationCombinedProgress(0);
  swift_allocObject();
  *&a3[v14] = DOCGenericOperationCombinedProgress.init(operations:observing:)(MEMORY[0x277D84F90], &outlined read-only object #0 of specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:));
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView____lazy_storage___didTapGestureRecognizer] = 0;
  v15 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_debugID];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v9 + 8))(v12, v8);
  v16 = specialized Collection.prefix(_:)(6);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  *v15 = v16;
  v15[1] = v18;
  v15[2] = v20;
  v15[3] = v22;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_isShowingContent] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_pointerInteraction] = 0;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled] = 0;
  v23 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_source];
  *v23 = a2;
  v23[1] = &protocol witness table for DOCFilterableOperationProgressCollectionSource<A>;
  LOBYTE(v38) = a1 & 1;
  v24 = objc_allocWithZone(type metadata accessor for DOCProgressIndicatorView());
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView] = DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(&v38, a4 + 0.1);
  v25 = type metadata accessor for DOCProgressCollectionIndicatorView();
  v40.receiver = a3;
  v40.super_class = v25;
  v26 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v38 = 0;
  v39 = 0xE000000000000000;
  v27 = v26;
  _StringGuts.grow(_:)(19);

  v38 = 0xD000000000000011;
  v39 = 0x8000000249BCB230;
  v28 = [v27 description];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  MEMORY[0x24C1FAEA0](v29, v31);

  DOCProgressCollectionIndicatorView.debug(_:)(v38, v39);

  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup;
  v33 = *(**&v27[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup] + 128);

  v33(v34, a4);

  v35 = *&v27[v32];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  (*(*v35 + 360))(partial apply for closure #1 in DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:), v36);

  DOCProgressCollectionIndicatorView.configureViews()();
  DOCProgressCollectionIndicatorView.updateCombinedProgress()();

  return v27;
}

char *DOCEjectionController.button.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source) isEjectable])
  {
    return DOCEjectionController._button.getter();
  }

  else
  {
    return 0;
  }
}

id DOCEjectButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *DOCEjectButton.init(primaryAction:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_buttonSize;
  v10 = *MEMORY[0x277D75030];
  v11 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v11 - 8) + 104))(&v2[v9], v10, v11);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle;
  v13 = [objc_opt_self() mainScreen];
  v14 = [v13 traitCollection];

  v15 = [v14 sourceOutlineStyle];
  *&v2[v12] = v15;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded] = 1;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_color;
  *&v2[v16] = [objc_opt_self() labelColor];
  v17 = type metadata accessor for DOCEjectButton();
  v25.receiver = v2;
  v25.super_class = v17;
  v18 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  static UIButton.Configuration.plain()();
  v19 = type metadata accessor for UIButton.Configuration();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  UIButton.configuration.setter();
  v20 = [v18 traitCollection];
  v21 = [v20 sourceOutlineStyle];

  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle] = v21;
  [v18 setNeedsUpdateConfiguration];
  [v18 updateConfiguration];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;

  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v18 setDoc:v23 primaryAction:?];

  return v18;
}

uint64_t key path setter for DOCEjectButton.buttonSize : DOCEjectButton(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UIButton.Configuration.Size();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x88))(v8);
}

uint64_t DOCEjectButton.buttonSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_buttonSize;
  swift_beginAccess();
  v4 = type metadata accessor for UIButton.Configuration.Size();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DOCEjectButton.buttonSize.setter(uint64_t a1)
{
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_buttonSize;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v16, a1, v3);
  swift_endAccess();
  UIButton.configuration.getter();
  v17 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v17 - 8) + 48))(v15, 1, v17))
  {
    outlined init with copy of UIButton.Configuration?(v15, v11);
    UIButton.configuration.setter();
    (*(v4 + 8))(a1, v3);
    return outlined destroy of CharacterSet?(v15, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    (*(v4 + 16))(v7, v1 + v16, v3);
    UIButton.Configuration.buttonSize.setter();
    UIButton.configuration.setter();
    return (*(v4 + 8))(a1, v3);
  }
}

void (*DOCEjectButton.buttonSize.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd) - 8) + 64);
  if (v3)
  {
    v5[7] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[7] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_buttonSize;
  v5[8] = v10;
  v5[9] = v11;
  swift_beginAccess();
  return DOCEjectButton.buttonSize.modify;
}

void DOCEjectButton.buttonSize.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[8];
  if ((a2 & 1) == 0)
  {
    v5 = v3[8];
    UIButton.configuration.getter();
    v6 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = v3[8];
      outlined init with copy of UIButton.Configuration?(v7, v3[7]);
      UIButton.configuration.setter();
      outlined destroy of CharacterSet?(v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    }

    else
    {
      (*(v3[5] + 16))(v3[6], v3[3] + v3[9], v3[4]);
      UIButton.Configuration.buttonSize.setter();
      UIButton.configuration.setter();
    }

    v4 = v3[8];
  }

  v9 = v3[6];
  v8 = v3[7];
  free(v4);
  free(v8);
  free(v9);

  free(v3);
}

id DOCEjectButton.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCEjectButton();
  return objc_msgSendSuper2(&v2, sel_frame);
}

id DOCEjectButton.frame.setter(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for DOCEjectButton();
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, sel_frame);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19.receiver = v4;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, sel_setFrame_, a1, a2, a3, a4);
  [v4 frame];
  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  result = CGRectEqualToRect(v21, v22);
  if ((result & 1) == 0)
  {
    return [v4 setNeedsLayout];
  }

  return result;
}

id DOCEjectButton.color.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_color;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCEjectButton.color.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_color;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v6 = a1;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    [v2 setNeedsUpdateConfiguration];
  }
}

void (*DOCEjectButton.color.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_color;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCEjectButton.color.modify;
}

void DOCEjectButton.color.modify(id **a1, char a2)
{
  v3 = *a1;
  v5 = *a1 + 3;
  v4 = *v5;
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = *&v6[v7];
  *&v6[v7] = *v5;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      [v3[4] setNeedsUpdateConfiguration];
    }

    v10 = *v5;
  }

  else
  {
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      [v3[4] setNeedsUpdateConfiguration];
    }
  }

  free(v3);
}

Swift::Void __swiftcall DOCEjectButton.updateConfiguration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DOCEjectButton();
  v40.receiver = v0;
  v40.super_class = v15;
  objc_msgSendSuper2(&v40, sel_updateConfiguration);
  UIButton.configuration.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = [v0 window];
    if (v16 && (v16, (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled) & 1) == 0))
    {
      v24 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle);
      v25 = [v0 traitCollection];
      v26 = [v25 preferredContentSizeCategory];

      type metadata accessor for DOCSourceListInterface_Default();
      inited = swift_initStaticObject();
      v28 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
      v29 = [inited ejectIconFor:v24 iconColor:v28];

      v30 = specialized DOCEjectButton.customImageBaseline(forIconStyle:contentCategory:)(v24, v26);
      if ((v31 & 1) == 0)
      {
        v32 = [v29 imageWithBaselineOffsetFromBottom_];

        v29 = v32;
      }

      v33 = v29;
      UIButton.Configuration.image.setter();
      UIButton.Configuration.contentInsets.setter();
      (*(v11 + 16))(v5, v14, v10);
      (*(v11 + 56))(v5, 0, 1, v10);
      UIButton.configuration.setter();
      v34 = [v1 traitCollection];
      specialized static CGSize.doc_preferredSourceListIconSize(for:)(v34);
      v36 = v35;

      v37 = v36 + 2.0;
      [v1 frame];
      if (v39 != v37 || v38 != v37)
      {
        [v1 frame];
        [v1 setFrame_];
        [v1 setNeedsLayout];
      }

      (*(v11 + 8))(v14, v10);
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded) = 0;
    }

    else
    {
      v17 = [v0 traitCollection];
      specialized static CGSize.doc_preferredSourceListIconSize(for:)(v17);
      v19 = v18;

      v20 = v19 + 2.0;
      [v1 frame];
      if (v22 != v20 || v21 != v20)
      {
        [v1 frame];
        [v1 setFrame_];
        [v1 setNeedsLayout];
      }

      (*(v11 + 8))(v14, v10);
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded) = 1;
    }
  }
}

Swift::Void __swiftcall DOCEjectButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for DOCEjectButton();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled] = 1;
  v5 = [v2 traitCollection];
  v6 = [v5 sourceOutlineStyle];

  v7 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle] = v6;
  if (v6 != v7)
  {
    [v2 setNeedsUpdateConfiguration];
  }

  v8 = [v2 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v10 = static UITraitCollection.Traits.sizeCategory;
  v11 = qword_27EEE9CC0;

  v9 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v10, isa);

  if (v9)
  {
    v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded] = 1;
  }

  v2[v4] = 0;
  if (v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded] == 1)
  {
    [v2 setNeedsUpdateConfiguration];
    [v2 updateConfiguration];
  }
}

Swift::Void __swiftcall DOCEjectButton.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCEjectButton();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded) == 1)
  {
    [v0 setNeedsUpdateConfiguration];
    [v0 updateConfiguration];
  }
}

Swift::Bool __swiftcall DOCEjectButton.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  y = inside.y;
  x = inside.x;
  [v2 bounds];
  v5 = v15.origin.x;
  v6 = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = v5;
  v16.origin.y = v6;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  if (v9 > v10)
  {
    v10 = v9;
  }

  v11 = fmax(v10, 45.0) * 0.5;
  v17.origin.x = v5;
  v17.origin.y = v6;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectGetMidX(v17) - v11;
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = width;
  v18.size.height = height;
  v19.origin.y = CGRectGetMidY(v18) - v11;
  v19.size.width = v11 + v11;
  v19.origin.x = v12;
  v19.size.height = v11 + v11;
  v21.origin.x = v5;
  v21.origin.y = v6;
  v21.size.width = width;
  v21.size.height = height;
  v20 = CGRectUnion(v19, v21);
  v14.x = x;
  v14.y = y;
  return CGRectContainsPoint(v20, v14);
}

id DOCEjectButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCEjectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCEjectButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCEjectionController.observation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCEjectionController.observation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCEjectionController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCEjectionController.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

void DOCEjectionController.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *DOCEjectionController.__allocating_init(source:alertPresenting:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a1;
  swift_unknownObjectWeakAssign();
  v13.receiver = v5;
  v13.super_class = v2;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;

  return v8;
}

char *DOCEjectionController.init(source:alertPresenting:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a1;
  swift_unknownObjectWeakAssign();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;

  return v8;
}

id key path getter for DOCFileProviderSource.isEjectable : DOCFileProviderSource@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEjectable];
  *a2 = result;
  return result;
}

void closure #1 in DOCEjectionController.init(source:alertPresenting:)()
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
      [v2 ejectionStateDidChange];
      swift_unknownObjectRelease();
    }
  }
}

char *DOCEjectionController._button.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);
  }

  else
  {
    v4 = closure #1 in DOCEjectionController._button.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *closure #1 in DOCEjectionController._button.getter(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for DOCEjectButton());
  v4 = DOCEjectButton.init(primaryAction:)(partial apply for closure #1 in closure #1 in DOCEjectionController._button.getter, v2);
  v5 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source);
  v6 = v4;
  v7 = [v5 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x24C1FAEA0](0x75427463656A652DLL, 0xEC0000006E6F7474);

  v11 = MEMORY[0x24C1FAD20](v8, v10);

  [v6 setAccessibilityIdentifier_];

  [v6 setHidden_];
  return v6;
}

void closure #1 in closure #1 in DOCEjectionController._button.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCEjectionController.eject()();
  }
}

Swift::Void __swiftcall DOCEjectionController.eject()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source);
  if (![v1 isEjectable])
  {
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    DOCEjectionController.__performEjection(alertPresentingViewController:)(Strong);

    return;
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:
  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  v4 = [v1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  os_log(_:dso:log:type:_:)();
}

Swift::Void __swiftcall DOCEjectionController.showEjectButton()()
{
  v1 = DOCEjectionController._button.getter();
  v2 = [v1 isHidden];

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);

    [v3 setHidden_];
  }
}

Swift::Void __swiftcall DOCEjectionController.hideEjectButton()()
{
  v1 = DOCEjectionController._button.getter();
  v2 = [v1 isHidden];

  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);

    [v3 setHidden_];
  }
}

void DOCEjectionController.__performEjection(alertPresentingViewController:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source);
  if (!*&sharedTypeToFocusInputView._viewFlags || (v4 = v3, , DOCDebugUIScenarioManager.scenario(for:)(v4, v16), , v4, *&v16[0] == 1) || (v5 = BYTE9(v16[0]), outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd), v5 == 2) || (v5 & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9A480;
    v12 = [v3 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    os_log(_:dso:log:type:_:)();

    (*((*MEMORY[0x277D85000] & *v3) + 0x288))(a1);
  }

  else
  {
    v6 = MEMORY[0x24C1FAD20](0x6353206775626544, 0xEE006F6972616E65);
    v7 = MEMORY[0x24C1FAD20](0xD000000000000020, 0x8000000249BCB550);
    v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x24C1FAD20](19279, 0xE200000000000000);
    v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

    [v8 addAction_];
    [a1 presentViewController:v8 animated:1 completion:0];
  }
}

id DOCEjectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCEjectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized DOCEjectButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_buttonSize;
  v2 = *MEMORY[0x277D75030];
  v3 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle;
  v5 = [objc_opt_self() mainScreen];
  v6 = [v5 traitCollection];

  v7 = [v6 sourceOutlineStyle];
  *(v0 + v4) = v7;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded) = 1;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_color;
  *(v0 + v8) = [objc_opt_self() labelColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for DOCEjectButton()
{
  result = type metadata singleton initialization cache for DOCEjectButton;
  if (!type metadata singleton initialization cache for DOCEjectButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized DOCEjectButton.customImageBaseline(forIconStyle:contentCategory:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21UIContentSizeCategorya_12CoreGraphics7CGFloatVtGMd);
  v3 = swift_initStackObject();
  v4 = *MEMORY[0x277D76800];
  *(v3 + 32) = *MEMORY[0x277D76800];
  *(v3 + 16) = xmmword_249BA08D0;
  v5 = *MEMORY[0x277D767F8];
  *(v3 + 40) = 0x4014000000000000;
  *(v3 + 48) = v5;
  v6 = *MEMORY[0x277D767F0];
  *(v3 + 56) = 0x4014000000000000;
  *(v3 + 64) = v6;
  v7 = *MEMORY[0x277D767E8];
  *(v3 + 72) = 0x4014000000000000;
  *(v3 + 80) = v7;
  *(v3 + 88) = 0x4014000000000000;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVtMd);
  swift_arrayDestroy();
  *(inited + 40) = v16;
  *(inited + 48) = 0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_249BA08D0;
  *(v17 + 32) = v12;
  *(v17 + 40) = 0x4022000000000000;
  *(v17 + 48) = v13;
  *(v17 + 56) = 0x4022000000000000;
  *(v17 + 64) = v14;
  *(v17 + 72) = 0x4022000000000000;
  *(v17 + 80) = v15;
  *(v17 + 88) = 0x4022000000000000;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 56) = v18;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGtMd);
  swift_arrayDestroy();
  if (v19[2] && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v21 & 1) != 0))
  {
    v22 = *(v19[7] + 8 * v20);

    if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t type metadata completion function for DOCEjectButton()
{
  result = type metadata accessor for UIButton.Configuration.Size();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, void *a2)
{
  v13 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v6 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v12 = result;
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (i >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if ([v9 fpfs_fpItem])
      {
        break;
      }

      v10 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v10);
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
      if (v6 == v5)
      {
        return v12;
      }
    }

    v11 = swift_unknownObjectRelease();
    MEMORY[0x24C1FB090](v11);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v13;
  }

  while (v6 != v5);
  return result;
}

uint64_t DOCPickerContext.utisToSave.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCPickerContext_utisToSave;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void key path getter for DOCPickerContext.utisToSave : DOCPickerContext(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 utisToSave];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t DOCPickerContext.Fetcher.deinit()
{

  type metadata accessor for Array();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for _Cell();
  UnsafeMutablePointer.deinitialize(count:)();
  return v0;
}

uint64_t DOCPickerContext.Fetcher.__deallocating_deinit()
{
  DOCPickerContext.Fetcher.deinit();

  return swift_deallocClassInstance();
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_availableFINodesToMove()()
{
  v0 = DOCPickerContext.fpfs_availableFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fiNodeFetcher, specialized Array<A>.fpfs_syncFetchAvailableFINodes());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t specialized Array<A>.fpfs_syncFetchAvailableFINodes()(unint64_t a1)
{
  v1 = a1;
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_47:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v16 = MEMORY[0x277D84F90];
    while (2)
    {
      v6 = v5;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v6, v1);
          v5 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v6 >= *(v2 + 16))
          {
            goto LABEL_44;
          }

          swift_unknownObjectRetain();
          v5 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v7);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v18;
        swift_unknownObjectRelease();
        ++v6;
        if (v5 == v3)
        {
          goto LABEL_22;
        }
      }

      MEMORY[0x24C1FB090]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v17;
      if (v5 != v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_22:
  if (v4 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v1 = 0;
    v18 = MEMORY[0x277D84F90];
    v2 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v11 = v10;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v11, v4);
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          swift_unknownObjectRetain();
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_45;
          }
        }

        swift_getObjectType();
        v12 = DOCNode.fpfs_syncFetchFINode()();
        if (!v1)
        {
          break;
        }

        swift_unknownObjectRelease();
        v1 = 0;
LABEL_28:
        ++v11;
        if (v10 == v8)
        {
          goto LABEL_41;
        }
      }

      v13 = v12;
      v14 = swift_unknownObjectRelease();
      if (!v13)
      {
        goto LABEL_28;
      }

      MEMORY[0x24C1FB090](v14);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v18;
      if (v10 == v8)
      {
LABEL_41:

        specialized Array.append<A>(contentsOf:)(v9);
        return v16;
      }
    }
  }

  return v16;
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_allFINodesToMove()()
{
  v0 = DOCPickerContext.fpfs_allFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fiNodeFetcher, specialized Array<A>.fpfs_syncFetchAllFINodes());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

unint64_t specialized Array<A>.fpfs_syncFetchAllFINodes()(unint64_t a1)
{
  v1 = a1;
  v3 = specialized Array<A>._fpfs_prefetchAllFINodes()(a1);
  v4 = v2;
  v5 = *(v2 + 16);
  if (v5)
  {
    v25 = v1;
    v6 = 0;
    v7 = (v2 + 40);
    while (v6 < *(v4 + 16))
    {
      v1 = *(v7 - 1);
      v8 = *v7;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v9 = DOCNode.fpfs_syncFetchFINode()();
      if (v10)
      {

LABEL_21:
        swift_unknownObjectRelease();
LABEL_22:

        v19 = 0;
        v1 = MEMORY[0x277D84F90];
        v27 = MEMORY[0x277D84F90];
        v20 = *(v3 + 16);
        v5 = v25;
        while (v20 != v19)
        {
          if (v19 >= *(v3 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v21 = *(v3 + 8 * v19++ + 32);
          if (v21)
          {
            v22 = v21;
            MEMORY[0x24C1FB090]();
            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v1 = v27;
          }
        }

        if (v1 >> 62)
        {
          goto LABEL_39;
        }

        v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25 >> 62)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v11 = v9;
      if (!v9)
      {
        goto LABEL_21;
      }

      v12 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      swift_unknownObjectRelease();
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v8 >= *(v3 + 16))
      {
        goto LABEL_38;
      }

      ++v6;
      v13 = v3 + 8 * v8;
      v14 = *(v13 + 32);
      *(v13 + 32) = v11;

      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {

    v15 = 0;
    v1 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    v16 = *(v3 + 16);
    while (1)
    {
      if (v16 == v15)
      {

        return v1;
      }

      if (v15 >= *(v3 + 16))
      {
        break;
      }

      v17 = *(v3 + 8 * v15++ + 32);
      if (v17)
      {
        v18 = v17;
        MEMORY[0x24C1FB090]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v26;
      }
    }

LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  v23 = __CocoaSet.count.getter();
  if (v5 >> 62)
  {
LABEL_40:
    if (v23 == __CocoaSet.count.getter())
    {
      return v1;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (v23 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:

    return 0;
  }

  return v1;
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_availableFPItemsToMove()()
{
  v0 = DOCPickerContext.fpfs_availableFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fpItemFetcher, specialized Array<A>.fpfs_syncFetchAvailableFPItems());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

unint64_t DOCPickerContext.fpfs_availableFINodesToMove()(void *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + *a1);
  if (v3)
  {
    os_unfair_lock_lock((v3 + 24));
    v5 = *(v3 + 16);
    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v6 = *(v3 + 32);
      if (v6 || (v6 = *(v3 + 40)) != 0)
      {

LABEL_15:
        os_unfair_lock_unlock((v3 + 24));
        return v6;
      }

      v6 = a2(*(v3 + 16));
      *(v3 + 32) = v6;
      swift_bridgeObjectRetain_n();

      if (v6 >> 62)
      {
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = *(v3 + 16);
      if (v8 >> 62)
      {
        if (v7 == __CocoaSet.count.getter())
        {
          goto LABEL_12;
        }
      }

      else if (v7 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        *(v3 + 40) = v6;

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  return 0;
}

unint64_t specialized Array<A>.fpfs_syncFetchAvailableFPItems()(unint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v2 = specialized Sequence.compactMap<A>(_:)(a1, &v12);
  v3 = v12;
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v10)
  {
    v5 = v2;
    v6 = 0;
    v12 = v1;
    while (1)
    {
      if (i == v6)
      {

        v12 = v5;
        specialized Array.append<A>(contentsOf:)(v1);
        return v12;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      v2 = MEMORY[0x24C1FC540](v6, v3);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

LABEL_8:
      swift_getObjectType();
      v8 = DOCNode.fpfs_syncFetchFPItem()();
      v2 = swift_unknownObjectRelease();
      ++v6;
      if (v8)
      {
        MEMORY[0x24C1FB090](v2);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v2 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v12;
        v6 = v7;
      }
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v2 = swift_unknownObjectRetain();
    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v10 = v2;
    i = __CocoaSet.count.getter();
  }

  v11 = v2;

  return v11;
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_allFPItemsToMove()()
{
  v0 = DOCPickerContext.fpfs_allFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fpItemFetcher, specialized Array<A>.fpfs_syncFetchAllFPItems());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t DOCPickerContext.fpfs_allFINodesToMove()(void *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + *a1);
  if (v3)
  {
    os_unfair_lock_lock((v3 + 24));
    v5 = *(v3 + 16);
    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_4:
        v6 = *(v3 + 40);
        if (v6)
        {
        }

        else if (*(v3 + 32))
        {
          v6 = 0;
        }

        else
        {
          v6 = a2(*(v3 + 16));
          *(v3 + 40) = v6;
          swift_bridgeObjectRetain_n();

          *(v3 + 32) = v6;
        }

        goto LABEL_12;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_12:
    os_unfair_lock_unlock((v3 + 24));
    return v6;
  }

  return 0;
}

unint64_t specialized Array<A>.fpfs_syncFetchAllFPItems()(unint64_t a1)
{
  v2 = a1;
  v4 = specialized Array<A>._fpfs_prefetchAllFPItems()(a1);
  v5 = v3;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v3 + 40);
    while (v7 < *(v5 + 16))
    {
      v1 = *(v8 - 1);
      v9 = *v8;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = DOCNode.fpfs_syncFetchFPItem()();
      if (!v10)
      {
        swift_unknownObjectRelease();
LABEL_20:

        v18 = 0;
        v1 = MEMORY[0x277D84F90];
        v25 = MEMORY[0x277D84F90];
        v19 = *(v4 + 16);
        while (v19 != v18)
        {
          if (v18 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v20 = *(v4 + 8 * v18++ + 32);
          if (v20)
          {
            v21 = v20;
            MEMORY[0x24C1FB090]();
            if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v1 = v25;
          }
        }

        if (v1 >> 62)
        {
          goto LABEL_37;
        }

        v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2 >> 62)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

      v11 = v10;
      v12 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      swift_unknownObjectRelease();
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v9 >= *(v4 + 16))
      {
        goto LABEL_36;
      }

      ++v7;
      v13 = v4 + 8 * v9;
      v14 = *(v13 + 32);
      *(v13 + 32) = v11;

      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {

    v15 = 0;
    v1 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v16 = *(v4 + 16);
    while (1)
    {
      if (v16 == v15)
      {

        return v1;
      }

      if (v15 >= *(v4 + 16))
      {
        break;
      }

      v17 = *(v4 + 8 * v15++ + 32);
      if (v17)
      {
        v2 = v17;
        MEMORY[0x24C1FB090]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v24;
      }
    }

LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  v22 = __CocoaSet.count.getter();
  if (v2 >> 62)
  {
LABEL_38:
    if (v22 == __CocoaSet.count.getter())
    {
      return v1;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (v22 != *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:

    return 0;
  }

  return v1;
}

id DOCPickerContext.canRename.getter()
{
  result = [v0 urlsToSave];
  if (result)
  {
    v2 = result;
    type metadata accessor for URL();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);

    return (v4 == 1);
  }

  return result;
}

BOOL DOCPickerContext.canSetTags.getter()
{
  v1 = [v0 urlsToSave];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id DOCPickerContext.numberOfItems.getter()
{
  v1 = [v0 urlsToSave];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for URL();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);
LABEL_6:

    return v4;
  }

  v4 = [v0 nodesToMove];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_6;
  }

  return v4;
}

void DOCPickerContext.firstDisplayName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v25 - v10;
  v12 = [v1 urlsToSave];
  if (v12)
  {
    v13 = v12;
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {
      (*(v3 + 16))(v6, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      (*(v3 + 32))(v11, v6, v2);
      v15 = [objc_opt_self() defaultManager];
      v16 = URL.path.getter();
      v17 = MEMORY[0x24C1FAD20](v16);

      v18 = [v15 displayNameAtPath_];

      if (v18)
      {
        v19 = [v18 stringByDeletingPathExtension];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v3 + 8))(v11, v2);
        return;
      }

      goto LABEL_18;
    }
  }

  v20 = [v1 nodesToMove];
  if (v20)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_9:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C1FC540](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            return;
          }

          v23 = *(v22 + 32);
          swift_unknownObjectRetain();
        }

        v24 = [v23 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        return;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }
}

id DOCPickerContext.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void DOCPickerContext.init()()
{
  *(v0 + OBJC_IVAR___DOCPickerContext_utisToSave) = MEMORY[0x277D84F90];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCPickerContext.init(fpurls:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithFPURLs_];

  return v2;
}

size_t DOCPickerContext.init(fpurls:)(unint64_t a1)
{
  v2 = v1;
  v21 = type metadata accessor for URL();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v2 initWithURLs_];

    return v18;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = v1;
    v10 = 0;
    v11 = v22;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        v11 = v22;
      }

      ++v10;
      *(v11 + 16) = v16 + 1;
      (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v7, v21);
    }

    while (v8 != v10);

    v2 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id DOCPickerContext.init(urls:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithURLs_];

  return v2;
}

id DOCPickerContext.init(urls:)(uint64_t a1)
{
  v44[3] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___DOCPickerContext_utisToSave;
  v9 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCPickerContext_utisToSave] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCPickerContext_urlsToSave] = a1;
  *&v1[OBJC_IVAR___DOCPickerContext_nodesToMove] = 0;
  *&v1[OBJC_IVAR___DOCPickerContext__fiNodeFetcher] = 0;
  *&v1[OBJC_IVAR___DOCPickerContext__fpItemFetcher] = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v33 = v8;
    v34 = a1;
    v35 = v1;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v38 = *(v11 + 56);
    v39 = v12;
    v37 = (v11 - 8);

    v36 = 0;
    v40 = v3;
    v41 = v11;
    while (1)
    {
      v42 = v9;
      v39(v7, v13, v3);
      v14 = v7;
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      v18 = [v16 startAccessingSecurityScopedResource];
      v44[0] = 0;
      v19 = [v17 br:v44 typeIdentifierWithError:?];
      v20 = v44[0];
      if (!v19)
      {
        break;
      }

      v21 = v19;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      v25 = v20;

      if (v18)
      {
        goto LABEL_7;
      }

LABEL_8:

      v7 = v14;
      v3 = v40;
      (*v37)(v14, v40);
      if (v24)
      {
        v9 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v27 = *(v9 + 2);
        v26 = *(v9 + 3);
        if (v27 >= v26 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
        }

        *(v9 + 2) = v27 + 1;
        v28 = &v9[16 * v27];
        *(v28 + 4) = v22;
        *(v28 + 5) = v24;
      }

      else
      {
        v9 = v42;
      }

      v13 += v38;
      if (!--v10)
      {

        v1 = v35;
        v8 = v33;
        goto LABEL_17;
      }
    }

    v29 = v44[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v22 = 0;
    v24 = 0;
    v36 = 0;
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_7:
    [v17 stopAccessingSecurityScopedResource];
    goto LABEL_8;
  }

LABEL_17:
  swift_beginAccess();
  *&v1[v8] = v9;

  v43.receiver = v1;
  v43.super_class = DOCPickerContext;
  return objc_msgSendSuper2(&v43, sel_init);
}

id DOCPickerContext.init(nodes:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithNodes_];

  return v2;
}

id DOCPickerContext.init(nodes:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DOCPickerContext_utisToSave] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCPickerContext_urlsToSave] = 0;
  *&v1[OBJC_IVAR___DOCPickerContext_nodesToMove] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16DOCPickerContextC26DocumentManagerExecutablesE7Fetcher33_1A4A2D95C962EA9F59C398F93B7285EBLLCy_So6FINodeCGMd);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR___DOCPickerContext__fiNodeFetcher] = v3;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16DOCPickerContextC26DocumentManagerExecutablesE7Fetcher33_1A4A2D95C962EA9F59C398F93B7285EBLLCy_So6FPItemCGMd);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  *&v1[OBJC_IVAR___DOCPickerContext__fpItemFetcher] = v4;
  v6.receiver = v1;
  v6.super_class = DOCPickerContext;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t specialized Array<A>._fpfs_prefetchAllFPItems()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v15 = __CocoaSet.count.getter();
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_n(0, v15);
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return v3;
    }
  }

  else
  {
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_n(0, *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *(v2 + 16);
    if (!v4)
    {
      return v3;
    }
  }

  v5 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    for (i = v5 + 4; ; ++i)
    {
      v7 = i - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](i - 4, a1);
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(a1 + 8 * i);
        swift_unknownObjectRetain();
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v9 = [v8 fpfs_fpItem];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      if (v7 >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v3 + 8 * i);
      *(v3 + 8 * i) = v10;
      swift_unknownObjectRelease();

      if (v5 == v4)
      {
        return v3;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v13 = v17[2];
    v12 = v17[3];
    if (v13 >= v12 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v17);
    }

    v17[2] = v13 + 1;
    v14 = &v17[2 * v13];
    v14[4] = v8;
    v14[5] = v7;
  }

  while (v5 != v4);
  return v3;
}

uint64_t specialized Array<A>._fpfs_prefetchAllFINodes()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v15 = __CocoaSet.count.getter();
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FINodeCSg_Tt1g5Tf4gn_n(0, v15);
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return v3;
    }
  }

  else
  {
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FINodeCSg_Tt1g5Tf4gn_n(0, *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *(v2 + 16);
    if (!v4)
    {
      return v3;
    }
  }

  v5 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    for (i = v5 + 4; ; ++i)
    {
      v7 = i - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](i - 4, a1);
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(a1 + 8 * i);
        swift_unknownObjectRetain();
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        break;
      }

      v10 = v9;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      if (v7 >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v3 + 8 * i);
      *(v3 + 8 * i) = v10;
      swift_unknownObjectRelease();

      if (v5 == v4)
      {
        return v3;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v13 = v17[2];
    v12 = v17[3];
    if (v13 >= v12 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v17);
    }

    v17[2] = v13 + 1;
    v14 = &v17[2 * v13];
    v14[4] = v8;
    v14[5] = v7;
  }

  while (v5 != v4);
  return v3;
}

uint64_t DOCAppearance.copy.getter()
{
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance);
  swift_dynamicCast();
  return v2;
}

double DOCTabBarVariableBlurBackgroundView.Metrics.init()@<D0>(uint64_t a1@<X8>)
{
  result = 6.0;
  *a1 = xmmword_249BA1270;
  *(a1 + 16) = 0x402C000000000000;
  *(a1 + 24) = &outlined read-only object #0 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  *(a1 + 32) = &outlined read-only object #1 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  return result;
}

uint64_t DOCTabBarVariableBlurBackgroundView.backdropConfiguration.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView))
  {
  }

  __break(1u);
  return result;
}

id DOCTabBarVariableBlurBackgroundView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DOCTabBarVariableBlurBackgroundView.init()()
{
  swift_getObjectType();
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics];
  *v1 = xmmword_249BA1270;
  *(v1 + 2) = 0x402C000000000000;
  *(v1 + 3) = &outlined read-only object #0 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  *(v1 + 4) = &outlined read-only object #1 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  v2 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView] = 0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for DOCTabBarVariableBlurBackgroundView();
  v4 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;

  v7 = *MEMORY[0x277CDA690];
  v22[1] = 0;
  v22[2] = 0;
  v22[0] = v7;
  v23 = xmmword_249BA1280;
  v24 = xmmword_249BA1290;
  v8 = objc_allocWithZone(type metadata accessor for BackdropGradientView());
  v9 = v7;
  v10 = BackdropGradientView.init(gradient:)(v22);
  v11 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView];
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView] = v10;
  v12 = v10;

  [v6 addSubview_];
  result = [objc_opt_self() effectWithBlurRadius_];
  if (result)
  {
    v14 = result;
    v15 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    v16 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView];
    *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView] = v15;
    v17 = v15;

    [v6 addSubview_];
    DOCTabBarVariableBlurBackgroundView.updateGradientLocationColors()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_249B9A480;
    v19 = type metadata accessor for UITraitUserInterfaceStyle();
    v20 = MEMORY[0x277D74BF0];
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCTabBarVariableBlurBackgroundView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 16);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 24);
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

Swift::Void __swiftcall DOCTabBarVariableBlurBackgroundView.layoutSubviews()()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for DOCTabBarVariableBlurBackgroundView();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds];
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds];
  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds + 24];
  [v0 bounds];
  v34.origin.x = v6;
  v34.origin.y = v7;
  v34.size.width = v8;
  v34.size.height = v9;
  v33.origin.x = v2;
  v33.origin.y = v3;
  v33.size.width = v4;
  v33.size.height = v5;
  v10 = CGRectEqualToRect(v33, v34);
  [v0 bounds];
  *v1 = v11;
  *(v1 + 1) = v12;
  *(v1 + 2) = v13;
  *(v1 + 3) = v14;
  if (!v10)
  {
    [v0 bounds];
    v16 = v15;
    v18 = v17;
    v19 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 8];
    v20 = -v19;
    v22 = v21 + v19;
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView;
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView] setFrame_];
    v24 = *&v0[v23];
    *v31 = v16;
    *&v31[1] = v20;
    *&v31[2] = v18;
    *&v31[3] = v22;
    v32 = 0;
    v25 = v24;
    v26 = DOCTabBarVariableBlurBackgroundView.effect(in:)(v31);
    [v25 setEffect_];

    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView;
    v28 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView];
    if (v28)
    {
      [v28 setAlpha_];
      v29 = *&v0[v27];
      if (v29)
      {
        [v29 setFrame_];
        DOCTabBarVariableBlurBackgroundView.updateGradientLocationColors()();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id DOCTabBarVariableBlurBackgroundView.effect(in:)(uint64_t a1)
{
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics];
  if ((*(a1 + 32) & 1) != 0 || (v2 = *a1, v3 = *(a1 + 8), v4 = *(a1 + 16), v5 = *(a1 + 24), v20.origin.x = *a1, v20.origin.y = v3, v20.size.width = v4, v20.size.height = v5, CGRectIsEmpty(v20)))
  {
    result = [objc_opt_self() effectWithBlurRadius_];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v21.origin.x = v2;
  v21.origin.y = v3;
  v21.size.width = v4;
  v21.size.height = v5;
  v8 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v9 = swift_allocObject();
  *(v9 + 2) = v1;
  v9[3] = v2;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in DOCTabBarVariableBlurBackgroundView.effect(in:);
  *(v10 + 24) = v9;
  v19[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v19[5] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v19[3] = &block_descriptor_8;
  v11 = _Block_copy(v19);
  v12 = v1;

  v13 = [v8 imageWithActions_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v13 size];
  v15 = v14;
  v17 = v16;
  result = objc_opt_self();
  if (v15 != 0.0 || v17 != 0.0)
  {
LABEL_10:
    result = [result _effectWithVariableBlurRadius_imageMask_scale_];
    if (result)
    {
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  result = [result effectWithBlurRadius_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v18 = result;

  return v18;
}

void closure #1 in DOCTabBarVariableBlurBackgroundView.effect(in:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v13 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 24);
  v14 = *(v13 + 16);
  if (v14)
  {
    v44 = a1;
    v45 = v12;
    *&v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v46;
    v16 = objc_opt_self();
    v17 = 0;
    v18 = *(v13 + 16);
    do
    {
      if (v18 == v17)
      {
        __break(1u);
        return;
      }

      v19 = *(v13 + 32 + 8 * v17);
      v20 = [v16 blackColor];
      v21 = [v20 colorWithAlphaComponent_];

      *&v46 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v15 = v46;
      }

      v24 = v17++ / (v14 - 1);
      *(v15 + 16) = v23 + 1;
      v25 = v15 + 16 * v23;
      *(v25 + 32) = v24;
      *(v25 + 40) = v21;
    }

    while (v14 != v17);
    v26 = MEMORY[0x277D84F90];
    *&v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 + 1, 0);
    v27 = v46;
    v28 = *(v46 + 16);
    v29 = v23 + 1;
    v30 = 32;
    do
    {
      v31 = *(v15 + v30);
      *&v46 = v27;
      v32 = *(v27 + 24);
      if (v28 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v28 + 1, 1);
        v27 = v46;
      }

      *(v27 + 16) = v28 + 1;
      *(v27 + 8 * v28 + 32) = v31;
      v30 += 16;
      ++v28;
      --v29;
    }

    while (v29);
    specialized _arrayForceCast<A, B>(_:)(v27);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 setLocations_];

    v48 = v26;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 + 1, 0);
    v34 = v26;
    v35 = v23 + 1;
    v36 = 40;
    do
    {
      v37 = *(v15 + v36);
      v38 = [v37 CGColor];
      type metadata accessor for CGColorRef(0);
      v47 = v39;

      *&v46 = v38;
      v48 = v34;
      v41 = *(v34 + 16);
      v40 = *(v34 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v34 = v48;
      }

      *(v34 + 16) = v41 + 1;
      outlined init with take of Any(&v46, (v34 + 32 * v41 + 32));
      v36 += 16;
      --v35;
    }

    while (v35);

    v42 = Array._bridgeToObjectiveC()().super.isa;

    [v45 setColors_];

    [v45 setStartPoint_];
    [v45 setEndPoint_];
    [v45 setFrame_];
    v43 = [v44 CGContext];
    [v45 renderInContext_];
  }

  else
  {
  }
}

void DOCTabBarVariableBlurBackgroundView.updateGradientLocationColors()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if (v3 != 2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  v7 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 32];
  v8 = *(v7 + 16);
  if (v8)
  {
    v25 = v6;
    *&v27[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = 0;
    v10 = *&v27[0];
    v11 = *(v7 + 16);
    do
    {
      if (v11 == v9)
      {
        __break(1u);
        goto LABEL_15;
      }

      v12 = [v25 colorWithAlphaComponent_];
      *&v27[0] = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v10 = *&v27[0];
      }

      v15 = v9++ / (v8 - 1);
      *(v10 + 16) = v14 + 1;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v15;
      *(v16 + 40) = v12;
    }

    while (v8 != v9);
    v18 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView];
    if (v18)
    {
      v19 = &v18[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradient];
      *&v18[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradient + 8] = v10;
      v20 = v18;

      v21 = *v19;
      v22 = *(v19 + 1);
      v23 = *(v19 + 2);
      v28 = *(v19 + 6);
      v27[1] = v22;
      v27[2] = v23;
      v27[0] = v21;
      v24 = *&v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer];
      outlined init with copy of Gradient(v27, v26);
      Gradient.configureLayer(_:)(v24);
      outlined destroy of Gradient(v27);

      return;
    }

LABEL_15:
    __break(1u);
  }

  else
  {
  }
}

id DOCTabBarVariableBlurBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCTabBarVariableBlurBackgroundView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView);
}

void one-time initialization function for sharedCaptureGroup()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D763E8]) init];
  v1 = MEMORY[0x24C1FAD20](0xD000000000000014, 0x8000000249BCB9B0);
  [v0 setGroupName_];

  v2 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BCB9D0);
  [v0 setGroupNamespace_];

  static BackdropGradientView.sharedCaptureGroup = v0;
}

id _UIVisualEffectViewBackdropCaptureGroup.init(captureGroup:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = MEMORY[0x24C1FAD20](a1, a2);

  [v8 setGroupName_];

  v10 = MEMORY[0x24C1FAD20](a3, a4);

  [v8 setGroupNamespace_];

  return v8;
}

char *BackdropGradientView.init(gradient:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration;
  if (one-time initialization token for sharedCaptureGroup != -1)
  {
    swift_once();
  }

  v6 = static BackdropGradientView.sharedCaptureGroup;
  type metadata accessor for DOCBackdropConfiguration();
  swift_allocObject();
  *&v2[v5] = DOCBackdropConfiguration.init(renderMode:captureGroup:layoutHandler:)(1, v6, DOCGridLayout.specIconWidth.modify, 0);
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradient];
  *(v7 + 6) = *(a1 + 48);
  v8 = *(a1 + 32);
  *(v7 + 1) = *(a1 + 16);
  *(v7 + 2) = v8;
  *v7 = *a1;
  outlined init with copy of Gradient(a1, v34);
  v33.receiver = v2;
  v33.super_class = type metadata accessor for BackdropGradientView();
  v9 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration;
  v11 = *(**&v9[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration] + 200);
  v12 = v9;

  v14 = v11(v13);

  [v12 setCaptureGroup_];

  v15 = [v12 backdropLayer];
  v34[0] = 23;
  type metadata accessor for CGBlendMode(0);
  [v15 setCompositingFilter_];

  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer;
  v17 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer];
  Gradient.configureLayer(_:)(v17);

  v18 = [v12 backdropLayer];
  [v18 setMask_];

  v19 = *&v12[v16];
  v20 = [v12 backdropLayer];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v19 setFrame_];
  v29 = *&v9[v10];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = *(*v29 + 256);

  v31(partial apply for closure #1 in BackdropGradientView.init(gradient:), v30);

  outlined destroy of Gradient(a1);

  return v12;
}

id Gradient.configureLayer(_:)(void *a1)
{
  v2 = v1;
  [a1 setType_];
  v4 = *(v1 + 1);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      *&v23 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = v23;
      v7 = (v4 + 32);
      v8 = *(v23 + 16);
      do
      {
        v9 = *v7;
        *&v23 = v6;
        v10 = *(v6 + 24);
        if (v8 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v8 + 1, 1);
          v6 = v23;
        }

        *(v6 + 16) = v8 + 1;
        *(v6 + 8 * v8 + 32) = v9;
        v7 += 2;
        ++v8;
        --v5;
      }

      while (v5);
    }

    specialized _arrayForceCast<A, B>(_:)(v6);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [a1 setLocations_];

  isa = *(v2 + 2);
  if (isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setInterpolations_];

  if (v4)
  {
    v13 = *(v4 + 16);
    if (v13)
    {
      v25 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v25;
      v15 = (v4 + 40);
      do
      {
        v16 = *v15;
        v17 = [v16 CGColor];
        type metadata accessor for CGColorRef(0);
        v24 = v18;

        *&v23 = v17;
        v25 = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v20 + 1;
        outlined init with take of Any(&v23, (v14 + 32 * v20 + 32));
        v15 += 2;
        --v13;
      }

      while (v13);
    }

    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  [a1 setColors_];

  [a1 setStartPoint_];
  return [a1 setEndPoint_];
}

void closure #1 in BackdropGradientView.init(gradient:)(uint64_t a1)
{
  v2 = (*(*a1 + 224))(a1);
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [v5 bounds];
      Height = CGRectGetHeight(v29);
      [v3 bounds];
      v8 = v7;
      v10 = v9;
      [v3 bounds];
      v11 = CGRectGetMaxY(v30) - Height;
      v12 = *(*a1 + 128);
      v13 = v12();
      [v13 setFrame_];

      v14 = v12();
      [v14 setTranslatesAutoresizingMaskIntoConstraints_];

      v15 = v12();
      [v15 setAutoresizingMask_];

      v16 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer];
      v17 = [v5 backdropLayer];
      [v17 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      [v16 setFrame_];
      v26 = v12();
      [v3 sendSubviewToBack_];

      v27 = (*(*a1 + 152))();
      [v3 sendSubviewToBack_];

      v28 = [v5 effectiveAppearance];
      BackdropGradientView.updateAppearanceColorView(appearance:)(v28);
    }
  }
}

void BackdropGradientView.updateAppearanceColorView(appearance:)(void *a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration) + 152);

  v5 = v3(v4);

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D05EA0]) init];
  }

  v7 = a1;
  [v6 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance);
  swift_dynamicCast();
  [v9 setForceClearBackground_];
  v8 = [v9 backgroundColor];
  [v5 setBackgroundColor_];
}

id DOCTabBarVariableBlurBackgroundView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void key path setter for DOCBackdropConfiguration.view : DOCBackdropConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id DOCBackdropConfiguration.view.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void key path setter for DOCBackdropConfiguration.appearanceColorView : DOCBackdropConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id DOCBackdropConfiguration.appearanceColorView.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void key path setter for DOCBackdropConfiguration.captureGroup : DOCBackdropConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id DOCBackdropConfiguration.captureGroup.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t key path setter for DOCBackdropConfiguration.layoutHandler : DOCBackdropConfiguration(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 256);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ()), v5);
}

uint64_t DOCBackdropConfiguration.layoutHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t DOCBackdropConfiguration.layoutHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *DOCBackdropConfiguration.init(renderMode:captureGroup:layoutHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(MEMORY[0x277D763C8]) initWithFrame_];
  [v9 setRenderMode_];
  [v9 setCaptureGroup_];
  v4[4] = a1;
  v4[5] = a2;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4[2] = v9;
  v4[3] = v10;
  v4[7] = a3;
  v4[8] = a4;
  return v4;
}

Swift::Void __swiftcall DOCBackdropConfiguration.activate(inContainer:)(UIView *inContainer)
{
  v2 = v1;
  v4 = (*(*v1 + 224))();
  if (!v4 || (v5 = v4, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView), v6 = inContainer, v7 = static NSObject.== infix(_:_:)(), v6, v5, (v7 & 1) == 0))
  {
    (*(*v2 + 288))();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakAssign();
  v9 = *(*v2 + 152);
  v10 = (v9)(v8);
  [(UIView *)inContainer addSubview:v10];

  v11 = *(*v2 + 128);
  v12 = v11();
  [(UIView *)inContainer addSubview:v12];

  v13 = v9();
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  v36 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA0470;
  v15 = v9();
  v16 = [v15 leadingAnchor];

  v17 = v11();
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = v9();
  v21 = [v20 trailingAnchor];

  v22 = v11();
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v14 + 40) = v24;
  v25 = v9();
  v26 = [v25 topAnchor];

  v27 = v11();
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v14 + 48) = v29;
  v30 = v9();
  v31 = [v30 bottomAnchor];

  v32 = v11();
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v14 + 56) = v34;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints_];

  (*(*v2 + 296))();
}

Swift::Void __swiftcall DOCBackdropConfiguration.deactivate()()
{
  v1 = v0;
  v2 = (*(*v0 + 224))();
  if (v2)
  {
    v9 = v2;
    v3 = *(*v0 + 128);
    v4 = v3();
    v5 = [v4 superview];

    if (v5 && (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView), v9 = v9, v6 = static NSObject.== infix(_:_:)(), v9, v5, (v6 & 1) != 0))
    {
      v7 = (*(*v1 + 152))();
      [v7 removeFromSuperview];

      v8 = v3();
      [v8 removeFromSuperview];

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCBackdropConfiguration.updateLayout()()
{
  v1 = (*(*v0 + 224))();
  if (v1)
  {

    v2 = (*(*v0 + 248))();
    v2();
  }
}

id *DOCBackdropConfiguration.deinit()
{
  MEMORY[0x24C1FE970](v0 + 6);

  return v0;
}

uint64_t DOCBackdropConfiguration.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationColor(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  return static NSObject.== infix(_:_:)() & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Gradient(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Gradient.== infix(_:_:)(v5, v7);
}

uint64_t getEnumTagSinglePayload for DOCTabBarVariableBlurBackgroundView.Metrics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for DOCTabBarVariableBlurBackgroundView.Metrics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Gradient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Gradient(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL specialized static Gradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables13LocationColor33_0BFB980FCBDEF78F05FB1DEEFECAD8EFLLV_Tt1g5(v10, v11);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo21CAMediaTimingFunctionC_Tt1g5(v14, v15);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t getEnumTagSinglePayload for LocationColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t presentFPErrorAlert(error:alertPresenting:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  DOCRunInMainThread(_:)();
}

uint64_t DOCDataOwnerState.uiDataOwner.getter(unint64_t a1)
{
  if (a1 < 3)
  {
    return qword_249BA16C0[a1];
  }

  type metadata accessor for DOCDataOwnerState(0);
  v4[3] = v3;
  v4[0] = a1;
  doc_warnUnrecognizedEnumValueEncountered(_:)(v4);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return 0;
}

void NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void *a1, int a2, int a3, int a4)
{
  ObjectType = swift_getObjectType();

  specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a1, a2, a3, a4, v4, ObjectType);
}

uint64_t closure #1 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(uint64_t, unint64_t, void *), uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:a3 requiringSecureCoding:1 error:v13];
  v5 = v13[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    outlined copy of Data._Representation(v6, v8);
    a1(v6, v8, 0);
    outlined consume of Data._Representation(v6, v8);
    outlined consume of Data._Representation(v6, v8);
  }

  else
  {
    v9 = v5;
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = v10;
    a1(0, 0xF000000000000000, v10);
  }

  return 0;
}

id static NSError.doc_dragAndDropError(code:userInfo:)(unsigned __int8 a1, Class isa)
{
  v4 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v4 code:a1 + 1001 userInfo:isa];

  return v5;
}

void NSItemProvider.doc_setTeamDataSafely(_:)(uint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    LODWORD(v6) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v6 = v6;
      goto LABEL_7;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  if (v5 != 2)
  {
    goto LABEL_14;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (v6 <= 0x2000)
  {
    goto LABEL_14;
  }

  v4 = a1;
  v3 = a2;
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_22;
  }

LABEL_9:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  outlined copy of Data._Representation(v4, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    outlined consume of Data._Representation(v4, v3);
LABEL_19:

    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v19 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
    [v18 initWithDomain:v19 code:1001 userInfo:0];

    swift_willThrow();
    return;
  }

  v2 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v20 = v13;
  *v2 = 136315650;
  *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BCBA20, &v20);
  *(v2 + 12) = 2048;
  if (v5 == 2)
  {
    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    v9 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (!v9)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v2 setTeamData_];

    return;
  }

  LODWORD(v16) = HIDWORD(v4) - v4;
  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    v16 = v16;
LABEL_18:
    *(v2 + 14) = v16;
    outlined consume of Data._Representation(v4, v3);
    *(v2 + 22) = 2048;
    *(v2 + 24) = 0x2000;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s: teamData size %ld bytes exceeds maximum allowed size of %ld bytes", v2, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v2, -1, -1);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t closure #2 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(uint64_t, void), uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a4;
  v25 = a2;
  v26 = a1;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v23 = static DOCLog.UI;
  v22[3] = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249BA08C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v12;
  *(v10 + 32) = 0xD00000000000005BLL;
  *(v10 + 40) = 0x8000000249BCBBB0;
  v13 = [a3 displayName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v14;
  *(v10 + 80) = v16;
  v17 = [a3 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = UTType.identifier.getter();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = v18;
  *(v10 + 120) = v20;
  os_log(_:dso:log:type:_:)();

  v26(v24, 0);
  return 0;
}

uint64_t closure #3 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_s10Foundation3URLVSgMd);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd);
  }

  (*(v12 + 32))(v15, v10, v11);
  v17 = _s26DocumentManagerExecutables11LaunchUtilsV28bundleIdentifierOfDefaultApp3for4nodeSSSg10Foundation3URLV_So7DOCNode_ptFZTf4nen_nSo6FPItemC_Tt1g5(v15, a4);
  if (v18)
  {
    v19 = MEMORY[0x24C1FAD20](v17);
  }

  else
  {
    v19 = 0;
  }

  [a3 setDocui:v19 preferredApplicationBundleIdentifier:?];

  return (*(v12 + 8))(v15, v11);
}

void folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void *a1, void (*a2)(void, void), uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &aBlock[-1] - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    swift_unknownObjectRetain();
    v19 = [v18 fileURL];
    if (v19)
    {
      v20 = v19;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v13 + 16))(v11, v16, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v11, 0, a1, a2, a3);
      swift_unknownObjectRelease();
      outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
      (*(v13 + 8))(v16, v12);
      return;
    }

    swift_unknownObjectRelease();
  }

  if (a4)
  {
    v21 = objc_opt_self();
    v22 = a4;
    v23 = [v21 defaultManager];
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = a3;
    aBlock[4] = partial apply for closure #1 in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_38;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v23 fetchURLForItem:v22 completionHandler:v25];
    _Block_release(v25);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    swift_unknownObjectRetain();
    v34 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BCBCB0, aBlock);
      *(v28 + 12) = 2080;
      aBlock[6] = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v34, v27, "%s could not get URL for node: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    else
    {
      v33 = v34;
    }
  }
}

uint64_t callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(uint64_t a1, void (*a2)(void, void, void), void *a3, void (*a4)(void, void), uint64_t a5)
{
  v84 = a5;
  v85 = a4;
  v71 = a3;
  v74 = a2;
  v82 = a1;
  v5 = type metadata accessor for UTType();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v12);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchTime();
  v75 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v70 - v27;
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v70 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v70 - v35;
  v38 = v37;
  outlined init with copy of DOCGridLayout.Spec?(v82, v28, &_s10Foundation3URLVSgMd);
  v39 = (*(v30 + 48))(v28, 1, v38);
  v86 = v38;
  if (v39 == 1)
  {
    outlined destroy of CharacterSet?(v28, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v83 = static DOCLog.UI;
    LODWORD(v82) = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_249BA08D0;
    v41 = MEMORY[0x277D837D0];
    *(v40 + 56) = MEMORY[0x277D837D0];
    v42 = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 64) = v42;
    *(v40 + 32) = 0xD00000000000001DLL;
    *(v40 + 40) = 0x8000000249BCBCE0;
    v43 = v71;
    v44 = [v71 displayName];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    *(v40 + 96) = v41;
    *(v40 + 104) = v42;
    *(v40 + 72) = v45;
    *(v40 + 80) = v47;
    v48 = [v43 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = UTType.identifier.getter();
    v51 = v50;
    (*(v72 + 8))(v8, v73);
    *(v40 + 136) = v41;
    *(v40 + 144) = v42;
    *(v40 + 112) = v49;
    *(v40 + 120) = v51;
    v52 = v74;
    if (v74)
    {
      v53 = _convertErrorToNSError(_:)();
      v89 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      v90 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
      *&aBlock = v53;
      outlined init with take of DOCGoToFolderCandidate(&aBlock, v40 + 152);
    }

    else
    {
      *(v40 + 176) = v41;
      *(v40 + 184) = v42;
      *(v40 + 152) = 0xD000000000000013;
      *(v40 + 160) = 0x8000000249BCBD00;
    }

    os_log(_:dso:log:type:_:)();

    (*(v30 + 56))(v24, 1, 1, v86);
    (v85)(v24, 0, v52);
    return outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v54 = *(v30 + 32);
    v82 = v30 + 32;
    v74 = v54;
    v54(v36, v28, v38);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v73 = static DOCLog.UI;
    LODWORD(v72) = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_249B9FA70;
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v55 + 32) = 0xD00000000000001DLL;
    *(v55 + 40) = 0x8000000249BCBCE0;
    URL._bridgeToObjectiveC()(0xD00000000000001DLL);
    v57 = v56;
    *(v55 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
    *(v55 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
    *(v55 + 72) = v57;
    os_log(_:dso:log:type:_:)();

    LODWORD(v72) = URL.startAccessingSecurityScopedResource()();
    v58 = *(v30 + 16);
    v59 = v86;
    v58(v24, v36, v86);
    (*(v30 + 56))(v24, 0, 1, v59);
    (v85)(v24, 1, 0);
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v84 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v73 = v20;
    v85 = *(v75 + 8);
    v85(v16, v83);
    v60 = v70;
    v58(v70, v36, v59);
    v61 = (*(v30 + 80) + 17) & ~*(v30 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v72 & 1;
    v74(v62 + v61, v60, v59);
    v90 = partial apply for closure #1 in callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    v91 = v62;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v89 = &block_descriptor_44;
    v63 = _Block_copy(&aBlock);

    v64 = v76;
    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v65 = v78;
    v66 = v81;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v73;
    v68 = v84;
    MEMORY[0x24C1FB940](v73, v64, v65, v63);
    _Block_release(v63);

    (*(v80 + 8))(v65, v66);
    (*(v77 + 8))(v64, v79);
    v85(v67, v83);
    return (*(v30 + 8))(v36, v86);
  }
}

uint64_t closure #4 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(void, void), uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.UI);
  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = a4;
    v40 = v17;
    v37 = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, 0x8000000249BCBBB0, &v40);
    *(v16 + 12) = 2080;
    v18 = [a3 displayName];
    v36 = v15;
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = a2;
    v21 = v20;
    v22 = v8;
    v23 = a1;
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v25, &v40);
    a1 = v23;

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = [a3 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = UTType.identifier.getter();
    v30 = v29;
    (*(v9 + 8))(v12, v22);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v40);
    a2 = v38;

    *(v16 + 24) = v31;
    _os_log_impl(&dword_2493AC000, v14, v36, "%s: providing: %s with type: %s", v16, 0x20u);
    v32 = v37;
    swift_arrayDestroy();
    v33 = v32;
    a4 = v39;
    MEMORY[0x24C1FE850](v33, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a3, a1, a2, a4);
  return 0;
}

uint64_t closure #5 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(void, void), uint64_t a2, void *a3, void *a4)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, 0x8000000249BCBBB0, &v23);
    *(v11 + 12) = 2080;
    v12 = [a3 displayName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a4;
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v16, &v23);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);
    a4 = v14;

    *(v11 + 24) = v20;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s: providing: %s with type: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v22, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a3, a1, a2, a4);
  return 0;
}

BOOL static DOCDocumentSource.sessionContainsSources(_:)(void *a1, unint64_t *a2, uint64_t a3)
{
  specialized static DOCDocumentSource.sourcesFromDropSession(_:)(a1, a2, a3);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 > 0;
}

uint64_t DOCTag.setTags(for:alertPresenting:)(unint64_t a1, void *a2)
{
  v56 = FPTagFromDOCTag();
  aBlock = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_59:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  v51 = a1;
  if (v3)
  {
    v5 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    v52 = a1 + 32;
    v50 = v3;
    do
    {
      if (v54)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v5 >= *(v53 + 16))
        {
          goto LABEL_58;
        }

        v6 = *(v52 + 8 * v5);
        swift_unknownObjectRetain();
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_57;
        }
      }

      v8 = [v6 tags];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v55 = v5;
        if (v10 >> 62)
        {
          v11 = __CocoaSet.count.getter();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = 0;
        while (1)
        {
          if (v11 == a1)
          {

            v3 = v50;
            a1 = v51;
            v4 = MEMORY[0x277D84F90];
            v5 = v55;
            goto LABEL_6;
          }

          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x24C1FC540](a1, v10);
          }

          else
          {
            if (a1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v13 = *(v10 + 8 * a1 + 32);
          }

          v14 = v13;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          v15 = [v13 label];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v19 = [v56 label];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (v16 == v20 && v18 == v22)
          {
            swift_unknownObjectRelease();

LABEL_26:

            v3 = v50;
            a1 = v51;
            v4 = MEMORY[0x277D84F90];
            v5 = v55;
            goto LABEL_7;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++a1;
          if (v12)
          {
            swift_unknownObjectRelease();
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

LABEL_6:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_7:
      ;
    }

    while (v5 != v3);
    v23 = aBlock;
    if ((aBlock & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_60;
  }

  v23 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_34:
  if ((v23 & 0x4000000000000000) != 0)
  {
LABEL_60:
    v24 = __CocoaSet.count.getter();
    if (v24 <= 0)
    {
      goto LABEL_61;
    }

    goto LABEL_36;
  }

  v24 = *(v23 + 16);
  if (v24 <= 0)
  {
LABEL_61:
  }

LABEL_36:
  aBlock = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v25 = 0;
  v26 = v4;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x24C1FC540](v25, v23);
    }

    else
    {
      v27 = *(v23 + 8 * v25 + 32);
      swift_unknownObjectRetain();
    }

    v28 = [v27 tags];
    if (v28)
    {
      v29 = v28;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v63 = v30;
    v31 = v56;
    MEMORY[0x24C1FB090]();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v32 = v63;
    aBlock = v26;
    v34 = *(v26 + 16);
    v33 = *(v26 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v26 = aBlock;
    }

    ++v25;
    *(v26 + 16) = v34 + 1;
    *(v26 + 8 * v34 + 32) = v32;
  }

  while (v24 != v25);
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v23);

  if (All)
  {
    v36 = [objc_opt_self() shared];
    v37 = objc_allocWithZone(MEMORY[0x277D06258]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    isa = Array._bridgeToObjectiveC()().super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5FPTagCGMd);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v37 initWithItems:isa tagsLists:v39 isUndoable:1 shouldClearUndoStack:0 undoManager:v36];

    v41 = swift_allocObject();
    v41[2] = v51;
    v41[3] = v48;
    v41[4] = a2;
    v61 = partial apply for closure #3 in DOCTag.setTags(for:alertPresenting:);
    v62 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v60 = &block_descriptor_132;
    v42 = _Block_copy(&aBlock);
    v43 = v40;

    v44 = v48;
    v45 = a2;

    [v43 setActionCompletionBlock_];
    _Block_release(v42);

    v46 = [objc_opt_self() defaultManager];
    [v46 scheduleAction_];

    aBlock = 0xD00000000000002ELL;
    v58 = 0x8000000249BCBFF0;
    v59 = 0;
    v60 = 0;
    LOBYTE(v61) = 1;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(&aBlock, static DOCAnalyticsManager.shared);

    return outlined destroy of DOCAnalyticsItemTaggedEvent(&aBlock);
  }

  else
  {
  }
}

void closure #3 in DOCTag.setTags(for:alertPresenting:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA08C0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
    *(v8 + 64) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
    *(v8 + 32) = a2;
    *(v8 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    *(v8 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCTag and conformance NSObject, &lazy cache variable for type metadata for DOCTag);
    *(v8 + 72) = a3;

    v9 = a3;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 136) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v8 + 144) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v8 + 112) = v10;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a4;
    v13 = a1;
    v14 = a1;
    v15 = a4;
    DOCRunInMainThread(_:)();
  }
}

void DOCTag.dropOnto(dropSession:alertPresenting:)(void *a1, void *a2)
{
  v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v6 = v2;
  specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(a1, a2, v5, v6);
}

uint64_t specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2)
{
  v26 = a2;
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v7);
  v9 = v8;
  (*(v4 + 8))(v7, v3);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v25[1] = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249BA08C0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 32) = 0xD000000000000041;
  *(v10 + 40) = 0x8000000249BCBA40;
  v11 = MEMORY[0x277D83B88];
  v12 = MEMORY[0x277D83C10];
  v13 = *(v9 + 16);
  *(v10 + 96) = MEMORY[0x277D83B88];
  *(v10 + 104) = v12;
  *(v10 + 72) = v13;
  v14 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = v16;
  os_log(_:dso:log:type:_:)();

  v17 = [a1 items];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 == v19)
  {
    if (v13)
    {
      v27 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v20 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += 16;
        --v13;
      }

      while (v13);

      v21 = v27;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    closure #1 in closure #1 in static DOCFileProviderSource.createSpotlightSources()(v21, v26);
  }

  else
  {

    v22 = [a1 items];
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v23, v26, specialized closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:), 0);
  }
}

uint64_t static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v34 = a2;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v30 = a4;
  v31 = a3;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v33 = v12;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v11);
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v32 = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249BA08C0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = 0xD000000000000041;
  *(v15 + 40) = 0x8000000249BCBA40;
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  v18 = *(v14 + 16);
  *(v15 + 96) = MEMORY[0x277D83B88];
  *(v15 + 104) = v17;
  *(v15 + 72) = v18;
  v19 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v21;
  os_log(_:dso:log:type:_:)();

  v22 = [a1 items];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 == v24)
  {
    if (v18)
    {
      v35 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v25 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v25 += 16;
        --v18;
      }

      while (v18);

      v26 = v35;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v31(v26, v34);
  }

  else
  {

    v27 = [a1 items];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v28, v34, partial apply for closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:), v33);
  }
}

uint64_t static FPItem.sessionContainsDOCNode(_:)(void *a1)
{
  swift_getObjectType();

  return specialized static FPItem.sessionContainsDOCNode(_:)(a1, v1);
}

uint64_t static FPItem.sessionContainsLocations(_:)(void *a1)
{
  swift_getObjectType();

  return specialized static FPItem.sessionContainsLocations(_:)(a1, v1);
}

uint64_t static FPItem.sessionContainsFile(_:)(void *a1)
{
  swift_getObjectType();

  return specialized static FPItem.sessionContainsFile(_:)(a1, v1);
}

void static FPItem.sessionContainsFavorites(_:)(void *a1)
{
  swift_getObjectType();

  specialized static FPItem.sessionContainsFavorites(_:)(a1);
}

uint64_t static FPItem.nodesFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, a2);
}

uint64_t static FPItem.sessionContainsFolder(_:)(void *a1)
{
  swift_getObjectType();

  return specialized static FPItem.sessionContainsFolder(_:)(a1);
}

BOOL static FPItem.dropSessionContainsSMBItems(_:)(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  swift_getObjectType();
  v7 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, v6);
  (*(v3 + 8))(v6, v2);
  if (v7 >> 62)
  {
LABEL_15:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v9, v7);
      if (__OFADD__(v10, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v10, 1))
      {
        goto LABEL_12;
      }
    }

    v12 = [v11 providerDomainID];
    v13 = DOCProviderDomainIDIsSharedServerDomainID();
    swift_unknownObjectRelease();

    v9 = v10 + 1;
  }

  while (!v13);

  return v8 != v10;
}

uint64_t static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:)(void *a1, _OWORD *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v79 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v78 = &v66 - v9;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v74 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v66 - v20;
  v22 = swift_allocObject();
  v70 = a3;
  v71 = v22;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v69 = a4;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v21);
  v24 = v23;
  v77 = v11;
  v25 = *(v11 + 8);
  v73 = v21;
  v80 = v25;
  v81 = v11 + 8;
  v25(v21, v10);
  if (one-time initialization token for UI != -1)
  {
LABEL_34:
    swift_once();
  }

  *&v84 = static DOCLog.UI;
  LODWORD(v83) = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249BA08C0;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 32) = 0xD000000000000041;
  *(v26 + 40) = 0x8000000249BCBA40;
  v27 = MEMORY[0x277D83B88];
  v28 = MEMORY[0x277D83C10];
  v82 = v24;
  v29 = *(v24 + 16);
  *(v26 + 96) = MEMORY[0x277D83B88];
  *(v26 + 104) = v28;
  *(v26 + 72) = v29;
  v30 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v26 + 136) = v27;
  *(v26 + 144) = v28;
  *(v26 + 112) = v32;
  os_log(_:dso:log:type:_:)();

  v33 = [a1 items];
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v34 >> 62)
  {
    v35 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v82;
  if (v29 == v35)
  {
    v37 = *(v82 + 16);
    if (!v37)
    {
      v24 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v38 = 0;
    v79 = (v82 + 32);
    v75 = (v77 + 48);
    v72 = (v77 + 32);
    v67 = v37 - 1;
    v24 = MEMORY[0x277D84F90];
    v76 = v17;
    v77 = v37;
    while (1)
    {
      v68 = v24;
      v39 = v38;
      while (1)
      {
        if (v39 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v84 = v79[v39];
        v83 = v84;
        v24 = *(&v84 + 1);
        v41 = [swift_unknownObjectRetain() contentType];
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = UTType.identifier.getter();
        v44 = v43;
        if (one-time initialization token for folderUTICache != -1)
        {
          swift_once();
        }

        v45 = folderUTICache;
        v46 = MEMORY[0x24C1FAD20](v42, v44);
        a1 = [v45 objectForKey_];

        if (!a1)
        {
          break;
        }

        v40 = [a1 BOOLValue];

        v80(v17, v10);
        if (v40)
        {
          goto LABEL_22;
        }

LABEL_11:
        ++v39;
        swift_unknownObjectRelease();

        v36 = v82;
        if (v37 == v39)
        {
          v24 = v68;
          goto LABEL_31;
        }
      }

      v47 = v78;
      UTType.init(_:)();
      if ((*v75)(v47, 1, v10) == 1)
      {
        outlined destroy of CharacterSet?(v47, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
        v48 = 0;
        v49 = v80;
      }

      else
      {
        v50 = v74;
        (*v72)(v74, v47, v10);
        v51 = v73;
        static UTType.folder.getter();
        v52 = UTType.conforms(to:)();
        v49 = v80;
        v80(v51, v10);
        if (v52)
        {
          static UTType.package.getter();
          v53 = UTType.conforms(to:)();
          v49(v51, v10);
          v49(v50, v10);
          v48 = v53 ^ 1;
        }

        else
        {
          v49(v50, v10);
          v48 = 0;
        }
      }

      v54 = folderUTICache;
      v55 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v56 = v54;
      a1 = [v55 initWithBool_];
      v57 = MEMORY[0x24C1FAD20](v42, v44);

      [v56 setObject:a1 forKey:v57];

      v58 = v76;
      v49(v76, v10);
      v17 = v58;
      v37 = v77;
      if ((v48 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      v24 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = v85;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v85[0];
      }

      v36 = v82;
      v61 = *(v24 + 16);
      v60 = *(v24 + 24);
      if (v61 >= v60 >> 1)
      {
        v62 = v82;
        a1 = v85;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v36 = v62;
        v24 = v85[0];
      }

      v38 = v39 + 1;
      *(v24 + 16) = v61 + 1;
      *(v24 + 16 * v61 + 32) = v84;
      v37 = v77;
      if (v67 == v39)
      {
LABEL_31:

        v70(v24);
      }
    }
  }

  v63 = [a1 items];
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v64, v79, partial apply for closure #1 in static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:), v71);
}

void closure #1 in static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v46[1] = a4;
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v46 - v7;
  v9 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v9, v10);
  MEMORY[0x28223BE20](v11, v12);
  MEMORY[0x28223BE20](v13, v14);
  v19 = v46 - v16;
  v20 = *(a1 + 16);
  if (v20)
  {
    v51 = v18;
    v52 = v17;
    v21 = 0;
    v56 = a1 + 32;
    v54 = (v15 + 48);
    v49 = (v15 + 32);
    v22 = MEMORY[0x277D84F90];
    v55 = v8;
    v58 = (v15 + 8);
    v59 = v9;
    v50 = v46 - v16;
    v57 = v20;
    do
    {
      v48 = v22;
      v23 = v21;
      while (1)
      {
        if (v23 >= v20)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }

        v21 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_29;
        }

        v61 = *(v56 + 16 * v23);
        v60 = v61;
        v24 = [swift_unknownObjectRetain() contentType];
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = UTType.identifier.getter();
        v27 = v26;
        if (one-time initialization token for folderUTICache != -1)
        {
          swift_once();
        }

        v28 = folderUTICache;
        v29 = MEMORY[0x24C1FAD20](v25, v27);
        v30 = [v28 objectForKey_];

        if (v30)
        {

          v31 = [v30 BOOLValue];
        }

        else
        {

          UTType.init(_:)();
          v32 = v59;
          if ((*v54)(v8, 1, v59) == 1)
          {
            outlined destroy of CharacterSet?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
            v31 = 0;
          }

          else
          {
            v53 = v23 + 1;
            v33 = v51;
            (*v49)(v51, v8, v32);
            v34 = v52;
            static UTType.folder.getter();
            v35 = UTType.conforms(to:)();
            v36 = *v58;
            (*v58)(v34, v32);
            if (v35)
            {
              static UTType.package.getter();
              v37 = UTType.conforms(to:)();
              v36(v34, v32);
              v36(v33, v32);
              v31 = v37 ^ 1;
            }

            else
            {
              v36(v33, v32);
              v31 = 0;
            }

            v19 = v50;
            v21 = v53;
          }

          v38 = folderUTICache;
          v39 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v40 = v38;
          v41 = [v39 initWithBool_];
          v30 = MEMORY[0x24C1FAD20](v25, v27);

          [v40 setObject:v41 forKey:v30];

          v8 = v55;
        }

        v42 = v59;

        (*v58)(v19, v42);
        if (v31)
        {
          break;
        }

        swift_unknownObjectRelease();

        ++v23;
        v20 = v57;
        if (v21 == v57)
        {
          v22 = v48;
          goto LABEL_27;
        }
      }

      v22 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
        v22 = v62;
      }

      v20 = v57;
      v45 = *(v22 + 16);
      v44 = *(v22 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v22 = v62;
      }

      *(v22 + 16) = v45 + 1;
      *(v22 + 16 * v45 + 32) = v61;
      v8 = v55;
    }

    while (v21 != v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_27:
  v47(v22);
}

uint64_t static FPItem.docDragInfosFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v9);
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v25 = static DOCLog.UI;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249BA08C0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = 0xD000000000000041;
  *(v12 + 40) = 0x8000000249BCBA40;
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  v15 = *(v11 + 16);
  *(v12 + 96) = MEMORY[0x277D83B88];
  *(v12 + 104) = v14;
  *(v12 + 72) = v15;
  v16 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v12 + 136) = v13;
  *(v12 + 144) = v14;
  *(v12 + 112) = v18;
  os_log(_:dso:log:type:_:)();

  v19 = [a1 items];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 == v21)
  {
    v27(v11, v26);
  }

  else
  {

    v22 = [a1 items];
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v23, v26, v27, v28);
  }
}

void static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, a2);
}

uint64_t UIDragItem.localObjectAsNode.getter()
{
  if ([v0 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  outlined init with copy of DOCGridLayout.Spec?(&v5, &v3, &_sypSgMd);
  if (*(&v4 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
    if (swift_dynamicCast())
    {
      outlined destroy of CharacterSet?(&v5, &_sypSgMd);
      return v2;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(&v3, &_sypSgMd);
  }

  v3 = v5;
  v4 = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(&v3, &_sypSgMd);
  }

  return 0;
}

uint64_t specialized closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v8 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = a1 + 40;
    do
    {
      v6 += 16;
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    v3 = v8;
    a2 = v5;
  }

  closure #1 in closure #1 in static DOCFileProviderSource.createSpotlightSources()(v3, a2);
}

uint64_t closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 40;
    do
    {
      v7 += 16;
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    v5 = v9;
  }

  a3(v5);
}

uint64_t closure #2 in static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  v9 = a4;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #2 in static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v15;
    v9 = (a1 + 32);
    do
    {
      v14 = *v9;
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      v12 = *v9;
      swift_unknownObjectRetain();
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      *(v15 + 16 * v11 + 32) = v14;
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  a2(v7, a4);
}

void static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  specialized static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(a1, a2, a3, a4, a5);
}

uint64_t UIDragItem.typeToRequest.getter()
{
  v1 = [v0 itemProvider];
  v2 = NSItemProvider.typeToRequest.getter();

  return v2;
}

void closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1, uint64_t a2, void *a3, NSObject *a4, NSObject *a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v124 = a4;
  v125 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v109 - v17;
  v19 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v19, v20);
  v120 = v21;
  v121 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v109 - v24;
  v27 = v26;
  outlined init with copy of DOCGridLayout.Spec?(a1, v18, &_s10Foundation3URLVSgMd);
  if ((*(v27 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of CharacterSet?(v18, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_249B9FA70;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 64) = v30;
    *(v28 + 32) = 0xD00000000000003CLL;
    *(v28 + 40) = 0x8000000249BCBD70;
    if (a3)
    {
      v31 = _convertErrorToNSError(_:)();
      v129 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      v130 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
      *&v128 = v31;
      outlined init with take of DOCGoToFolderCandidate(&v128, v28 + 72);
    }

    else
    {
      *(v28 + 96) = v29;
      *(v28 + 104) = v30;
      *(v28 + 72) = 0xD000000000000013;
      *(v28 + 80) = 0x8000000249BCBD00;
    }

    os_log(_:dso:log:type:_:)();

    if (a3)
    {
      v102 = swift_allocObject();
      v103 = v125;
      *(v102 + 16) = a3;
      *(v102 + 24) = v103;
      v104 = a3;
      v105 = v103;
      v106 = a3;
      DOCRunInMainThread(_:)();
    }

    dispatch_group_leave(v124);
    return;
  }

  v32 = *(v27 + 32);
  v122 = v25;
  v123 = v19;
  v113 = v27 + 32;
  v112 = v32;
  v32(v25, v18, v19);
  v33 = swift_allocObject();
  v34 = [a6 itemProvider];
  v35._countAndFlagsBits = a7;
  v35._object = a8;
  v36 = NSItemProvider.suggestedName(for:)(v35);

  *(v33 + 16) = v36._countAndFlagsBits;
  v111 = v33 + 16;
  *(v33 + 24) = v36._object;

  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  LOBYTE(v34) = String.hasPrefix(_:)(v37);

  v117 = v27;
  if (v34)
  {
    v38 = dispatch_semaphore_create(0);
    v39 = _DocumentManagerBundle();
    if (v39)
    {
      v40 = v39;
      v41.value._object = 0xEB00000000656C62;
      v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v131._countAndFlagsBits = 0xD00000000000001FLL;
      v131._object = 0x8000000249BCBE60;
      v42._object = 0x8000000249BCBE20;
      v42._countAndFlagsBits = 0x1000000000000032;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v41, v40, v43, v131);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_249B9A480;
      v45 = *(v33 + 16);
      v46 = *(v33 + 24);
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v44 + 32) = v45;
      *(v44 + 40) = v46;

      v47 = static String.localizedStringWithFormat(_:_:)();
      v49 = v48;

      v50 = _DocumentManagerBundle();
      if (v50)
      {
        v51 = v50;
        v132._countAndFlagsBits = 0xD000000000000021;
        v52._countAndFlagsBits = 0xD000000000000026;
        v132._object = 0x8000000249BCBEB0;
        v52._object = 0x8000000249BCBE80;
        v53.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v53.value._object = 0xEB00000000656C62;
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v132);

        v56 = swift_allocObject();
        v56[1]._countAndFlagsBits = v47;
        v56[1]._object = v49;
        v56[2] = v55;
        v56[3]._countAndFlagsBits = v33;
        v56[3]._object = v38;
        v57 = v125;
        v56[4]._countAndFlagsBits = v125;

        v58 = v38;
        v59 = v57;
        DOCRunInMainThread(_:)();

        OS_dispatch_semaphore.wait()();

        v27 = v117;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_10:
  v119 = v33;
  v116 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v60 = *(v27 + 80);
  v61 = swift_allocObject();
  v115 = xmmword_249B9A480;
  *(v61 + 16) = xmmword_249B9A480;
  v62 = v122;
  v118 = *(v27 + 16);
  v118(v61 + ((v60 + 32) & ~v60), v122, v123);
  v63 = [objc_opt_self() shared];
  v64 = specialized makeDOCCopyOperation(urls:destinationFolder:undoManager:)(v61, a9, v63);
  v66 = v65;

  if (v64)
  {
    v110 = a10;
    v109 = ~v60;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMd);
    v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd) - 8);
    v68 = (*(*v67 + 80) + 32) & ~*(*v67 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v115;
    v70 = v69 + v68;
    v71 = (v70 + v67[14]);
    v72 = v62;
    v73 = v62;
    v74 = v123;
    v118(v70, v72, v123);
    swift_beginAccess();
    v75 = *(v119 + 24);
    *v71 = *(v119 + 16);
    v71[1] = v75;

    v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_SSTt0g5Tf4g_n(v69);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v70, &_s10Foundation3URLV_SStMd);
    swift_deallocClassInstance();
    v77 = ObjectType;
    (*(v66 + 72))(v76, ObjectType, v66);
    (*(v66 + 48))(2, v77, v66);
    (*(v66 + 24))(1, v77, v66);
    v78 = v121;
    v118(v121, v73, v74);
    v79 = (v60 + 56) & v109;
    v80 = (v120 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    v82 = v116;
    v83 = v124;
    v84 = v125;
    *(v81 + 2) = v116;
    *(v81 + 3) = v83;
    *(v81 + 4) = v84;
    *(v81 + 5) = v64;
    *(v81 + 6) = v66;
    v112(&v81[v79], v78, v74);
    *&v81[v80] = v110;
    v85 = *(v66 + 8);
    v86 = *(v85 + 16);
    v87 = v84;
    v88 = ObjectType;
    v125 = v82;
    v89 = v83;
    swift_unknownObjectRetain();

    v86(partial apply for closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:), v81, v88, v85);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_249BA08C0;
    v91 = MEMORY[0x277D837D0];
    *(v90 + 56) = MEMORY[0x277D837D0];
    v92 = lazy protocol witness table accessor for type String and conformance String();
    *(v90 + 64) = v92;
    *(v90 + 32) = 0xD00000000000003CLL;
    *(v90 + 40) = 0x8000000249BCBD70;
    v126 = v64;
    v127 = v66;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17SomeCopyOperation_pMd);
    v93 = String.init<A>(describing:)();
    *(v90 + 96) = v91;
    *(v90 + 104) = v92;
    *(v90 + 72) = v93;
    *(v90 + 80) = v94;
    v95 = v122;
    URL._bridgeToObjectiveC()(v96);
    v98 = v97;
    *(v90 + 136) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
    *(v90 + 144) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
    *(v90 + 112) = v98;
    os_log(_:dso:log:type:_:)();

    v99 = [objc_opt_self() defaultManager];
    v100 = swift_unknownObjectRetain();
    specialized FPItemManager.scheduleOperation(_:)(v100, v88, v85);

    swift_unknownObjectRelease();
    v101 = v125;
    OS_dispatch_semaphore.wait()();

    swift_unknownObjectRelease();
    (*(v117 + 8))(v95, v123);
  }

  else
  {
    v107 = v116;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v108 = swift_allocObject();
    *(v108 + 16) = v115;
    *(v108 + 56) = MEMORY[0x277D837D0];
    *(v108 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v108 + 32) = 0xD00000000000003CLL;
    *(v108 + 40) = 0x8000000249BCBD70;
    os_log(_:dso:log:type:_:)();

    (*(v27 + 8))(v122, v123);
  }
}

void closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v11 = MEMORY[0x24C1FAD20]();
  v12 = MEMORY[0x24C1FAD20](a3, a4);
  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = _DocumentManagerBundle();
  if (v14)
  {
    v15 = v14;
    v16.value._object = 0xEB00000000656C62;
    v44._object = 0xE400000000000000;
    v17._countAndFlagsBits = 2003789907;
    v17._object = 0xE400000000000000;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v44._countAndFlagsBits = 2003789907;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v44);

    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v21 = a6;
    v22 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);

    v42 = partial apply for closure #1 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v43 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v41 = &block_descriptor_81;
    v23 = _Block_copy(&aBlock);

    v24 = objc_opt_self();
    v25 = [v24 actionWithTitle:v22 style:0 handler:v23];
    _Block_release(v23);

    [v13 addAction_];
    v26 = _DocumentManagerBundle();
    if (v26)
    {
      v27 = v26;
      v45._object = 0xE400000000000000;
      v28._countAndFlagsBits = 1701079368;
      v28._object = 0xE400000000000000;
      v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v29.value._object = 0xEB00000000656C62;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v45._countAndFlagsBits = 1701079368;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v45);

      v32 = swift_allocObject();
      *(v32 + 16) = v21;
      v33 = v21;
      v34 = MEMORY[0x24C1FAD20](v31._countAndFlagsBits, v31._object);

      v42 = partial apply for closure #2 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
      v43 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      v41 = &block_descriptor_87;
      v35 = _Block_copy(&aBlock);

      v36 = [v24 actionWithTitle:v34 style:1 handler:v35];
      _Block_release(v35);

      [v13 addAction_];
      [a7 presentViewController:v13 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Int closure #1 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)()
{
  swift_beginAccess();
  while (1)
  {

    v0._countAndFlagsBits = 46;
    v0._object = 0xE100000000000000;
    v1 = String.hasPrefix(_:)(v0);

    if (!v1)
    {
      break;
    }

    swift_beginAccess();
    String.remove(at:)();
    swift_endAccess();
  }

  return OS_dispatch_semaphore.signal()();
}

void closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1, uint64_t a2, NSObject *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = _convertErrorToNSError(_:)();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9FA70;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = 0xD00000000000003CLL;
    *(v11 + 40) = 0x8000000249BCBD70;
    *(v11 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v11 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v11 + 72) = v10;
    v12 = v10;
    os_log(_:dso:log:type:_:)();

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a4;
    v14 = v12;
    v15 = a4;
    DOCRunInMainThread(_:)();

    OS_dispatch_semaphore.signal()();

    dispatch_group_leave(a3);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v20 = (*(a6 + 88))(ObjectType, a6);
    if (v20)
    {
      if (*(v20 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a7), (v21 & 1) != 0))
      {
        swift_unknownObjectRetain();

        swift_beginAccess();
        v22 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v22);
        if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    OS_dispatch_semaphore.signal()();
    dispatch_group_leave(a3);
  }
}

uint64_t closure #2 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();

    v1(v2);
  }

  return result;
}

void static FPItem.performDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  swift_getObjectType();

  specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(a1, a2, a3, a4, a5);
}

uint64_t isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(void *a1, unint64_t a2)
{
  v3 = [a1 cachedDomain];
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 cachedDomain];
      if (v9)
      {
        v10 = v9;
        if (v3)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
          v11 = v3;
          v12 = static NSObject.== infix(_:_:)();

          if (v12)
          {
            v13 = 1;
            v3 = v11;
            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      else
      {

        if (!v3)
        {
          return 1;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v13 = 0;
LABEL_21:

  return v13;
}

Swift::Bool __swiftcall FPItem.isValidDropTarget(forUTIs:)(Swift::OpaquePointer forUTIs)
{
  v2 = [objc_opt_self() defaultManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 eligibleActionsForDroppingUTIs:isa underItem:v1];

  type metadata accessor for FPAction(0);
  lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v5))
  {
    v6 = 1;
  }

  else
  {
    v6 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v5);
  }

  return v6 & 1;
}

uint64_t DOCNode.dataOwner.getter()
{
  v1 = [objc_opt_self() defaultPermission];
  v2 = [v1 dataOwnerStateForNode_];

  if (v2 < 3)
  {
    return qword_249BA16C0[v2];
  }

  type metadata accessor for DOCDataOwnerState(0);
  v5[3] = v4;
  v5[0] = v2;
  doc_warnUnrecognizedEnumValueEncountered(_:)(v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return 0;
}

uint64_t DOCNode.supportsDrag.getter()
{
  if (![v0 isReadable])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_18;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7374726F70707573, 0xEC00000067617244, &v10);
    v6 = "%s: Item cannot be dragged because isReadable=false";
    goto LABEL_17;
  }

  if (DOCNode.doc_isAppContainerRoot.getter())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_18;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7374726F70707573, 0xEC00000067617244, &v10);
    v6 = "%s: Item cannot be dragged because doc_isAppContainerRoot=true";
LABEL_17:
    _os_log_impl(&dword_2493AC000, v2, v3, v6, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1FE850](v5, -1, -1);
    MEMORY[0x24C1FE850](v4, -1, -1);
LABEL_18:

    return 0;
  }

  if ([v0 doc_isCollaborationInvitation] & 1) != 0 || (DOCNode.areDiskPropertiesSupported.getter())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.UI);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_18;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7374726F70707573, 0xEC00000067617244, &v10);
    v6 = "%s: Item cannot be dragged because doc_isCollaborationInvitation=true";
    goto LABEL_17;
  }

  return 1;
}

uint64_t DOCNode.dragItemFor(session:supportsPickingFolders:)(void *a1, char a2, uint64_t a3)
{
  v4 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_24:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    if (v6 == v7)
    {

      v33 = 0;
      v11 = [objc_opt_self() defaultPermission];
      v12 = v3;
      v13 = [v11 dataOwnerStateForNode_];

      if (v13 == 1)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13 == 2;
      }

      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = &v33;
      *(v16 + 32) = v3;
      *(v16 + 40) = a2;
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #2 in DOCNode.dragItemFor(session:supportsPickingFolders:);
      *(v17 + 24) = v16;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_9;
      v18 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v15 _performAsDataOwner_block_];
      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        if (v33)
        {
          v20 = [objc_allocWithZone(MEMORY[0x277D75470]) initWithItemProvider_];
          [v20 setLocalObject_];
          v21 = v33;

          return v20;
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      __break(1u);
      goto LABEL_26;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v10 = [v3 isEqual_];

    swift_unknownObjectRelease();
    ++v7;
  }

  while (!v10);

  if (one-time initialization token for UI != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);
  swift_unknownObjectRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BCBAC0, aBlock);
    *(v25 + 12) = 2080;
    v27 = DOCNode.nodeDescription.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_2493AC000, v23, v24, "%s node: %s cannot be added to the drag because it is already part of the drag", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v26, -1, -1);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  return 0;
}

void closure #2 in DOCNode.dragItemFor(session:supportsPickingFolders:)(id *a1, void *a2, int a3, void *a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  v9 = *a1;
  *a1 = v8;

  if (*a1)
  {
    v10 = *a1;
    specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a2, a3, 0, 0, v10, a4);
  }
}

void *static FPItem.from(_:conformingTo:)()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UIDragItem.localObjectAsNode.getter();
  if (result)
  {
    v6 = result;
    v7 = [result contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v7) = UTType.conforms(to:)();
    (*(v1 + 8))(v4, v0);
    result = v6;
    if ((v7 & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t UIDropSession.uniqueUTIsForDragItems.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v222 = &v215 - v2;
  v3 = type metadata accessor for UTType();
  v216 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v234 = &v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v233 = &v215 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v232 = &v215 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v235 = &v215 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v217 = &v215 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v228 = &v215 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v227 = &v215 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v226 = &v215 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v250 = &v215 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v238 = &v215 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v237 = &v215 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v236 = &v215 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v251 = &v215 - v41;
  v268 = type metadata accessor for DOCDragPasteboardType();
  v42 = *(v268 - 8);
  MEMORY[0x28223BE20](v268, v43);
  v45 = &v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v248 = &v215 - v48;
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v215 - v51;
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v215 - v55;
  MEMORY[0x28223BE20](v57, v58);
  v262 = &v215 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v221 = &v215 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v263 = &v215 - v65;
  MEMORY[0x28223BE20](v66, v67);
  v218 = &v215 - v68;
  MEMORY[0x28223BE20](v69, v70);
  v231 = &v215 - v71;
  MEMORY[0x28223BE20](v72, v73);
  v240 = &v215 - v74;
  MEMORY[0x28223BE20](v75, v76);
  v239 = &v215 - v77;
  MEMORY[0x28223BE20](v78, v79);
  v265 = &v215 - v80;
  MEMORY[0x28223BE20](v81, v82);
  v266 = &v215 - v83;
  MEMORY[0x28223BE20](v84, v85);
  v260 = &v215 - v86;
  MEMORY[0x28223BE20](v87, v88);
  v259 = &v215 - v89;
  MEMORY[0x28223BE20](v90, v91);
  v93 = &v215 - v92;
  MEMORY[0x28223BE20](v94, v95);
  v267 = &v215 - v96;
  MEMORY[0x28223BE20](v97, v98);
  v100 = &v215 - v99;
  MEMORY[0x28223BE20](v101, v102);
  v104 = (&v215 - v103);
  if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
  {
    goto LABEL_194;
  }

  while (1)
  {
    v249 = v45;
    rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
    v106 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
    v261 = v3;
    v244 = v42;
    v256 = v52;
    v258 = v56;
    v220 = v106;
    if (v106)
    {
      v45 = 0;
      v253 = v216 + 8;
      v254 = v216 + 32;
      v264 = MEMORY[0x277D84F90];
      v242 = "ntManager.FINode.File";
      v241 = "com.apple.icloud.applecorporate";
      v247 = "ntManager.FINode.Location";
      v246 = "ntManager.FPItem.File";
      v245 = "ntManager.FPItem.Location";
      v257 = v93;
      v255 = v104;
      v219 = DOCAcceptableDragPasteboardTypes._rawValue;
      while (1)
      {
        if (v45 >= rawValue[2])
        {
          goto LABEL_191;
        }

        v3 = *(v42 + 80);
        v107 = (v3 + 32) & ~v3;
        v108 = *(v42 + 72);
        outlined init with copy of DOCDragPasteboardType(rawValue + v107 + v108 * v45, v104);
        v230 = v45 + 1;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd);
        v225 = v3;
        v224 = v109;
        v223 = v107 + 2 * v108;
        v110 = swift_allocObject();
        v229 = v107;
        v243 = v110;
        v111 = v110 + v107;
        *(v110 + v107) = 0;
        swift_storeEnumTagMultiPayload();
        *(v111 + v108) = 1;
        swift_storeEnumTagMultiPayload();
        v112 = 0;
        v113 = 0;
        v114 = v251;
        v252 = v108;
        do
        {
          v116 = v112;
          outlined init with copy of DOCDragPasteboardType(v111 + v113 * v108, v100);
          outlined init with copy of DOCDragPasteboardType(v104, v267);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (!EnumCaseMultiPayload)
          {
            v125 = *v267;
            outlined init with copy of DOCDragPasteboardType(v100, v93);
            if (swift_getEnumCaseMultiPayload())
            {
              v115 = v93;
              goto LABEL_10;
            }

            if (v125)
            {
              v120 = 0xD000000000000029;
            }

            else
            {
              v120 = 0xD000000000000025;
            }

            if (v125)
            {
              v134 = v242;
            }

            else
            {
              v134 = v241;
            }

            v121 = v134 | 0x8000000000000000;
            if (*v93)
            {
              v123 = 0xD000000000000029;
            }

            else
            {
              v123 = 0xD000000000000025;
            }

            if (*v93)
            {
              v124 = v242;
            }

            else
            {
              v124 = v241;
            }

            goto LABEL_51;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v118 = *v267;
            v3 = v259;
            outlined init with copy of DOCDragPasteboardType(v100, v259);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v115 = v259;
LABEL_10:
              outlined destroy of DOCDragPasteboardType(v115);
LABEL_11:
              outlined destroy of DOCDragPasteboardType(v100);
              goto LABEL_12;
            }

            if (v118 == 1)
            {
              v119 = v246;
            }

            else
            {
              v119 = v245;
            }

            if (v118)
            {
              v120 = 0xD000000000000029;
            }

            else
            {
              v120 = 0xD000000000000025;
            }

            if (!v118)
            {
              v119 = v247;
            }

            v121 = v119 | 0x8000000000000000;
            if (*v259 == 1)
            {
              v122 = v246;
            }

            else
            {
              v122 = v245;
            }

            if (*v259)
            {
              v123 = 0xD000000000000029;
            }

            else
            {
              v123 = 0xD000000000000025;
            }

            if (*v259)
            {
              v124 = v122;
            }

            else
            {
              v124 = v247;
            }

LABEL_51:
            if (v120 == v123 && v121 == (v124 | 0x8000000000000000))
            {

              outlined destroy of DOCDragPasteboardType(v100);
              v93 = v257;
LABEL_5:
              outlined destroy of DOCDragPasteboardType(v104);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              goto LABEL_6;
            }

            v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined destroy of DOCDragPasteboardType(v100);
            v93 = v257;
            if (v3)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }

          v126 = *v254;
          v127 = v100;
          v128 = v261;
          (*v254)(v114, v267, v261);
          v3 = v260;
          outlined init with copy of DOCDragPasteboardType(v127, v260);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            outlined destroy of DOCDragPasteboardType(v260);
            (*v253)(v114, v128);
            v100 = v127;
            v104 = v255;
            v108 = v252;
            goto LABEL_11;
          }

          v129 = v238;
          v126(v238, v260, v128);
          v130 = v237;
          v126(v237, v129, v128);
          v131 = v236;
          v126(v236, v130, v128);
          v132 = UTType.conforms(to:)();
          v3 = *v253;
          v133 = v131;
          v114 = v251;
          (*v253)(v133, v128);
          (v3)(v114, v128);
          outlined destroy of DOCDragPasteboardType(v127);
          v100 = v127;
          v104 = v255;
          v108 = v252;
          if (v132)
          {
            goto LABEL_5;
          }

LABEL_12:
          v112 = 1;
          v113 = 1;
        }

        while ((v116 & 1) == 0);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v225 = swift_allocObject();
        v135 = v225 + v229;
        *(v225 + v229) = 0;
        swift_storeEnumTagMultiPayload();
        *(v135 + v108) = 1;
        swift_storeEnumTagMultiPayload();
        v136 = 0;
        v137 = 0;
        v3 = v231;
        v243 = v135;
        do
        {
          v140 = v136;
          outlined init with copy of DOCDragPasteboardType(v135 + v137 * v108, v266);
          outlined init with copy of DOCDragPasteboardType(v104, v265);
          v141 = swift_getEnumCaseMultiPayload();
          if (!v141)
          {
            v138 = v3;
            v150 = *v265;
            v3 = v239;
            outlined init with copy of DOCDragPasteboardType(v266, v239);
            if (swift_getEnumCaseMultiPayload())
            {
              v139 = v3;
              goto LABEL_57;
            }

            if (v150)
            {
              v164 = 0xD000000000000029;
            }

            else
            {
              v164 = 0xD000000000000025;
            }

            if (v150)
            {
              v165 = v242;
            }

            else
            {
              v165 = v241;
            }

            if (*v3)
            {
              v166 = 0xD000000000000029;
            }

            else
            {
              v166 = 0xD000000000000025;
            }

            if (*v3)
            {
              v167 = v242;
            }

            else
            {
              v167 = v241;
            }

            if (v164 == v166 && (v165 | 0x8000000000000000) == (v167 | 0x8000000000000000))
            {
              goto LABEL_110;
            }

            goto LABEL_103;
          }

          if (v141 == 1)
          {
            v142 = *v265;
            v143 = v240;
            outlined init with copy of DOCDragPasteboardType(v266, v240);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v138 = v3;
              v139 = v143;
LABEL_57:
              outlined destroy of DOCDragPasteboardType(v139);
LABEL_58:
              outlined destroy of DOCDragPasteboardType(v266);
              goto LABEL_59;
            }

            if (v142 == 1)
            {
              v144 = v246;
            }

            else
            {
              v144 = v245;
            }

            if (v142)
            {
              v145 = 0xD000000000000029;
            }

            else
            {
              v145 = 0xD000000000000025;
            }

            if (!v142)
            {
              v144 = v247;
            }

            v146 = v144 | 0x8000000000000000;
            if (*v143 == 1)
            {
              v147 = v246;
            }

            else
            {
              v147 = v245;
            }

            if (*v143)
            {
              v148 = 0xD000000000000029;
            }

            else
            {
              v148 = 0xD000000000000025;
            }

            if (*v143)
            {
              v149 = v147;
            }

            else
            {
              v149 = v247;
            }

            if (v145 == v148 && v146 == (v149 | 0x8000000000000000))
            {
LABEL_110:

              outlined destroy of DOCDragPasteboardType(v266);
              v93 = v257;
              goto LABEL_5;
            }

            v138 = v3;
LABEL_103:
            v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined destroy of DOCDragPasteboardType(v266);
            v93 = v257;
            if (v3)
            {
              goto LABEL_5;
            }

            goto LABEL_59;
          }

          v151 = *v254;
          v152 = v261;
          (*v254)(v250, v265, v261);
          v153 = v266;
          outlined init with copy of DOCDragPasteboardType(v266, v3);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            v138 = v3;
            outlined destroy of DOCDragPasteboardType(v3);
            (*v253)(v250, v152);
            v93 = v257;
            v104 = v255;
            v135 = v243;
            goto LABEL_58;
          }

          v154 = v3;
          v155 = v228;
          v151(v228, v154, v152);
          v156 = v100;
          v157 = v227;
          v151(v227, v155, v152);
          v158 = v226;
          v159 = v157;
          v160 = v250;
          v151(v226, v159, v152);
          v161 = UTType.conforms(to:)();
          v3 = *v253;
          v162 = v158;
          v138 = v231;
          (*v253)(v162, v152);
          v163 = v160;
          v100 = v156;
          v108 = v252;
          (v3)(v163, v152);
          outlined destroy of DOCDragPasteboardType(v153);
          v93 = v257;
          v104 = v255;
          v135 = v243;
          if (v161)
          {
            goto LABEL_5;
          }

LABEL_59:
          v136 = 1;
          v137 = 1;
          v3 = v138;
        }

        while ((v140 & 1) == 0);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        outlined init with take of DOCDragPasteboardType(v104, v218, type metadata accessor for DOCDragPasteboardType);
        v168 = v264;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v269 = v168;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v168 + 16) + 1, 1);
          v168 = v269;
        }

        v171 = *(v168 + 16);
        v170 = *(v168 + 24);
        if (v171 >= v170 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v170 > 1, v171 + 1, 1);
          v168 = v269;
        }

        *(v168 + 16) = v171 + 1;
        v264 = v168;
        outlined init with take of DOCDragPasteboardType(v218, v168 + v229 + v171 * v108, type metadata accessor for DOCDragPasteboardType);
LABEL_6:
        v45 = v230;
        v42 = v244;
        v52 = v256;
        v56 = v258;
        rawValue = v219;
        if (v230 == v220)
        {
          goto LABEL_112;
        }
      }
    }

    v264 = MEMORY[0x277D84F90];
LABEL_112:
    v270 = MEMORY[0x277D84FA0];
    v172 = [v215 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
    v173 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v239 = v173;
    v42 = v173 >> 62 ? __CocoaSet.count.getter() : *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v222;
    v174 = v235;
    v93 = v262;
    if (!v42)
    {
      break;
    }

    v45 = 0;
    v241 = (v239 & 0xC000000000000001);
    v237 = (v239 & 0xFFFFFFFFFFFFFF8);
    v236 = (v239 + 32);
    v238 = v216 + 48;
    v104 = (v216 + 32);
    v259 = v216 + 8;
    v251 = "ntManager.FINode.File";
    v250 = "com.apple.icloud.applecorporate";
    v257 = "ntManager.FINode.Location";
    v253 = "ntManager.FPItem.Location";
    v254 = "ntManager.FPItem.File";
    v265 = (v216 + 32);
    v240 = v42;
    while (1)
    {
      if (v241)
      {
        v175 = MEMORY[0x24C1FC540](v45, v239);
        v176 = __OFADD__(v45++, 1);
        if (v176)
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (v45 >= *(v237 + 2))
        {
          goto LABEL_193;
        }

        v175 = *&v236[8 * v45];
        v176 = __OFADD__(v45++, 1);
        if (v176)
        {
          goto LABEL_192;
        }
      }

      v243 = v45;
      v242 = v175;
      v177 = [v175 itemProvider];
      v178 = [v177 registeredTypeIdentifiers];

      v42 = v244;
      v100 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = v100;
      v246 = *(v100 + 16);
      if (v246)
      {
        break;
      }

LABEL_116:

LABEL_117:
      v42 = v240;
      v45 = v243;
      if (v243 == v240)
      {
        goto LABEL_188;
      }
    }

    v179 = 0;
    v247 = (v100 + 32);
    v245 = v100;
    while (1)
    {
      if (v179 >= *(v45 + 16))
      {
        goto LABEL_190;
      }

      v180 = v3;
      v252 = v179;
      v181 = &v247[16 * v179];
      v182 = *v181;
      v100 = v181[1];

      v266 = v182;
      v183._countAndFlagsBits = v182;
      v183._object = v100;
      v184 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UIDropSession.uniqueUTIsForDragItems.getter, v183);
      v255 = v100;
      if (!v184)
      {
        v186 = 0;
LABEL_131:
        v187 = v221;
        *v221 = v186;
LABEL_132:
        v3 = v266;
        goto LABEL_133;
      }

      v185 = v261;
      if (v184 == 1)
      {
        v186 = 1;
        v52 = v256;
        goto LABEL_131;
      }

      v3 = v266;
      v210._countAndFlagsBits = v266;
      v210._object = v100;
      v211 = _findStringSwitchCase(cases:string:)(&outlined read-only object #1 of UIDropSession.uniqueUTIsForDragItems.getter, v210);
      if (v211 > 2)
      {

        v3 = v180;
        UTType.init(_:)();
        if ((*v238)(v180, 1, v185) == 1)
        {

          outlined destroy of CharacterSet?(v180, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
          v52 = v256;
          goto LABEL_179;
        }

        v45 = *v104;
        v212 = v217;
        (*v104)(v217, v180, v185);
        v187 = v221;
        v213 = v212;
        v42 = v244;
        (v45)(v221, v213, v185);
        v52 = v256;
        goto LABEL_132;
      }

      v187 = v221;
      *v221 = v211;
      v52 = v256;
LABEL_133:
      swift_storeEnumTagMultiPayload();
      outlined init with take of DOCDragPasteboardType(v187, v263, type metadata accessor for DOCDragPasteboardType);
      v188 = *(v264 + 16);
      if (v188)
      {
        break;
      }

LABEL_178:

      outlined destroy of DOCDragPasteboardType(v263);
      v3 = v222;
      v104 = v265;
      v45 = v245;
LABEL_179:
      v179 = v252 + 1;
      if ((v252 + 1) == v246)
      {
        goto LABEL_116;
      }
    }

    v100 = 0;
    v267 = (v264 + ((*(v42 + 80) + 32) & ~*(v42 + 80)));
    v260 = v188;
    while (v100 < *(v264 + 16))
    {
      outlined init with copy of DOCDragPasteboardType(&v267[*(v42 + 72) * v100], v93);
      outlined init with copy of DOCDragPasteboardType(v263, v56);
      v189 = swift_getEnumCaseMultiPayload();
      if (!v189)
      {
        v45 = *v56;
        outlined init with copy of DOCDragPasteboardType(v93, v52);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of DOCDragPasteboardType(v52);
          goto LABEL_136;
        }

        if (v45)
        {
          v194 = 0xD000000000000029;
        }

        else
        {
          v194 = 0xD000000000000025;
        }

        if (v45)
        {
          v204 = v251;
        }

        else
        {
          v204 = v250;
        }

        v45 = v204 | 0x8000000000000000;
        if (*v52)
        {
          v205 = 0xD000000000000029;
        }

        else
        {
          v205 = 0xD000000000000025;
        }

        if (*v52)
        {
          v206 = v251;
        }

        else
        {
          v206 = v250;
        }

        goto LABEL_174;
      }

      if (v189 == 1)
      {
        v45 = *v56;
        v190 = v248;
        outlined init with copy of DOCDragPasteboardType(v93, v248);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          outlined destroy of DOCDragPasteboardType(v190);
          v56 = v258;
LABEL_136:
          outlined destroy of DOCDragPasteboardType(v93);
          goto LABEL_137;
        }

        if (v45)
        {
          v192 = v253;
          v191 = v254;
          if (v45 == 1)
          {
            v193 = v254;
          }

          else
          {
            v193 = v253;
          }

          v194 = 0xD000000000000029;
        }

        else
        {
          v194 = 0xD000000000000025;
          v193 = v257;
          v192 = v253;
          v191 = v254;
        }

        v207 = *v190;
        v45 = v193 | 0x8000000000000000;
        if (v207 == 1)
        {
          v208 = v191;
        }

        else
        {
          v208 = v192;
        }

        if (*v190)
        {
          v205 = 0xD000000000000029;
        }

        else
        {
          v205 = 0xD000000000000025;
        }

        v206 = v257;
        v56 = v258;
        if (v207)
        {
          v206 = v208;
        }

LABEL_174:
        if (v194 == v205 && v45 == (v206 | 0x8000000000000000))
        {

          outlined destroy of DOCDragPasteboardType(v93);
          v52 = v256;
LABEL_187:
          outlined destroy of DOCDragPasteboardType(v263);

          specialized Set._Variant.insert(_:)(&v269, v3, v255);

          v3 = v222;
          v93 = v262;
          v104 = v265;
          goto LABEL_117;
        }

        v104 = v93;
        v209 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of DOCDragPasteboardType(v104);
        v52 = v256;
        if (v209)
        {
          goto LABEL_187;
        }

        goto LABEL_137;
      }

      v45 = *v265;
      v195 = v93;
      v196 = v261;
      (*v265)(v174, v56, v261);
      v197 = v249;
      outlined init with copy of DOCDragPasteboardType(v195, v249);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        outlined destroy of DOCDragPasteboardType(v197);
        (*v259)(v174, v196);
        v56 = v258;
        v93 = v195;
        v3 = v266;
        v188 = v260;
        goto LABEL_136;
      }

      v198 = v234;
      (v45)(v234, v197, v196);
      v199 = v233;
      (v45)(v233, v198, v196);
      v200 = v232;
      v201 = v199;
      v174 = v235;
      (v45)(v232, v201, v196);
      v45 = UTType.conforms(to:)();
      v202 = *v259;
      v203 = v200;
      v42 = v244;
      (*v259)(v203, v196);
      v202(v174, v196);
      v52 = v256;
      outlined destroy of DOCDragPasteboardType(v195);
      v56 = v258;
      v3 = v266;
      v188 = v260;
      if (v45)
      {
        goto LABEL_187;
      }

LABEL_137:
      ++v100;
      v93 = v262;
      if (v188 == v100)
      {
        goto LABEL_178;
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    swift_once();
  }

LABEL_188:

  return v270;
}

void NSItemProvider.doc_nodeFromTeamData(completion:)(void (*a1)(id, id), void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 teamData];
  if (v11)
  {
    v65 = a1;
    v66 = a2;
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249B9FA70;
    *(v16 + 32) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
    *(v16 + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v69)
    {
      outlined init with take of Any(&aBlock, v73);
      outlined init with copy of Any(v73, &aBlock);
      if (swift_dynamicCast())
      {
        v21 = v72;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.UI);
        v23 = v21;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&aBlock = v64;
          *v26 = 136315394;
          *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BCBAF0, &aBlock);
          *(v26 + 12) = 2080;
          v27 = v23;
          v28 = [v27 description];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &aBlock);

          *(v26 + 14) = v32;
          _os_log_impl(&dword_2493AC000, v24, v25, "%s Unarchived a ItemID from teamData: %s", v26, 0x16u);
          v33 = v64;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v33, -1, -1);
          MEMORY[0x24C1FE850](v26, -1, -1);
        }

        v34 = [objc_opt_self() defaultManager];
        v35 = swift_allocObject();
        v36 = v66;
        *(v35 + 16) = v65;
        *(v35 + 24) = v36;
        v70 = partial apply for closure #1 in NSItemProvider.doc_nodeFromTeamData(completion:);
        v71 = v35;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v68 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        v69 = &block_descriptor_19_0;
        v37 = _Block_copy(&aBlock);

        [v34 fetchItemForItemID:v23 completionHandler:v37];
        outlined consume of Data._Representation(v13, v15);
        _Block_release(v37);
      }

      else
      {
        outlined init with copy of Any(v73, &aBlock);
        if (swift_dynamicCast())
        {
          v38 = v72;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, static Logger.UI);
          v40 = v38;
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();

          v64 = v41;
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            HIDWORD(v61) = v42;
            v44 = v43;
            v62 = swift_slowAlloc();
            *&aBlock = v62;
            *v44 = 136315394;
            *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BCBAF0, &aBlock);
            *(v44 + 12) = 2080;
            v45 = v40;
            v46 = [v45 description];
            v63 = v40;
            v47 = v46;
            v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            v40 = v63;
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &aBlock);

            *(v44 + 14) = v51;
            v52 = v64;
            _os_log_impl(&dword_2493AC000, v64, BYTE4(v61), "%s Unarchived url from teamData: %s", v44, 0x16u);
            v53 = v62;
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v53, -1, -1);
            MEMORY[0x24C1FE850](v44, -1, -1);
          }

          else
          {
          }

          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          URL._bridgeToObjectiveC()(v57);
          v59 = v58;
          (*(v6 + 8))(v10, v5);
          v60 = [objc_opt_self() fiNodeFromURL_];

          v23 = v60;
          v65(v60, 0);
          outlined consume of Data._Representation(v13, v15);
        }

        else
        {
          v54 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v55 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
          v56 = [v54 initWithDomain:v55 code:1003 userInfo:0];

          v23 = v56;
          v65(0, v56);
          outlined consume of Data._Representation(v13, v15);
        }

        v34 = v23;
      }

      __swift_destroy_boxed_opaque_existential_0(v73);
    }

    else
    {
      outlined consume of Data._Representation(v13, v15);
      outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
    }
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
    v19 = [v17 initWithDomain:v18 code:1002 userInfo:0];

    v66 = v19;
    a1(0, v19);

    v20 = v66;
  }
}

DocumentManagerExecutables::DOCDragAndDropErrorCode_optional __swiftcall DOCDragAndDropErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1001) >= 3)
  {
    return 3;
  }

  else
  {
    return (rawValue + 23);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCDragAndDropErrorCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1 + 1001);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCDragAndDropErrorCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1 + 1001);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCDragAndDropErrorCode@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 1001;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  v25 = a1;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      goto LABEL_20;
    }

    if (!a3)
    {
      v9 = 0;
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v9 = 2;
      goto LABEL_20;
    }

LABEL_63:
    MEMORY[0x24C1FCBD0](1);
    String.hash(into:)();
    goto LABEL_21;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }

    goto LABEL_20;
  }

  if (a3 == 6)
  {
    v9 = 7;
    goto LABEL_20;
  }

  if (a3 == 7)
  {
    v9 = 8;
    goto LABEL_20;
  }

  if (a3 != 8)
  {
    goto LABEL_63;
  }

  v9 = 9;
LABEL_20:
  MEMORY[0x24C1FCBD0](v9);
LABEL_21:
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    outlined copy of ColumnType(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v26;
    *v25 = a2;
    v25[1] = a3;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(v8 + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    if (v16 <= 3)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (a3 == 2)
          {
            v22 = *v14;
            v23 = 2;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 2;
        }

        else
        {
          if (a3 == 3)
          {
            v22 = *v14;
            v23 = 3;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 3;
        }

        goto LABEL_53;
      }

      if (!v16)
      {
        if (!a3)
        {
          v22 = *v14;
          v23 = 0;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a2, a3);
        v17 = 0;
        goto LABEL_53;
      }

      if (v16 == 1)
      {
        if (a3 == 1)
        {
          v22 = *v14;
          v23 = 1;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a2, a3);
        v17 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          if (a3 == 4)
          {
            v22 = *v14;
            v23 = 4;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 4;
        }

        else
        {
          if (a3 == 5)
          {
            v22 = *v14;
            v23 = 5;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 5;
        }

        goto LABEL_53;
      }

      switch(v16)
      {
        case 6:
          if (a3 == 6)
          {
            v22 = *v14;
            v23 = 6;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 6;
          goto LABEL_53;
        case 7:
          if (a3 == 7)
          {
            v22 = *v14;
            v23 = 7;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 7;
          goto LABEL_53;
        case 8:
          if (a3 == 8)
          {
            v22 = *v14;
            v23 = 8;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 8;
          goto LABEL_53;
      }
    }

    if (a3 < 9)
    {
      outlined copy of ColumnType(a2, a3);
      outlined copy of ColumnType(v15, v16);
      v17 = v16;
LABEL_53:
      outlined consume of ColumnType(v15, v17);
      outlined consume of ColumnType(a2, a3);
      goto LABEL_54;
    }

    if (v15 == a2 && v16 == a3)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a2, a3);
    outlined copy of ColumnType(v15, v16);
    outlined consume of ColumnType(v15, v16);
    outlined consume of ColumnType(a2, a3);
    if (v19)
    {
      goto LABEL_75;
    }

LABEL_54:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v22 = a2;
  v23 = a3;
LABEL_74:
  outlined consume of ColumnType(v22, v23);
LABEL_75:
  outlined consume of ColumnType(a2, a3);
  v24 = *(*(v8 + 48) + 16 * v12);
  *v25 = v24;
  outlined copy of ColumnType(v24, *(&v24 + 1));
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x24C1FC430](v16, a2);
      outlined destroy of AnyHashable(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of AnyHashable(a2, v16);
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a2 + 8), *(a2 + 32));
  dispatch thunk of Hashable.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v4 + 48) + 56 * v7, &v16);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      dispatch thunk of Hashable.hash(into:)();
      v9 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1((a2 + 8), *(a2 + 32));
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      outlined destroy of DOCIdentityHashableLocation(&v16);
      if (v9 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of DOCIdentityHashableLocation(a2);
    outlined init with copy of DOCIdentityHashableLocation(*(v4 + 48) + 56 * v7, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of DOCIdentityHashableLocation(a2, v18);
    v16 = *v14;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v7, isUniquelyReferenced_nonNull_native);
    *v14 = v16;
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, specialized _NativeSet.resize(capacity:), type metadata accessor for DOCDocumentSourceIdentifier, specialized _NativeSet.copyAndResize(capacity:), specialized _NativeSet.copy());
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20UICollectionViewCellC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, specialized _NativeSet.resize(capacity:), type metadata accessor for FPAction, specialized _NativeSet.copyAndResize(capacity:), specialized _NativeSet.copy());
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, specialized _NativeSet.resize(capacity:), type metadata accessor for FPProviderID, specialized _NativeSet.copyAndResize(capacity:), specialized _NativeSet.copy());
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for DOCItemCollectionCell();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC26DocumentManagerExecutables21DOCItemCollectionCellC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for DOCItemCollectionCell();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo7UITouchC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6FINodeC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  DOCItemFileTypeGroupCategory.hash(into:)(v19, a2, a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;
    outlined copy of DOCItemFileTypeGroupCategory(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14 <= 4)
    {
      break;
    }

    if (v14 > 7)
    {
      switch(v14)
      {
        case 8:
          if (a3 == 8)
          {
            goto LABEL_44;
          }

          break;
        case 9:
          if (a3 == 9)
          {
            goto LABEL_44;
          }

          break;
        case 10:
          if (a3 == 10)
          {
            goto LABEL_44;
          }

          break;
        default:
          goto LABEL_37;
      }
    }

    else if (v14 == 5)
    {
      if (a3 == 5)
      {
        goto LABEL_44;
      }
    }

    else if (v14 == 6)
    {
      if (a3 == 6)
      {
        goto LABEL_44;
      }
    }

    else if (a3 == 7)
    {
      goto LABEL_44;
    }

LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (a3 == 2)
      {
        goto LABEL_44;
      }
    }

    else if (v14 == 3)
    {
      if (a3 == 3)
      {
        goto LABEL_44;
      }
    }

    else if (a3 == 4)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

  if (!v14)
  {
    if (!a3)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

  if (v14 == 1)
  {
    if (a3 == 1)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

LABEL_37:
  if (a3 < 0xB)
  {
    goto LABEL_4;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_4;
  }

  outlined consume of DOCItemFileTypeGroupCategory(a2, a3);
LABEL_44:
  v16 = *(*(v7 + 48) + 16 * v10);
  *a1 = v16;
  outlined copy of DOCItemFileTypeGroupCategory(v16, *(&v16 + 1));
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
  v34 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v7 = v6;
  v10 = *v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

        goto LABEL_12;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v24 = *(*(v10 + 48) + 8 * v13);
    *a1 = v24;
    v25 = v24;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v7;
    v22 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v22, v13, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v7 = v30;
    *a1 = v22;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  MEMORY[0x24C1FCBD0](v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}