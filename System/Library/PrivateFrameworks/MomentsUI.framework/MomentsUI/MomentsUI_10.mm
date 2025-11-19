id CollectionViewSuggestionCell.titleLabel.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CollectionViewSuggestionCell.titleLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CollectionViewSuggestionCell.subTitleLabel.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_subTitleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CollectionViewSuggestionCell.subTitleLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_subTitleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SuggestionCellReuseActor.configureCell(viewModel:gridView:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionCellReuseActor.configureCell(viewModel:gridView:), v2, 0);
}

uint64_t SuggestionCellReuseActor.configureCell(viewModel:gridView:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v3 = *(*v1 + 304);
      v4 = v2;

      *(v0 + 48) = v3(v5);
      type metadata accessor for MosaicSuggestionViewModel();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        *(v0 + 80) = *(v6 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth);
        v7 = *(*v6 + 184);

        v7(v8);

        v9 = ((*MEMORY[0x277D85000] & *v4) + 320) & 0xFFFFFFFFFFFFLL | 0xE2F000000000000;
        *(v0 + 56) = *((*MEMORY[0x277D85000] & *v4) + 0x140);
        *(v0 + 64) = v9;
        type metadata accessor for MainActor();
        *(v0 + 72) = static MainActor.shared.getter();
        v11 = dispatch thunk of Actor.unownedExecutor.getter();

        return MEMORY[0x2822009F8](SuggestionCellReuseActor.configureCell(viewModel:gridView:), v11, v10);
      }
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2(v1, v0 + 10, v3);

  outlined destroy of UUID?(v3);

  return MEMORY[0x2822009F8](SuggestionCellReuseActor.configureCell(viewModel:gridView:), v4, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:), v3, 0);
}

uint64_t SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:)()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1A8);
    v13 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:);

    return v13();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v0[1];

      return v8();
    }

    else
    {
      v9 = *((*MEMORY[0x277D85000] & *v5) + 0xE0);
      v5;
      v10 = v6;
      v12 = (v9 + *v9);
      v11 = swift_task_alloc();
      v0[7] = v11;
      *v11 = v0;
      v11[1] = SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:);

      return v12(v10);
    }
  }
}

{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:), v1, 0);
}

{
  v2 = v0[3];
  v1 = v0[4];
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *((*MEMORY[0x277D85000] & *v1) + 0xE0);
    v1;
    v7 = v2;
    v9 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:);

    return v9(v7);
  }
}

{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:), v1, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SuggestionCellReuseActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t SuggestionCellReuseActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

id closure #1 in variable initialization expression of CollectionViewSuggestionCell.titleLabel(SEL *a1, uint64_t (*a2)(void))
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  v5 = [objc_opt_self() *a1];
  [v4 setTextColor_];

  [v4 setTextAlignment_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setMaximumContentSizeCategory_];

  v6 = a2();
  [v4 setFont_];

  return v4;
}

id CollectionViewSuggestionCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CollectionViewSuggestionCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_titleLabel;
  *(v0 + v1) = closure #1 in variable initialization expression of CollectionViewSuggestionCell.titleLabel(&selRef_labelColor, specialized static CommonTheme.Font.footnoteEmphShortFont());
  v2 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_subTitleLabel;
  *(v0 + v2) = closure #1 in variable initialization expression of CollectionViewSuggestionCell.titleLabel(&selRef_secondaryLabelColor, specialized static CommonTheme.Font.footnoteShortFont());
  v3 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_actor;
  type metadata accessor for SuggestionCellReuseActor();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id CollectionViewSuggestionCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollectionViewSuggestionCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewSuggestionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized CollectionViewSuggestionCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_titleLabel;
  *&v0[v1] = closure #1 in variable initialization expression of CollectionViewSuggestionCell.titleLabel(&selRef_labelColor, specialized static CommonTheme.Font.footnoteEmphShortFont());
  v2 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_subTitleLabel;
  *&v0[v2] = closure #1 in variable initialization expression of CollectionViewSuggestionCell.titleLabel(&selRef_secondaryLabelColor, specialized static CommonTheme.Font.footnoteShortFont());
  v3 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_actor;
  type metadata accessor for SuggestionCellReuseActor();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *&v0[v3] = v4;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CollectionViewSuggestionCell();
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_titleLabel;
  swift_beginAccess();
  v7 = *&v5[v6];
  v8 = v5;
  [v8 addSubview_];
  v9 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_subTitleLabel;
  swift_beginAccess();
  [v8 addSubview_];
  [v8 setIsAccessibilityElement_];

  return v8;
}

uint64_t dispatch thunk of SuggestionCellReuseActor.configureCell(viewModel:gridView:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterImage(imageSource:outputURL:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v10(a1, a2, a3);
}

id BlurredRoundButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path getter for BlurredRoundButton.didTap : BlurredRoundButton@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
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

uint64_t key path setter for BlurredRoundButton.didTap : BlurredRoundButton(uint64_t *a1, void **a2)
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

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  _sSuSgIegd_SgWOy_0(v3);
  return v7(v6, v5);
}

uint64_t BlurredRoundButton.didTap.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_didTap);
  swift_beginAccess();
  v2 = *v1;
  _sSuSgIegd_SgWOy_0(*v1);
  return v2;
}

uint64_t BlurredRoundButton.didTap.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_didTap);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

void *BlurredRoundButton.init()()
{
  swift_getObjectType();
  v1 = [v0 initWithFrame_];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v3 = v1;
  v2();
  v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:sel_touchedButton_];
  swift_unknownObjectRelease();
  [v3 setUserInteractionEnabled_];
  v5 = OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button;
  [*(v3 + OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button) addGestureRecognizer_];
  [*(v3 + v5) setUserInteractionEnabled_];
  [*(v3 + v5) setDeliversTouchesForGesturesToSuperview_];

  return v3;
}

Swift::Void __swiftcall BlurredRoundButton.touchedButton(_:)(UITapGestureRecognizer a1)
{
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))(a1.super.super.isa);
  if (v2)
  {
    v3 = v2;
    v2();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }
}

Swift::Void __swiftcall BlurredRoundButton.addSubviewsAndConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_blurMaterialView];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [v2 centerYAnchor];
    v6 = [v4 centerYAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    [v7 setConstant_];
    if (v7)
    {
      [v7 setActive_];
    }
  }

  v8 = [v2 superview];
  if (v8)
  {
    v12 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v2 centerXAnchor];
    v10 = [v12 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setConstant_];
    if (v11)
    {
      [v11 setActive_];
    }
  }
}

Swift::Void __swiftcall BlurredRoundButton.layoutSubviews()()
{
  [v0 bounds];
  [v0 _setCornerRadius_];

  [v0 setClipsToBounds_];
}

id BlurredRoundButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BlurredRoundButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_blurMaterialView;
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button;
  type metadata accessor for OversizedBoundsButton();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  [v15 setTintColor_];

  *&v4[v12] = v15;
  v17 = &v4[OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_didTap];
  v18 = type metadata accessor for BlurredRoundButton();
  *v17 = 0;
  *(v17 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
}

id BlurredRoundButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BlurredRoundButton.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_blurMaterialView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v1[v3] = v5;
  v6 = OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button;
  type metadata accessor for OversizedBoundsButton();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 whiteColor];
  [v9 setTintColor_];

  *&v1[v6] = v9;
  v11 = &v1[OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_didTap];
  v12 = type metadata accessor for BlurredRoundButton();
  *v11 = 0;
  *(v11 + 1) = 0;
  v15.receiver = v1;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);

  if (v13)
  {
  }

  return v13;
}

id BlurredRoundButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurredRoundButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL MutableStateOfMindViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = Image.uiImage.getter();

  if (!v5)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors;
  swift_beginAccess();
  if (!*(v1 + v6))
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors;
  swift_beginAccess();
  return *(v1 + v7) != 0;
}

void *MutableStateOfMindViewModel.valenceIcon.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id static MutableStateOfMindViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableStateOfMindViewModel.empty;

  return v1;
}

void *MutableStateOfMindViewModel.stateOfMind.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t MutableStateOfMindViewModel.stateOfMindUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t MutableStateOfMindViewModel.lightBackgroundColors.getter()
{
  return MutableStateOfMindViewModel.lightBackgroundColors.getter();
}

{
  swift_beginAccess();
}

uint64_t MutableStateOfMindViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableStateOfMindViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutableStateOfMindViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableStateOfMindViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

id MutableStateOfMindViewModel.__allocating_init(intendedViewport:supportedStyles:stateOfMind:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMind:)(a1, a2, a3);

  return v8;
}

id MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMind:)(void *a1, uint64_t a2, void *a3)
{
  v5 = specialized MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMind:)(a1, a2, a3);

  return v5;
}

id MutableStateOfMindViewModel.__allocating_init(intendedViewport:supportedStyles:stateOfMindUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMindUUID:)(a1, a2, a3);

  return v8;
}

id MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMindUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = specialized MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMindUUID:)(a1, a2, a3);

  return v4;
}

void MutableStateOfMindViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableStateOfMindViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind) = 0;
  v1 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableStateOfMindViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableStateOfMindViewModel.render()()
{
  v1[35] = v0;
  v2 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider.ImageScale();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v3 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider();
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();
  type metadata accessor for Date();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v1[45] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[46] = v4;
  v1[47] = *(v4 - 8);
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](MutableStateOfMindViewModel.render(), 0, 0);
}

{
  v90 = v0;
  v1 = v0[35];
  v2 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  v0[49] = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    goto LABEL_2;
  }

  v13 = v0[46];
  v14 = v0[47];
  v15 = v0[45];
  v16 = v0[35];
  v17 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v16 + v17, v15, &_s10Foundation4UUIDVSgMd);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    outlined destroy of UTType?(v0[45], &_s10Foundation4UUIDVSgMd);
    v3 = *(v0[35] + v0[49]);
    if (!v3)
    {
LABEL_47:

      v76 = v0[1];

      return v76();
    }

LABEL_2:
    type metadata accessor for StateOfMindUtilities();
    v4 = v3;
    v5 = static StateOfMindUtilities.localizedLabels(for:)();
    v8 = v7;
    v10 = v9;
    if (v6)
    {
      v11 = v5;
      v12 = v6;
    }

    else
    {
      [v4 valenceClassification];
      [v4 reflectiveInterval];
      v18 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v19;
    }

    v78 = v0[44];
    v82 = v0[41];
    v85 = v0[40];
    v87 = v0[39];
    v79 = v0[37];
    v80 = v0[38];
    v20 = v0[35];
    v81 = v0[36];
    v21 = v0;
    v22 = (v20 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
    swift_beginAccess();
    *v22 = v11;
    v22[1] = v12;

    v23 = (v20 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle);
    swift_beginAccess();
    *v23 = v8;
    v23[1] = v10;

    v24 = static StateOfMindUtilities.localizedDomains(for:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = (v20 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle);
    swift_beginAccess();
    *v31 = v24;
    v31[1] = v26;

    v32 = (v20 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle);
    swift_beginAccess();
    *v32 = v28;
    v32[1] = v30;

    v33 = static StateOfMindUtilities.localizedEmotionTimestamp(for:)(v4);
    v35 = v34;
    v36 = (v20 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading);
    swift_beginAccess();
    *v36 = v33;
    v36[1] = v35;

    v37 = v4;
    v38 = [v37 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = [v37 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.init(start:end:)();
    v40 = type metadata accessor for DateInterval();
    (*(*(v40 - 8) + 56))(v78, 0, 1, v40);
    v41 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v78, v20 + v41, &_s10Foundation12DateIntervalVSgMd);
    swift_endAccess();
    v42 = &unk_27821E000;
    [v37 valence];
    (*(v79 + 104))(v80, *MEMORY[0x277D280F8], v81);
    StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)();
    v43 = StateOfMindVisualization.ValenceImageProvider.uiImage.getter();
    (*(v85 + 8))(v82, v87);
    type metadata accessor for Image();
    LOBYTE(v89) = *(v20 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    v86 = v43;
    v44 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v43, 0, &v89);
    v45 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
    v88 = v21;
    swift_beginAccess();
    v46 = *(v20 + v45);
    *(v20 + v45) = v44;

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CAGradientLayer);
    [v37 valence];
    v47 = static CAGradientLayer.gradientLayerForValence(_:style:)();
    v48 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v49 = [v47 colors];

    if (v49)
    {
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = specialized _arrayConditionalCast<A, B>(_:)(v50);

      if (v51)
      {
        v89 = MEMORY[0x277D84F90];
        v52 = (v51 & 0xFFFFFFFFFFFFFF8);
        v77 = v37;
        if (v51 >> 62)
        {
LABEL_54:
          v53 = __CocoaSet.count.getter();
        }

        else
        {
          v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v54 = 0;
        v83 = MEMORY[0x277D84F90];
        while (v53 != v54)
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x21CE93180](v54, v51);
          }

          else
          {
            if (v54 >= v52[2])
            {
              goto LABEL_51;
            }

            v55 = *(v51 + 8 * v54 + 32);
          }

          v56 = v55;
          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v58 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

          ++v54;
          if (v58)
          {
            MEMORY[0x21CE92260]();
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v83 = v89;
            v54 = v57;
          }
        }

        v37 = v77;
        v42 = &unk_27821E000;
        v51 = v83;
        v48 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      }

      else
      {
        v42 = &unk_27821E000;
      }
    }

    else
    {
      v51 = 0;
    }

    v0 = v88;
    v62 = v88[35];
    v63 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors;
    swift_beginAccess();
    *(v62 + v63) = v51;

    [v37 v42[493]];
    v64 = static CAGradientLayer.gradientLayerForValence(_:style:)();
    v65 = [v64 v48[370]];

    if (v65 && (v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v65, v67 = specialized _arrayConditionalCast<A, B>(_:)(v66), , v67))
    {
      v77 = v37;
      v89 = MEMORY[0x277D84F90];
      if (v67 >> 62)
      {
        v51 = __CocoaSet.count.getter();
      }

      else
      {
        v51 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = 0;
      v84 = MEMORY[0x277D84F90];
      v52 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      while (v51 != v68)
      {
        if ((v67 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x21CE93180](v68, v67);
        }

        else
        {
          if (v68 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v69 = *(v67 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_52;
        }

        v72 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

        ++v68;
        if (v72)
        {
          MEMORY[0x21CE92260]();
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v84 = v89;
          v68 = v71;
        }
      }

      v0 = v88;
      v73 = v84;
    }

    else
    {

      v73 = 0;
    }

    v74 = v0[35];
    v75 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors;
    swift_beginAccess();
    *(v74 + v75) = v73;

    goto LABEL_47;
  }

  (*(v0[47] + 32))(v0[48], v0[45], v0[46]);
  type metadata accessor for StateOfMindUtilities();
  v59 = swift_task_alloc();
  v0[50] = v59;
  *v59 = v0;
  v59[1] = MutableStateOfMindViewModel.render();
  v60 = v0[48];

  return static StateOfMindUtilities.stateOfMind(with:)(v60);
}

{
  v83 = v0;
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[35];
  (*(v0[47] + 8))(v0[48], v0[46]);
  v4 = *(v3 + v2);
  *(v3 + v2) = v1;

  v5 = *(v0[35] + v0[49]);
  if (v5)
  {
    type metadata accessor for StateOfMindUtilities();
    v6 = v5;
    v7 = static StateOfMindUtilities.localizedLabels(for:)();
    v10 = v9;
    v12 = v11;
    if (v8)
    {
      v13 = v7;
      v14 = v8;
    }

    else
    {
      [v6 valenceClassification];
      [v6 reflectiveInterval];
      v15 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v16;
    }

    v17 = v0[44];
    v76 = v0[41];
    v77 = v0[40];
    v80 = v0[39];
    v73 = v0[37];
    v74 = v0[38];
    v18 = v0[35];
    v75 = v0[36];
    v19 = (v18 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
    swift_beginAccess();
    *v19 = v13;
    v19[1] = v14;

    v20 = (v18 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle);
    swift_beginAccess();
    *v20 = v10;
    v20[1] = v12;

    v21 = static StateOfMindUtilities.localizedDomains(for:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = (v18 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle);
    swift_beginAccess();
    *v28 = v21;
    v28[1] = v23;

    v29 = (v18 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle);
    swift_beginAccess();
    *v29 = v25;
    v29[1] = v27;

    v30 = static StateOfMindUtilities.localizedEmotionTimestamp(for:)(v6);
    v32 = v31;
    v33 = (v18 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading);
    swift_beginAccess();
    *v33 = v30;
    v33[1] = v32;

    v34 = v6;
    v35 = [v34 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = [v34 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.init(start:end:)();
    v37 = type metadata accessor for DateInterval();
    (*(*(v37 - 8) + 56))(v17, 0, 1, v37);
    v38 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v17, v18 + v38, &_s10Foundation12DateIntervalVSgMd);
    swift_endAccess();
    v39 = &unk_27821E000;
    [v34 valence];
    (*(v73 + 104))(v74, *MEMORY[0x277D280F8], v75);
    StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)();
    v40 = StateOfMindVisualization.ValenceImageProvider.uiImage.getter();
    (*(v77 + 8))(v76, v80);
    type metadata accessor for Image();
    LOBYTE(v82) = *(v18 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    v81 = v40;
    v41 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v40, 0, &v82);
    v42 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
    swift_beginAccess();
    v43 = *(v18 + v42);
    *(v18 + v42) = v41;

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CAGradientLayer);
    [v34 valence];
    v44 = static CAGradientLayer.gradientLayerForValence(_:style:)();
    v45 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v46 = [v44 colors];

    if (v46)
    {
      v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v48 = specialized _arrayConditionalCast<A, B>(_:)(v47);

      if (v48)
      {
        v82 = MEMORY[0x277D84F90];
        v49 = (v48 & 0xFFFFFFFFFFFFFF8);
        v72 = v34;
        if (v48 >> 62)
        {
LABEL_48:
          v50 = __CocoaSet.count.getter();
        }

        else
        {
          v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v51 = 0;
        v78 = MEMORY[0x277D84F90];
        while (v50 != v51)
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x21CE93180](v51, v48);
          }

          else
          {
            if (v51 >= v49[2])
            {
              goto LABEL_45;
            }

            v52 = *(v48 + 8 * v51 + 32);
          }

          v53 = v52;
          v54 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v55 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

          ++v51;
          if (v55)
          {
            MEMORY[0x21CE92260]();
            if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v78 = v82;
            v51 = v54;
          }
        }

        v34 = v72;
        v39 = &unk_27821E000;
        v48 = v78;
        v45 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      }

      else
      {
        v39 = &unk_27821E000;
      }
    }

    else
    {
      v48 = 0;
    }

    v56 = v0[35];
    v57 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors;
    swift_beginAccess();
    *(v56 + v57) = v48;

    [v34 v39[493]];
    v58 = static CAGradientLayer.gradientLayerForValence(_:style:)();
    v59 = [v58 v45[370]];

    if (v59 && (v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v59, v61 = specialized _arrayConditionalCast<A, B>(_:)(v60), , v61))
    {
      v72 = v34;
      v82 = MEMORY[0x277D84F90];
      if (v61 >> 62)
      {
        v48 = __CocoaSet.count.getter();
      }

      else
      {
        v48 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = 0;
      v79 = MEMORY[0x277D84F90];
      v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      while (v48 != v62)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x21CE93180](v62, v61);
        }

        else
        {
          if (v62 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v63 = *(v61 + 8 * v62 + 32);
        }

        v64 = v63;
        v65 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_46;
        }

        v66 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

        ++v62;
        if (v66)
        {
          MEMORY[0x21CE92260]();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v79 = v82;
          v62 = v65;
        }
      }

      v67 = v79;
    }

    else
    {

      v67 = 0;
    }

    v68 = v0[35];
    v69 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors;
    swift_beginAccess();
    *(v68 + v69) = v67;
  }

  v70 = v0[1];

  return v70();
}

uint64_t MutableStateOfMindViewModel.render()(uint64_t a1)
{
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](MutableStateOfMindViewModel.render(), 0, 0);
}

uint64_t static StateOfMindUtilities.stateOfMind(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit23HKSampleQueryDescriptorVySo13HKStateOfMindCGMd);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo13HKStateOfMindCGMd);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](static StateOfMindUtilities.stateOfMind(with:), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = static StateOfMindUtilities.stateOfMind(with:);
  }

  else
  {
    v4 = static StateOfMindUtilities.stateOfMind(with:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t static StateOfMindUtilities.stateOfMind(with:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 predicateForObjectWithUUID_];

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKSample);
  static HKSamplePredicate.stateOfMind(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9HealthKit17HKSamplePredicateVySo13HKStateOfMindCGGMd);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21658CA50;
  (*(v2 + 16))(v8 + v7, v1, v3);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKStateOfMind);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v9 = static StateOfMindUtilities.healthStore;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = static StateOfMindUtilities.stateOfMind(with:);
  v11 = v0[8];

  return MEMORY[0x282120380](v9, v11);
}

{
  v1 = v0[15];
  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CE93180](0, v0[15]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[15] + 32);
  }

LABEL_9:
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(v3);
}

{
  v40 = v0;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.viewModel);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.error.getter();

  v36 = v2;
  v9 = os_log_type_enabled(v8, v2);
  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v37 = v0[16];
  v38 = v0[8];
  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[5];
  if (v9)
  {
    v35 = v0[13];
    v18 = v0[4];
    v34 = v0[10];
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39 = v32;
    *v19 = 136315650;
    v0[2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI20StateOfMindUtilities33_2EB8393A3BA3CDF9D8FA365B154E119ELLCmMd);
    v20 = String.init<A>(describing:)();
    v33 = v12;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v39);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v16 + 8))(v15, v17);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v39);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2112;
    v27 = v37;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v28;
    *v31 = v28;
    _os_log_impl(&dword_21607C000, v8, v36, "[%s] failed to get State of Mind for uuid=%s: error=%@", v19, 0x20u);
    outlined destroy of UTType?(v31, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v31, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v32, -1, -1);
    MEMORY[0x21CE94770](v19, -1, -1);

    (*(v14 + 8))(v34, v38);
    (*(v11 + 8))(v35, v33);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v13, v38);
    (*(v11 + 8))(v10, v12);
  }

  v29 = v0[1];

  return v29(0);
}

uint64_t static StateOfMindUtilities.localizedLabels(for:)()
{
  v0 = *(HKStateOfMind.labels.getter() + 16);
  if (v0)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
    v1 = 32;
    v2 = v12;
    do
    {
      v3 = HKUILocalizedStringForStateOfMindLabel();
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v8 = v12[2];
      v7 = v12[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      v12[2] = v8 + 1;
      v9 = &v12[2 * v8];
      v9[4] = v4;
      v9[5] = v6;
      v1 += 8;
      --v0;
    }

    while (v0);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v10 = static StateOfMindUtilities.localized(strings:separatorComment:formatComment:)(v2, 0xD000000000000025, 0x800000021657B6F0, 0xD0000000000000A2, 0x800000021657B620);

  return v10;
}

uint64_t static StateOfMindUtilities.localizedDomains(for:)()
{
  v0 = *(HKStateOfMind.domains.getter() + 16);
  if (v0)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
    v1 = 32;
    v2 = v12;
    do
    {
      v3 = HKUILocalizedStringForStateOfMindDomain();
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v8 = v12[2];
      v7 = v12[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      v12[2] = v8 + 1;
      v9 = &v12[2 * v8];
      v9[4] = v4;
      v9[5] = v6;
      v1 += 8;
      --v0;
    }

    while (v0);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v10 = static StateOfMindUtilities.localized(strings:separatorComment:formatComment:)(v2, 0xD000000000000026, 0x800000021657B5F0, 0xD0000000000000A2, 0x800000021657B620);

  return v10;
}

uint64_t static StateOfMindUtilities.localizedEmotionTimestamp(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 reflectiveInterval] == 2)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.viewModel);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_15;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v2;
    v36 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI20StateOfMindUtilities33_2EB8393A3BA3CDF9D8FA365B154E119ELLCmMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v36);

    *(v11 + 4) = v15;
    v16 = "(%s not returning the localized string for Emotion Timestamp because the reflective interval is .daily";
    goto LABEL_14;
  }

  if (one-time initialization token for shortTimeFormatter != -1)
  {
    swift_once();
  }

  v17 = static StateOfMindUtilities.shortTimeFormatter;
  v18 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  v20 = [v17 stringForObjectValue_];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    v37._object = 0x800000021657B5A0;
    v26._countAndFlagsBits = 0x206E6F69746F6D45;
    v26._object = 0xED00004025207461;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0xD000000000000046;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21658CA50;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = v21;
    *(v28 + 40) = v23;
    v29 = static String.localizedStringWithFormat(_:_:)();

    return v29;
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static CommonLogger.viewModel);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v2;
    v36 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI20StateOfMindUtilities33_2EB8393A3BA3CDF9D8FA365B154E119ELLCmMd);
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v36);

    *(v11 + 4) = v34;
    v16 = "(%s not returning the localized string for Emotion Timestamp: failed to get formatted start date";
LABEL_14:
    _os_log_impl(&dword_21607C000, v9, v10, v16, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

LABEL_15:

  return 0;
}

Swift::Bool __swiftcall MutableStateOfMindViewModel.clearCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-v2];
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v4 = 0;
  v4[1] = 0;

  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle);
  swift_beginAccess();
  *v5 = 0;
  v5[1] = 0;

  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle);
  swift_beginAccess();
  *v6 = 0;
  v6[1] = 0;

  v7 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle);
  swift_beginAccess();
  *v7 = 0;
  v7[1] = 0;

  v8 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading);
  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0;

  v9 = type metadata accessor for DateInterval();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined assign with take of AttributedString?(v3, v0 + v10, &_s10Foundation12DateIntervalVSgMd);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v12 = *(v0 + v11);
  *(v0 + v11) = 0;

  v13 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors;
  swift_beginAccess();
  *(v0 + v13) = 0;

  v14 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors;
  swift_beginAccess();
  *(v0 + v14) = 0;

  return 1;
}

void *MutableStateOfMindViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for StateOfMindView());
  return StateOfMindView.init(viewModel:style:)(v1, &v3);
}

uint64_t MutableStateOfMindViewModel.__ivar_destroyer()
{
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID, &_s10Foundation4UUIDVSgMd);

  return swift_weakDestroy();
}

id MutableStateOfMindViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for StateOfMindViewModel.stateOfMind.getter in conformance MutableStateOfMindViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t protocol witness for StateOfMindViewModel.lightBackgroundColors.getter in conformance MutableStateOfMindViewModel()
{
  return protocol witness for StateOfMindViewModel.lightBackgroundColors.getter in conformance MutableStateOfMindViewModel();
}

{
  swift_beginAccess();
}

id one-time initialization function for healthStore()
{
  result = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  static StateOfMindUtilities.healthStore = result;
  return result;
}

{
  result = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  static WorkoutUtilities.healthStore = result;
  return result;
}

uint64_t static StateOfMindUtilities.localized(strings:separatorComment:formatComment:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v20._object = a3;
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v20._countAndFlagsBits = a2;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v20);

  v15 = [v11 bundleForClass_];
  v21._object = a5;
  v16._object = 0x800000021657B6D0;
  v16._countAndFlagsBits = 0xD000000000000010;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v21._countAndFlagsBits = a4;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v21);

  v18 = specialized static StateOfMindUtilities.formatted(strings:separatorString:formatString:)(a1);

  return v18;
}

void one-time initialization function for shortTimeFormatter()
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
  v6 = MEMORY[0x21CE91FC0](1835874922, 0xE400000000000000);
  [v4 setLocalizedDateFormatFromTemplate_];

  static StateOfMindUtilities.shortTimeFormatter = v4;
}

uint64_t specialized MutableStateOfMindViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v54[3] = a3;
  v54[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v12 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  *&a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind] = 0;
  v13 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v49 = v13;
  v15(&a2[v13], 1, 1, v14);
  v16 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle];
  *v17 = 0;
  v17[1] = 0;
  v18 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle];
  *v18 = 0;
  v18[1] = 0;
  v19 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors;
  *&a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors] = 0;
  v47 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors;
  *&a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors] = 0;
  v48 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_dbStateOfMindModel;
  swift_weakInit();
  outlined init with copy of DBObject(v54, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBStateOfMindModel();
  if (swift_dynamicCast())
  {
    v21 = v52;
    outlined init with copy of DateInterval?(v52 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, v10, &_s9MomentsUI11StateOfMindVSgMd);
    v22 = type metadata accessor for StateOfMind();
    if ((*(*(v22 - 8) + 48))(v10, 1, v22) == 1)
    {
      outlined destroy of UTType?(v10, &_s9MomentsUI11StateOfMindVSgMd);
      v23 = 0;
    }

    else
    {
      v23 = StateOfMind.hkStateOfMind.getter();
      outlined destroy of StateOfMind(v10);
    }

    swift_beginAccess();
    v24 = *&a2[v12];
    *&a2[v12] = v23;

    v26 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle);
    v25 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle + 8);
    swift_beginAccess();
    *v16 = v26;
    v16[1] = v25;

    v28 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle);
    v27 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle + 8);
    swift_beginAccess();
    *v17 = v28;
    v17[1] = v27;

    v30 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle);
    v29 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle + 8);
    swift_beginAccess();
    *v18 = v30;
    v18[1] = v29;

    v32 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading);
    v31 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading + 8);
    swift_beginAccess();
    *v19 = v32;
    v19[1] = v31;

    v33 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_lightBackgroundColors);
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v51 = MEMORY[0x277D84F90];
      v35 = *(v33 + 16);
      if (v35)
      {
        v36 = (v33 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v36 - 3) green:*(v36 - 2) blue:*(v36 - 1) alpha:*v36];
          MEMORY[0x21CE92260]();
          if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v46 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v36 += 4;
          --v35;
        }

        while (v35);
        v37 = v51;
      }

      else
      {
        v37 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v37 = 0;
    }

    swift_beginAccess();
    *&a2[v20] = v37;

    v38 = *(v21 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_darkBackgroundColors);
    if (v38)
    {
      v50 = v34;
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = (v38 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v40 - 3) green:*(v40 - 2) blue:*(v40 - 1) alpha:*v40];
          MEMORY[0x21CE92260]();
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 += 4;
          --v39;
        }

        while (v39);
        v34 = v50;
      }
    }

    else
    {
      v34 = 0;
    }

    v41 = v47;
    swift_beginAccess();
    *&a2[v41] = v34;

    v42 = OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID;
    v43 = v49;
    swift_beginAccess();
    outlined assign with copy of DateInterval?(v21 + v42, &a2[v43], &_s10Foundation4UUIDVSgMd);
    swift_endAccess();
    swift_weakAssign();
    v44 = specialized AssetViewModel.init(dbObject:)(v21, a2);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return v44;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableStateOfMindViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableStateOfMindViewModel.init(dbObject:)(v9, v11, a3, a4);
}

id specialized MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMind:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  *&v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind] = 0;
  v11 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors] = 0;
  swift_weakInit();
  swift_beginAccess();
  v17 = *&v4[v10];
  *&v4[v10] = a3;
  v18 = a3;

  swift_weakAssign();
  v19 = type metadata accessor for DateInterval();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(ObjectType, &v38);
  LOBYTE(v10) = v38;
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v22 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v20(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v19);
  UUID.init()();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v25 = v34;
  v24 = v35;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v34;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v24;
  swift_beginAccess();
  v26 = *&v4[v21];
  *&v4[v21] = 0;
  v27 = v25;

  swift_beginAccess();
  *v22 = 0;
  v22[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v9, &v4[v23], &_s10Foundation12DateIntervalVSgMd);
  v28 = swift_endAccess();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v10;
  (*(ObjectType + 328))(v37, v28);
  LOBYTE(v10) = v37[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v29 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 112) = v10;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v29;
  v30 = type metadata accessor for AssetViewModel();
  v36.receiver = v4;
  v36.super_class = v30;
  v31 = objc_msgSendSuper2(&v36, sel_init);
  outlined destroy of UTType?(v9, &_s10Foundation12DateIntervalVSgMd);
  return v31;
}

id specialized MutableStateOfMindViewModel.init(intendedViewport:supportedStyles:stateOfMindUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a3;
  v39 = a1;
  v40 = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36[-v10];
  *&v3[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind] = 0;
  v12 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(&v4[v12], 1, 1, v13);
  v16 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading];
  *v19 = 0;
  v19[1] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors] = 0;
  swift_weakInit();
  v20 = *(v14 + 16);
  v41 = v13;
  v20(v11, a3, v13);
  v15(v11, 0, 1, v13);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v11, &v4[v12], &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  swift_weakAssign();
  v21 = type metadata accessor for DateInterval();
  v22 = *(*(v21 - 8) + 56);
  v22(v8, 1, 1, v21);
  type metadata accessor for DBAssetModel();
  v23 = ObjectType;
  static DBAssetModel.subscript.getter(ObjectType, &v45);
  v37 = v45;
  v24 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v25 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v22(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v21);
  UUID.init()();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v28 = v39;
  v27 = v40;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v39;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v27;
  swift_beginAccess();
  v29 = *&v4[v24];
  *&v4[v24] = 0;
  v30 = v28;

  swift_beginAccess();
  *v25 = 0;
  v25[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v8, &v4[v26], &_s10Foundation12DateIntervalVSgMd);
  v31 = swift_endAccess();
  v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v37;
  (*(v23 + 328))(v44, v31);
  LOBYTE(v26) = v44[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v32 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 112) = v26;
  *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v32;
  v33 = type metadata accessor for AssetViewModel();
  v43.receiver = v4;
  v43.super_class = v33;
  v34 = objc_msgSendSuper2(&v43, sel_init);
  (*(v14 + 8))(v42, v41);
  outlined destroy of UTType?(v8, &_s10Foundation12DateIntervalVSgMd);
  return v34;
}

void specialized MutableStateOfMindViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind) = 0;
  v1 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for MutableStateOfMindViewModel()
{
  result = type metadata singleton initialization cache for MutableStateOfMindViewModel;
  if (!type metadata singleton initialization cache for MutableStateOfMindViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MutableStateOfMindViewModel()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t specialized static StateOfMindUtilities.formatted(strings:separatorString:formatString:)(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  if (v1 == 1)
  {
    v3 = a1[4];
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v3 = BidirectionalCollection<>.joined(separator:)();
    if (v1 >= 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_21658CA60;
      v5 = MEMORY[0x277D837D0];
      *(v4 + 56) = MEMORY[0x277D837D0];
      v6 = lazy protocol witness table accessor for type String and conformance String();
      v7 = a1[5];
      *(v4 + 32) = a1[4];
      *(v4 + 40) = v7;
      *(v4 + 96) = v5;
      *(v4 + 104) = v6;
      v8 = a1[6];
      v9 = a1[7];
      *(v4 + 64) = v6;
      *(v4 + 72) = v8;
      *(v4 + 80) = v9;

      static String.localizedStringWithFormat(_:_:)();
    }
  }

  return v3;
}

uint64_t outlined assign with copy of DateInterval?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of StateOfMind(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Interstitial.Presenter.tintColor.getter()
{
  v1 = *(v0 + 8);
  v2 = objc_opt_self();
  v3 = &selRef_systemIndigoColor;
  if (v1)
  {
    v3 = &selRef_systemBlueColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t Interstitial.Presenter.addButtonTitle.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    type metadata accessor for InterstitialContentView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = objc_opt_self();

    v5 = [v4 bundleForClass_];
    v16._object = 0x800000021657B740;
    v6._countAndFlagsBits = 0xE2206F7420646441;
    v6._object = 0xAF9D80E240259C80;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD000000000000011;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21658CA50;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v2;
    *(v8 + 40) = v1;
    v9 = static String.localizedStringWithFormat(_:_:)();

    return v9;
  }

  else
  {
    type metadata accessor for InterstitialContentView();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v17._object = 0x800000021657B760;
    v13._countAndFlagsBits = 0x45206F7420646441;
    v13._object = 0xEC0000007972746ELL;
    v17._countAndFlagsBits = 0xD00000000000003BLL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v17)._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

uint64_t Interstitial.Presenter.description.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x6C616E72756F4ALL;
  }

  return v1;
}

uint64_t Interstitial.Presenter.init(client:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Client();
  v5 = (a1 + *(v4 + 32));
  v6 = v5[1];
  if (v6 && (*v5 == 0xD000000000000011 ? (v7 = v6 == 0x8000000216578900) : (v7 = 0), v7 || (v8 = v4, v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 = v8, (v9 & 1) != 0)))
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = (a1 + *(v4 + 28));
    v10 = *v12;
    v11 = v12[1];
  }

  result = outlined destroy of Client(a1);
  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Interstitial.Presenter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x6C616E72756F4ALL;
  }

  return v1;
}

id Interstitial.ViewMode.image.getter(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x6C75622E7473696CLL;
  }

  else
  {
    v2 = 0x732E657261757173;
  }

  if (v1)
  {
    v3 = 0xEC0000006B636174;
  }

  else
  {
    v3 = 0xEB0000000074656CLL;
  }

  v4 = MEMORY[0x21CE91FC0](v2, v3);

  v5 = [objc_opt_self() systemImageNamed_];

  return v5;
}

MomentsUI::Interstitial::ViewMode_optional __swiftcall Interstitial.ViewMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Interstitial.ViewMode.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_Interstitial_ViewMode_list;
  }

  else
  {
    v4.value = MomentsUI_Interstitial_ViewMode_unknownDefault;
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

uint64_t Interstitial.ViewMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1953720684;
  }

  else
  {
    return 0x6C6573756F726163;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Interstitial.ViewMode(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953720684;
  }

  else
  {
    v3 = 0x6C6573756F726163;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953720684;
  }

  else
  {
    v5 = 0x6C6573756F726163;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Interstitial.ViewMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Interstitial.ViewMode()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Interstitial.ViewMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Interstitial.ViewMode@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Interstitial.ViewMode.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Interstitial.ViewMode(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (!*v1)
  {
    v2 = 0x6C6573756F726163;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int Interstitial.SelectionBehavior.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t specialized static Interstitial.Presenter.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t lazy protocol witness table accessor for type Interstitial.ViewMode and conformance Interstitial.ViewMode()
{
  result = lazy protocol witness table cache variable for type Interstitial.ViewMode and conformance Interstitial.ViewMode;
  if (!lazy protocol witness table cache variable for type Interstitial.ViewMode and conformance Interstitial.ViewMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interstitial.ViewMode and conformance Interstitial.ViewMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interstitial.SelectionBehavior and conformance Interstitial.SelectionBehavior()
{
  result = lazy protocol witness table cache variable for type Interstitial.SelectionBehavior and conformance Interstitial.SelectionBehavior;
  if (!lazy protocol witness table cache variable for type Interstitial.SelectionBehavior and conformance Interstitial.SelectionBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interstitial.SelectionBehavior and conformance Interstitial.SelectionBehavior);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interstitial.Presenter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Interstitial.Presenter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Interstitial.Presenter(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for Interstitial.Presenter(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void AssetViewModel.baseImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AssetViewModel.baseTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AssetViewModel.baseTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AssetViewModel.baseDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s10Foundation12DateIntervalVSgMd);
}

uint64_t AssetViewModel.baseDateInterval.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined assign with take of DateInterval?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AssetViewModel.currentStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AssetViewModel.currentStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t AssetViewModel.currentState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AssetViewModel.currentState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t AssetViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AssetViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

uint64_t AssetViewModel.availableForSelection.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AssetViewModel.availableForSelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AssetViewModel.dbAssetModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t AssetViewModel.prepareForRenderIfNecessary()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](AssetViewModel.prepareForRenderIfNecessary(), 0, 0);
}

{
  v1 = v0[8];
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor);
  v0[9] = v2;
  v0[10] = (*((*MEMORY[0x277D85000] & *v1) + 0x130))();
  v0[11] = v3;

  return MEMORY[0x2822009F8](AssetViewModel.prepareForRenderIfNecessary(), v2, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  swift_beginAccess();
  *(v2 + 144) = v1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](AssetViewModel.prepareForRenderIfNecessary(), v2, 0);
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = AssetViewModel.prepareForRenderIfNecessary();

  return AssetViewModelRenderingActor.prepareForRenderIfNecessary()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AssetViewModel.cancelRendering()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](AssetViewModel.cancelRendering(), 0, 0);
}

{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](AssetViewModel.cancelRendering(), v1, 0);
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }

  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](AssetViewModel.cancelRendering(), v2, 0);
}

{
  v1 = *(v0 + 72);
  AssetViewModelRenderingActor.cancelOngoingTask()();

  return MEMORY[0x2822009F8](AssetViewModel.cancelRendering(), v1, 0);
}

{
  v1 = *(v0 + 72);
  swift_beginAccess();
  if (*(v1 + 112) == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v3 = Strong, v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1C8))(), v3, (v4 & 1) != 0))
    {
      *(v1 + 112) = 0;
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t AssetViewModel.clearRenderingCache()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](AssetViewModel.clearRenderingCache(), 0, 0);
}

{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](AssetViewModel.clearRenderingCache(), v1, 0);
}

{
  v1 = *(v0 + 72);
  swift_beginAccess();
  if (*(v1 + 112) == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v3 = Strong, v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1C8))(), v3, (v4 & 1) != 0))
    {
      *(v1 + 112) = 0;
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t AssetViewModel.isReadyForDisplay()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](AssetViewModel.isReadyForDisplay(), 0, 0);
}

{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](AssetViewModel.isReadyForDisplay(), v1, 0);
}

{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 112) == 2;
  v3 = *(v0 + 8);

  return v3(v2);
}

Swift::Void __swiftcall AssetViewModel.encode(with:)(NSCoder with)
{
  v2 = v1;
  v48 = type metadata accessor for Date();
  v4 = *(v48 - 8);
  v5 = MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DateInterval();
  v50 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))(v12);
  v17 = MEMORY[0x21CE91FC0](0x67616D4965736162, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  v18 = (*((*v15 & *v2) + 0xD0))();
  if (v19)
  {
    v20 = MEMORY[0x21CE91FC0](v18);
  }

  else
  {
    v20 = 0;
  }

  v21 = MEMORY[0x21CE91FC0](0x6C74695465736162, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  v22 = *(v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v23 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216575620);
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

  v24 = *(v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (v24)
  {
    isa = v4;
    v25 = MEMORY[0x277D84F90];
    v52 = MEMORY[0x277D84F90];
    v26 = *(v24 + 16);
    if (v26)
    {
      v49 = v11;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
      v27 = (v24 + 32);
      do
      {
        v28 = *v27++;
        NSNumber.init(integerLiteral:)(v28);
        MEMORY[0x21CE92260]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        --v26;
      }

      while (v26);
      v25 = v52;
      v11 = v49;
    }

    v52 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    outlined destroy of UTType?(&v52, &_sSaySo8NSNumberCGMd);
    v4 = isa;
  }

  v29 = MEMORY[0x21CE91FC0](0x6574726F70707573, 0xEF73656C79745364);
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v29];
  swift_unknownObjectRelease();

  (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();
  v30 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of UTType?(v10, &_s10Foundation12DateIntervalVSgMd);
  }

  else
  {
    (*(v30 + 32))(v14, v10, v11);
    v31 = v46;
    isa = with.super.isa;
    DateInterval.start.getter();
    v32 = v47;
    DateInterval.end.getter();
    v33 = type metadata accessor for DateRange();
    v34 = objc_allocWithZone(v33);
    v49 = v11;
    v35 = *(v4 + 2);
    v36 = v4;
    v37 = v48;
    v35(&v34[OBJC_IVAR____TtC9MomentsUI9DateRange_startDate], v31, v48);
    v35(&v34[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v32, v37);
    v51.receiver = v34;
    v51.super_class = v33;
    v38 = objc_msgSendSuper2(&v51, sel_init);
    v39 = *(v36 + 1);
    v39(v32, v37);
    v39(v31, v37);
    v40 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216575640);
    [(objc_class *)isa encodeObject:v38 forKey:v40];

    (*(v50 + 8))(v14, v49);
    with.super.isa = isa;
  }

  if (*(v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass))
  {
    v41 = 99;
  }

  else
  {
    v41 = 98;
  }

  v42 = MEMORY[0x21CE91FC0](v41, 0xE100000000000000);

  v43 = MEMORY[0x21CE91FC0](0x616C437465737361, 0xEA00000000007373);
  [(objc_class *)with.super.isa encodeObject:v42 forKey:v43];
}

uint64_t AssetViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI14AssetViewModelC10CodingKeysOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v18 = 0;
  type metadata accessor for ScreenSize();
  lazy protocol witness table accessor for type ScreenSize and conformance ScreenSize(&lazy protocol witness table cache variable for type ScreenSize and conformance ScreenSize, type metadata accessor for ScreenSize);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v19 = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI14AssetViewModelC5StyleOGMd);
    lazy protocol witness table accessor for type [AssetViewModel.Style] and conformance <A> [A](&lazy protocol witness table cache variable for type [AssetViewModel.Style] and conformance <A> [A], lazy protocol witness table accessor for type AssetViewModel.Style and conformance AssetViewModel.Style);
    v12 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = MEMORY[0x277D85000];
    v14 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))(v12);
    v19 = v14;
    v18 = 2;
    type metadata accessor for Image();
    lazy protocol witness table accessor for type ScreenSize and conformance ScreenSize(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    (*((*v13 & *v3) + 0xD0))();
    LOBYTE(v19) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*((*v13 & *v3) + 0xE8))(v16);
    LOBYTE(v19) = 4;
    type metadata accessor for DateInterval();
    lazy protocol witness table accessor for type ScreenSize and conformance ScreenSize(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined destroy of UTType?(v7, &_s10Foundation12DateIntervalVSgMd);
    LOBYTE(v19) = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    v18 = 5;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

id AssetViewModel.init(coder:)(void *a1)
{
  v2 = specialized AssetViewModel.init(coder:)(a1);

  return v2;
}

id AssetViewModel.init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v9 = specialized AssetViewModel.init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(a1, a2, a3, a4, a5, a6, a7);

  return v9;
}

uint64_t AssetViewModel.render()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AssetViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(38);

  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x21CE92100](v3, v5);

  MEMORY[0x21CE92100](0xD000000000000023, 0x800000021657B7C0);
  return _assertionFailure(_:_:file:line:flags:)();
}

Swift::Bool __swiftcall AssetViewModel.clearCache()()
{
  _StringGuts.grow(_:)(42);

  v1 = [v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x21CE92100](v2, v4);

  MEMORY[0x21CE92100](0xD000000000000027, 0x800000021657B7F0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in withTimeout<A>(seconds:operation:), 0, 0);
}

uint64_t specialized closure #1 in withTimeout<A>(seconds:operation:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFytSg_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:), v7);
  outlined destroy of UTType?(v1, &_sScPSgMd);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFytSg_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:), v8);
  outlined destroy of UTType?(v1, &_sScPSgMd);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyytSgs5Error_pGMd);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(seconds:operation:);

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v10);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(seconds:operation:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(seconds:operation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[6];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:), v7);
  outlined destroy of UTType?(v1, &_sScPSgMd);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:), v8);
  outlined destroy of UTType?(v1, &_sScPSgMd);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(seconds:operation:);

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v10);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(seconds:operation:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(seconds:operation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void specialized closure #1 in withTimeout<A>(seconds:operation:)()
{
  if (*(v0 + 73))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);
    v2 = **(v0 + 16);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x21CE924D0](v2, v3, v4, MEMORY[0x277D84950]);

    v5 = *(v0 + 8);

    v5(v1 & 1);
  }
}

{
  if (*(v0 + 72))
  {
    __break(1u);
  }

  else
  {
    v1 = **(v0 + 16);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x21CE924D0](v1, MEMORY[0x277D84F78] + 8, v2, MEMORY[0x277D84950]);

    v3 = *(v0 + 8);

    v3();
  }
}

uint64_t specialized closure #1 in withTimeout<A>(seconds:operation:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in withTimeout<A>(seconds:operation:), 0, 0);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFytSg_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  outlined init with copy of DateInterval?(a1, v18 - v8, &_sScPSgMd);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of UTType?(v9, &_sScPSgMd);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  outlined init with copy of DateInterval?(a1, v18 - v8, &_sScPSgMd);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of UTType?(v9, &_sScPSgMd);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(double a1)
{
  *(v1 + 16) = a1;
  v2 = type metadata accessor for ContinuousClock();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:), 0, 0);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #2 in closure #1 in withTimeout<A>(seconds:operation:);
  }

  else
  {
    v5 = specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  lazy protocol witness table accessor for type TimeoutError and conformance TimeoutError();
  swift_allocError();
  *v1 = 0xD000000000000013;
  v1[1] = 0x8000000216578C70;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AssetViewModel.init(clientDBObject:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t BaseAssetViewModel.dateInterval.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of DateInterval?(a1, &v7 - v4, &_s10Foundation12DateIntervalVSgMd);
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v5);
  return outlined destroy of UTType?(a1, &_s10Foundation12DateIntervalVSgMd);
}

id AssetViewModel.__allocating_init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = specialized AssetViewModel.init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

uint64_t (*BaseAssetViewModel.title.modify(void *a1))(void *a1, char a2)
{
  a1[2] = v1;
  *a1 = (*((*MEMORY[0x277D85000] & *v1) + 0xD0))();
  a1[1] = v3;
  return BaseAssetViewModel.title.modify;
}

uint64_t BaseAssetViewModel.title.modify(void *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *v4) + 0xD8))(*a1, v2);
  }

  v5 = *((*MEMORY[0x277D85000] & *v4) + 0xD8);

  v5(v3, v2);
}

void (*BaseAssetViewModel.image.modify(void *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  return BaseAssetViewModel.image.modify;
}

void BaseAssetViewModel.image.modify(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0xC0);
    v5 = v2;
    v4(v2);
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v3) + 0xC0))(*a1);
  }
}

uint64_t key path setter for BaseAssetViewModel.dateInterval : <A>A(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of DateInterval?(a1, &v6 - v3, &_s10Foundation12DateIntervalVSgMd);
  return BaseAssetViewModel.dateInterval.setter(v4);
}

void (*BaseAssetViewModel.dateInterval.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[4] = v11;
  (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();
  return BaseAssetViewModel.dateInterval.modify;
}

void BaseAssetViewModel.dateInterval.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    outlined init with copy of DateInterval?(*(*a1 + 32), v3, &_s10Foundation12DateIntervalVSgMd);
    BaseAssetViewModel.dateInterval.setter(v3);
    outlined destroy of UTType?(v4, &_s10Foundation12DateIntervalVSgMd);
  }

  else
  {
    BaseAssetViewModel.dateInterval.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void *AssetViewModel.maximumSupportedViewport.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v2 = v1;
  return v1;
}

uint64_t key path setter for AssetViewModel.baseDateInterval : AssetViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation12DateIntervalVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xF0))(v6);
}

MomentsUI::AssetViewModel::Style_optional __swiftcall AssetViewModel.Style.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::AssetViewModel::CodingKeys_optional __swiftcall AssetViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AssetViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t AssetViewModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6574726F70707573;
  v2 = 0x6C74695465736162;
  v3 = 0x616C437465737361;
  if (a1 == 4)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0x67616D4965736162;
  }

  if (!a1)
  {
    v1 = 0xD000000000000018;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AssetViewModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AssetViewModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == AssetViewModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AssetViewModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AssetViewModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AssetViewModel.CodingKeys()
{
  AssetViewModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AssetViewModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AssetViewModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AssetViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AssetViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AssetViewModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AssetViewModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AssetViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AssetViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AssetViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AssetViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetViewModel.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int AssetViewModel.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t AssetViewModelRenderingActor.__allocating_init(state:)(_BYTE *a1)
{
  v2 = swift_allocObject();
  LOBYTE(a1) = *a1;
  swift_defaultActor_initialize();
  *(v2 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t AssetViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t (*a2)(char *, id, uint64_t, uint64_t))
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

_BYTE *AssetViewModel.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI14AssetViewModelC10CodingKeysOGMd);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v40 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v10 = &v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v10 = 0;
  v10[1] = 0;
  v39 = v10;
  v11 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v12 = type metadata accessor for DateInterval();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v37 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
  UUID.init()();
  v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  v13 = &v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate];
  *(v13 + 8) = 0;
  v36 = v13;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  v35 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel;
  *&v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v14 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys();
  v34 = v9;
  v15 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);

    outlined destroy of UTType?(&v1[v11], &_s10Foundation12DateIntervalVSgMd);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(&v1[v37], v17);
    outlined destroy of weak SuggestionsOnboardingViewControllerDelegate?(v36);

    type metadata accessor for AssetViewModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v12;
    v16 = v32;
    type metadata accessor for ScreenSize();
    LOBYTE(v44) = 0;
    lazy protocol witness table accessor for type ScreenSize and conformance ScreenSize(&lazy protocol witness table cache variable for type ScreenSize and conformance ScreenSize, type metadata accessor for ScreenSize);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30[2] = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport;
    *&v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI14AssetViewModelC5StyleOGMd);
    LOBYTE(v44) = 1;
    lazy protocol witness table accessor for type [AssetViewModel.Style] and conformance <A> [A](&lazy protocol witness table cache variable for type [AssetViewModel.Style] and conformance <A> [A], lazy protocol witness table accessor for type AssetViewModel.Style and conformance AssetViewModel.Style);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v39;
    v20 = v16;
    *&v1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v45;
    type metadata accessor for Image();
    LOBYTE(v45) = 2;
    lazy protocol witness table accessor for type ScreenSize and conformance ScreenSize(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v40;
    v22 = v44;
    swift_beginAccess();
    v23 = *&v2[v21];
    *&v2[v21] = v22;

    LOBYTE(v44) = 3;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30[1] = 0;
    v26 = v25;
    swift_beginAccess();
    *v19 = v24;
    v19[1] = v26;

    LOBYTE(v43[0]) = 4;
    lazy protocol witness table accessor for type ScreenSize and conformance ScreenSize(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    swift_beginAccess();
    outlined assign with take of DateInterval?(v6, &v2[v11]);
    swift_endAccess();
    v46 = 5;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    v27 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v43[0];
    (*(ObjectType + 328))(v43, v27);
    LOBYTE(v21) = v43[0];
    type metadata accessor for AssetViewModelRenderingActor();
    v28 = swift_allocObject();
    swift_defaultActor_initialize();
    (*(v20 + 8))(v34, v33);
    *(v28 + 120) = 0;
    swift_unknownObjectWeakInit();
    *(v28 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v28 + 112) = v21;
    *&v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v28;
    v29 = type metadata accessor for AssetViewModel();
    v42.receiver = v2;
    v42.super_class = v29;
    v2 = objc_msgSendSuper2(&v42, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  return v2;
}

id AssetViewModel.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized AssetViewModel.init(coder:)(a1);

  return v4;
}

id AssetViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Identifiable.id.getter in conformance AssetViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AssetViewModel();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AssetViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 408))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *protocol witness for AssetViewModelEvergreen.maximumSupportedViewport.getter in conformance AssetViewModel()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v2 = v1;
  return v1;
}

void (*protocol witness for AssetViewModelRenderable.currentStyle.modify in conformance AssetViewModel(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & **v1) + 0x110))();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

uint64_t protocol witness for AssetViewModelRenderable.prepareForRenderIfNecessary() in conformance AssetViewModel()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x1A0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

uint64_t protocol witness for AssetViewModelRenderable.cancelRendering() in conformance AssetViewModel()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x1A8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterImage(imageSource:outputURL:);

  return v5();
}

uint64_t protocol witness for AssetViewModelRenderable.clearRenderingCache() in conformance AssetViewModel()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x1B0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

uint64_t protocol witness for AssetViewModelRenderable.isReadyForDisplay() in conformance AssetViewModel()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x1B8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v5();
}

uint64_t protocol witness for AssetViewModelRenderable.render() in conformance AssetViewModel()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x1C0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

uint64_t protocol witness for DBObjectWrapper.init(dbObject:) in conformance AssetViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  *a1 = result;
  return result;
}

uint64_t AssetViewModelRenderingActor.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 112);
  return result;
}

uint64_t AssetViewModelRenderingActor.state.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 112) = v2;
  return result;
}

uint64_t key path setter for AssetViewModelRenderingActor.renderTask : AssetViewModelRenderingActor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
}

uint64_t AssetViewModelRenderingActor.renderTask.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

void AssetViewModelRenderingActor.viewModel.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*AssetViewModelRenderingActor.viewModel.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AssetViewModelRenderingActor.viewModel.modify;
}

void AssetViewModelRenderingActor.viewModel.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t AssetViewModelRenderingActor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AssetViewModelRenderingActor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 144);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return AssetViewModelRenderingActor.delegate.modify;
}

void AssetViewModelRenderingActor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 144) = *(*a1 + 32);
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

uint64_t AssetViewModelRenderingActor.init(state:)(char *a1)
{
  v2 = *a1;
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 112) = v2;
  return v1;
}

void AssetViewModelRenderingActor.setViewModelReferenceIfNeeded(viewModel:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

uint64_t AssetViewModelRenderingActor.setDelegateIfNeeded(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a2;
  return swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall AssetViewModelRenderingActor.setState(state:)(MomentsUI::AssetViewModel::State state)
{
  v2 = *state;
  if (v2 != 2 || (swift_beginAccess(), *(v1 + 112) == 1))
  {
    swift_beginAccess();
    *(v1 + 112) = v2;
  }
}

uint64_t AssetViewModelRenderingActor.prepareForRenderIfNecessary()()
{
  *(v1 + 88) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](AssetViewModelRenderingActor.prepareForRenderIfNecessary(), v0, 0);
}

{
  v1 = v0[11];
  swift_beginAccess();
  if (*(v1 + 112))
  {
    if (*(v1 + 112) != 1)
    {
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static CommonLogger.viewModel);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_22;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "rendering is complete";
      goto LABEL_21;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static CommonLogger.viewModel);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21607C000, v3, v4, "rendering in progress", v5, 2u);
      MEMORY[0x21CE94770](v5, -1, -1);
    }
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    *(v1 + 112) = 1;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    v11 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), v10);
    outlined destroy of UTType?(v6, &_sScPSgMd);
    swift_beginAccess();
    *(v7 + 120) = v11;
  }

  v12 = v0[11];
  swift_beginAccess();
  v13 = *(v12 + 120);
  v0[13] = v13;
  if (v13)
  {

    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = AssetViewModelRenderingActor.prepareForRenderIfNecessary();
    v15 = MEMORY[0x277D84A98];
    v16 = MEMORY[0x277D84AC0];
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 15, v13, v17, v15, v16);
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static CommonLogger.viewModel);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "misconfigured task";
LABEL_21:
    _os_log_impl(&dword_21607C000, v19, v20, v22, v21, 2u);
    MEMORY[0x21CE94770](v21, -1, -1);
  }

LABEL_22:

  v24 = v0[1];

  return v24();
}

{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](AssetViewModelRenderingActor.prepareForRenderIfNecessary(), v1, 0);
}

{
  if (*(v0 + 120))
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.viewModel);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[Task Management] failed";
      v6 = v3;
      v7 = v2;
      v8 = v4;
      v9 = 2;
LABEL_10:
      _os_log_impl(&dword_21607C000, v7, v6, v5, v8, v9);
      MEMORY[0x21CE94770](v4, -1, -1);

      goto LABEL_13;
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.viewModel);

    v2 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v11))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = swift_task_isCancelled() & 1;

      v5 = "[Task Management] succeeded, cancelled=%{BOOL}d";
      v6 = v11;
      v7 = v2;
      v8 = v4;
      v9 = 8;
      goto LABEL_10;
    }
  }

LABEL_13:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = type metadata accessor for UUID();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

uint64_t closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()()
{
  v1 = v0[26];
  v2 = specialized static DefaultsManager.Processing.assetRenderSingleTimeout.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *(v3 + 2) = &async function pointer to partial apply for closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary();
  *(v3 + 3) = v1;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary();

  return MEMORY[0x282200740](v0 + 41);
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary();
  }

  else
  {

    v2 = closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary();
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  v0[35] = v4;
  if (v4)
  {
    v2 = v4;
    v3 = closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary();
    goto LABEL_5;
  }

  v5 = v0[1];

  return v5();
}

{

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.viewModel);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21607C000, v4, v5, "Rendering task timed out or failed: %@", v7, 0xCu);
    outlined destroy of UTType?(v8, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 320) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), Strong, 0);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = *(v0 + 272);
  swift_beginAccess();
  if (*(v1 + 112) == 1)
  {
    *(v1 + 112) = 2;
  }

  return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 280) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

{
  swift_beginAccess();
  *(v0 + 288) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

{
  v1 = v0[36];
  if (v1)
  {
    v2 = v0[29];
    v3 = v0[30];
    v4 = v0[27];
    v5 = v0[28];
    (*(v5 + 16))(v2, v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v4);

    (*(v5 + 32))(v3, v2, v4);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[37] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), Strong, 0);
    }

    (*(v0[28] + 8))(v0[30], v0[27]);
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[37];
  swift_beginAccess();
  v0[38] = swift_unknownObjectWeakLoadStrong();
  v0[39] = *(v1 + 144);

  return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

{
  if (v0[38])
  {
    v1 = v0[39];
    v2 = v0[30];
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  (*(v0[28] + 8))(v0[30], v0[27]);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 320);
  swift_beginAccess();
  *(v1 + 112) = 0;

  return MEMORY[0x2822009F8](closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

uint64_t closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  swift_beginAccess();
  *(v0 + 88) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1C0);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary();

    return v6();
  }

  else
  {
    **(v0 + 64) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary(), 0, 0);
}

{
  **(v0 + 64) = 0;
  return (*(v0 + 8))();
}

Swift::Void __swiftcall AssetViewModelRenderingActor.cancelOngoingTask()()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  if (v1 && (swift_beginAccess(), *(v0 + 112) == 1))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *((*MEMORY[0x277D85000] & *Strong) + 0x1D0);
      v4 = Strong;

      v3(v5);
    }

    else
    {
    }

    MEMORY[0x21CE92450](v1, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

    *(v0 + 112) = 0;
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.viewModel);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v7, v8, "no task to cancel", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }
  }
}

Swift::Void __swiftcall AssetViewModelRenderingActor.clearRenderingCache()()
{
  swift_beginAccess();
  if (*(v0 + 112) == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v2 = Strong, v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1C8))(), v2, (v3 & 1) != 0))
    {
      *(v0 + 112) = 0;
    }
  }
}

unint64_t lazy protocol witness table accessor for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.CodingKeys and conformance AssetViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetViewModel.Style and conformance AssetViewModel.Style()
{
  result = lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style;
  if (!lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style;
  if (!lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style;
  if (!lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style;
  if (!lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.Style and conformance AssetViewModel.Style);
  }

  return result;
}

uint64_t AssetViewModelRenderingActor.deinit()
{

  MEMORY[0x21CE948B0](v0 + 128);
  outlined destroy of weak SuggestionsOnboardingViewControllerDelegate?(v0 + 136);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetViewModelRenderingActor.__deallocating_deinit()
{

  MEMORY[0x21CE948B0](v0 + 128);
  outlined destroy of weak SuggestionsOnboardingViewControllerDelegate?(v0 + 136);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t specialized AssetViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v34 - v9;
  v44[3] = a3;
  v44[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v11 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v35 = v13;
  v34 = v16;
  v16(&a2[v13], 1, 1, v14);
  UUID.init()();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v36 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState;
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  v38 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  outlined init with copy of DBObject(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBAssetModel();
  if (swift_dynamicCast())
  {
    v17 = v42;
    v18 = *(v42 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport);
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v18;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = (*(*v17 + 224))(v18);
    v19 = (*(*v17 + 336))();
    swift_beginAccess();
    v20 = *&a2[v11];
    *&a2[v11] = v19;

    v22 = *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
    v21 = *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8);
    swift_beginAccess();
    *v12 = v22;
    v12[1] = v21;

    v23 = v37;
    (*(v15 + 16))(v37, v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v14);
    v34(v23, 0, 1, v14);
    v24 = v35;
    swift_beginAccess();
    outlined assign with take of DateInterval?(v23, &a2[v24]);
    v25 = swift_endAccess();
    a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = *(v17 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    (*(*v17 + 200))(v41, v25);
    if (LOBYTE(v41[0]))
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    v27 = v36;
    v28 = swift_beginAccess();
    a2[v27] = v26;
    (*(ObjectType + 328))(v41, v28);
    LOBYTE(v27) = v41[0];
    type metadata accessor for AssetViewModelRenderingActor();
    v29 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v29 + 120) = 0;
    swift_unknownObjectWeakInit();
    *(v29 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v29 + 112) = v27;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v29;
    v30 = v38;
    swift_beginAccess();
    *&a2[v30] = v17;

    v31 = type metadata accessor for AssetViewModel();
    v40.receiver = a2;
    v40.super_class = v31;
    v32 = objc_msgSendSuper2(&v40, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v32;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized AssetViewModel.init(clientDBObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v27 - v9;
  v34[3] = a3;
  v34[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  v27 = *(v14 + 56);
  v28 = v12;
  v27(&a2[v12], 1, 1, v13);
  UUID.init()();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  v15 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  outlined init with copy of DBObject(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBAssetModel();
  if (swift_dynamicCast())
  {
    v16 = v32[0];
    v17 = *(v32[0] + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport);
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v17;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = (*(*v16 + 224))(v17);
    v19 = *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
    v18 = *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8);
    swift_beginAccess();
    *v11 = v19;
    v11[1] = v18;

    v20 = v29;
    (*(v14 + 16))(v29, v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v13);
    v27(v20, 0, 1, v13);
    v21 = v28;
    swift_beginAccess();
    outlined assign with take of DateInterval?(v20, &a2[v21]);
    v22 = swift_endAccess();
    a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    (*(ObjectType + 328))(v32, v22);
    LOBYTE(v21) = v32[0];
    type metadata accessor for AssetViewModelRenderingActor();
    v23 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v23 + 120) = 0;
    swift_unknownObjectWeakInit();
    *(v23 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v23 + 112) = v21;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v23;
    swift_beginAccess();
    *&a2[v15] = v16;

    v24 = type metadata accessor for AssetViewModel();
    v31.receiver = a2;
    v31.super_class = v24;
    v25 = objc_msgSendSuper2(&v31, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return v25;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in withTimeout<A>(seconds:operation:);

  return specialized closure #1 in withTimeout<A>(seconds:operation:)(a2, a3, a4, a5);
}

uint64_t specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:);

  return v7(v4 + 40);
}

uint64_t specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:)()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  **(v0 + 16) = *(v0 + 40);
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:);

  return specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(a2);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

id specialized AssetViewModel.init(coder:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v14 = &v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v62 = v16;
  v63 = v15;
  v60 = v17 + 56;
  v61 = v18;
  (v18)(&v2[v15], 1, 1);
  UUID.init()();
  v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  type metadata accessor for Image();
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v20 = *&v2[v13];
  *&v2[v13] = v19;

  v59 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  v21 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v21)
  {
    v67 = 0;
    v68 = 0;
    v22 = v21;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v23 = v68;
    if (v68)
    {
      v24 = v67;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  swift_beginAccess();
  *v14 = v24;
  v14[1] = v23;

  type metadata accessor for ScreenSize();
  *&v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v25 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (v25)
  {
    v26 = v25;
    v55 = a1;
    v56 = ObjectType;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    v54 = v12;
    v53 = v5;
    v52 = v6;
    if (v25 >> 62)
    {
LABEL_34:
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = 0;
    v64 = MEMORY[0x277D84F90];
    while (v28 != v29)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x21CE93180](v29, v26);
      }

      else
      {
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_33;
        }

        v30 = *(v26 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v33 = [v30 integerValue];

      ++v29;
      if (v33 < 9)
      {
        v34 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        v64 = v34;
        if (v36 >= v35 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v64);
        }

        v37 = v64;
        *(v64 + 2) = v36 + 1;
        v37[v36 + 32] = v33;
        v29 = v32;
      }
    }

    ObjectType = v56;
    v12 = v54;
    v5 = v53;
    v6 = v52;
    v38 = v64;
  }

  else
  {
    v38 = 0;
  }

  *&v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v38;
  type metadata accessor for DateRange();
  v39 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v39)
  {
    v40 = *(v6 + 16);
    v41 = v39;
    v40(v57, v39 + OBJC_IVAR____TtC9MomentsUI9DateRange_startDate, v5);
    v40(v58, &v41[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v5);
    DateInterval.init(start:end:)();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v61(v12, v42, 1, v62);
  v43 = v63;
  swift_beginAccess();
  outlined assign with take of DateInterval?(v12, &v2[v43]);
  swift_endAccess();
  v44 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v44 && (v66._countAndFlagsBits = 0, v66._object = 0, v45 = v44, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v45, v66._object))
  {
    v46 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AssetViewModel.init(coder:), v66);

    v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v46 == 1;
  }

  else
  {
    v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = 0;
  }

  (*(ObjectType + 328))(&v66, v44);
  countAndFlagsBits = v66._countAndFlagsBits;
  type metadata accessor for AssetViewModelRenderingActor();
  v48 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v48 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v48 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v48 + 112) = countAndFlagsBits;
  *&v2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v48;
  v49 = type metadata accessor for AssetViewModel();
  v65.receiver = v2;
  v65.super_class = v49;
  return objc_msgSendSuper2(&v65, sel_init);
}

id specialized AssetViewModel.init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v27 = *a7;
  v15 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v16 = &v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v18 = type metadata accessor for DateInterval();
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  UUID.init()();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = a1;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = a2;
  swift_beginAccess();
  v19 = *&v8[v15];
  *&v8[v15] = a3;
  v20 = a1;
  v21 = a3;

  swift_beginAccess();
  *v16 = a4;
  v16[1] = a5;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(a6, &v8[v17]);
  v22 = swift_endAccess();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v27;
  (*(ObjectType + 328))(v30, v22);
  LOBYTE(v15) = v30[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 112) = v15;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v23;
  v29.receiver = v8;
  v29.super_class = type metadata accessor for AssetViewModel();
  v24 = objc_msgSendSuper2(&v29, sel_init);
  outlined destroy of UTType?(a6, &_s10Foundation12DateIntervalVSgMd);
  return v24;
}

unint64_t specialized AssetViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AssetViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for AssetViewModel()
{
  result = type metadata singleton initialization cache for AssetViewModel;
  if (!type metadata singleton initialization cache for AssetViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AssetViewModel.Style] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI14AssetViewModelC5StyleOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreenSize and conformance ScreenSize(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type [AssetViewModel.Style] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AssetViewModel.Style] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AssetViewModel.Style] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI14AssetViewModelC5StyleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AssetViewModel.Style] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetViewModel.State and conformance AssetViewModel.State()
{
  result = lazy protocol witness table cache variable for type AssetViewModel.State and conformance AssetViewModel.State;
  if (!lazy protocol witness table cache variable for type AssetViewModel.State and conformance AssetViewModel.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewModel.State and conformance AssetViewModel.State);
  }

  return result;
}

uint64_t dispatch thunk of AssetViewModelRenderable.prepareForRenderIfNecessary()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of AssetViewModelRenderable.cancelRendering()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of AssetViewModelRenderable.clearRenderingCache()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of AssetViewModelRenderable.isReadyForDisplay()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v7(a1, a2);
}

uint64_t dispatch thunk of AssetViewModelRenderable.render()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

void type metadata completion function for AssetViewModel()
{
  type metadata accessor for DateInterval?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of AssetViewModel.prepareForRenderIfNecessary()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1A0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

uint64_t dispatch thunk of AssetViewModel.cancelRendering()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1A8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterImage(imageSource:outputURL:);

  return v5();
}

uint64_t dispatch thunk of AssetViewModel.clearRenderingCache()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

uint64_t dispatch thunk of AssetViewModel.isReadyForDisplay()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v5();
}

uint64_t dispatch thunk of AssetViewModel.render()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1C0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

void type metadata accessor for DateInterval?()
{
  if (!lazy cache variable for type metadata for DateInterval?)
  {
    type metadata accessor for DateInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DateInterval?);
    }
  }
}

uint64_t dispatch thunk of AssetViewModelRenderingActor.prepareForRenderIfNecessary()()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t partial apply for closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in AssetViewModelRenderingActor.prepareForRenderIfNecessary()(a1, v1);
}

uint64_t partial apply for specialized closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return specialized closure #1 in withTimeout<A>(seconds:operation:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return specialized closure #1 in withTimeout<A>(seconds:operation:)(v8, a1, a2, v6, v7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return specialized closure #1 in closure #1 in withTimeout<A>(seconds:operation:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in withTimeout<A>(seconds:operation:)(a1, v4, v5, v6);
}

uint64_t partial apply for specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(a1, v4);
}

uint64_t partial apply for specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return specialized closure #2 in closure #1 in withTimeout<A>(seconds:operation:)(v2);
}

uint64_t Blob.assetData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v126 = &v108 - v2;
  v123 = type metadata accessor for URL.DirectoryHint();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v129 = *(v4 - 8);
  v130 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v124 = (&v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v128 = &v108 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v108 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v117 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v108 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v121 = (&v108 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v120 = &v108 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v108 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v108 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v108 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = &v108 - v29;
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v33);
  v127 = v32;
  v38 = *(v32 + 48);
  v37 = (v32 + 48);
  countAndFlagsBits = v38;
  if (v38(v30, 1, v31) != 1)
  {
    v124 = v25;
    v25 = v10;
    v48 = v127;
    v49 = (*(v127 + 32))(v35, v30, v31);
    (*((*v36 & *v0) + 0x78))(&v139, v49);
    object = v37;
    LODWORD(v121) = v139;
    v118 = v35;
    URL.path(percentEncoded:)(1);
    v50 = *(v48 + 56);
    v50(v28, 1, 1, v31);
    UUID.init()();
    v50(v22, 1, 1, v31);
    (*(v122 + 104))(v119, *MEMORY[0x277CC91D8], v123);
    v51 = v124;
    URL.init(filePath:directoryHint:relativeTo:)();
    v50(v51, 0, 1, v31);
    v52 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
    v53 = (v52 == 2) | v52;
    v54 = UUID.uuidString.getter();
    v138 = v121;
    specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v54, v55, 0, 0xF000000000000000, 0, 1, 0, 0xF000000000000000, &v131, v51, 0, 0, &v138, v28, v53 & 1, 0);
    v110 = v131;
    v123 = v132;
    v122 = v133;
    v119 = v134;
    v117 = v135;
    v112 = v136;
    v113 = v137;

    v0 = v120;
    outlined init with copy of URL?(v28, v120);
    v56 = countAndFlagsBits(v0, 1, v31);
    v115 = v28;
    v114 = v31;
    if (v56 == 1)
    {
      outlined destroy of UTType?(v0, &_s10Foundation3URLVSgMd);
      countAndFlagsBits = 0;
      object = 0;
LABEL_12:
      v109 = *(v129 + 16);
      v109(v128, v25, v130);
      v60 = type metadata accessor for DBAssetData();
      v61 = swift_allocObject();
      *(v61 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
      v62 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
      v131 = v60;
      v132 = v60;
      v133 = v62;
      v134 = v62;
      v120 = v25;
      *(v61 + 80) = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1((v61 + 48));
      static PersistentModel.createBackingData<A>()();
      *(v61 + 16) = 16843009;
      *(v61 + 20) = 257;
      *(v61 + 22) = 1;
      *(v61 + 32) = 0;
      *(v61 + 24) = 0;
      v111 = (v61 + 24);
      __swift_project_boxed_opaque_existential_1((v61 + 48), *(v61 + 72));
      swift_getKeyPath();
      v131 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
      type metadata accessor for DBSuggestion();
      lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
      dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

      *(v61 + 40) = 0;
      ObservationRegistrar.init()();
      v63 = v126;
      v64 = v130;
      v109(v126, v128, v130);
      (*(v129 + 56))(v63, 0, 1, v64);
      v131 = v61;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      outlined destroy of UTType?(v63, &_s10Foundation4UUIDVSgMd);
      v131 = v61;
      v66 = swift_getKeyPath();
      MEMORY[0x28223BE20](v66);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v131 = v61;
      v67 = swift_getKeyPath();
      MEMORY[0x28223BE20](v67);
      v68 = v123;
      v69 = v122;
      outlined copy of Data._Representation(v123, v122);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      outlined consume of Data._Representation(v68, v69);

      v131 = v61;
      v70 = swift_getKeyPath();
      MEMORY[0x28223BE20](v70);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v131 = v61;
      v71 = swift_getKeyPath();
      MEMORY[0x28223BE20](v71);
      v72 = v119;
      v73 = v117;
      outlined copy of Data?(v119, v117);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      outlined consume of Data?(v72, v73);

      v131 = v61;
      v74 = swift_getKeyPath();
      MEMORY[0x28223BE20](v74);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v75 = v111;
      swift_beginAccess();
      *v75 = countAndFlagsBits;
      *(v61 + 32) = object;

      DBAssetData.refreshAssetLoaded()();
      outlined consume of Data?(v72, v73);
      outlined consume of Data._Representation(v123, v122);
      v76 = *(v129 + 8);
      v77 = v130;
      v76(v128, v130);
      outlined destroy of UTType?(v124, &_s10Foundation3URLVSgMd);
      v76(v120, v77);
      outlined destroy of UTType?(v115, &_s10Foundation3URLVSgMd);
      (*(v127 + 8))(v118, v114);
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9MomentsUI11DBAssetDataCtGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21658CA50;
      *(inited + 32) = 0x626F6C622D2DLL;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v61;

      v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of UTType?(inited + 32, &_sSS_9MomentsUI11DBAssetDataCtMd);

      return v87;
    }

LABEL_11:
    v59 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v59._countAndFlagsBits;
    object = v59._object;
    (*(v127 + 8))(v0, v31);
    goto LABEL_12;
  }

  v39 = v127;
  v40 = outlined destroy of UTType?(v30, &_s10Foundation3URLVSgMd);
  result = (*((*v36 & *v0) + 0x68))(v40);
  v43 = result;
  v44 = v42;
  v45 = v42 >> 62;
  v46 = v36;
  if ((v42 >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_18;
    }

    v58 = *(result + 16);
    v57 = *(result + 24);
    v47 = v57 - v58;
    if (!__OFSUB__(v57, v58))
    {
LABEL_15:
      if (v47 > 0)
      {
        (*((*v46 & *v0) + 0x78))(&v139);
        object = v37;
        v78 = v139;
        v127 = v43;
        v79 = *(v39 + 56);
        v80 = v121;
        v79(v121, 1, 1, v31);
        UUID.init()();
        v81 = v118;
        v79(v118, 1, 1, v31);
        v82 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
        LOBYTE(v79) = (v82 == 2) | v82;
        v83 = UUID.uuidString.getter();
        LODWORD(v111) = v78;
        v138 = v78;
        specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v83, v84, 0, 0xF000000000000000, v47, 0, v127, v44, &v131, v81, 0, 0, &v138, v80, v79 & 1, 0);
        v110 = v131;
        v123 = v132;
        v122 = v133;
        v119 = v134;
        v115 = v135;
        v112 = v136;
        v113 = v137;

        v85 = v117;
        outlined init with copy of URL?(v80, v117);
        v86 = countAndFlagsBits(v85, 1, v31);
        v120 = v44;
        if (v86 == 1)
        {
          outlined destroy of UTType?(v117, &_s10Foundation3URLVSgMd);
          countAndFlagsBits = 0;
          object = 0;
        }

        else
        {
          v88 = v117;
          v89 = URL.path(percentEncoded:)(1);
          countAndFlagsBits = v89._countAndFlagsBits;
          object = v89._object;
          (*(v39 + 8))(v88, v31);
        }

        v114 = *(v129 + 16);
        v114(v128, v124, v130);
        v90 = type metadata accessor for DBAssetData();
        v61 = swift_allocObject();
        *(v61 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
        v91 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        v131 = v90;
        v132 = v90;
        v133 = v91;
        v134 = v91;
        *(v61 + 80) = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1((v61 + 48));
        static PersistentModel.createBackingData<A>()();
        *(v61 + 16) = 16843009;
        *(v61 + 20) = 257;
        *(v61 + 22) = 1;
        *(v61 + 32) = 0;
        *(v61 + 24) = 0;
        v117 = v61 + 24;
        __swift_project_boxed_opaque_existential_1((v61 + 48), *(v61 + 72));
        swift_getKeyPath();
        v131 = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
        type metadata accessor for DBSuggestion();
        lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
        dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

        *(v61 + 40) = 0;
        ObservationRegistrar.init()();
        v92 = v126;
        v93 = v130;
        v114(v126, v128, v130);
        (*(v129 + 56))(v92, 0, 1, v93);
        v131 = v61;
        v94 = swift_getKeyPath();
        MEMORY[0x28223BE20](v94);
        lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        outlined destroy of UTType?(v92, &_s10Foundation4UUIDVSgMd);
        v131 = v61;
        v95 = swift_getKeyPath();
        MEMORY[0x28223BE20](v95);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v131 = v61;
        v96 = swift_getKeyPath();
        MEMORY[0x28223BE20](v96);
        v97 = v123;
        v98 = v122;
        outlined copy of Data._Representation(v123, v122);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data._Representation(v97, v98);

        v131 = v61;
        v99 = swift_getKeyPath();
        MEMORY[0x28223BE20](v99);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v131 = v61;
        v100 = swift_getKeyPath();
        MEMORY[0x28223BE20](v100);
        v101 = v119;
        v102 = v115;
        outlined copy of Data?(v119, v115);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data?(v101, v102);

        v131 = v61;
        v103 = swift_getKeyPath();
        MEMORY[0x28223BE20](v103);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v104 = v117;
        swift_beginAccess();
        *v104 = countAndFlagsBits;
        *(v61 + 32) = object;

        DBAssetData.refreshAssetLoaded()();
        outlined consume of Data._Representation(v127, v120);
        outlined consume of Data?(v101, v102);
        outlined consume of Data._Representation(v123, v122);
        v105 = *(v129 + 8);
        v106 = v130;
        v105(v128, v130);
        outlined destroy of UTType?(v118, &_s10Foundation3URLVSgMd);
        v105(v124, v106);
        outlined destroy of UTType?(v121, &_s10Foundation3URLVSgMd);
        goto LABEL_21;
      }

LABEL_18:
      v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      outlined consume of Data._Representation(v43, v44);
      return v87;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (!v45)
  {
    v47 = BYTE6(v42);
    goto LABEL_15;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v47 = HIDWORD(result) - result;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id DBAssetModel.baseBlob.getter()
{
  v1 = v0;
  v2 = *(*v0 + 232);
  v2(&v14);
  v3 = DBAssetModel.AssetDataHelper.urlFutureFor(_:)(0x626F6C622D2DLL, 0xE600000000000000);
  v5 = v4;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v6 = outlined destroy of DBAssetModel.AssetDataHelper(v13);
  (v2)(v12, v6);
  v7 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x626F6C622D2DLL, 0xE600000000000000);
  v9 = v8;
  v14 = v12[0];
  v15 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  outlined destroy of DBAssetModel.AssetDataHelper(&v14);
  LOBYTE(v12[0]) = *(v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
  v10 = objc_allocWithZone(type metadata accessor for Blob());
  return Blob.init(dataFuture:dataURLFuture:assetClass:)(v7, v9, v3, v5, v12);
}

id CloudSyncState.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CloudSyncState.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CloudSyncState();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CloudSyncState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 DBReflectionModel.lightBackgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 DBReflectionModel.darkBackgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32);
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

MomentsUI::DBReflectionModel::CodingKeys_optional __swiftcall DBReflectionModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBReflectionModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t DBReflectionModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7374706D6F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000013;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBReflectionModel.CodingKeys(_BYTE *a1, _BYTE *a2)
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
    v7 = 0x7374706D6F7270;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
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
    v9 = 0x7374706D6F7270;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBReflectionModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBReflectionModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBReflectionModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBReflectionModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBReflectionModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBReflectionModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
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
    v7 = 0x7374706D6F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DBReflectionModel.CodingKeys()
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
    return 0x7374706D6F7270;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBReflectionModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBReflectionModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBReflectionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBReflectionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBReflectionModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI17DBReflectionModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBReflectionModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    v19 = 0;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts) = v16;
    v19 = 1;
    lazy protocol witness table accessor for type Color and conformance Color();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v18;
    v11 = v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor;
    v12 = v17;
    *v11 = v16;
    *(v11 + 16) = v12;
    *(v11 + 32) = v10;
    v19 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v18;
    v14 = v1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor;
    v15 = v17;
    *v14 = v16;
    *(v14 + 16) = v15;
    *(v14 + 32) = v13;
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(&v16);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBReflectionModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI17DBReflectionModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v14 = *(v3 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32);
    v10 = *(v3 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 16);
    v14 = *(v3 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
    v15 = v10;
    v16 = v9;
    v17 = 1;
    lazy protocol witness table accessor for type Color and conformance Color();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32);
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 16);
    v14 = *(v3 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor);
    v15 = v12;
    v16 = v11;
    v17 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(&v14);
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int DBReflectionModel.metadataHash.getter()
{
  Hasher.init()();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x21CE937C0](*(v1 + 16));
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 40;
      do
      {

        String.hash(into:)();

        v3 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Optional<A>.hash(into:)();
  specialized Optional<A>.hash(into:)();
  return Hasher.finalize()();
}

uint64_t DBReflectionModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:prompts:lightBackgroundColor:darkBackgroundColor:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int (**a6)(uint64_t, uint64_t, uint64_t), unsigned int (**a7)(uint64_t, uint64_t, uint64_t), unsigned int (**a8)(void, void, void), uint64_t a9, uint64_t a10, unsigned __int8 *a11)
{
  swift_allocObject();
  v19 = specialized DBReflectionModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:prompts:lightBackgroundColor:darkBackgroundColor:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v19;
}

uint64_t DBReflectionModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:prompts:lightBackgroundColor:darkBackgroundColor:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int (**a6)(uint64_t, uint64_t, uint64_t), unsigned int (**a7)(uint64_t, uint64_t, uint64_t), unsigned int (**a8)(void, void, void), uint64_t a9, uint64_t a10, unsigned __int8 *a11)
{
  v12 = specialized DBReflectionModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:prompts:lightBackgroundColor:darkBackgroundColor:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v12;
}

uint64_t DBReflectionModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBReflectionModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

void specialized Optional<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v3 = *(a2 + 16);
    MEMORY[0x21CE937C0](v3);
    if (v3)
    {
      v4 = *(type metadata accessor for UUID() - 8);
      v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      do
      {
        dispatch thunk of Hashable.hash(into:)();
        v5 += v6;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

void specialized Optional<A>.hash(into:)()
{
  if (v0[4])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = v0[2];
    v1 = v0[3];
    v4 = *v0;
    v3 = v0[1];
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x21CE937F0](v5);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CE937F0](v6);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x21CE937F0](v7);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CE937F0](v8);
  }
}

BOOL specialized static DBReflectionModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
  if (!v2)
  {
    return *(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts) == 0;
  }

  v3 = *(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
  if (!v3)
  {
    return 0;
  }

  v4 = (a1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
  if (*(a1 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32))
  {
    if (!*(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v4, *(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor)), vceqq_f64(v4[1], *(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 16))), xmmword_216595520)) & 0xF) != 0)
    {
      return result;
    }
  }

  if (*(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32) & 1) == 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor), *(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor)), vceqq_f64(*(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 16), *(a2 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 16)))))))
  {
    return 0;
  }

  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v2);

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);

  v8 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v6, v7);

  return v8 & 1;
}

unint64_t specialized DBReflectionModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBReflectionModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBReflectionModel.CodingKeys and conformance DBReflectionModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBReflectionModel()
{
  result = type metadata singleton initialization cache for DBReflectionModel;
  if (!type metadata singleton initialization cache for DBReflectionModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color and conformance Color()
{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

uint64_t specialized DBReflectionModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseDateInterval:baseTitle:prompts:lightBackgroundColor:darkBackgroundColor:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (**a6)(uint64_t, uint64_t, uint64_t), unsigned int (**a7)(uint64_t, uint64_t, uint64_t), unsigned int (**a8)(void, void, void), uint64_t a9, uint64_t a10, unsigned __int8 *a11)
{
  v12 = v11;
  v126 = a8;
  v128 = a7;
  v131 = a6;
  v119 = a5;
  *&v134 = a4;
  *&v133 = a3;
  v120 = a2;
  v127 = *v11;
  v113 = type metadata accessor for Date();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v103 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v129 = &v103 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v115 = *(v132 - 8);
  v19 = MEMORY[0x28223BE20](v132);
  v104 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v103 = &v103 - v21;
  v125 = type metadata accessor for DateInterval();
  v22 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v24;
  v25 = type metadata accessor for UUID();
  v26 = MEMORY[0x28223BE20](v25);
  v123 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v103 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v103 - v31;
  v33 = *(a9 + 32);
  v34 = *(a10 + 32);
  LODWORD(v124) = *a11;
  *&v11[OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts] = v126;
  v35 = &v11[OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor];
  v36 = *(a9 + 16);
  *v35 = *a9;
  *(v35 + 1) = v36;
  v35[32] = v33;
  v37 = &v11[OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor];
  v38 = *(a10 + 16);
  *v37 = *a10;
  *(v37 + 1) = v38;
  v37[32] = v34;
  v118 = v39;
  v40 = *(v39 + 16);
  v111 = a1;
  v40(&v103 - v31, a1, v25);
  v40(v30, v120, v25);
  v121 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v127, &v136);
  LODWORD(v122) = v136;
  v41 = v131;
  if (!v128)
  {
    v41 = 0;
  }

  v127 = v41;
  v42 = 0xE000000000000000;
  if (v128)
  {
    v42 = v128;
  }

  v128 = v42;
  v109 = v22;
  v43 = *(v22 + 16);
  v43(v24, v119, v125);
  v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12[16] = 0;
  v116 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v107 = v32;
  v40(&v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id], v32, v25);
  v114 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v108 = v30;
  v131 = v25;
  v40(&v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID], v30, v25);
  v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass] = v122;
  v45 = v133;
  *&v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport] = v133;
  *&v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles] = v134;
  v46 = &v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle];
  v47 = v128;
  *v46 = v127;
  v46[1] = v47;
  v43(&v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval], v117, v125);
  v48 = v45;
  v49 = specialized Dictionary.compactMapValues<A>(_:)(v44);
  v105 = 0;
  *&v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID] = v49;
  v116 = MEMORY[0x277D84F90];
  *&v12[OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children] = MEMORY[0x277D84F90];
  v50 = v49;
  swift_beginAccess();
  v114 = v12;
  v12[16] = v124;
  v51 = *(v44 + 64);
  *&v134 = v44 + 64;
  v52 = 1 << *(v44 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v51;
  v55 = (v52 + 63) >> 6;
  v128 = (v118 + 48);
  v122 = (v118 + 32);
  v56 = (v115 + 56);
  v127 = (v115 + 48);
  v106 = v50;

  v57 = 0;
  v58 = v132;
  v59 = v44;
  v124 = v55;
  v121 = v56;
  v126 = v44;
  if (v54)
  {
    while (1)
    {
      v60 = v57;
LABEL_12:
      v61 = __clz(__rbit64(v54)) | (v60 << 6);
      v62 = *(*(v59 + 56) + 8 * v61);
      v63 = *(*v62 + 192);
      *&v133 = *(*(v59 + 48) + 16 * v61 + 8);

      v65 = v130;
      v63(v64);
      v66 = v65;
      v67 = v65;
      v68 = v131;
      if ((*v128)(v67, 1, v131) == 1)
      {
        outlined destroy of UTType?(v66, &_s10Foundation4UUIDVSgMd);
        v69 = v129;
        (*v56)(v129, 1, 1, v58);
      }

      else
      {
        v70 = *v122;
        v71 = v123;
        (*v122)(v123, v66, v68);
        v72 = *(v132 + 48);
        v69 = v129;
        v55 = v124;
        v70(v129, v71, v68);
        v56 = v121;
        v58 = v132;
        *(v69 + v72) = v62;
        (*v56)(v69, 0, 1, v58);
      }

      v54 &= v54 - 1;

      if ((*v127)(v69, 1, v58) == 1)
      {
        outlined destroy of UTType?(v69, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
        v57 = v60;
      }

      else
      {
        v73 = v103;
        outlined init with take of (UUID, DBAssetData)(v69, v103);
        outlined init with take of (UUID, DBAssetData)(v73, v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116[2] + 1, 1, v116);
        }

        v75 = v116[2];
        v74 = v116[3];
        v76 = v115;
        if (v75 >= v74 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v74 > 1, v75 + 1, 1, v116);
          v76 = v115;
          v116 = v78;
        }

        v77 = v116;
        v116[2] = v75 + 1;
        outlined init with take of (UUID, DBAssetData)(v104, v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75);
        v57 = v60;
        v55 = v124;
      }

      v59 = v126;
      if (!v54)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v60 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);

      v101 = *(v118 + 8);
      v102 = v131;
      v101(v116 + v59, v131);
      v101((v59 + v114), v102);

      (*(v109 + 8))(v59 + v55, v125);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_30;
    }

    if (v60 >= v55)
    {
      break;
    }

    v54 = *(v134 + 8 * v60);
    ++v57;
    if (v54)
    {
      goto LABEL_12;
    }
  }

  if (v116[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v79 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v79 = MEMORY[0x277D84F98];
  }

  v80 = v114;
  v81 = v131;
  v82 = v118;
  v135 = v79;

  v84 = v105;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v83, 1, &v135);
  if (!v84)
  {

    v85 = v135;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    v87 = (v80 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v87 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v87[1] = v86;
    v88 = swift_allocObject();
    *(v88 + 16) = v85;
    v89 = (v80 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v89 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v89[1] = v88;
    v90 = (v80 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v90 = closure #3 in DBAssetModel.init(from:);
    v90[1] = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = v106;
    swift_beginAccess();
    v134 = *v87;
    swift_beginAccess();
    v133 = *v89;
    swift_beginAccess();
    v92 = *v90;
    v93 = v90[1];
    v94 = v80 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v94 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v94 + 8) = v91;
    v95 = v133;
    *(v94 + 16) = v134;
    *(v94 + 32) = v95;
    *(v94 + 48) = v92;
    *(v94 + 56) = v93;

    v96 = v110;
    static Date.now.getter();
    v97 = *(v109 + 8);
    v98 = v125;
    v97(v119, v125);
    v99 = *(v82 + 8);
    v99(v120, v81);
    v99(v111, v81);
    v97(v117, v98);
    v99(v108, v81);
    v99(v107, v81);
    (*(v112 + 32))(v80 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v96, v113);
    return v80;
  }

LABEL_30:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id static CloudSyncState.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = MEMORY[0x21CE91FC0](0x6E795364756F6C43, 0xEE00657461745363);
  v2 = [v0 initWithEntityName_];

  return v2;
}

void key path getter for CloudSyncState.zoneName : CloudSyncState(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path setter for CloudSyncState.zoneName : CloudSyncState(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = MEMORY[0x21CE91FC0](*a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t protocol witness for Identifiable.id.getter in conformance CloudSyncState@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudSyncState();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

id CloudSyncSnapshot.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CloudSyncSnapshot.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CloudSyncSnapshot();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CloudSyncSnapshot.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncSnapshot();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static CloudSyncSuggestion.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x800000021657BA20);
  v2 = [v0 initWithEntityName_];

  return v2;
}

void key path getter for CloudSyncSuggestion.id : CloudSyncSuggestion(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 id];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path getter for CloudSyncSuggestion.assetIDsData : CloudSyncSuggestion(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path setter for CloudSyncSuggestion.assetIDsData : CloudSyncSuggestion(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = isa;
  [v6 *a5];
}

uint64_t key path getter for CloudSyncSuggestion.endDate : CloudSyncSuggestion@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void key path setter for CloudSyncSuggestion.endDate : CloudSyncSuggestion(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  outlined init with copy of Date?(a1, &v15 - v9);
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void protocol witness for Identifiable.id.getter in conformance CloudSyncSuggestion(uint64_t *a1@<X8>)
{
  v3 = [*v1 id];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t protocol witness for CloudRecord.id.getter in conformance CloudSyncSuggestion()
{
  v1 = [*v0 id];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id CloudSyncSuggestion.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CloudSyncSuggestion.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CloudSyncSuggestion();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CloudSyncSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncSuggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CloudSyncAssetData.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CloudSyncAssetData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CloudSyncAssetData();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CloudSyncAssetData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncAssetData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static StateOfMindHorizontalCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static StateOfMindHorizontalCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *StateOfMindHorizontalCollectionViewCell.stateOfMindView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI39StateOfMindHorizontalCollectionViewCell_stateOfMindView);
  v2 = v1;
  return v1;
}

id StateOfMindHorizontalCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id StateOfMindHorizontalCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StateOfMindHorizontalCollectionViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI39StateOfMindHorizontalCollectionViewCell_stateOfMindView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableStateOfMindViewModel.empty;
  v4 = 4;
  v3 = objc_allocWithZone(type metadata accessor for StateOfMindView());
  *(v0 + v1) = StateOfMindView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall StateOfMindHorizontalCollectionViewCell.releaseResources()()
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
    _os_log_impl(&dword_21607C000, v3, v4, "[StateOfMindHorizontalCollectionViewCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI39StateOfMindHorizontalCollectionViewCell_stateOfMindView);
  if (v6)
  {
    v7 = *(*(v6 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView) + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);

    [v7 setImage_];
  }
}

id StateOfMindHorizontalCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindHorizontalCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized StateOfMindHorizontalCollectionViewCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI39StateOfMindHorizontalCollectionViewCell_stateOfMindView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableStateOfMindViewModel.empty;
  v12 = 4;
  v3 = objc_allocWithZone(type metadata accessor for StateOfMindView());
  v4 = StateOfMindView.init(viewModel:style:)(v2, &v12);
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

uint64_t type metadata accessor for StateOfMindHorizontalCollectionViewCell()
{
  result = type metadata singleton initialization cache for StateOfMindHorizontalCollectionViewCell;
  if (!type metadata singleton initialization cache for StateOfMindHorizontalCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *CloudSyncSnapshot.suggestionTabs.getter()
{
  v1 = [v0 suggestionTabsData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd);
    lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v3, v5);
    return v8;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI10DBSnapshotC3TabO_Say10Foundation4UUIDVGTt0g5Tf4g_n(v6);
  }
}

uint64_t CloudSyncSnapshot.suggestionTabs.setter()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd);
  *(swift_allocObject() + 16) = xmmword_21658CA60;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  _s10Foundation4UUIDVACSeAAWlTm_0(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setSuggestionTabsData_];

  outlined consume of Data._Representation(v3, v5);
}

uint64_t (*CloudSyncSnapshot.suggestionTabs.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CloudSyncSnapshot.suggestionTabs.getter();
  return CloudSyncSnapshot.suggestionTabs.modify;
}

uint64_t CloudSyncSnapshot.suggestionTabs.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CloudSyncSnapshot.suggestionTabs.setter();
  }

  CloudSyncSnapshot.suggestionTabs.setter();
}

unint64_t lazy protocol witness table accessor for type DBSnapshot.Tab and conformance DBSnapshot.Tab()
{
  result = lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab;
  if (!lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab;
  if (!lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab;
  if (!lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab;
  if (!lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab;
  if (!lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshot.Tab and conformance DBSnapshot.Tab);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [UUID] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd);
    _s10Foundation4UUIDVACSeAAWlTm_0(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd);
    _s10Foundation4DateVACSQAAWlTm_0(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSeAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TransferMediaThirdPartyViewModel.mediaThirdPartyCategoryRawValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_mediaThirdPartyCategoryRawValue;
  swift_beginAccess();
  return *v1;
}

uint64_t TransferMediaThirdPartyViewModel.mediaThirdPartyCategoryRawValue.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_mediaThirdPartyCategoryRawValue;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void *TransferMediaThirdPartyViewModel.backgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferMediaThirdPartyViewModel.backgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t TransferMediaThirdPartyViewModel.mediaThirdPartyCategory.getter@<X0>(char *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x248))();
  if (result >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = result;
  }

  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  *a1 = v6;
  return result;
}

char TransferMediaThirdPartyViewModel.colorVariant.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x260))();
  if (v4)
  {

    LOBYTE(v3) = MediaThirdPartyBackgroundColorVariant.init(rawValue:)(*&v3);
  }

  else
  {
    *a1 = 4;
  }

  return v3;
}

MomentsUI::TransferMediaThirdPartyViewModel::CodingKeys_optional __swiftcall TransferMediaThirdPartyViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMediaThirdPartyViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t TransferMediaThirdPartyViewModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C746974627573;
  v2 = 0x756F72676B636162;
  if (a1 != 3)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferMediaThirdPartyViewModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = TransferMediaThirdPartyViewModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == TransferMediaThirdPartyViewModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferMediaThirdPartyViewModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TransferMediaThirdPartyViewModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferMediaThirdPartyViewModel.CodingKeys()
{
  TransferMediaThirdPartyViewModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferMediaThirdPartyViewModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  TransferMediaThirdPartyViewModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferMediaThirdPartyViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferMediaThirdPartyViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TransferMediaThirdPartyViewModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = TransferMediaThirdPartyViewModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferMediaThirdPartyViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferMediaThirdPartyViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferMediaThirdPartyViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferMediaThirdPartyViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferMediaThirdPartyViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_subtitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_mediaThirdPartyCategoryRawValue;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_colorVariantRawValue);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor;
  *(v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor) = 0;
  v8 = (v1 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_appIconAccessibilityString);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  *v8 = 0;
  v8[1] = 0;
  v9 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v4 = 0;
  v4[1] = 0;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  *v5 = v12;
  *(v5 + 8) = v11 == 0;
  v13 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v6 = 0;
  v6[1] = 0;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v15 = *(v2 + v7);
  *(v2 + v7) = v14;

  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0;

  v17 = specialized AssetViewModel.init(coder:)(a1);

  return v17;
}

Swift::Void __swiftcall TransferMediaThirdPartyViewModel.encode(with:)(NSCoder with)
{
  v2 = v1;
  AssetViewModel.encode(with:)(with);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x230))();
  if (v6)
  {
    v7 = MEMORY[0x21CE91FC0](v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x21CE91FC0](0x656C746974627573, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = (*((*v4 & *v2) + 0x248))();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    isa = NSNumber.init(integerLiteral:)(v11).super.super.isa;
    v13 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x8000000216575D30);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v13];
  }

  v14 = (*((*v4 & *v2) + 0x260))(v9);
  if (v15)
  {
    v16 = MEMORY[0x21CE91FC0](v14);

    v17 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216575D50);
    [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  }

  v18 = (*((*v4 & *v2) + 0x278))(v14);
  v19 = MEMORY[0x21CE91FC0](0x756F72676B636162, 0xEF726F6C6F43646ELL);
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  v20 = (*((*v4 & *v2) + 0x290))();
  if (v21)
  {
    v22 = MEMORY[0x21CE91FC0](v20);
  }

  else
  {
    v22 = 0;
  }

  v23 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216575D70);
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];
  swift_unknownObjectRelease();
}

void TransferMediaThirdPartyViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_mediaThirdPartyCategoryRawValue;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_colorVariantRawValue);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_appIconAccessibilityString);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferMediaThirdPartyViewModel.init(dbObject:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_subtitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_mediaThirdPartyCategoryRawValue;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_colorVariantRawValue);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_appIconAccessibilityString);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferMediaThirdPartyViewModel.init(mediaThirdPartyViewModel:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v43 - v7;
  v8 = &v2[OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_subtitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_mediaThirdPartyCategoryRawValue];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v2[OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_colorVariantRawValue];
  *v10 = 0;
  v10[1] = 0;
  v45 = OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor;
  *&v2[OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_backgroundColor] = 0;
  v11 = &v2[OBJC_IVAR____TtC9MomentsUI32TransferMediaThirdPartyViewModel_appIconAccessibilityString];
  *v11 = 0;
  v11[1] = 0;
  v12 = swift_getObjectType();
  v13 = (*(a2 + 40))(v12, a2);
  v15 = v14;
  swift_beginAccess();
  *v8 = v13;
  v8[1] = v15;

  (*(a2 + 16))(v50, v12, a2);
  v16 = LOBYTE(v50[0]) == 3;
  if (LOBYTE(v50[0]) == 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = LOBYTE(v50[0]);
  }

  swift_beginAccess();
  *v9 = v17;
  v9[8] = v16;
  (*(a2 + 32))(v50, v12, a2);
  if (LOBYTE(v50[0]) <= 1u)
  {
    if (LOBYTE(v50[0]))
    {
      v19 = 0xE500000000000000;
      v18 = 0x746867696CLL;
    }

    else
    {
      v19 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E75;
    }

    goto LABEL_12;
  }

  if (LOBYTE(v50[0]) == 2)
  {
    v19 = 0xE400000000000000;
    v18 = 1802658148;
LABEL_12:
    v20 = v45;
    goto LABEL_13;
  }

  v18 = 0;
  v19 = 0;
  v20 = v45;
  if (LOBYTE(v50[0]) == 3)
  {
    v19 = 0xE800000000000000;
    v18 = 0x6B72614479726576;
  }

LABEL_13:
  swift_beginAccess();
  *v10 = v18;
  v10[1] = v19;

  (*(a2 + 24))(v50, v12, a2);
  v21 = 0;
  if ((v51 & 1) == 0)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v50[0] green:v50[1] blue:v50[2] alpha:v50[3]];
  }

  swift_beginAccess();
  v22 = *&v3[v20];
  *&v3[v20] = v21;

  v23 = (*(a2 + 64))(v12, a2);
  v25 = v24;
  swift_beginAccess();
  *v11 = v23;
  v11[1] = v25;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v26 = static ScreenSize.zero;
  v27 = (*(a2 + 56))(v12, a2);
  v44 = (*(a2 + 48))(v12, a2);
  v29 = v28;
  v30 = v47;
  (*(*(a2 + 8) + 24))(v12);
  LODWORD(v45) = a1[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass];
  v31 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v32 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v34 = type metadata accessor for DateInterval();
  (*(*(v34 - 8) + 56))(&v3[v33], 1, 1, v34);
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
  v35 = *&v3[v31];
  *&v3[v31] = v27;
  v36 = v26;
  v37 = v27;

  swift_beginAccess();
  *v32 = v44;
  v32[1] = v29;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v30, &v3[v33]);
  v38 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v45;
  (*(ObjectType + 328))(v49, v38);
  LOBYTE(v33) = v49[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v39 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v39 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v39 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v39 + 112) = v33;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v39;
  v40 = type metadata accessor for AssetViewModel();
  v48.receiver = v3;
  v48.super_class = v40;
  v41 = objc_msgSendSuper2(&v48, sel_init);

  outlined destroy of DateInterval?(v30);
  return v41;
}

uint64_t TransferMediaThirdPartyViewModel.__ivar_destroyer()
{
}

id TransferMediaThirdPartyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferMediaThirdPartyViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferMediaThirdPartyViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMediaThirdPartyViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for TransferMediaThirdPartyViewModel()
{
  result = type metadata singleton initialization cache for TransferMediaThirdPartyViewModel;
  if (!type metadata singleton initialization cache for TransferMediaThirdPartyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMediaThirdPartyViewModel.CodingKeys and conformance TransferMediaThirdPartyViewModel.CodingKeys);
  }

  return result;
}

uint64_t ApprovedApplication.bundleID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_bundleID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ApprovedApplication.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_bundleID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *ApprovedApplication.timestamp.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ApprovedApplication.timestamp.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

MomentsUI::ApprovedApplication::CodingKeys_optional __swiftcall ApprovedApplication.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApprovedApplication.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_ApprovedApplication_CodingKeys_timestamp;
  }

  else
  {
    v4.value = MomentsUI_ApprovedApplication_CodingKeys_unknownDefault;
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

MomentsUI::ApprovedApplication::CodingKeys_optional __swiftcall ApprovedApplication.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApprovedApplication.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_ApprovedApplication_CodingKeys_timestamp;
  }

  else
  {
    v4.value = MomentsUI_ApprovedApplication_CodingKeys_unknownDefault;
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

uint64_t ApprovedApplication.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ApprovedApplication.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D617473656D6974;
  }

  else
  {
    v3 = 0x4449656C646E7562;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v5 = 0x6D617473656D6974;
  }

  else
  {
    v5 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v6 = 0xE900000000000070;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ApprovedApplication.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ApprovedApplication.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ApprovedApplication.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ApprovedApplication.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApprovedApplication.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance ApprovedApplication.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x4449656C646E7562;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ApprovedApplication.CodingKeys()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ApprovedApplication.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApprovedApplication.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ApprovedApplication.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ApprovedApplication.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall ApprovedApplication.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
  if (v5)
  {
    v6 = MEMORY[0x21CE91FC0](v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x21CE91FC0](0x4449656C646E7562, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  v8 = (*((*v3 & *v1) + 0x78))();
  v9 = MEMORY[0x21CE91FC0](0x6D617473656D6974, 0xE900000000000070);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
}

id ApprovedApplication.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ApprovedApplication.init(coder:)();

  return v4;
}

id ApprovedApplication.init(coder:)(void *a1)
{
  v2 = specialized ApprovedApplication.init(coder:)();

  return v2;
}

void ApprovedApplication.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_bundleID);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ApprovedApplication.init(bundleID:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = &v4[OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_bundleID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp;
  *&v4[OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp] = 0;
  swift_beginAccess();
  isa = 0;
  *v8 = a1;
  *(v8 + 1) = a2;
  if ((a4 & 1) == 0)
  {
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  }

  swift_beginAccess();
  v11 = *&v4[v9];
  *&v4[v9] = isa;

  v13.receiver = v4;
  v13.super_class = type metadata accessor for ApprovedApplication();
  return objc_msgSendSuper2(&v13, sel_init);
}

id ApprovedApplication.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ApprovedApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApprovedApplication();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ApprovedApplication.init(coder:)()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_bundleID];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp;
  *&v0[OBJC_IVAR____TtC9MomentsUI19ApprovedApplication_timestamp] = 0;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  v9 = 0;
  v10 = 0;
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v2 = 0;
  *(v2 + 1) = 0;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v6 = *&v1[v3];
  *&v1[v3] = v5;

  v8.receiver = v1;
  v8.super_class = type metadata accessor for ApprovedApplication();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t lazy protocol witness table accessor for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplication.CodingKeys and conformance ApprovedApplication.CodingKeys);
  }

  return result;
}

id static CloudSyncAssetData.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216578760);
  v2 = [v0 initWithEntityName_];

  return v2;
}

void key path setter for CloudSyncAssetData.lastKnownCKRecordSync : CloudSyncAssetData(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  outlined init with copy of Date?(a1, &v15 - v9);
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id static CloudSyncSnapshot.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x80000002165786D0);
  v2 = [v0 initWithEntityName_];

  return v2;
}

void key path setter for CloudSyncSnapshot.expiry : CloudSyncSnapshot(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  outlined init with copy of Date?(a1, &v15 - v9);
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t key path setter for Video.url : Video(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of URL?(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x78))(v6);
}

uint64_t Video.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI5Video_url;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1);
}

uint64_t Video.url.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI5Video_url;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

void Video.assetClass.getter(BOOL *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Video__assetClass);
  if (v2 == 2)
  {
    *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Video__urlFuture) != 0;
  }

  else
  {
    *a1 = v2 & 1;
  }
}

MomentsUI::Video::CodingKeys_optional __swiftcall Video.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Video.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_Video_CodingKeys_assetClass;
  }

  else
  {
    v4.value = MomentsUI_Video_CodingKeys_unknownDefault;
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

MomentsUI::Video::CodingKeys_optional __swiftcall Video.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Video.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_Video_CodingKeys_assetClass;
  }

  else
  {
    v4.value = MomentsUI_Video_CodingKeys_unknownDefault;
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

uint64_t Video.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x616C437465737361;
  }

  else
  {
    return 7107189;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Video.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616C437465737361;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA00000000007373;
  }

  if (*a2)
  {
    v5 = 0x616C437465737361;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007373;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Video.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Video.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Video.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Video.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Video.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Video.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x616C437465737361;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007373;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Video.CodingKeys()
{
  if (*v0)
  {
    return 0x616C437465737361;
  }

  else
  {
    return 7107189;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Video.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Video.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Video.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Video.CodingKeys and conformance Video.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Video.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Video.CodingKeys and conformance Video.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id Video.init(url:assetClass:)(uint64_t a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v26 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-v9];
  v24 = *a2;
  v11 = OBJC_IVAR____TtC9MomentsUI5Video_url;
  v12 = *(v6 + 56);
  v12(&v2[OBJC_IVAR____TtC9MomentsUI5Video_url], 1, 1, v5);
  v13 = *(v6 + 16);
  v13(v10, a1, v5);
  v12(v10, 0, 1, v5);
  swift_beginAccess();
  outlined assign with take of URL?(v10, &v2[v11]);
  swift_endAccess();
  v2[OBJC_IVAR____TtC9MomentsUI5Video__assetClass] = v24;
  v14 = &v2[OBJC_IVAR____TtC9MomentsUI5Video__dataFuture];
  *v14 = 0;
  v14[1] = 0;
  v15 = v25;
  v16 = a1;
  v13(v25, a1, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v15, v5);
  v19 = &v2[OBJC_IVAR____TtC9MomentsUI5Video__urlFuture];
  *v19 = partial apply for closure #1 in Video.init(url:assetClass:);
  v19[1] = v18;
  v20 = type metadata accessor for Video();
  v27.receiver = v2;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  (*(v6 + 8))(v16, v5);
  return v21;
}

uint64_t closure #1 in Video.init(url:assetClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t partial apply for closure #1 in Video.init(url:assetClass:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in Video.init(url:assetClass:)(v4, a1);
}

uint64_t type metadata accessor for Video()
{
  result = type metadata singleton initialization cache for Video;
  if (!type metadata singleton initialization cache for Video)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Video.init(dataFuture:urlFuture:assetClass:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t), char *a5)
{
  v6 = v5;
  v24 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = *a5;
  v15 = OBJC_IVAR____TtC9MomentsUI5Video_url;
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 56);
  v17(&v6[v15], 1, 1, v16);
  if (a3)
  {

    a3(v18);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(a3);
  }

  else
  {
    v17(v13, 1, 1, v16);
  }

  swift_beginAccess();
  outlined assign with take of URL?(v13, &v6[v15]);
  swift_endAccess();
  v6[OBJC_IVAR____TtC9MomentsUI5Video__assetClass] = v14;
  v19 = &v6[OBJC_IVAR____TtC9MomentsUI5Video__dataFuture];
  v20 = v24;
  *v19 = a1;
  v19[1] = v20;
  v21 = &v6[OBJC_IVAR____TtC9MomentsUI5Video__urlFuture];
  *v21 = a3;
  v21[1] = a4;
  v22 = type metadata accessor for Video();
  v25.receiver = v6;
  v25.super_class = v22;
  return objc_msgSendSuper2(&v25, sel_init);
}

id Video.init(from:)(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI5VideoC10CodingKeysOGMd);
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = *(v4 + 56);
  v35 = v1;
  v37 = OBJC_IVAR____TtC9MomentsUI5Video_url;
  v14(&v1[OBJC_IVAR____TtC9MomentsUI5Video_url], 1, 1, v3);
  v15 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type Video.CodingKeys and conformance Video.CodingKeys();
  v16 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v18 = v9;
    v19 = v32;
    v39 = 0;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v13;
    v21 = v35;
    v22 = v37;
    swift_beginAccess();
    outlined assign with take of URL?(v33, &v21[v22]);
    swift_endAccess();
    v40 = 1;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v20;
    v24 = v39;
    if (v39 == 2)
    {
      v25 = v18;
      outlined init with copy of URL?(&v21[v37], v18);
      if ((*(v4 + 48))(v18, 1, v3) == 1)
      {
        (*(v19 + 8))(v34, v11);
        outlined destroy of UTType?(v18, &_s10Foundation3URLVSgMd);
LABEL_11:
        v24 = 0;
        goto LABEL_12;
      }

      v26 = v31;
      (*(v4 + 32))(v31, v25, v3);
      v27 = URL.isFileURL.getter();
      (*(v4 + 8))(v26, v3);
      (*(v19 + 8))(v34, v11);
      if ((v27 & 1) == 0)
      {
        goto LABEL_11;
      }

      v24 = 1;
    }

    else
    {
      (*(v19 + 8))(v34, v11);
    }

LABEL_12:
    v21[OBJC_IVAR____TtC9MomentsUI5Video__assetClass] = v24;
    v28 = &v21[OBJC_IVAR____TtC9MomentsUI5Video__dataFuture];
    *v28 = closure #1 in Video.init(from:);
    v28[1] = 0;
    v29 = &v21[OBJC_IVAR____TtC9MomentsUI5Video__urlFuture];
    *v29 = closure #3 in DBAssetModel.init(from:);
    v29[1] = 0;
    v30 = type metadata accessor for Video();
    v38.receiver = v21;
    v38.super_class = v30;
    v17 = objc_msgSendSuper2(&v38, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v17;
  }

  v17 = v35;
  __swift_destroy_boxed_opaque_existential_1(v36);
  outlined destroy of UTType?(v17 + v37, &_s10Foundation3URLVSgMd);
  type metadata accessor for Video();
  swift_deallocPartialClassInstance();
  return v17;
}

unint64_t lazy protocol witness table accessor for type Video.CodingKeys and conformance Video.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys;
  if (!lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys;
  if (!lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys;
  if (!lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys;
  if (!lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Video.CodingKeys and conformance Video.CodingKeys);
  }

  return result;
}

uint64_t Video.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI5VideoC10CodingKeysOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Video.CodingKeys and conformance Video.CodingKeys();
  v12 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(v12);
  BYTE1(v19) = 0;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v14 = outlined destroy of UTType?(v7, &_s10Foundation3URLVSgMd);
  if (!v2)
  {
    (*((*v13 & *v3) + 0x88))(&v19, v14);
    v18 = v19;
    v17 = 1;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Video.hasTemporaryURLForData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Video__urlFuture);
  if (v5)
  {
    v5(v2);
    v6 = type metadata accessor for URL();
    if ((*(*(v6 - 8) + 48))(v4, 1, v6) != 1)
    {
      outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd);
      return 1;
    }
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  v9 = outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd);
  v10 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Video__dataFuture);
  if (v10)
  {
    v11 = v10(v9);
    if (v12 >> 60 != 15)
    {
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v16 = *(v11 + 16);
          v15 = *(v11 + 24);
          outlined consume of Data?(v11, v12);
          if (v16 != v15)
          {
            return 1;
          }
        }

        else
        {
          outlined consume of Data?(v11, v12);
        }
      }

      else if (v13)
      {
        v17 = v11;
        outlined consume of Data?(v11, v12);
        if (v17 != v17 >> 32)
        {
          return 1;
        }
      }

      else
      {
        v14 = v12;
        outlined consume of Data?(v11, v12);
        if ((v14 & 0xFF000000000000) != 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t Video.temporaryURLForData.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v60[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v60[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v60[-1] - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v60[-1] - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v60[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v60[-1] - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v60[-1] - v21;
  v23 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Video__urlFuture);
  if (!v23)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_9:
    outlined destroy of UTType?(v11, &_s10Foundation3URLVSgMd);
    type metadata accessor for PairedPhotoVideo();
    static PairedPhotoVideo.generateTemporaryPath(video:)(1, v6);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {
      outlined destroy of UTType?(v6, &_s10Foundation3URLVSgMd);
LABEL_27:
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static CommonLogger.viewModel);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_21607C000, v56, v57, "[temporaryURLForData] No data available from video", v58, 2u);
        MEMORY[0x21CE94770](v58, -1, -1);
      }

      return (*(v13 + 56))(v59, 1, 1, v12);
    }

    v33 = *(v13 + 32);
    v34 = v33(v16, v6, v12);
    v35 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Video__dataFuture);
    if (!v35 || (v36 = v35(v34), v37 >> 60 == 15))
    {
      (*(v13 + 8))(v16, v12);
      goto LABEL_27;
    }

    v47 = v36;
    v48 = v37;
    v49 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v49 != 2)
      {
        goto LABEL_26;
      }

      v53 = *(v36 + 16);
      v54 = *(v36 + 24);
    }

    else
    {
      if (!v49)
      {
        if ((v37 & 0xFF000000000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_32:
        Data.write(to:options:)();
        (*(v13 + 16))(v9, v16, v12);
        v30 = *(v13 + 56);
        v30(v9, 0, 1, v12);
        (*((*MEMORY[0x277D85000] & *v2) + 0x78))(v9);
        outlined consume of Data?(v47, v48);
        v31 = v59;
        v33(v59, v16, v12);
        return (v30)(v31, 0, 1, v12);
      }

      v53 = v36;
      v54 = v36 >> 32;
    }

    if (v53 != v54)
    {
      goto LABEL_32;
    }

LABEL_26:
    (*(v13 + 8))(v16, v12);
    outlined consume of Data?(v47, v48);
    goto LABEL_27;
  }

  v23(v20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  v24 = v11;
  v25 = *(v13 + 32);
  v25(v22, v24, v12);
  v26 = URL.pathExtension.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    (*(v13 + 16))(v9, v22, v12);
    v30 = *(v13 + 56);
    v30(v9, 0, 1, v12);
    (*((*MEMORY[0x277D85000] & *v2) + 0x78))(v9);
    v31 = v59;
    v25(v59, v22, v12);
    return (v30)(v31, 0, 1, v12);
  }

  URL.appendingPathExtension(_:)();
  v38 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  v60[0] = 0;
  v45 = [v38 copyItemAtURL:v41 toURL:v43 error:v60];

  if (v45)
  {
    v46 = v60[0];
  }

  else
  {
    v50 = v60[0];
    v51 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  (*(v13 + 8))(v22, v12);
  v52 = v59;
  v25(v59, v19, v12);
  return (*(v13 + 56))(v52, 0, 1, v12);
}