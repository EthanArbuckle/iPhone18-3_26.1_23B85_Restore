uint64_t storeEnumTagSinglePayload for DOCFilenameView.DOCFilenameViewTextFieldUpdateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VisibilityState and conformance VisibilityState()
{
  result = lazy protocol witness table cache variable for type VisibilityState and conformance VisibilityState;
  if (!lazy protocol witness table cache variable for type VisibilityState and conformance VisibilityState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VisibilityState and conformance VisibilityState);
  }

  return result;
}

void partial apply for closure #2 in closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 1;
  DOCFilenameViewController.visibilityState.didset();

  dispatch_group_leave(v1);
}

void partial apply for closure #5 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  [*(v0 + 16) removeFromSuperview];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 0;
  DOCFilenameViewController.visibilityState.didset();

  dispatch_group_leave(v2);
}

id specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(void *a1, char a2)
{
  if (a2)
  {
    [a1 setClipsToBounds_];
    v3 = [a1 layer];
    [v3 setBorderWidth_];

    v4 = [a1 layer];
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.121568627];
    v6 = [v5 CGColor];

    [v4 setBorderColor_];
    [a1 bounds];
    Width = CGRectGetWidth(v13);
    [a1 bounds];
    Height = CGRectGetHeight(v14);
    if (Width > Height)
    {
      Height = Width;
    }

    v9 = Height * 6.0 * 0.0078125 + -1.0;
  }

  else
  {
    [a1 setClipsToBounds_];
    v10 = [a1 layer];
    v9 = 0.0;
    [v10 setBorderWidth_];
  }

  return [a1 _setContinuousCornerRadius_];
}

BOOL specialized DOCFilenameView.layout(for:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = DOCUsePadIdiomForTraits();
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  Width = CGRectGetWidth(v13);
  if (!v8)
  {
    return Width >= 430.0;
  }

  if (Width <= 551.0)
  {
    return 0;
  }

  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  Height = CGRectGetHeight(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  v11 = CGRectGetWidth(v15);
  if (v11 >= 1.0)
  {
    if (Height / v11 > 0.7)
    {
      return 0;
    }
  }

  else if (Height > 0.7)
  {
    return 0;
  }

  return 1;
}

id DOCFilenameTransitioningDelegate.animationController(forDismissed:)()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = [result topViewController];
    if (result)
    {
      v2 = result;
      type metadata accessor for DOCFilenameViewController();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item);
        if (v4)
        {
          v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate_transitionProxy);
          objc_allocWithZone(type metadata accessor for DOCFilenameTransitionCoordinator());
          swift_unknownObjectRetain();
          v6 = DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(v4, v5);
        }

        else
        {
          v6 = [objc_allocWithZone(type metadata accessor for DOCFilenameTransitionCoordinator()) init];
        }

        v7 = v6;

        return v7;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void partial apply for closure #1 in closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *(v6 + 16);
  v13 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail);
  *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail) = a1;
  v14 = a1;

  v15 = v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle;
  *v15 = a2;
  *(v15 + 8) = 0;
  v16 = v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = 0;
}

uint64_t objectdestroy_138Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t objectdestroy_307Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t lazy protocol witness table accessor for type UTType and conformance UTType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_317Tm()
{

  swift_unknownObjectRelease();
  outlined consume of RenameProposition();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t DOCCompositionalCandidateSource.__allocating_init(candidateSources:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

id DOCGoToViewController.__allocating_init(currentLocation:initialCandidateSource:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = specialized DOCGoToViewController.__allocating_init(currentLocation:initialCandidateSource:)(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

double DOCGoToMetrics.init()@<D0>(uint64_t a1@<X8>)
{
  __asm
  {
    FMOV            V0.2D, #16.0
    FMOV            V1.2D, #12.0
  }

  *a1 = _Q0;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

objc_class *DOCGoToLocationSection.localizedName.getter()
{
  v1 = *v0;
  result = _DocumentManagerBundle();
  v3 = result;
  if (v1)
  {
    if (result)
    {
      v13 = 0x8000000249BE5B30;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0x6E6F697461636F4CLL;
      v7 = 0xD00000000000001ELL;
      v8 = 0x8000000249BE5B10;
      v9 = 0xD000000000000039;
      v10.super.isa = v3;
      v11 = 0xE900000000000073;
LABEL_6:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, *&v4, v10, *&v6, *&v9)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else if (result)
  {
    v13 = 0x8000000249BE5B90;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v6 = 0x73746E65636552;
    v8 = 0x8000000249BE5B70;
    v9 = 0xD000000000000037;
    v7 = 0xD00000000000001CLL;
    v10.super.isa = v3;
    v11 = 0xE700000000000000;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

__n128 DOCGoToMetrics.cellLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void *DOCGoToMetrics.customSymbolConfiguration.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void *DOCGoToMetrics.customTextFont.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

Swift::Int DOCGoToLocationSection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCGoToViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCGoToViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

uint64_t DOCGoToViewController.selectedOrFirstSuggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x240);
  v5 = v4();
  (*((*v3 & *v5) + 0xE0))(&v9);

  if (v10)
  {
    return outlined init with take of DOCGoToFolderCandidate(&v9, a1);
  }

  v7 = v4();
  v8 = (*((*v3 & *v7) + 0xB0))();

  if (*(v8 + 16))
  {
    outlined init with copy of DOCSidebarItemIconProvider(v8 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void DOCGoToViewController.currentGoToLocation.didset(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v2 + v4, v16, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  v5 = v17;
  v6 = outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  if (!v5 || !*(a1 + 24))
  {
    goto LABEL_6;
  }

  outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  v7 = v17;
  if (v17)
  {
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    outlined init with copy of DOCGridLayout.Spec?(v2 + v4, v14, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
    if (v15)
    {
      v9 = (*(v8 + 16))(v14, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v6 = __swift_destroy_boxed_opaque_existential_0(v16);
      if (v9)
      {
LABEL_7:
        v12 = DOCGoToViewController.goButton.getter();
        outlined init with copy of DOCGridLayout.Spec?(v2 + v4, v16, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
        v13 = v17 == 0;
        outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
        [v12 setHidden_];

        return;
      }

LABEL_6:
      v10 = MEMORY[0x277D85000];
      v11 = (*((*MEMORY[0x277D85000] & *v2) + 0x240))(v6);
      (*((*v10 & *v11) + 0xB8))(MEMORY[0x277D84F90]);

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *closure #1 in DOCGoToViewController.inputField.getter(void *a1)
{
  type metadata accessor for DOCGoToTextField();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v15._object = 0x8000000249BE6130;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0x6F46206F74206F47;
    v6._object = 0xAFA680E27265646CLL;
    v7._object = 0x8000000249BE6110;
    v15._countAndFlagsBits = 0xD000000000000027;
    v7._countAndFlagsBits = 0xD00000000000001ALL;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v5, v4, v6, v15);

    v9 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    [v2 setPlaceholder_];

    [v2 addTarget:a1 action:sel_inputTextFieldDidChange_ forControlEvents:0x20000];
    v10 = v2;
    LODWORD(v11) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v11];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    [v10 setAdjustsFontForContentSizeCategory_];
    [v10 setClearButtonMode_];
    [v10 setReturnKeyType_];
    v12 = *((*MEMORY[0x277D85000] & *v10) + 0x78);
    v13 = v10;
    v14 = a1;
    v12(a1, &protocol witness table for DOCGoToViewController);

    [v13 setDelegate_];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in DOCGoToViewController.goButton.getter()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v26 - v11;
  v13 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  closure #1 in closure #1 in DOCGoToViewController.goButton.getter();
  if (_UISolariumEnabled())
  {
    v14 = objc_opt_self();
    v15 = [v14 tintColor];
    v16 = [v14 _doc_safeTintColor_];

    UIButton.Configuration.baseForegroundColor.setter();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
  v17 = *(v1 + 16);
  v17(v8, v12, v0);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17(v4, v8, v0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #3 in closure #1 in DOCGoToViewController.goButton.getter;
  *(v19 + 24) = v18;
  swift_retain_n();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v20 = UIButton.init(configuration:primaryAction:)();

  v21 = *(v1 + 8);
  v21(v8, v0);

  v22 = v20;
  LODWORD(v23) = 1144750080;
  [v22 setContentHuggingPriority:0 forAxis:v23];
  LODWORD(v24) = 1144750080;
  [v22 setContentHuggingPriority:1 forAxis:v24];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setHidden_];

  [v22 setPointerInteractionEnabled_];
  UIButton.pointerStyleProvider.setter();
  v21(v12, v0);
  return v22;
}

void closure #1 in closure #1 in DOCGoToViewController.goButton.getter()
{
  v0 = *MEMORY[0x277D76988];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle_];
  v3 = [v1 configurationWithWeight_];
  v4 = [v2 configurationByApplyingConfiguration_];

  v7 = v4;
  v5 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BE60F0);
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v7];

  UIButton.Configuration.image.setter();
  UIButton.Configuration.contentInsets.setter();
}

void closure #3 in closure #1 in DOCGoToViewController.goButton.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x290))();
  }
}

uint64_t closure #4 in closure #1 in DOCGoToViewController.goButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for UIPointerEffect();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPointerStyle);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D74B00], v6);
  v12 = type metadata accessor for UIPointerShape();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  return UIPointerStyle.init(effect:shape:)();
}

id DOCGoToViewController.topView.getter(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id DOCGoToViewController.noResultsView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView);
  }

  else
  {
    closure #1 in DOCGoToViewController.noResultsView.getter();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void closure #1 in DOCGoToViewController.noResultsView.getter()
{
  v0 = _DocumentManagerBundle();
  if (v0)
  {
    v1 = v0;
    v10._object = 0x8000000249BE60B0;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x8000000249BE6090;
    v4._object = 0x8000000249BE6090;
    v10._countAndFlagsBits = 0xD00000000000003ALL;
    v3._countAndFlagsBits = 0xD000000000000013;
    v4._countAndFlagsBits = 0xD000000000000013;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v10);

    v6 = objc_allocWithZone(type metadata accessor for DOCGoToNoResultsView());
    v7 = MEMORY[0x24C1FAD20](v5._countAndFlagsBits, v5._object);
    v8 = [v6 initWithFrame:v7 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    if (v8)
    {

      v9 = v8;
      [v9 setTranslatesAutoresizingMaskIntoConstraints_];
      [v9 setUserInteractionEnabled_];
      [v9 setHidden_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id DOCGoToViewController.inputField.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

void *closure #1 in DOCGoToViewController.suggestionsTableViewController.getter(char *a1)
{
  [a1 loadViewIfNeeded];
  v2 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 80];
  v57 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 64];
  v58 = v2;
  v59 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 96];
  v3 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 16];
  v53 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics];
  v54 = v3;
  v4 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 48];
  v55 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 32];
  v56 = v4;
  v5 = type metadata accessor for DOCGoToSuggestionsViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestionsTableViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestions] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_isFiltering] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections] = v7;
  v8 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics];
  v9 = v53;
  v10 = v55;
  v8[1] = v54;
  v8[2] = v10;
  *v8 = v9;
  v11 = v56;
  v12 = v57;
  v13 = v59;
  v8[5] = v58;
  v8[6] = v13;
  v8[3] = v11;
  v8[4] = v12;
  v14 = objc_allocWithZone(MEMORY[0x277D75300]);
  outlined init with copy of DOCGoToMetrics(&v53, &v52);
  v15 = [v14 init];
  v51.receiver = v6;
  v51.super_class = v5;
  v16 = objc_msgSendSuper2(&v51, sel_initWithCollectionViewLayout_, v15);

  result = [v16 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  v19 = *((*MEMORY[0x277D85000] & *v16) + 0xA0);
  v20 = swift_unknownObjectRetain();
  v19(v20, &protocol witness table for DOCGoToViewController);
  result = [v16 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v52 = result;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v23 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_scrollViewDidScrollObservation];
  *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_scrollViewDidScrollObservation] = v22;

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];

  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView;
  result = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [result addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249BAD7D0;
  result = [a1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result widthAnchor];

  v29 = [v18 widthAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 multiplier:1.0];

  *(v26 + 32) = v30;
  result = [a1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  v32 = [result bottomAnchor];

  v33 = [v18 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v26 + 40) = v34;
  v35 = [v18 centerXAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  v37 = [result centerXAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v26 + 48) = v38;
  v39 = [v18 leadingAnchor];
  result = *&a1[v25];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v40 = [result leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v26 + 56) = v41;
  v42 = [v18 trailingAnchor];
  result = *&a1[v25];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = [result trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v26 + 64) = v44;
  result = [v18 bottomAnchor];
  v45 = *&a1[v25];
  if (v45)
  {
    v46 = result;
    v47 = objc_opt_self();
    v48 = [v45 bottomAnchor];
    v49 = [v46 constraintEqualToAnchor_];

    *(v26 + 72) = v49;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 activateConstraints_];

    return v16;
  }

LABEL_19:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in DOCGoToViewController.suggestionsTableViewController.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCGoToViewController.updateSeparatorVisibility()();
  }
}

void DOCGoToViewController.suggestionsTableViewController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController) = a1;
}

void (*DOCGoToViewController.suggestionsTableViewController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCGoToViewController.suggestionsTableViewController.getter();
  return DOCGoToViewController.suggestionsTableViewController.modify;
}

void DOCGoToViewController.suggestionsTableViewController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController) = v2;
}

id DOCGoToViewController.init(currentLocation:initialCandidateSource:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x28223BE20](v8, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = specialized DOCGoToViewController.init(currentLocation:initialCandidateSource:)(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

uint64_t DOCGoToViewController.metrics.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 80);
  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 96);
  v4 = v15;
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 48);
  v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[5] = v3;
  a1[6] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  return outlined init with copy of DOCGoToMetrics(v10, &v9);
}

Swift::Void __swiftcall DOCGoToViewController.loadView()()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20](v2 - 8, v3);
  if (_UISolariumEnabled())
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v0 setView_];

    v5 = [v0 view];
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView;
    v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView] = v5;
    v8 = v5;

    if (v8)
    {
      static _Glass._GlassVariant.regular.getter();
      v17[3] = type metadata accessor for _Glass();
      v17[4] = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v17);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();

      v9 = *&v0[v6];
      if (v9)
      {
        v10 = objc_opt_self();
        v11 = v9;
        v12 = [v10 clearColor];
        [v11 setBackgroundColor_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v13 = [objc_opt_self() effectWithStyle_];
    v14 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    [v1 setView_];
    v15 = [v14 contentView];

    v16 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView] = v15;
  }
}

void *DOCGoToViewController.closeBox.getter()
{
  v0 = specialized DOCGoToViewController.closeBox.getter();
  v1 = v0;
  return v0;
}

void DOCGoToViewController.closeBox.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox) = a1;
  outlined consume of DOCProgressCollectionIndicatorView??(v2);
}

void (*DOCGoToViewController.closeBox.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = specialized DOCGoToViewController.closeBox.getter();
  *a1 = v3;
  v4 = v3;
  return DOCGoToViewController.closeBox.modify;
}

void DOCGoToViewController.closeBox.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox);
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox) = *a1;
  if (a2)
  {
    v5 = v2;
    outlined consume of DOCProgressCollectionIndicatorView??(v4);
  }

  else
  {

    outlined consume of DOCProgressCollectionIndicatorView??(v4);
  }
}

Swift::Void __swiftcall DOCGoToViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v163 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v163 - v8;
  v10 = type metadata accessor for DOCGoToViewController();
  v172.receiver = v0;
  v172.super_class = v10;
  objc_msgSendSuper2(&v172, sel_viewDidLoad);
  DOCGoToViewController.updatePreferredContentSize()();
  v11 = DOCGoToViewController.inputField.getter();
  v12 = MEMORY[0x277D85000];
  v13 = *MEMORY[0x277D85000] & *v0;
  v167 = *(v13 + 0x240);
  v168 = v13 + 576;
  v14 = v167();
  v15 = *&v11[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_coresponder];
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_coresponder] = v14;

  if (_UISolariumEnabled())
  {
    v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField);
    static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
    v17 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
    outlined destroy of CharacterSet?(v5, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd);
    v18 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
    UIView.cornerMaskingConfiguration.setter();
  }

  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView;
  v20 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView);
  if (!v20)
  {
    __break(1u);
    goto LABEL_33;
  }

  v21 = v20;
  v22 = DOCGoToViewController.topView.getter();
  [v21 addSubview_];

  v23 = *(v1 + v19);
  if (!v23)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v170 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField;
  [v23 addSubview_];
  v24 = *(v1 + v19);
  if (!v24)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = v24;
  v26 = DOCGoToViewController.goButton.getter();
  [v25 addSubview_];

  v27 = *(v1 + v19);
  if (!v27)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v27;
  v29 = DOCGoToViewController.separatorView.getter();
  [v28 addSubview_];

  v30 = *(v1 + v19);
  if (!v30)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v31 = v30;
  v32 = DOCGoToViewController.noResultsView.getter();
  [v31 addSubview_];

  v171 = MEMORY[0x277D84F90];
  v33 = (*((*v12 & *v1) + 0x260))();
  if (v33)
  {
    v34 = v33;
    [v34 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v35) = 1148846080;
    [v34 setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [v34 setContentHuggingPriority:1 forAxis:v36];
    v37 = *(v1 + v19);
    if (!v37)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    [v37 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA37E0;
    v39 = [v34 leadingAnchor];
    v40 = [v1 view];
    if (!v40)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v41 = v40;
    v42 = [v40 layoutMarginsGuide];

    v43 = [v42 leadingAnchor];
    v44 = [v39 constraintEqualToAnchor_];

    *(inited + 32) = v44;
    v45 = [v34 topAnchor];
    v46 = v170;
    v47 = [*(v1 + v170) topAnchor];
    v48 = [v45 constraintEqualToAnchor_];

    *(inited + 40) = v48;
    v49 = [*(v1 + v46) leadingAnchor];
    v50 = [v34 trailingAnchor];

    v51 = [v49 constraintEqualToAnchor:v50 constant:*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 24)];
    *(inited + 48) = v51;
    specialized Array.append<A>(contentsOf:)(inited);

LABEL_14:
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_249BA75C0;
    v59 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___topView;
    v60 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___topView) topAnchor];
    v61 = [v1 view];
    if (v61)
    {
      v62 = v61;
      v63 = [v61 topAnchor];

      v64 = [v60 constraintEqualToAnchor_];
      *(v58 + 32) = v64;
      v65 = [*(v1 + v59) leadingAnchor];
      v66 = [v1 view];
      if (v66)
      {
        v67 = v66;
        v68 = [v66 leadingAnchor];

        v69 = [v65 constraintEqualToAnchor_];
        *(v58 + 40) = v69;
        v70 = [*(v1 + v59) trailingAnchor];
        v71 = [v1 view];
        if (v71)
        {
          v72 = v71;
          v166 = v59;
          v73 = [v71 trailingAnchor];

          v74 = [v70 constraintEqualToAnchor_];
          *(v58 + 48) = v74;
          v75 = v170;
          v76 = [*(v1 + v170) trailingAnchor];
          v77 = [v1 view];
          if (v77)
          {
            v78 = v77;
            v79 = [v77 trailingAnchor];

            v80 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics);
            v81 = [v76 constraintEqualToAnchor:v79 constant:-*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics)];

            *(v58 + 56) = v81;
            v82 = [*(v1 + v75) topAnchor];
            v83 = [v1 view];
            if (v83)
            {
              v84 = v83;
              v85 = [v83 topAnchor];

              v86 = [v82 constraintEqualToAnchor:v85 constant:v80[1]];
              *(v58 + 64) = v86;
              v165 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___goButton;
              v87 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___goButton) trailingAnchor];
              v88 = [*(v1 + v75) trailingAnchor];
              v89 = [v87 constraintEqualToAnchor:v88 constant:-v80[2]];

              *(v58 + 72) = v89;
              v90 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___separatorView;
              v91 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___separatorView) leadingAnchor];
              v92 = [v1 view];
              if (v92)
              {
                v93 = v92;
                v94 = [v92 leadingAnchor];

                v95 = [v91 constraintEqualToAnchor:v94 constant:0.0];
                *(v58 + 80) = v95;
                v164 = v90;
                v96 = [*(v1 + v90) trailingAnchor];
                v97 = [v1 view];
                if (v97)
                {
                  v98 = v97;
                  v99 = [v97 trailingAnchor];

                  v100 = [v96 constraintEqualToAnchor:v99 constant:0.0];
                  *(v58 + 88) = v100;
                  v101 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView;
                  v102 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView) leftAnchor];
                  v103 = [v1 view];
                  if (v103)
                  {
                    v104 = v103;
                    v105 = [v103 leftAnchor];

                    v106 = [v102 constraintEqualToAnchor_];
                    *(v58 + 96) = v106;
                    v107 = [*(v1 + v101) rightAnchor];
                    v108 = [v1 view];
                    if (v108)
                    {
                      v109 = v108;
                      v110 = [v108 rightAnchor];

                      v111 = [v107 constraintEqualToAnchor_];
                      *(v58 + 104) = v111;
                      v112 = [*(v1 + v101) topAnchor];
                      v113 = [v1 view];
                      if (v113)
                      {
                        v114 = v113;
                        v115 = [v113 topAnchor];

                        v116 = [v112 constraintEqualToAnchor:v115 constant:50.0];
                        *(v58 + 112) = v116;
                        v117 = [*(v1 + v101) bottomAnchor];
                        v118 = [v1 view];
                        if (v118)
                        {
                          v119 = v118;
                          v120 = [v118 bottomAnchor];

                          v121 = [v117 constraintEqualToAnchor_];
                          *(v58 + 120) = v121;
                          v122 = specialized Array.append<A>(contentsOf:)(v58);
                          v123 = (v167)(v122);
                          v124 = [v123 view];

                          v163 = v124;
                          if (v124)
                          {
                            v125 = swift_initStackObject();
                            *(v125 + 16) = xmmword_249BA37E0;
                            v126 = [*(v1 + v166) bottomAnchor];
                            v127 = v170;
                            v128 = [*(v1 + v170) bottomAnchor];
                            v129 = [v126 constraintEqualToAnchor:v128 constant:16.0];

                            *(v125 + 32) = v129;
                            v130 = [*(v1 + v165) centerYAnchor];
                            v131 = [*(v1 + v127) centerYAnchor];
                            v132 = [v130 constraintEqualToAnchor_];

                            *(v125 + 40) = v132;
                            v133 = [*(v1 + v164) topAnchor];
                            v134 = [*(v1 + v127) bottomAnchor];
                            v135 = [v133 constraintEqualToAnchor:v134 constant:16.0];

                            *(v125 + 48) = v135;
                            specialized Array.append<A>(contentsOf:)(v125);
                            if (!_UISolariumEnabled())
                            {
                              v155 = swift_initStackObject();
                              *(v155 + 16) = xmmword_249BA0290;
                              v156 = v163;
                              v157 = [v163 topAnchor];
                              v158 = *(v1 + v127);
                              v137 = v156;
                              v159 = [v158 bottomAnchor];
                              v160 = [v157 constraintEqualToAnchor:v159 constant:16.0];

                              *(v155 + 32) = v160;
                              specialized Array.append<A>(contentsOf:)(v155);
LABEL_31:
                              v161 = objc_opt_self();
                              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                              isa = Array._bridgeToObjectiveC()().super.isa;

                              [v161 activateConstraints_];

                              return;
                            }

                            v136 = swift_initStackObject();
                            *(v136 + 16) = xmmword_249BA1010;
                            v137 = v163;
                            v138 = [v163 topAnchor];
                            v139 = [v1 view];
                            if (v139)
                            {
                              v140 = v139;
                              v141 = [v139 topAnchor];

                              v142 = [v138 constraintEqualToAnchor_];
                              *(v136 + 32) = v142;
                              v143 = [v137 safeAreaLayoutGuide];
                              v144 = [v143 topAnchor];

                              v145 = v166;
                              v146 = [*(v1 + v166) bottomAnchor];
                              v147 = [v144 constraintEqualToAnchor_];

                              *(v136 + 40) = v147;
                              v148 = specialized Array.append<A>(contentsOf:)(v136);
                              v149 = (v167)(v148);
                              v150 = [v149 collectionView];

                              if (v150)
                              {
                                v151 = *(v1 + v145);
                                v152 = objc_allocWithZone(MEMORY[0x277D76220]);
                                v153 = v151;
                                v154 = [v152 initWithScrollView:v150 edge:1 style:0];
                                [v153 addInteraction_];
                              }

                              goto LABEL_31;
                            }

                            goto LABEL_51;
                          }

                          goto LABEL_48;
                        }

LABEL_47:
                        __break(1u);
LABEL_48:
                        __break(1u);
                        goto LABEL_49;
                      }

LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }

LABEL_45:
                    __break(1u);
                    goto LABEL_46;
                  }

LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_249BA0290;
  v53 = [*(v1 + v170) leadingAnchor];
  v54 = [v1 view];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 leadingAnchor];

    v57 = [v53 constraintEqualToAnchor:v56 constant:*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics)];
    *(v52 + 32) = v57;
    specialized Array.append<A>(contentsOf:)(v52);
    goto LABEL_14;
  }

LABEL_52:
  __break(1u);
}

Swift::Void __swiftcall DOCGoToViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCGoToViewController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  v3 = DOCGoToViewController.inputField.getter();
  [v3 becomeFirstResponder];

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v4, &v5, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  if (v6)
  {
    outlined init with take of DOCGoToFolderCandidate(&v5, v7);
    DOCGoToViewController.fetchFilteringSource(for:)(v7);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    outlined destroy of CharacterSet?(&v5, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  }

  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken) == 1)
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken) = 0;
    DOCGoToViewController.suggestCandidates(for:selectingFirst:)(0, 0xE000000000000000, 0);
  }
}

uint64_t DOCGoToViewController.goToLocation()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v1, &v7, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  if (!v8)
  {
    return outlined destroy of CharacterSet?(&v7, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  }

  v2 = outlined init with take of DOCGoToFolderCandidate(&v7, v9);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF8))(v2))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(v0, v9, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

Swift::Void __swiftcall DOCGoToViewController.didTab()()
{
  DOCGoToViewController.selectedOrFirstSuggestion.getter(&v0);
  if (v1)
  {
    outlined init with take of DOCGoToFolderCandidate(&v0, v2);
    DOCGoToViewController.confirmSuggestion(_:)(v2);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    outlined destroy of CharacterSet?(&v0, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }
}

Swift::Void __swiftcall DOCGoToViewController.didReturn()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  (*((*v2 & *v3) + 0xE0))(&v9);

  if (v10)
  {
    outlined init with take of DOCGoToFolderCandidate(&v9, v11);
    DOCGoToViewController.confirmSuggestion(_:)(v11);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    outlined destroy of CharacterSet?(&v9, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v4, &v9, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  if (v10)
  {
    v5 = outlined init with take of DOCGoToFolderCandidate(&v9, v11);
    if ((*((*v2 & *v1) + 0xF8))(v5))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 32))(v1, v11, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    outlined destroy of CharacterSet?(&v9, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  }
}

Swift::Void __swiftcall DOCGoToViewController.viewDidLayoutSubviews()()
{
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  v2 = [v1 collectionView];

  if (v2)
  {
    v3 = DOCGoToViewController.topView.getter();
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    [v2 setContentInset_];

LABEL_4:
    v12.receiver = v0;
    v12.super_class = type metadata accessor for DOCGoToViewController();
    objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
    return;
  }

  __break(1u);
}

uint64_t DOCGoToViewController.suggestCandidates(for:selectingFirst:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v42 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v38 - v14;
  v48[0] = a1;
  v48[1] = a2;
  v16 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  lazy protocol witness table accessor for type String and conformance String();
  v40 = StringProtocol.folding(options:locale:)();
  v41 = v18;
  outlined destroy of CharacterSet?(v15, &_s10Foundation6LocaleVSgMd);
  v19 = DOCGoToViewController.inputField.getter();
  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *v19) + 0xA0))();

  v22 = *(v21 + 16);

  if (v22)
  {
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_filteringSource;
    swift_beginAccess();
    v24 = outlined init with copy of DOCGridLayout.Spec?(&v4[v23], v48, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd);
  }

  else
  {
    v24 = outlined init with copy of DOCSidebarItemIconProvider(&v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialCandidateSource], v48);
  }

  v25 = (*((*v20 & *v4) + 0x240))(v24);
  v26 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField];
  v27 = *((*v20 & *v26) + 0x98);
  v28 = v26;
  LOBYTE(v27) = v27();

  (*((*v20 & *v25) + 0xD0))((v27 & 1) == 0);
  outlined init with copy of DOCGridLayout.Spec?(v48, &v43, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd);
  if (v44)
  {
    outlined init with take of DOCGoToFolderCandidate(&v43, v45);
    v29 = DOCGoToViewController.noResultsView.getter();
    [v29 setHidden_];

    UUID.init()();
    v30 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_requestID;
    swift_beginAccess();
    (*(v8 + 40))(&v4[v30], v11, v7);
    swift_endAccess();
    v31 = v47;
    v39 = v46;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v8 + 16))(v11, &v4[v30], v7);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v4;
    *(v33 + 32) = v42 & 1;
    v34 = v7;
    v35 = *(v31 + 8);

    v36 = v4;
    v35(v40, v41, v11, partial apply for closure #1 in DOCGoToViewController.suggestCandidates(for:selectingFirst:), v33, v39, v31);

    (*(v8 + 8))(v11, v34);
    outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd);

    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    outlined destroy of CharacterSet?(&v43, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t deduplicated #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  if (!v27)
  {
    return v1;
  }

  v2 = 0;
  v26 = a1 + 32;
  while (1)
  {
    v28 = v2;
    outlined init with copy of DOCSidebarItemIconProvider(v26 + 40 * v2, v33);
    v3 = v1[2];
    if (v3)
    {
      break;
    }

LABEL_10:
    outlined init with copy of DOCSidebarItemIconProvider(v33, &v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    }

    v15 = v1[2];
    v14 = v1[3];
    if (v15 >= v14 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v1);
    }

    v1[2] = v15 + 1;
    outlined init with take of DOCGoToFolderCandidate(&v30, &v1[5 * v15 + 4]);
    v36 = v1;
LABEL_5:
    v2 = v28 + 1;
    __swift_destroy_boxed_opaque_existential_0(v33);
    if (v28 + 1 == v27)
    {
      return v1;
    }
  }

  v4 = 0;
  v5 = v1 + 4;
  while (1)
  {
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 24))(&v30, v6, v7);
    v8 = v31;
    v9 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v10 = v34;
    v11 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v11 + 24))(v29, v10, v11);
    v12 = (*(v9 + 16))(v29, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v29);
    result = __swift_destroy_boxed_opaque_existential_0(&v30);
    if (v12)
    {
      break;
    }

    ++v4;
    v5 += 5;
    if (v3 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < v1[2])
  {
    outlined init with copy of DOCSidebarItemIconProvider(v5, &v30);
    v16 = v34;
    v17 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v18 = (*(v17 + 16))(v16, v17);
    v19 = [v18 length];

    v20 = v31;
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v22 = (*(v21 + 16))(v20, v21);
    v23 = [v22 length];

    if (v23 < v19)
    {
      specialized Array.remove(at:)(v4, v29);
      __swift_destroy_boxed_opaque_existential_0(v29);
      outlined init with copy of DOCSidebarItemIconProvider(v33, v29);
      v1 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
      }

      v25 = v1[2];
      v24 = v1[3];
      if (v25 >= v24 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v1);
      }

      v1[2] = v25 + 1;
      outlined init with take of DOCGoToFolderCandidate(v29, &v1[5 * v25 + 4]);
      v36 = v1;
    }

    __swift_destroy_boxed_opaque_existential_0(&v30);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void updateSuggestions #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(uint64_t a1, void *a2, char a3)
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a2) + 0x240);
  v7 = v6();
  v8 = *((*v5 & *v7) + 0xB8);

  v8(v9);

  if ((a3 & 1) != 0 && *(a1 + 16))
  {
    v10 = v6();
    (*((*v5 & *v10) + 0x108))();
  }

  v11 = DOCGoToViewController.inputField.getter();
  (*((*v5 & *v11) + 0x108))();

  v12 = DOCGoToViewController.noResultsView.getter();
  [v12 setHidden_];
}

uint64_t closure #1 in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(char *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v49 = a5;
  v50 = a4;
  v48 = a2;
  v55 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v51 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v54 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v46 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_requestID;
    v29 = Strong;
    swift_beginAccess();
    v30 = *(v9 + 16);
    v30(v26, &v29[v28], v8);

    v31 = *(v9 + 56);
    v31(v26, 0, 1, v8);
  }

  else
  {
    v31 = *(v9 + 56);
    v31(v26, 1, 1, v8);
    v30 = *(v9 + 16);
  }

  v30(v22, v55, v8);
  v31(v22, 0, 1, v8);
  v32 = *(v12 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v26, v15, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v22, &v15[v32], &_s10Foundation4UUIDVSgMd);
  v33 = *(v9 + 48);
  if (v33(v15, 1, v8) != 1)
  {
    v34 = v54;
    outlined init with copy of DOCGridLayout.Spec?(v15, v54, &_s10Foundation4UUIDVSgMd);
    if (v33(&v15[v32], 1, v8) != 1)
    {
      v36 = v47;
      (*(v9 + 32))(v47, &v15[v32], v8);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v37 = v34;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v9 + 8);
      v39(v36, v8);
      outlined destroy of CharacterSet?(v22, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CharacterSet?(v26, &_s10Foundation4UUIDVSgMd);
      v39(v37, v8);
      result = outlined destroy of CharacterSet?(v15, &_s10Foundation4UUIDVSgMd);
      if ((v38 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    outlined destroy of CharacterSet?(v22, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CharacterSet?(v26, &_s10Foundation4UUIDVSgMd);
    (*(v9 + 8))(v34, v8);
    return outlined destroy of CharacterSet?(v15, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of CharacterSet?(v22, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CharacterSet?(v26, &_s10Foundation4UUIDVSgMd);
  if (v33(&v15[v32], 1, v8) != 1)
  {
    return outlined destroy of CharacterSet?(v15, &_s10Foundation4UUIDVSg_ADtMd);
  }

  outlined destroy of CharacterSet?(v15, &_s10Foundation4UUIDVSgMd);
LABEL_11:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v40 = static OS_dispatch_queue.main.getter();
  v42 = v51;
  v41 = v52;
  *v51 = v40;
  v43 = v53;
  (*(v41 + 104))(v42, *MEMORY[0x277D85200], v53);
  v44 = _dispatchPreconditionTest(_:)();
  result = (*(v41 + 8))(v42, v43);
  if (v44)
  {
    v45 = deduplicated #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(v48);
    updateSuggestions #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(v45, v50, v49 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCGoToViewController.updateSeparatorVisibility()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  v2 = [v1 collectionView];

  if (v2)
  {
    [v2 contentOffset];
    v4 = v3;

    v7 = DOCGoToViewController.separatorView.getter();
    v5 = 0.0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      if (v4 <= 15.0)
      {
        v6 = v4;
      }

      else
      {
        v6 = 15.0;
      }

      v5 = v6 / 15.0;
    }

    [v7 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id DOCGoToViewController.updatePreferredContentSize()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v3 = static UIContentSizeCategory.> infix(_:_:)();

    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {

    v4 = 0;
  }

  if (specialized Sequence<>.contains(_:)(v4, &outlined read-only object #0 of DOCGoToViewController.updatePreferredContentSize()))
  {
    v5 = DOCScreenSizePad12_9();
    v6 = 500.0;
    if (!v5)
    {
      v6 = 420.0;
    }

    v7 = 640.0;
    if (v5)
    {
      v7 = 840.0;
    }
  }

  else
  {
    v7 = 640.0;
    v6 = 420.0;
  }

  return [v0 setPreferredContentSize_];
}

uint64_t DOCGoToViewController.fetchFilteringSource(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF8))())
  {
    v6 = v5;
    v7 = DOCGoToViewController.inputField.getter();
    v8 = (*((*v4 & *v7) + 0xA0))();

    v9 = *(v8 + 16);

    if (v9)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v13, v2, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      outlined init with copy of DOCSidebarItemIconProvider(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialCandidateSource, v13);
    }

    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_filteringSource;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v13, v2 + v11, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd);
    return swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DOCGoToViewController.confirmSuggestion(_:)(void *a1)
{
  v2 = v1;
  v4 = DOCGoToViewController.inputField.getter();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0xA0))();

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  outlined init with copy of DOCSidebarItemIconProvider(a1, &v35);
  v34[0] = v9;
  v34[1] = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v13 = v6[2];
  v12 = v6[3];
  if (v13 >= v12 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
  }

  v32 = &unk_285C9D888;
  v33 = &protocol witness table for DOCGoToToken;
  *&v31 = swift_allocObject();
  outlined init with copy of DOCGoToToken(v34, v31 + 16);
  v6[2] = v13 + 1;
  outlined init with take of DOCGoToFolderCandidate(&v31, &v6[5 * v13 + 4]);
  outlined destroy of DOCGoToToken(v34);
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField;
  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField);
  v16 = *((*v5 & *v15) + 0xA8);
  v17 = v15;
  v16(v6);

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 24))(v34, v18, v19);
  if ((*((*v5 & *v2) + 0xF8))(v20))
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 24))(v2, v34, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  DOCGoToViewController.fetchFilteringSource(for:)(v34);
  DOCGoToViewController.suggestCandidates(for:selectingFirst:)(0, 0xE000000000000000, 0);
  v24 = *(v2 + v14);
  v25 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
  [v24 setText_];

  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 24))(&v31, v26, v27);
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v2 + v28, v30, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  swift_beginAccess();
  outlined assign with copy of DOCGoToLocation?(&v31, v2 + v28);
  swift_endAccess();
  DOCGoToViewController.currentGoToLocation.didset(v30);
  outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  outlined destroy of CharacterSet?(&v31, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  return __swift_destroy_boxed_opaque_existential_0(v34);
}

id DOCGoToViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCGoToViewController.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_delegate);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialCandidateSource);
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_filteringSource, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_requestID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 96);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox);

  outlined consume of DOCProgressCollectionIndicatorView??(v4);
}

uint64_t DOCGoToViewController.suggestionsViewController(_:imageForSuggestion:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0xF8))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(v2, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8;
  }

  return result;
}

void DOCGoToViewController.suggestionsViewController(_:didSelectSuggestion:)()
{
  v0 = DOCGoToViewController.inputField.getter();
  (*((*MEMORY[0x277D85000] & *v0) + 0x108))();
}

uint64_t DOCGoToViewController.suggestionsViewControllerDidClearRecents(_:)()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for DOCGoToSuggestionsViewControllerDelegate.suggestionsViewController(_:imageForSuggestion:) in conformance DOCGoToViewController(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0xF8))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(v2, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8;
  }

  return result;
}

void protocol witness for DOCGoToSuggestionsViewControllerDelegate.suggestionsViewController(_:didSelectSuggestion:) in conformance DOCGoToViewController()
{
  v0 = DOCGoToViewController.inputField.getter();
  (*((*MEMORY[0x277D85000] & *v0) + 0x108))();
}

uint64_t protocol witness for DOCGoToSuggestionsViewControllerDelegate.suggestionsViewControllerDidClearRecents(_:) in conformance DOCGoToViewController()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall DOCGoToViewController.textField(_:shouldChangeCharactersIn:replacementString:)(UITextField *_, __C::_NSRange shouldChangeCharactersIn, Swift::String replacementString)
{
  if ((replacementString._countAndFlagsBits != 9 || replacementString._object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  (*((*MEMORY[0x277D85000] & *v3) + 0x288))();
  return 0;
}

id DOCGoToViewController.inputTextFieldDidChange(_:)(void *a1)
{
  v2 = v1;
  result = [a1 text];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = DOCGoToViewController.inputField.getter();
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v8) + 0xA0))();

  v11 = *(v10 + 16);
  if (!v11)
  {

    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_13;
  }

  outlined init with copy of DOCSidebarItemIconProvider(v10 + 40 * v11 - 8, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCTextFieldToken_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    goto LABEL_13;
  }

  if (!*(&v26 + 1))
  {
LABEL_13:
    outlined destroy of CharacterSet?(&v26, &_s26DocumentManagerExecutables12DOCGoToToken33_FE402B1CD7048B20557F1F41FB0A2CFFLLVSgMd);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_14;
  }

  outlined init with copy of DOCSidebarItemIconProvider(&v27, v23);
  outlined destroy of DOCGoToToken(&v26);
  v12 = v24;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v13 + 24))(&v30, v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (*(&v31 + 1))
  {
    outlined init with take of DOCGoToFolderCandidate(&v30, v33);
    v14 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v2 + v14, &v26, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
    v15 = *(&v27 + 1);
    outlined destroy of CharacterSet?(&v26, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = v34;
    v17 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    result = outlined init with copy of DOCGridLayout.Spec?(v2 + v14, &v26, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
    if (!*(&v27 + 1))
    {
      __break(1u);
      return result;
    }

    v18 = (*(v17 + 16))(&v26, v16, v17);
    __swift_destroy_boxed_opaque_existential_0(&v26);
    if ((v18 & 1) == 0)
    {
LABEL_9:
      outlined init with copy of DOCSidebarItemIconProvider(v33, &v26);
      outlined init with copy of DOCGridLayout.Spec?(v2 + v14, &v30, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
      swift_beginAccess();
      outlined assign with copy of DOCGoToLocation?(&v26, v2 + v14);
      swift_endAccess();
      DOCGoToViewController.currentGoToLocation.didset(&v30);
      outlined destroy of CharacterSet?(&v30, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
      outlined destroy of CharacterSet?(&v26, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
      DOCGoToViewController.fetchFilteringSource(for:)(v33);
    }

    v19 = __swift_destroy_boxed_opaque_existential_0(v33);
    goto LABEL_15;
  }

LABEL_14:
  outlined destroy of CharacterSet?(&v30, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  *&v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v2 + v20, v33, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  swift_beginAccess();
  outlined assign with copy of DOCGoToLocation?(&v26, v2 + v20);
  swift_endAccess();
  DOCGoToViewController.currentGoToLocation.didset(v33);
  outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  v19 = outlined destroy of CharacterSet?(&v26, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
LABEL_15:
  v21 = (*((*v9 & *v2) + 0x240))(v19);
  (*((*v9 & *v21) + 0xB8))(MEMORY[0x277D84F90]);

  v22 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v22 = v5 & 0xFFFFFFFFFFFFLL;
  }

  DOCGoToViewController.suggestCandidates(for:selectingFirst:)(v5, v7, v22 != 0);
}

void DOCGoToTextField.keyCommands.getter()
{
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  [v0 selectionRange];
  if (v4 < 1)
  {

    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA0290;
    v6 = MEMORY[0x24C1FAD20](v1, v3);

    v7 = [objc_opt_self() keyCommandWithInput:v6 modifierFlags:0 action:sel_didHitDirectionalArrow];

    *(v5 + 32) = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA37E0;
  v9 = MEMORY[0x24C1FAD20](9, 0xE100000000000000);
  v10 = objc_opt_self();
  v11 = [v10 keyCommandWithInput:v9 modifierFlags:0 action:sel_didTab];

  *(inited + 32) = v11;
  v12 = MEMORY[0x24C1FAD20](13, 0xE100000000000000);
  v13 = [v10 keyCommandWithInput:v12 modifierFlags:0 action:sel_didReturn];

  *(inited + 40) = v13;
  v14 = MEMORY[0x24C1FAD20](47, 0xE100000000000000);
  v15 = [v10 keyCommandWithInput:v14 modifierFlags:0 action:sel_didTab];

  *(inited + 48) = v15;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v17 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C1FC540](v17, v5);
      }

      else
      {
        if (v17 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v18 = *(v5 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 setWantsPriorityOverSystemBehavior_];

      ++v17;
      if (v20 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v21 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x24C1FC540](j, inited);
      }

      else
      {
        if (j >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v23 = *(inited + 8 * j + 32);
      }

      v24 = v23;
      [v23 setWantsPriorityOverSystemBehavior_];
    }
  }

  v27.receiver = v0;
  v27.super_class = type metadata accessor for DOCGoToTextField();
  v25 = objc_msgSendSuper2(&v27, sel_keyCommands);
  if (v25)
  {
    v26 = v25;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized Array.append<A>(contentsOf:)(inited);
  specialized Array.append<A>(contentsOf:)(v5);
}

void DOCGoToTextField.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_coresponder);
}

id DOCGoToViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DOCCompositionalCandidateSource.init(candidateSources:)(uint64_t a1)
{
  v3 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

id DOCCompositionalCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = [*(v5 + 24) removeAllObjects];
  v10 = *(v5 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    v18 = a4;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v12, v24);
      v13 = v26;
      v22 = v25;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v14 = swift_allocObject();
      swift_weakInit();
      outlined init with copy of DOCSidebarItemIconProvider(v24, v23);
      v15 = swift_allocObject();
      v15[2] = v14;
      outlined init with take of DOCGoToFolderCandidate(v23, (v15 + 3));
      v15[8] = a4;
      v15[9] = a5;
      v16 = v6;
      v17 = *(v13 + 8);

      v17(a1, a2, a3, partial apply for closure #1 in closure #1 in DOCCompositionalCandidateSource.generateCandidates(for:requestID:updateHandler:), v15, v22, v13);
      v6 = v16;
      a4 = v18;

      result = __swift_destroy_boxed_opaque_existential_0(v24);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCCompositionalCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  outlined init with copy of DOCSidebarItemIconProvider(a4, v20);
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 88) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a2;
  outlined init with take of DOCGoToFolderCandidate(v20, (v17 + 32));
  *(v17 + 9) = a5;
  *(v17 + 10) = a6;
  (*(v13 + 32))(&v17[v16], &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in closure #1 in DOCCompositionalCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v21 = a6;
    v22 = a4;
    v11 = *(Strong + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    [v11 setObject:isa forKey:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    v13 = *(v10 + 16);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;
      v16 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of DOCSidebarItemIconProvider(v15, v23);
        v17 = *(v10 + 24);
        __swift_project_boxed_opaque_existential_1(v23, v23[3]);
        v18 = v17;
        v19 = _bridgeAnythingToObjectiveC<A>(_:)();
        __swift_destroy_boxed_opaque_existential_0(v23);
        v20 = [v18 objectForKey_];
        swift_unknownObjectRelease();

        if (v20)
        {
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        v15 += 40;
        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v22(v21, v16);
  }
}

uint64_t DOCCompositionalCandidateSource.deinit()
{

  return v0;
}

id specialized DOCGoToViewController.init(currentLocation:initialCandidateSource:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[3] = a4;
  v29[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v28[3] = a5;
  v28[4] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_suggestionsTableViewWidthConstraint] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView] = 0;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken] = 1;
  v15 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_filteringSource];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_scrollViewDidScrollObservation] = 0;
  v16 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  UUID.init()();
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___goButton] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___topView] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___separatorView] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController] = 0;
  v17 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics];
  __asm
  {
    FMOV            V0.2D, #16.0
    FMOV            V1.2D, #12.0
  }

  *v17 = _Q0;
  *(v17 + 1) = _Q1;
  *(v17 + 4) = 0;
  v17[40] = 1;
  *(v17 + 3) = 0u;
  *(v17 + 4) = 0u;
  v17[80] = 1;
  *(v17 + 12) = 0;
  *(v17 + 13) = 0;
  *(v17 + 11) = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox] = 1;
  outlined init with copy of DOCSidebarItemIconProvider(v29, v27);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v27, v16, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  swift_endAccess();
  outlined init with copy of DOCSidebarItemIconProvider(v28, &a3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialCandidateSource]);
  v26.receiver = a3;
  v26.super_class = type metadata accessor for DOCGoToViewController();
  v24 = objc_msgSendSuper2(&v26, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v24;
}

id specialized DOCGoToViewController.__allocating_init(currentLocation:initialCandidateSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(type metadata accessor for DOCGoToViewController());
  (*(v16 + 16))(v20, a1, a4);
  (*(v12 + 16))(v14, a2, a5);
  return specialized DOCGoToViewController.init(currentLocation:initialCandidateSource:)(v20, v14, v21, a4, a5, a6, v24);
}

uint64_t specialized DOCGoToViewController.tokenTextField(_:textSuggestionFor:)(void *a1)
{
  DOCGoToViewController.selectedOrFirstSuggestion.getter(&v6);
  if (v7)
  {
    outlined init with take of DOCGoToFolderCandidate(&v6, v8);
    if ([a1 hasText])
    {
      v2 = v9;
      v3 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v4 = (*(v3 + 8))(v2, v3);
      __swift_destroy_boxed_opaque_existential_0(v8);
      return v4;
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    outlined destroy of CharacterSet?(&v6, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }

  return 0;
}

uint64_t specialized DOCGoToViewController.closeBox.getter()
{
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox) = 0;
  }

  return result;
}

uint64_t type metadata accessor for DOCGoToViewController()
{
  result = type metadata singleton initialization cache for DOCGoToViewController;
  if (!type metadata singleton initialization cache for DOCGoToViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGoToLocationSection and conformance DOCGoToLocationSection()
{
  result = lazy protocol witness table cache variable for type DOCGoToLocationSection and conformance DOCGoToLocationSection;
  if (!lazy protocol witness table cache variable for type DOCGoToLocationSection and conformance DOCGoToLocationSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGoToLocationSection and conformance DOCGoToLocationSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DOCGoToLocationSection] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCGoToLocationSection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCGoToLocationSection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables22DOCGoToLocationSectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCGoToLocationSection] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCGoToMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for DOCGoToMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for DOCGoToViewController()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t outlined assign with copy of DOCGoToLocation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCCompositionalCandidateSource.generateCandidates(for:requestID:updateHandler:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0 + ((*(v1 + 80) + 88) & ~*(v1 + 80));

  closure #1 in closure #1 in closure #1 in DOCCompositionalCandidateSource.generateCandidates(for:requestID:updateHandler:)(v2, v3, v0 + 4, v4, v5, v6);
}

uint64_t DOCCompositionalCandidateSource.__deallocating_deinit(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v3 + 16));

  return a3(v3, a2, 7);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCGoToToken(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for DOCGoToToken(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Void __swiftcall DOCSplitBrowserViewController.swift_commonInit()()
{
  v1 = v0;
  v2 = [v0 sidebarViewController];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x508))();

  if (v4)
  {
    (*((*v3 & *v4) + 0x268))([v1 fullDocumentManagerViewController], &protocol witness table for DOCFullDocumentManagerViewController);
  }
}

void DOCSplitBrowserViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = [v3 fullDocumentManagerViewController];
  v7 = [v15 effectiveBrowserViewController];
  if (v7 && (v8 = v7, v9 = MEMORY[0x277D85000], v10 = (*((*MEMORY[0x277D85000] & *v7) + 0xE8))(), v8, v10))
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = *((*v9 & *v11) + 0xF48);
      v10 = v10;
      v12(a1, a2, a3);

      v13 = v10;
    }

    else
    {
      v13 = v15;
    }

    v14 = v10;
  }

  else
  {
    v14 = v15;
  }
}

Swift::Void __swiftcall DOCSplitBrowserViewController.forceSidebarHiddenByDefaultForUIPDocLandingIfNecessary()()
{
  if ([v0 enclosedInUIPDocumentLanding] && objc_msgSend(v0, sel_displayMode) == 1)
  {

    [v0 saveUserPrefersSidebarHidden_];
  }
}

Swift::Void __swiftcall DOCSplitBrowserViewController.updateUIPHorizontalInsetsIfNecessary()()
{
  v1 = type metadata accessor for UITraitOverrides();
  v6 = [v0 fullDocumentManagerViewController];
  [v6 enclosingUIPHorizontalInset];
  v4 = v3;
  if (DOCSplitBrowserViewController.environmentWantsUIPInsets.getter())
  {
    v5 = 160.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v5 == v4)
  {
  }

  else
  {
    UIViewController.traitOverrides.getter();
    lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
  }
}

BOOL DOCSplitBrowserViewController.environmentWantsUIPInsets.getter()
{
  v1 = v0;
  v2 = [v0 fullDocumentManagerViewController];
  v3 = [v2 dataSource];
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x188))();

  result = 0;
  if (v4 != 3)
  {
    v5 = [v1 doc_splitViewState];
    v6 = [v5 isSidebarShownInOverlay];

    v7 = [v1 enclosingTabSwitcherStyle];
    if ([v1 enclosedInUIPDocumentLanding])
    {
      if ((UISplitViewController.hasEnoughRoomToTileSidebar.getter() & 1) != 0 && (v7 == 2) | v6 & 1)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t UISplitViewController.hasEnoughRoomToTileSidebar.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = result;
  [result frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Width = CGRectGetWidth(v24);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result traitCollection];

  if ([v13 userInterfaceIdiom] != 1 || objc_msgSend(v13, sel_horizontalSizeClass) != 2)
  {

    return 0;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_16;
  }

  v14 = result;
  v15 = [result window];

  if (v15 && ((v16 = [v15 screen], v15, objc_msgSend(v16, sel_bounds), v18 = v17, v20 = v19, v16, v18 > v20) ? (v21 = v18) : (v21 = v20), v21 * 0.95 < Width))
  {

    return 1;
  }

  else
  {
    static DOCGridLayout.minWidthRequiredToDisplay(numberOfColumns:includeEdgeInsets:itemSpacing:traits:)(6, 1, 0, 0, v13);
    v23 = v22;

    return v23 + 320.0 < Width;
  }
}

double DOCSplitBrowserViewController.target(forAction:withSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [v3 fullDocumentManagerViewController];
  v8 = DOCFullDocumentManagerViewController.canPerformKeyCommandAction(_:with:)(a1, a2);

  if (v8 == 2 || (v8 & 1) == 0)
  {
    outlined init with copy of Any?(a2, &v32);
    v17 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v18 = __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v19 = *(v17 - 8);
      v20 = MEMORY[0x28223BE20](v18, v18);
      v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22, v20);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v19 + 8))(v22, v17);
      __swift_destroy_boxed_opaque_existential_0(&v32);
    }

    else
    {
      v23 = 0;
    }

    v24 = [v31 canPerformAction:a1 withSender:v23];
    swift_unknownObjectRelease();
    if (v24)
    {
      *(a3 + 24) = type metadata accessor for DOCSplitBrowserViewController();
      v25 = v31;
      *a3 = v31;

      v26 = v25;
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    v9 = [v31 fullDocumentManagerViewController];
    outlined init with copy of Any?(a2, &v32);
    v10 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v11 = __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x28223BE20](v11, v11);
      v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0(&v32);
    }

    else
    {
      v16 = 0;
    }

    v28 = [v9 targetForAction:a1 withSender:v16];

    swift_unknownObjectRelease();
    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    result = *&v32;
    v29 = v33;
    *a3 = v32;
    *(a3 + 16) = v29;
  }

  return result;
}

BOOL DOCSplitBrowserViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {

    return DOCSplitBrowserViewController.canPerformToggleSidebarAction(_:withSender:)(a1, a2);
  }

  else
  {
    outlined init with copy of Any?(a2, v15);
    v6 = v16;
    if (v16)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7, v7);
      v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      v12 = 0;
    }

    v14.receiver = v2;
    v14.super_class = DOCSplitBrowserViewController;
    v13 = objc_msgSendSuper2(&v14, sel_canPerformAction_withSender_, a1, v12);
    swift_unknownObjectRelease();
    return v13;
  }
}

BOOL DOCSplitBrowserViewController.canPerformToggleSidebarAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() enclosingTabSwitcherCanBeFloating] && (v5 = objc_msgSend(v2, sel_configuration), v6 = objc_msgSend(v5, sel_isPickerUI), v5, (v6 & 1) == 0))
  {
    v16 = [v2 doc_splitViewState];
    v17 = [v16 isSidebarShown];

    return (v17 & 1) != 0 || [v2 enclosingTabSwitcherStyle] == 2;
  }

  else
  {
    outlined init with copy of Any?(a2, v19);
    v7 = v20;
    if (v20)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v9 = *(v7 - 8);
      v10 = MEMORY[0x28223BE20](v8, v8);
      v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      v13 = 0;
    }

    v18.receiver = v2;
    v18.super_class = DOCSplitBrowserViewController;
    v14 = objc_msgSendSuper2(&v18, sel_canPerformAction_withSender_, a1, v13);
    swift_unknownObjectRelease();
  }

  return v14;
}

unint64_t type metadata accessor for DOCSplitBrowserViewController()
{
  result = lazy cache variable for type metadata for DOCSplitBrowserViewController;
  if (!lazy cache variable for type metadata for DOCSplitBrowserViewController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCSplitBrowserViewController);
  }

  return result;
}

uint64_t ServersSectionManager.__allocating_init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  swift_unknownObjectWeakInit();
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v10 + 24) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v10;
}

Swift::Void __swiftcall ServersSectionManager.startObserving()()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(DOCSourceOrderObserver);
  v9[4] = partial apply for closure #1 in ServersSectionManager.startObserving();
  v9[5] = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v9[3] = &block_descriptor_78;
  v5 = _Block_copy(v9);

  v6 = [v4 initWithConfiguration:v1 sourceObserver:v2 updateBlock:v5];
  _Block_release(v5);

  v7 = v0[8];
  v0[8] = v6;

  v8 = v0[8];
  if (v8)
  {
    [v8 invokeUpdateBlock];
  }
}

Swift::Void __swiftcall ServersSectionManager.stopObserving()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
LABEL_11:
    v11 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = *(v11 + 16);
    if (v12 && (v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation, swift_beginAccess(), (v14 = *(v12 + v13)) != 0))
    {

      v15 = v14;
      dispatch thunk of NSKeyValueObservation.invalidate()();
    }

    else
    {
    }

    v5 &= v5 - 1;
    v8 = *(v11 + 16);
    *(v11 + 16) = 0;

    v9 = *(v11 + 24);
    *(v11 + 24) = 0;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      *(v1 + 80) = MEMORY[0x277D84F98];

      v16 = *(v1 + 64);
      *(v1 + 64) = 0;

      return;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id ServersSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return specialized ServersSectionManager.generateTabGroup(using:alertPresenting:)(a1, a3, v3, ObjectType, a2);
}

void ServersSectionManager.dataSource.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ServersSectionManager.dataSource.modify(uint64_t *a1))(id **a1, char a2)
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
  return LocationSectionManager.dataSource.modify;
}

uint64_t ServersSectionManager.init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = 4;
  swift_unknownObjectWeakInit();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v5 + 24) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v5;
}

uint64_t closure #1 in ServersSectionManager.startObserving()(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ServersSectionManager.handleSourceUpdate(_:)(a1);
  }

  return result;
}

void ServersSectionManager.handleSourceUpdate(_:)(void *a1)
{
  v1 = [a1 sharedSources];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v35 = v2;
    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v7 = v2 & 0xFFFFFFFFFFFFFF8;
    v8 = &selRef__setLocationsInBrowseTab_;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x24C1FC540](v5, v2);
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_38;
        }

        v9 = *(v2 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      type metadata accessor for DOCFileProviderSource();
      v12 = swift_dynamicCastClass();
      if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
      {
        v14 = i;
        v15 = v10;
        v16 = v13;
        v17 = [v16 v8[466]];
        v18 = v8;
        v19 = DOCProviderDomainIDIsSharedServerDomainID();

        if (v19)
        {
          v20 = [v16 v18[466]];
          v21 = DOCProviderDomainIDIsDefaultSharedServer();

          if (v21)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          v8 = &selRef__setLocationsInBrowseTab_;
        }

        else
        {

          v8 = v18;
        }

        i = v14;
        v2 = v35;
      }

      else
      {
      }

      ++v5;
      if (v11 == i)
      {
        v22 = v38;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_23:

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v24 = Strong;
  v25 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

  v26 = v25(4);

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    v27 = *(v22 + 16);
    if (v27)
    {
      goto LABEL_27;
    }

LABEL_41:

LABEL_42:
    (*(*v26 + 392))(v4);

    DOCTabSidebarDataSource.updateTabsIfNeeded()();

    return;
  }

  v27 = __CocoaSet.count.getter();
  if (!v27)
  {
    goto LABEL_41;
  }

LABEL_27:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v34 = v26;
    v36 = v24;
    v28 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x24C1FC540](v28, v22);
      }

      else
      {
        v29 = *(v22 + 8 * v28 + 32);
      }

      v37 = v4;
      v31 = *(v4 + 16);
      v30 = *(v4 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = v29;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v29 = v33;
        v4 = v37;
      }

      *(v4 + 16) = v31 + 1;
      v32 = v4 + 48 * v31;
      *(v32 + 32) = v29;
      ++v28;
      *(v32 + 40) = 0u;
      *(v32 + 56) = 0u;
      *(v32 + 72) = 1;
    }

    while (v27 != v28);

    v26 = v34;
    v24 = v36;
    goto LABEL_42;
  }

  __break(1u);
}

Swift::Void __swiftcall ServersSectionManager.updateSection()()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    [v1 invokeUpdateBlock];
  }
}

void ServersSectionManager.startObservingState(for:tab:alertPresenting:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  type metadata accessor for DOCFileProviderSource();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      type metadata accessor for ProviderDomainState();
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      v13 = a1;
      v14 = v10;
      v15 = v13;
      v16 = v14;
      v17 = a2;
      if ([v9 isEjectable])
      {
        v18 = type metadata accessor for DOCEjectionController();
        v19 = objc_allocWithZone(v18);
        swift_unknownObjectWeakInit();
        *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
        swift_unknownObjectWeakInit();
        *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
        *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = v9;
        swift_unknownObjectWeakAssign();
        v38.receiver = v19;
        v38.super_class = v18;
        v35 = v16;
        v20 = v15;
        v36 = v15;
        v21 = a3;
        v22 = objc_msgSendSuper2(&v38, sel_init);
        v40 = v9;
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = v22;
        v24 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

        v15 = v36;

        v25 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
        swift_beginAccess();
        v26 = *&v23[v25];
        *&v23[v25] = v24;

        v27 = type metadata accessor for EjectStateDelegate();
        v28 = objc_allocWithZone(v27);
        v29 = &v28[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3BE26F1974CD6E1EBDD377CC4F0D2DE918EjectStateDelegate_stateDidChange];
        *v29 = partial apply for closure #1 in LocationSectionManager.startObservingState(for:tab:alertPresenting:);
        v29[1] = v11;
        v37.receiver = v28;
        v37.super_class = v27;

        v30 = objc_msgSendSuper2(&v37, sel_init);

        v16 = v35;
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v31 = *(v12 + 16);
        *(v12 + 16) = v22;

        v32 = *(v12 + 24);
        *(v12 + 24) = v30;
      }

      else
      {
      }

      v33 = [v16 identifier];
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v4 + 80);
      *(v4 + 80) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v33, isUniquelyReferenced_nonNull_native);

      *(v4 + 80) = v39;
      swift_endAccess();
    }
  }
}

Swift::Void __swiftcall ServersSectionManager.displayOrderDidChange(for:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v48 = MEMORY[0x277D84F90];
  v2 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (a1._rawValue >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (i)
    {
      v4 = 0;
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        v5 = v4;
        while (1)
        {
          if ((rawValue & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C1FC540](v5, rawValue);
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_70;
            }

            v6 = *(rawValue + 8 * v5 + 32);
          }

          v7 = v6;
          v4 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if ([v6 userInfo])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v44 = 0u;
            v45 = 0u;
          }

          v46[0] = v44;
          v46[1] = v45;
          if (*(&v45 + 1))
          {
            break;
          }

          outlined destroy of CharacterSet?(v46, &_sypSgMd);
LABEL_7:
          ++v5;
          if (v4 == i)
          {
            goto LABEL_25;
          }
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
        if ((swift_dynamicCast() & 1) == 0 || !v47)
        {
          goto LABEL_7;
        }

        MEMORY[0x24C1FB090]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 = v48;
        if (v4 == i)
        {
          goto LABEL_25;
        }
      }
    }

    v37 = MEMORY[0x277D84F90];
LABEL_25:
    (*(**(v36 + 56) + 136))(4);
    v9 = v8;
    ObjectType = swift_getObjectType();
    rawValue = (*(v9 + 72))(2, ObjectType, v9);
    swift_unknownObjectRelease();
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    *&v46[0] = MEMORY[0x277D84F90];
    v2 = *(rawValue + 16);
LABEL_26:
    v13 = rawValue - 16 + 48 * v11;
    while (v2 != v11)
    {
      if (v11 >= *(rawValue + 16))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      ++v11;
      v14 = (v13 + 48);
      v15 = *(v13 + 88);
      v13 += 48;
      if (v15 == 1)
      {
        v16 = *v14;
        MEMORY[0x24C1FB090]();
        if (*((*&v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = *&v46[0];
        goto LABEL_26;
      }
    }

    if (v37 >> 62)
    {
      break;
    }

    v17 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_75;
    }

LABEL_35:
    v18 = 0;
    v19 = v12 & 0xFFFFFFFFFFFFFF8;
    v43 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 < 0)
    {
      v19 = v12;
    }

    v35 = v19;
    v42 = v12 & 0xC000000000000001;
    v39 = v12 >> 62;
    v38 = v17;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v18, v37);
      }

      else
      {
        if (v18 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v20 = *(v37 + 32 + 8 * v18);
      }

      v21 = v20;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v41 = v18;
      if (v39)
      {
        v22 = __CocoaSet.count.getter();
      }

      else
      {
        v22 = *(v43 + 16);
      }

      v23 = 0;
      v40 = v18 + 1;
      while (v22 != v23)
      {
        if (v42)
        {
          v24 = v12;
          v25 = MEMORY[0x24C1FC540](v23, v12);
        }

        else
        {
          if (v23 >= *(v43 + 16))
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v24 = v12;
          v25 = *(v12 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = [v25 identifier];
        v28 = [v21 identifier];
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        rawValue = v29;
        if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && rawValue == v30)
        {

LABEL_39:
          v12 = v24;
          if (v41 != v23)
          {

            v33 = *(v36 + 64);
            if (v33)
            {
              v34 = v33;
              [v34 moveSource:v21 toIndex:v41];
            }

            return;
          }

          break;
        }

        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v2)
        {
          goto LABEL_39;
        }

        v32 = __OFADD__(v23++, 1);
        v12 = v24;
        if (v32)
        {
          goto LABEL_67;
        }
      }

      v18 = v40;
      if (v40 == v38)
      {
        goto LABEL_75;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  v17 = __CocoaSet.count.getter();
  if (v17)
  {
    goto LABEL_35;
  }

LABEL_75:
}

uint64_t closure #1 in ServersSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v10 = Strong;

  v11 = a6;

  specialized DOCDocumentSource.setHidden(hidden:completion:)(1, v11, v10, v11, a3, a4);
}

id ServersSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, void *a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v19 = v24;
  v20 = v25;
  if (!*(&v25 + 1))
  {
    outlined destroy of CharacterSet?(&v19, &_sypSgMd);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DOCFileProviderSource();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = objc_allocWithZone(DOCActionManager);
  v8 = v23;
  v9 = [v7 init];
  isa = [a2 customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v9 setActions_];

  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = a2;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = v8;
  v12 = objc_opt_self();
  v21 = partial apply for closure #1 in ServersSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v22 = v11;
  *&v19 = MEMORY[0x277D85DD0];
  *(&v19 + 1) = 1107296256;
  *&v20 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  *(&v20 + 1) = &block_descriptor_6_4;
  v13 = _Block_copy(&v19);
  v14 = v8;
  v15 = a2;

  v16 = a1;

  v17 = [v12 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

  _Block_release(v13);

  return v17;
}

void closure #1 in ServersSectionManager.contextMenuConfiguration(for:alertPresenting:)(int a1, char *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v7 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v8 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v9 = &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR;
  if (v8)
  {
    v13 = v8;
    v14 = _DocumentManagerBundle();
    if (!v14)
    {
      __break(1u);
      goto LABEL_13;
    }

    v15 = v14;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift__string._object = 0x8000000249BD4180;
    v16._countAndFlagsBits = 0x6F666E4920746547;
    v16._object = 0xE800000000000000;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    swift__string._countAndFlagsBits = 0xD000000000000050;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, swift__string);

    v19 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
    v20 = [objc_opt_self() systemImageNamed_];

    v21 = swift_allocObject();
    v21[2] = v13;
    v21[3] = a3;
    v21[4] = a4;
    v21[5] = a5;
    v21[6] = a2;
    v21[7] = a6;
    v22 = v13;
    v23 = a3;

    v24 = a5;
    v25 = a2;
    v26 = a6;
    v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    preferredElementSize = swift_allocObject();
    v9 = &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR;
    *(preferredElementSize + 16) = xmmword_249BA0290;
    *(preferredElementSize + 32) = v27;
    v29 = v27;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v52.value.super.isa = 0;
    v52.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, v30, 0, v52, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
    MEMORY[0x24C1FB090]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7 = v51;
  }

  if (![a2 isEjectable])
  {
LABEL_11:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v54.value.super.isa = 0;
    v54.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v48, v47, 0, v54, 0, 0xFFFFFFFFFFFFFFFFLL, v7, v49);
    return;
  }

  v32 = _DocumentManagerBundle();
  if (v32)
  {
    v33 = v32;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift__stringa._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0x7463656A45;
    v34._object = 0xE500000000000000;
    v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v35.value._object = 0xEB00000000656C62;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    swift__stringa._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, swift__stringa);

    v37 = MEMORY[0x24C1FAD20](0x69632E7463656A65, 0xEC000000656C6372);
    v38 = [objc_opt_self() systemImageNamed_];

    v39 = swift_allocObject();
    *(v39 + 16) = a2;
    *(v39 + 24) = a3;
    v40 = a3;
    v41 = a2;
    v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v43 = swift_allocObject();
    *(v43 + 16) = v9[41];
    *(v43 + 32) = v42;
    v44 = v42;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v53.value.super.isa = 0;
    v53.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, v45, 0, v53, 1, 0xFFFFFFFFFFFFFFFFLL, v43, 0);
    MEMORY[0x24C1FB090]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7 = v51;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

void closure #1 in closure #1 in ServersSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13 = [objc_opt_self() defaultManager];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v20[4] = partial apply for closure #1 in closure #1 in closure #1 in ServersSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  v20[3] = &block_descriptor_35_0;
  v15 = _Block_copy(v20);
  v16 = a3;

  v17 = a5;
  v18 = a6;
  v19 = a7;

  [v13 doc:a2 fetchRootNodeForProviderDomain:v15 completionHandler:?];
  _Block_release(v15);
}

uint64_t closure #1 in closure #1 in closure #1 in ServersSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a2;
  v14[7] = a6;
  v14[8] = a7;
  swift_unknownObjectRetain();
  v15 = a3;

  v16 = a5;
  v17 = a2;
  v18 = a6;
  v19 = a7;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in closure #1 in closure #1 in ServersSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, void *a4, id a5, void *a6)
{
  if (!a1 || (swift_getObjectType(), (v11 = DOCNode.fpfs_syncFetchFPItem()()) == 0))
  {
    if (!a5)
    {
      return;
    }

    v35 = *(a3 + 24);
    v36 = a5;
    v37 = a5;
    v38 = v35;
    v39 = DOCDocumentSource.representedLocation.getter();
    v40 = objc_allocWithZone(type metadata accessor for DOCErrorViewController());
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = a6;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = v39;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a5;
    v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = 0;
    v41 = a5;
    v42 = a6;
    v43 = v39;
    v44 = _convertErrorToNSError(_:)();
    v45 = [v44 domain];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {

        goto LABEL_34;
      }
    }

    v51 = [v44 code];

    if (v51 == -1000)
    {
      v52 = *&v42[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v52)
      {
        v53 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_35:
        *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v53;
        v76 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v38, 0, 0);

        v77 = type metadata accessor for DOCGetInfoErrorPresentingViewController();
        v78 = objc_allocWithZone(v77);
        *&v78[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = v76;
        v88.receiver = v78;
        v88.super_class = v77;
        v79 = objc_msgSendSuper2(&v88, sel_init);
        [a2 presentViewController:v79 animated:1 completion:0];

        return;
      }
    }

LABEL_34:
    v53 = 0;
    goto LABEL_35;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = *(a3 + 24);
  v82 = v13;
  if (v13)
  {
    v15 = a2;
    v13 = [v13 splitBrowserViewController];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA0290;
  *(v16 + 32) = v12;
  v17 = type metadata accessor for DOCServiceInfoViewController();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v14;
  v19 = objc_allocWithZone(DOCItemInfoViewController);
  v20 = v14;
  v81 = v12;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithNodes:isa configuration:v20 actionReporting:v13];

  swift_unknownObjectRelease();
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v23;
  [v23 _setBuiltinTransitionStyle_];
  v87.receiver = v18;
  v87.super_class = v17;
  v24 = objc_msgSendSuper2(&v87, sel_init);
  swift_unknownObjectRelease();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a4;
  v25[4] = a2;
  v26 = one-time initialization token for associatedObjectStorageKey;
  v27 = a2;
  v28 = v24;
  v29 = a4;
  v30 = v27;
  v31 = v28;
  v32 = v29;
  if (v26 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v31, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v34 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v33) + 0x78))(v83);

  if (v83[0])
  {
  }

  else
  {
    v86 = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v54 = static UIViewController.associatedObjectStorageKey;
    v55 = v31;
    v56 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v55, v54);
    v57 = v17;
    v58 = v30;
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v60 = v32;
    v61 = swift_allocObject();
    *(v61 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v61 + 32) = MEMORY[0x277D84F90];
    *(v61 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v83[0] = v61;
    v32 = v60;
    v34 = MEMORY[0x277D85000];
    v62 = KeyPath;
    v30 = v58;
    v17 = v57;
    (*((*MEMORY[0x277D85000] & *v56) + 0x80))(v83, v62);
  }

  v63 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v31, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v34 & *v63) + 0x78))(v83);

  v64 = v83[0];
  if (v83[0])
  {
    if (*(v83[0] + 40) == 2)
    {
      closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(v31, v32, v30);
    }

    else
    {
      v69 = swift_allocObject();
      *(v69 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
      *(v69 + 24) = v25;
      swift_beginAccess();
      v70 = *(v64 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v64 + 32) = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
        *(v64 + 32) = v70;
      }

      v73 = v70[2];
      v72 = v70[3];
      v74 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
        v74 = v73 + 1;
        v70 = v80;
      }

      v70[2] = v74;
      v75 = &v70[2 * v73];
      v75[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v75[5] = v69;
      *(v64 + 32) = v70;
      swift_endAccess();
      DOCPresentationPreheatController.startIfNecessary()();
    }
  }

  else
  {
    v85.receiver = v31;
    v85.super_class = v17;
    objc_msgSendSuper2(&v85, sel_setModalPresentationStyle_, 7);
    v65 = [v31 traitCollection];
    v66 = [v65 userInterfaceIdiom];

    if (v66 != 6)
    {
      v84.receiver = v31;
      v84.super_class = v17;
      if (objc_msgSendSuper2(&v84, sel_modalPresentationStyle) == 2)
      {
        [v31 setPreferredContentSize_];
      }
    }

    v67 = [v31 popoverPresentationController];
    if (v67)
    {
      v68 = v67;
      [v67 setSourceItem_];
    }

    [v31 setModalPresentationStyle_];
    [v30 presentViewController:v31 animated:1 completion:0];
  }
}

void closure #2 in closure #1 in ServersSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for DOCEjectionController();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a2;
  swift_unknownObjectWeakAssign();
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = a2;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v9;
  v11 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  DOCEjectionController.eject()();
}

id ServersSectionManager.sidebarItem(for:tab:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for UICellAccessory();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v32 - v16;
  v18 = [objc_opt_self() itemFromRequest_];
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (*(&v37 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
    if (swift_dynamicCast())
    {
      v19 = v35;
      type metadata accessor for DOCFileProviderSource();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v21)
        {
          v22 = v19;
          v19 = v21;
          v23 = [v19 identifier];
          swift_beginAccess();
          v24 = *(v2 + 80);
          if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v26 & 1) != 0))
          {
            v27 = *(*(v24 + 56) + 8 * v25);

            swift_endAccess();

            v34 = v27;
            ProviderDomainState.getEjectAccessory()(v8);
            if ((*(v10 + 48))(v8, 1, v9) == 1)
            {
              outlined destroy of CharacterSet?(v8, &_s5UIKit15UICellAccessoryVSgMd);
            }

            else
            {
              v33 = *(v10 + 32);
              v33(v17, v8, v9);
              (*(v10 + 16))(v13, v17, v9);
              v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
              v30 = *(v28 + 2);
              v29 = *(v28 + 3);
              v32 = v30 + 1;
              if (v30 >= v29 >> 1)
              {
                v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v28);
              }

              (*(v10 + 8))(v17, v9);
              *(v28 + 2) = v32;
              v33(&v28[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30], v13, v9);
            }

            UITabSidebarItem.accessories.setter();
          }

          else
          {

            swift_endAccess();
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v38, &_sypSgMd);
  }

  return v18;
}

id *ServersSectionManager.deinit()
{
  MEMORY[0x24C1FE970](v0 + 4);

  return v0;
}

uint64_t ServersSectionManager.__deallocating_deinit()
{
  ServersSectionManager.deinit();

  return swift_deallocClassInstance();
}

id protocol witness for TabSectionManager.generateTabGroup(using:alertPresenting:) in conformance ServersSectionManager(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return specialized ServersSectionManager.generateTabGroup(using:alertPresenting:)(a1, a3, v3, ObjectType, a2);
}

id protocol witness for TabSectionManager.updateSection() in conformance ServersSectionManager()
{
  result = *(v0 + 64);
  if (result)
  {
    return [result invokeUpdateBlock];
  }

  return result;
}

id specialized ServersSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized ServersSectionManager.generateTabs(using:alertPresenting:)(a1, a2, a3, a4, a5);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [objc_opt_self() mainBundle];
  v20._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x646572616853;
  v7._object = 0xE600000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v20);

  v10 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BC5EC0);
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v13 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);

  v14 = MEMORY[0x24C1FAD20](0x73726576726573, 0xE700000000000000);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_62_0;
  v16 = _Block_copy(aBlock);

  v17 = [v12 initWithTitle:v13 image:v11 identifier:v14 children:isa viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

uint64_t specialized ServersSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  (*(**(a3 + 56) + 136))(4);
  v10 = v9;
  ObjectType = swift_getObjectType();
  result = (*(v10 + 72))(2, ObjectType, v10);
  v13 = result;
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v16 = a5 + 8;
  v17 = result - 16;
  v18 = *(result + 16);
LABEL_2:
  v19 = (v17 + 48 * v14);
  while (1)
  {
    if (v18 == v14)
    {
      swift_unknownObjectRelease();

      return v15;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    ++v14;
    v20 = (v19 + 3);
    v21 = v19[3];
    v22 = v19[4];
    *&v50[9] = *(v19 + 73);
    v49 = v21;
    *v50 = v22;
    v19 += 3;
    if (v50[24] == 1)
    {
      v40 = v17;
      v42 = a2;
      v43 = v7;
      v23 = *v20;
      v24 = v49;
      outlined init with copy of DOCSidebarItem(&v49, &v46);
      v25 = v23;
      v26 = [v24 displayName];
      if (!v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = MEMORY[0x24C1FAD20](v27);
      }

      v44 = a4;
      v45 = a5;
      v41 = v16;
      v28 = (*(a5 + 8))(&v49, a4, a5);
      outlined destroy of DOCSidebarItem(&v49);
      v46 = 0x2E726576726573;
      v47 = 0xE700000000000000;
      v29 = [v24 identifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      MEMORY[0x24C1FAEA0](v30, v32);

      v33 = v46;
      v34 = v47;
      v35 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v36 = MEMORY[0x24C1FAD20](v33, v34);

      v37 = [v35 initWithTitle:v26 image:v28 identifier:v36 viewControllerProvider:0];

      [v37 setUserInfo_];
      v38 = v24;
      a2 = v42;
      v7 = v43;
      ServersSectionManager.startObservingState(for:tab:alertPresenting:)(v38, v37, v42);
      v39 = outlined destroy of DOCSidebarItem(&v49);
      MEMORY[0x24C1FB090](v39);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v48;
      a4 = v44;
      a5 = v45;
      v17 = v40;
      v16 = v41;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id specialized ServersSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:)(void *a1)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v19 = v24;
  if (!*(&v24 + 1))
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v22;
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v25._object = 0xE000000000000000;
    v4._countAndFlagsBits = 0x65766F6D6552;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v4._object = 0xE600000000000000;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v25);

    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v1;

    v10 = v1;
    v11 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

    v20 = partial apply for closure #1 in ServersSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:);
    v21 = v9;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v19 = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
    *(&v19 + 1) = &block_descriptor_59_1;
    v12 = _Block_copy(&aBlock);
    v13 = [objc_opt_self() contextualActionWithStyle:1 title:v11 handler:v12];

    _Block_release(v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249BA0290;
    *(v14 + 32) = v13;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction);
    v15 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [objc_opt_self() configurationWithActions_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FPProviderDomain.syncStateProviderDisplayName.getter()
{
  if ([v0 isiCloudDriveProvider])
  {
    return 0x64756F6C4369;
  }

  v2 = [v0 providerDisplayName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t FPProviderDomain.isSyncStateFolderBadgingSupported.getter()
{
  if (![v0 isiCloudDriveProvider])
  {
    return 1;
  }

  return FPProviderDomain.shouldUseDSEnumeration.getter();
}

uint64_t @objc FPProviderDomain.isSyncStateMessagingSupported.getter(void *a1)
{
  v1 = a1;
  if (([v1 isiCloudDriveProvider] & 1) != 0 || objc_msgSend(v1, sel_isUsingFPFS))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isMainiCloudDriveDomain];
  }

  return v2;
}

uint64_t FPProviderDomain.isSyncStateMessagingSupported.getter()
{
  if ([v0 isiCloudDriveProvider] & 1) != 0 || (objc_msgSend(v0, sel_isUsingFPFS))
  {
    return 1;
  }

  else
  {
    return [v0 isMainiCloudDriveDomain];
  }
}

uint64_t FPProviderDomain.isProgressSyncStateMessagingSupported.getter()
{
  if ([v0 isiCloudDriveProvider])
  {
    return 1;
  }

  else
  {
    return [v0 isUsingFPFS];
  }
}

uint64_t @objc FPProviderDomain.isProgressPausable.getter(void *a1)
{
  v1 = a1;
  v2 = FPProviderDomain.shouldUseDSEnumeration.getter();

  return v2 & 1;
}

id DOCShareBannerView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path getter for DOCShareBannerView.optionsButtonHandler : DOCShareBannerView@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIButton) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCShareBannerView.optionsButtonHandler : DOCShareBannerView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCShareBannerView.optionsButtonHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_optionsButtonHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCShareBannerView.optionsButtonHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_optionsButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

uint64_t DOCShareBannerView.text.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_labelView) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void DOCShareBannerView.text.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_labelView);
  if (a2)
  {
    v6 = v3;
    v8 = MEMORY[0x24C1FAD20](a1, a2);
  }

  else
  {
    v7 = v3;
    v8 = 0;
  }

  [v3 setText_];
}

void (*DOCShareBannerView.text.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_labelView;
  a1[2] = v1;
  a1[3] = v3;
  v4 = [*(v1 + v3) text];
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

  *a1 = v6;
  a1[1] = v8;
  return DOCShareBannerView.text.modify;
}

void DOCShareBannerView.text.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1[2] + a1[3]);
  v11 = v3;
  if (a2)
  {
    if (v2)
    {
      v4 = *a1;
      v5 = v3;

      v6 = MEMORY[0x24C1FAD20](v4, v2);
    }

    else
    {
      v9 = v3;
      v6 = 0;
    }

    [v11 setText_];
  }

  else
  {
    if (v2)
    {
      v7 = *a1;
      v8 = v3;
      v6 = MEMORY[0x24C1FAD20](v7, v2);
    }

    else
    {
      v10 = v3;
      v6 = 0;
    }

    [v11 setText_];
  }
}

id closure #1 in variable initialization expression of DOCShareBannerView.labelView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id DOCShareBannerView.optionsButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton);
  }

  else
  {
    v4 = closure #1 in DOCShareBannerView.optionsButton.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCShareBannerView.optionsButton.getter(uint64_t a1)
{
  v34 = a1;
  v32 = type metadata accessor for UIButton.Configuration.Size();
  v1 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v32 - v9;
  v33 = type metadata accessor for UIButton.Configuration();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - v17;
  static UIButton.Configuration.plain()();
  result = _DocumentManagerBundle();
  if (result)
  {
    v20 = result;
    v36._object = 0x8000000249BE64B0;
    v21._countAndFlagsBits = 0x736E6F6974704FLL;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v21._object = 0xE700000000000000;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000024;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v36);

    result = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (result)
    {
      v24 = result;
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v35 = v24;
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
      AttributedString.subscript.setter();
      v25 = type metadata accessor for AttributedString();
      (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
      UIButton.Configuration.attributedTitle.setter();
      (*(v1 + 104))(v4, *MEMORY[0x277D75018], v32);
      UIButton.Configuration.buttonSize.setter();

      UIButton.Configuration.contentInsets.setter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
      v26 = v33;
      (*(v11 + 16))(v14, v18, v33);
      v27 = UIButton.init(configuration:primaryAction:)();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v27;
      v30 = v27;
      v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v30 setDoc:v31 primaryAction:?];

      [v30 setTranslatesAutoresizingMaskIntoConstraints_];
      (*(v11 + 8))(v18, v26);
      return v30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in DOCShareBannerView.optionsButton.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0x88))();
    if (v6)
    {
      v7 = v6;
      v6(a3);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
    }
  }
}

id DOCShareBannerView.topSeparator.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D063B8]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

char *DOCShareBannerView.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_optionsButtonHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_containerView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_labelView;
  *&v0[v4] = closure #1 in variable initialization expression of DOCShareBannerView.labelView();
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___topSeparator] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___bottomSeparator] = 0;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_metrics] = 0x4026000000000000;
  v80.receiver = v0;
  v80.super_class = type metadata accessor for DOCShareBannerView();
  v5 = objc_msgSendSuper2(&v80, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_containerView;
  v7 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_containerView];
  v8 = v5;
  [v8 addSubview_];
  v78 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0470;
  v10 = [*&v5[v6] leadingAnchor];
  v11 = [v8 &selRef_next + 1];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [*&v5[v6] trailingAnchor];
  v14 = [v8 &selRef_updateForChangedTraitsAffectingFonts + 4];

  v15 = [v13 constraintEqualToAnchor_];
  *(v9 + 40) = v15;
  v16 = [*&v5[v6] topAnchor];
  v17 = [v8 &selRef_updateBarVisibilityIfNecessary];

  v18 = [v16 constraintEqualToAnchor_];
  *(v9 + 48) = v18;
  v19 = [*&v5[v6] bottomAnchor];
  v20 = [v8 bottomAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v9 + 56) = v21;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v78 activateConstraints_];

  v23 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_labelView;
  [*&v5[v6] addSubview_];
  v24 = *&v5[v6];
  v25 = DOCShareBannerView.optionsButton.getter();
  [v24 addSubview_];

  v26 = *&v5[v6];
  v27 = DOCShareBannerView.topSeparator.getter();
  [v26 addSubview_];

  v28 = *&v5[v6];
  v29 = DOCShareBannerView.bottomSeparator.getter();
  [v28 addSubview_];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_249BADD40;
  v31 = [*&v8[v23] topAnchor];
  v32 = [*&v5[v6] topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:11.0];

  *(v30 + 32) = v33;
  v34 = [*&v8[v23] bottomAnchor];
  v35 = [*&v5[v6] bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-11.0];

  *(v30 + 40) = v36;
  v37 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton;
  v79 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton;
  v38 = [*&v8[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton] &selRef_updateBarVisibilityIfNecessary];
  v39 = [*&v5[v6] &selRef_updateBarVisibilityIfNecessary];
  v40 = [v38 constraintEqualToAnchor_];

  *(v30 + 48) = v40;
  v41 = [*&v8[v37] bottomAnchor];
  v42 = [*&v5[v6] bottomAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v30 + 56) = v43;
  v44 = [*&v8[v23] leadingAnchor];
  v45 = [*&v5[v6] leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v30 + 64) = v46;
  v47 = [*&v8[v23] trailingAnchor];
  v48 = [*&v8[v79] leadingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v30 + 72) = v49;
  v50 = [*&v8[v79] trailingAnchor];
  v51 = [*&v5[v6] trailingAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v30 + 80) = v52;
  v53 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___topSeparator;
  v54 = [*&v8[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___topSeparator] topAnchor];
  v55 = [*&v5[v6] topAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v30 + 88) = v56;
  v57 = [*&v8[v53] leadingAnchor];
  v58 = [*&v5[v6] leadingAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v30 + 96) = v59;
  v60 = [*&v8[v53] trailingAnchor];
  v61 = [*&v5[v6] trailingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v30 + 104) = v62;
  v63 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___bottomSeparator;
  v64 = [*&v8[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___bottomSeparator] bottomAnchor];
  v65 = [*&v5[v6] bottomAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v30 + 112) = v66;
  v67 = [*&v8[v63] leadingAnchor];
  v68 = [*&v5[v6] leadingAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v30 + 120) = v69;
  v70 = [*&v8[v63] trailingAnchor];
  v71 = [*&v5[v6] trailingAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v30 + 128) = v72;
  v73 = Array._bridgeToObjectiveC()().super.isa;

  [v78 activateConstraints_];

  LODWORD(v74) = 1132068864;
  [*&v8[v23] setContentHuggingPriority:0 forAxis:v74];
  LODWORD(v75) = 1148846080;
  [*&v8[v79] setContentHuggingPriority:0 forAxis:v75];
  LODWORD(v76) = 1148846080;
  [*&v8[v79] setContentCompressionResistancePriority:0 forAxis:v76];

  return v8;
}

id DOCShareBannerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCShareBannerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCShareBannerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCShareBannerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized DOCShareBannerView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_optionsButtonHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_containerView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_labelView;
  *(v0 + v4) = closure #1 in variable initialization expression of DOCShareBannerView.labelView();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___optionsButton) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___topSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView____lazy_storage___bottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCShareBannerView_metrics) = 0x4026000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t DOCDiffable.snapshot(empty:)(char a1)
{
  if ((a1 & 1) == 0)
  {
    return dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  }

  type metadata accessor for DOCDiffableIdentifier();
  type metadata accessor for DOCDiffableIdentifier();
  swift_getWitnessTable();
  swift_getWitnessTable();

  return NSDiffableDataSourceSnapshot.init()();
}

uint64_t DOCDiffableIdentifier<A>.init(entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _convertToAnyHashable<A>(_:)();
  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v12;
  v6 = type metadata accessor for DOCDiffableIdentifier();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 28);

  return v7(v8, a1, a2);
}

uint64_t DOCDiffableIdentifier.init(diffableID:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = *(a1 + 32);
  v8 = type metadata accessor for DOCDiffableIdentifier();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

uint64_t DOCDiffableIdentifier.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x28223BE20](a1, a2);
  (*(v7 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v6 + 28), v3, v4);
  return String.init<A>(describing:)();
}

Swift::Int DOCDiffableIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCDiffableIdentifier<A>()
{
  Hasher.init(_seed:)();
  DOCDiffableIdentifier.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t type metadata instantiation function for DOCDiffable()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for DOCDiffableIdentifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCDiffableIdentifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for DOCDiffableIdentifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

void DOCTabbedBrowserViewController.tabBarController(_:displayOrderDidChangeFor:)(uint64_t a1, void *a2)
{
  v4 = [v2 tabSidebarController];
  v5 = (*((*MEMORY[0x277D85000] & *v4) + 0x70))(a2);
  v7 = v6;

  if (v5)
  {
    ObjectType = swift_getObjectType();
    v9 = [a2 children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 72))(v10, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

void DOCTabbedBrowserViewController.tabBarController(_:tab:acceptItemsFrom:)(int a1, id a2, uint64_t a3)
{
  v4 = v3;
  v12 = [a2 parent];
  if (v12)
  {
    v7 = [v3 tabSidebarController];
    v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x70))(v12);
    v10 = v9;

    if (v8)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 88))(a3, a2, v4, DOCGridLayout.specIconWidth.modify, 0, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id DOCTabbedBrowserViewController.contextMenuForRootTab(_:alertPresenting:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(DOCActionManager) init];
  isa = [v3 customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v6 setActions_];

  v8 = [a2 effectiveAppearance];
  v9 = [v3 configuration];
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for DOCActionContext();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_appearance] = v8;
  *&v12[OBJC_IVAR___DOCActionContext_configuration] = v9;
  *&v12[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_userInfo] = v10;
  v22.receiver = v12;
  v22.super_class = v11;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = a1;
  v15[4] = v14;
  v16 = objc_opt_self();
  aBlock[4] = partial apply for closure #1 in DOCTabbedBrowserViewController.contextMenuForRootTab(_:alertPresenting:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_79;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  v19 = [v16 configurationWithIdentifier:0 previewProvider:0 actionProvider:v17];

  _Block_release(v17);
  return v19;
}

id closure #1 in DOCTabbedBrowserViewController.contextMenuForRootTab(_:alertPresenting:)(int a1, id a2, void *a3, void *a4)
{
  v6 = [a2 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [a2 associatedActionManagers];
  type metadata accessor for DOCActionManager(0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = specialized Sequence.flatMap<A>(_:)(v9);

  specialized Array.append<A>(contentsOf:)(v10);
  v11 = v7;
  v49 = a4;
  v50 = a2;
  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_28:

    return 0;
  }

LABEL_27:
  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_28;
  }

LABEL_3:
  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v17 = [v14 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_17;
    }

    ++v13;
    if (v16 == v12)
    {
      goto LABEL_28;
    }
  }

LABEL_17:

  v24 = [a3 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == 0x73746E65636572 && v27 == 0xE700000000000000)
  {

    v28 = &selRef_recentDocumentsLocation;
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      v28 = &selRef_recentDocumentsLocation;
    }

    else
    {
      v28 = &selRef_sharedItemsLocation;
    }
  }

  v30 = [objc_opt_self() *v28];
  result = _DocumentManagerBundle();
  if (result)
  {
    v32 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift__string._object = 0x8000000249BD3FE0;
    v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34._object = 0x8000000249BD3FC0;
    swift__string._countAndFlagsBits = 0xD00000000000004ALL;
    v34._countAndFlagsBits = 0xD000000000000012;
    v33.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v33, v32, v35, swift__string);

    v36 = MEMORY[0x24C1FAD20](0x7571732E73756C70, 0xEB00000000657261);
    v37 = [objc_opt_self() systemImageNamed_];

    v38 = swift_allocObject();
    v38[2] = v49;
    v38[3] = v30;
    v38[4] = v50;
    v38[5] = v15;
    v39 = v49;
    v40 = v30;
    v41 = v50;
    v42 = v15;
    v43 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_249BA0290;
    *(v44 + 32) = v43;
    preferredElementSize = v44;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v52.value.super.isa = 0;
    v52.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables9USBFormatOGMR, v45, 0, v52, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
    v47 = v46;

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #2 in closure #1 in DOCTabbedBrowserViewController.contextMenuForRootTab(_:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = *(a2 + OBJC_IVAR___DOCActionContext_appearance);
  v7 = *(a2 + OBJC_IVAR___DOCActionContext_configuration);
  v8 = *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0xD000000000000036;
  *(inited + 40) = 0x8000000249BD4210;
  *(inited + 72) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  *(inited + 48) = a3;
  v10 = a3;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
  v12 = type metadata accessor for DOCActionContext();
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v13[OBJC_IVAR___DOCActionContext_appearance] = v6;
  *&v13[OBJC_IVAR___DOCActionContext_configuration] = v7;
  *&v13[OBJC_IVAR___DOCActionContext_presentingViewController] = v8;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v13[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v13[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v13[OBJC_IVAR___DOCActionContext_userInfo] = v11;
  v19.receiver = v13;
  v19.super_class = v12;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  specialized DOCActionManager.perform(_:on:actionContext:)(a5, MEMORY[0x277D84F90], v17);
}

id @objc DOCTabbedBrowserViewController.tabBarController(_:sidebar:contextMenuConfigurationFor:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v12);

  return v14;
}

void DOCTabbedBrowserViewController.dataSource(_:wantsToReveal:)(int a1, id a2)
{
  v3 = [a2 node];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 fullBrowserViewController];
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v4, 1, DOCGridLayout.specIconWidth.modify, 0, v5);
    swift_unknownObjectRelease();
  }
}

void DOCTabbedBrowserViewController.dataSource(_:wantsToPresentConnectToServer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  outlined init with copy of URL?(a2, &v14 - v7);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v8, v9);
  }

  [v3 presentConnectToServer_];
}

void DOCTabbedBrowserViewController.dataSource(_:didUpdateTabs:)()
{
  v1 = [v0 tabSidebarController];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setTabs_];
}

uint64_t specialized DOCTabbedBrowserViewController.tabBarController(_:tab:operationForAcceptingItemsFrom:)(void *a1, uint64_t a2)
{
  v5 = [a1 parent];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 tabSidebarController];
    v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x70))(v6);
    v10 = v9;

    if (v8)
    {
      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 80))(a2, a1, ObjectType, v10);

      swift_unknownObjectRelease();
      return v12;
    }
  }

  return 1;
}

void specialized DOCTabbedBrowserViewController.tabBarController(_:visibilityDidChangeFor:)(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 parent];
      if (v8)
      {
        v9 = v8;
        v10 = [v2 tabSidebarController];
        v11 = (*((*MEMORY[0x277D85000] & *v10) + 0x70))(v9);
        v13 = v12;

        if (v11)
        {
          ObjectType = swift_getObjectType();
          (*(v13 + 64))(v7, [v7 isHidden], ObjectType, v13);

          swift_unknownObjectRelease();
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v4 == ++v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

id specialized DOCTabbedBrowserViewController.tabBarController(_:sidebar:itemFor:)(uint64_t a1)
{
  v3 = type metadata accessor for UITabSidebarItem.Content();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_opt_self() itemFromRequest_];
  UITabSidebarItem.content.getter();
  if ((*(v4 + 88))(v7, v3) != *MEMORY[0x277D74E48])
  {
    (*(v4 + 8))(v7, v3);
    return v8;
  }

  (*(v4 + 96))(v7, v3);
  v9 = *v7;
  v10 = [*v7 parent];
  if (!v10)
  {
LABEL_7:

    return v8;
  }

  v11 = v10;
  v12 = [v1 tabSidebarController];
  v13 = (*((*MEMORY[0x277D85000] & *v12) + 0x70))(v11);
  v15 = v14;

  if (!v13)
  {

    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 112))(a1, v9, ObjectType, v15);

  swift_unknownObjectRelease();
  return v17;
}

id specialized DOCTabbedBrowserViewController.tabBarController(_:sidebar:contextMenuConfigurationFor:)(void *a1)
{
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == 0x73746E65636572 && v6 == 0xE700000000000000)
  {
    goto LABEL_14;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_15:

    return DOCTabbedBrowserViewController.contextMenuForRootTab(_:alertPresenting:)(a1, v1);
  }

  v9 = [a1 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 0x646572616873 && v12 == 0xE600000000000000)
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_15;
  }

  v15 = [a1 parent];
  if (v15)
  {
    v16 = v15;
    v17 = v1;
    v18 = [v1 tabSidebarController];
    v19 = (*((*MEMORY[0x277D85000] & *v18) + 0x70))(v16);
    v21 = v20;

    if (v19)
    {
      ObjectType = swift_getObjectType();
      v23 = (*(v21 + 104))(a1, v17, ObjectType, v21);

      swift_unknownObjectRelease();
      return v23;
    }
  }

  return 0;
}

uint64_t specialized DOCTabbedBrowserViewController.tabBarController(_:sidebar:trailingSwipeActionsConfigurationFor:)(void *a1)
{
  v2 = v1;
  v4 = [a1 parent];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 tabSidebarController];
    v7 = (*((*MEMORY[0x277D85000] & *v6) + 0x70))(v5);
    v9 = v8;

    if (v7)
    {
      ObjectType = swift_getObjectType();
      v11 = (*(v9 + 96))(a1, v2, ObjectType, v9);

      swift_unknownObjectRelease();
      return v11;
    }
  }

  return 0;
}

id DOCItemCollectionGridCellSpringLoadedInteractionEffect.__allocating_init(targetCell:thumbnailView:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionGridCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id DOCItemCollectionGridCellSpringLoadedInteractionEffect.init(targetCell:thumbnailView:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionGridCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DOCItemCollectionGridCellSpringLoadedInteractionEffect();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id DOCItemCollectionGridCellSpringLoadedInteractionEffect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCItemCollectionGridCellSpringLoadedInteractionEffect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionGridCellSpringLoadedInteractionEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized DOCItemCollectionGridCellSpringLoadedInteractionEffect.interaction(_:didChangeWith:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [a1 state];
      if (v5)
      {
        if (v5 == 1)
        {
          [v16 setHighlighted:1];
        }

        else if (v5 == 2)
        {
          v6 = MEMORY[0x24C1FAD20](0x7974696361706FLL, 0xE700000000000000);
          v7 = [objc_opt_self() animationWithKeyPath_];

          isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
          [v7 setToValue_];

          v9 = v7;
          [v9 setDuration_];
          [v9 setAutoreverses_];
          LODWORD(v10) = 2.0;
          [v9 setRepeatCount_];
          [v9 setRemovedOnCompletion_];

          v11 = [v4 layer];
          v12 = MEMORY[0x24C1FAD20](0x6B6E696C62, 0xE500000000000000);
          [v11 addAnimation:v9 forKey:v12];
        }
      }

      else
      {
        [v16 setHighlighted:0];
      }

      goto LABEL_15;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.UI);
  v16 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2493AC000, v16, v14, "Missing targetCell or thumbnailView in DOCItemCollectionGridCellSpringLoadedInteractionEffect, ignoring", v15, 2u);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

LABEL_15:
}

void DOCProgressUIConfiguration.preferredPopoverWidth.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetWidth(v10);
  v9 = [objc_opt_self() defaultMetrics];
  [v9 scaledValueForValue_];
}

void DOCProgressCollectionViewer.PopoverStyle.preferredWidth.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetWidth(v10);
  v9 = [objc_opt_self() defaultMetrics];
  [v9 scaledValueForValue_];
}

Swift::Int DOCProgressCollectionViewer.PopoverStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCProgressCollectionViewer.PopoverStyle and conformance DOCProgressCollectionViewer.PopoverStyle()
{
  result = lazy protocol witness table cache variable for type DOCProgressCollectionViewer.PopoverStyle and conformance DOCProgressCollectionViewer.PopoverStyle;
  if (!lazy protocol witness table cache variable for type DOCProgressCollectionViewer.PopoverStyle and conformance DOCProgressCollectionViewer.PopoverStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressCollectionViewer.PopoverStyle and conformance DOCProgressCollectionViewer.PopoverStyle);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCProgressUIConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCProgressUIConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t closure #1 in static DocumentAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v37 = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables030SetFilenameExtensionVisibilityD0VGMd);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables030SetFilenameExtensionVisibilityD0V_GMd);
  MEMORY[0x28223BE20](v8, v9);
  lazy protocol witness table accessor for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v36 = lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._object = 0x8000000249BE65F0;
  v11._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = *(v4 + 8);
  v13 = v30;
  v12(v7, v30);
  v29 = v12;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x69736E6574786520;
  v15._object = 0xEB00000000736E6FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v13;
  v12(v7, v13);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x616E206C6C756620;
  v18._object = 0xEF206E692073656DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v20 = v33;
  v19 = v34;
  v21 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x277CB9F50], v35);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v19 + 8))(v20, v21);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29(v7, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables030SetFilenameExtensionVisibilityG0VGGGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249BA08C0;
  v25 = v31;
  *(v24 + 32) = v32;
  *(v24 + 40) = v25;
  *(v24 + 48) = v23;
  v26 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v26;
}

uint64_t closure #1 in closure #2 in static DocumentAssistantIntentsProvider.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA08C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t closure #3 in static DocumentAssistantIntentsProvider.intents.getter(uint64_t a1)
{
  v25[1] = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015SetGroupingModeD0VGMd);
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_AssistantIntentV6PhraseV19StringInterpolationVy_26DocumentManagerExecutables015SetGroupingModeD0V_GMd);
  MEMORY[0x28223BE20](v8, v9);
  lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x69662070756F7247;
  v10._object = 0xEF2079622073656CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupingMode and conformance GroupingMode();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v4 + 8;
  v13 = *(v4 + 8);
  v25[2] = v12;
  v14 = v26;
  v13(v7, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x79622070756F7247;
  v15._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544106784;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v18 = v28;
  v17 = v29;
  v19 = v30;
  (*(v29 + 104))(v28, *MEMORY[0x277CB9F50], v30);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v17 + 8))(v18, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v7, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV6PhraseVy_26DocumentManagerExecutables015SetGroupingModeG0VGGGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  *(v22 + 32) = v27;
  *(v22 + 40) = v21;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t closure #2 in static DocumentAssistantIntentsProvider.intents.getter(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = type metadata accessor for _AssistantIntent.Value();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();

  a4(v11);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV5ValueVGGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9A480;
  *(v13 + 32) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t closure #1 in closure #4 in static DocumentAssistantIntentsProvider.intents.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_249BA54A0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t static DocumentAssistantIntentsProvider.negativePhrases.getter()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v7;
}

uint64_t closure #1 in static DocumentAssistantIntentsProvider.negativePhrases.getter()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t protocol witness for static _AssistantIntentsProvider.negativePhrases.getter in conformance DocumentAssistantIntentsProvider()
{
  v0 = type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentV08NegativefG7PhrasesVGGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249B9A480;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v7;
}

uint64_t specialized static DocumentAssistantIntentsProvider.intents.getter()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SetFilenameExtensionVisibilityIntent.init()(&v12);
  lazy protocol witness table accessor for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v5 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v4, v0);
  SetGroupingModeIntent.init()(&v12);
  lazy protocol witness table accessor for type SetGroupingModeIntent and conformance SetGroupingModeIntent();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v7 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10AppIntents16_AssistantIntentVGGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9FA70;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v9;
}

unint64_t lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation()
{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation;
  if (!lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowHideOperation and conformance ShowHideOperation);
  }

  return result;
}

uint64_t key path setter for DOCProgressCollectionListCell.cancelAccessoryDisplayedState : DOCProgressCollectionListCell(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x108))(v8);
}

uint64_t DOCProgressCollectionListCell.cancelAccessoryDisplayedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  swift_beginAccess();
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DOCProgressCollectionListCell.cancelAccessoryDisplayedState.setter(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17[-v11];
  v13 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, &v2[v13], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], a1, v4);
  swift_endAccess();
  v14(v8, &v2[v13], v4);
  lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState, MEMORY[0x277D74AA0]);
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if ((v13 & 1) == 0)
  {
    [v2 setNeedsUpdateConfiguration];
  }

  v15(a1, v4);
  return (v15)(v12, v4);
}

void (*DOCProgressCollectionListCell.cancelAccessoryDisplayedState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return DOCProgressCollectionListCell.cancelAccessoryDisplayedState.modify;
}

void DOCProgressCollectionListCell.cancelAccessoryDisplayedState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    DOCProgressCollectionListCell.cancelAccessoryDisplayedState.setter(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    DOCProgressCollectionListCell.cancelAccessoryDisplayedState.setter(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t DOCProgressCollectionListCell.representedOperation.didset(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + direct field offset for DOCProgressCollectionListCell.representedOperation);
  swift_beginAccess();
  v5 = v4[3];
  if (v5)
  {
    v6 = v4[4];
    v7 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v8 = *(v5 - 8);
    v9 = MEMORY[0x28223BE20](v7, v7);
    v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    (*(v6 + 8))(&v35, v5, v6);
    (*(v8 + 8))(v11, v5);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  outlined init with copy of DOCGridLayout.Spec?(a1, v28, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  v12 = v29;
  if (v29)
  {
    v13 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v13 + 8))(v34, v12, v13);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    memset(v34, 0, sizeof(v34));
  }

  outlined init with copy of DOCGridLayout.Spec?(&v35, v28, &_ss11AnyHashableVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v34, &v31, &_ss11AnyHashableVSgMd);
  if (!v29)
  {
    outlined destroy of CharacterSet?(v34, &_ss11AnyHashableVSgMd);
    outlined destroy of CharacterSet?(&v35, &_ss11AnyHashableVSgMd);
    if (!*(&v32 + 1))
    {
      v16 = &_ss11AnyHashableVSgMd;
      v17 = v28;
      return outlined destroy of CharacterSet?(v17, v16);
    }

    goto LABEL_14;
  }

  outlined init with copy of DOCGridLayout.Spec?(v28, v27, &_ss11AnyHashableVSgMd);
  if (!*(&v32 + 1))
  {
    outlined destroy of CharacterSet?(v34, &_ss11AnyHashableVSgMd);
    outlined destroy of CharacterSet?(&v35, &_ss11AnyHashableVSgMd);
    outlined destroy of AnyHashable(v27);
LABEL_14:
    outlined destroy of CharacterSet?(v28, &_ss11AnyHashableVSg_ACtMd);
    goto LABEL_15;
  }

  v25[0] = v31;
  v25[1] = v32;
  v26 = v33;
  v14 = MEMORY[0x24C1FC430](v27, v25);
  outlined destroy of AnyHashable(v25);
  outlined destroy of CharacterSet?(v34, &_ss11AnyHashableVSgMd);
  outlined destroy of CharacterSet?(&v35, &_ss11AnyHashableVSgMd);
  outlined destroy of AnyHashable(v27);
  result = outlined destroy of CharacterSet?(v28, &_ss11AnyHashableVSgMd);
  if ((v14 & 1) == 0)
  {
LABEL_15:
    v18 = direct field offset for DOCProgressCollectionListCell.operationProgress;
    v19 = *(v2 + direct field offset for DOCProgressCollectionListCell.operationProgress);
    *(v2 + direct field offset for DOCProgressCollectionListCell.operationProgress) = 0;
    DOCProgressCollectionListCell.operationProgress.didset(v19);

    outlined init with copy of DOCGridLayout.Spec?(v4, &v35, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    if (*(&v36 + 1))
    {
      outlined init with take of DOCDSCopyEngineConnection(&v35, v28);
      outlined init with copy of DOCSidebarItemIconProvider(v28, &v35);
      type metadata accessor for DOCGenericOperationProgress(0);
      swift_allocObject();
      v20 = *(&v36 + 1);
      v21 = __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v27[3] = v20;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
      outlined init with copy of DOCSidebarItemIconProvider(&v35, v34);
      v23 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v27, v34, &outlined read-only object #0 of DOCProgressCollectionListCell.representedOperation.didset);
      __swift_destroy_boxed_opaque_existential_0(&v35);
      v24 = *(v2 + v18);
      *(v2 + v18) = v23;

      DOCProgressCollectionListCell.operationProgress.didset(v24);

      return __swift_destroy_boxed_opaque_existential_0(v28);
    }

    v16 = &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd;
    v17 = &v35;
    return outlined destroy of CharacterSet?(v17, v16);
  }

  return result;
}

uint64_t DOCProgressCollectionListCell.representedOperation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for DOCProgressCollectionListCell.representedOperation;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
}

uint64_t DOCProgressCollectionListCell.representedOperation.setter(uint64_t a1)
{
  v3 = direct field offset for DOCProgressCollectionListCell.representedOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v3, v5, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  swift_beginAccess();
  outlined assign with copy of DOCProgressProvidingOperation?(a1, v1 + v3);
  swift_endAccess();
  DOCProgressCollectionListCell.representedOperation.didset(v5);
  outlined destroy of CharacterSet?(a1, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  return outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
}

uint64_t outlined assign with copy of DOCProgressProvidingOperation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*DOCProgressCollectionListCell.representedOperation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for DOCProgressCollectionListCell.representedOperation;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v5, v4, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  return DOCProgressCollectionListCell.representedOperation.modify;
}

void DOCProgressCollectionListCell.representedOperation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    outlined init with copy of DOCGridLayout.Spec?(*a1, v2 + 40, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v3 + v4, v2 + 80, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    swift_beginAccess();
    outlined assign with copy of DOCProgressProvidingOperation?(v2 + 40, v3 + v4);
    swift_endAccess();
    DOCProgressCollectionListCell.representedOperation.didset(v2 + 80);
    outlined destroy of CharacterSet?(v2 + 80, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(v3 + v4, v2 + 40, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    swift_beginAccess();
    outlined assign with copy of DOCProgressProvidingOperation?(v2, v3 + v4);
    swift_endAccess();
    DOCProgressCollectionListCell.representedOperation.didset(v2 + 40);
  }

  outlined destroy of CharacterSet?(v2 + 40, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
  outlined destroy of CharacterSet?(v2, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);

  free(v2);
}

uint64_t DOCProgressCollectionListCell.isBlankPlaceholder.getter()
{
  v1 = direct field offset for DOCProgressCollectionListCell.isBlankPlaceholder;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCProgressCollectionListCell.isBlankPlaceholder.setter(char a1)
{
  v3 = direct field offset for DOCProgressCollectionListCell.isBlankPlaceholder;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

id (*DOCProgressCollectionListCell.isBlankPlaceholder.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCProgressCollectionListCell.isBlankPlaceholder.modify;
}

id DOCProgressCollectionListCell.isBlankPlaceholder.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateConfiguration];
  }

  return result;
}

Swift::Void __swiftcall DOCProgressCollectionListCell.prepareForReuse()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCProgressCollectionListCell(0);
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x138))(0);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  (*((*v1 & *v0) + 0x120))(v3);
  v2 = *(v0 + direct field offset for DOCProgressCollectionListCell.operationProgress);
  *(v0 + direct field offset for DOCProgressCollectionListCell.operationProgress) = 0;
  DOCProgressCollectionListCell.operationProgress.didset(v2);
}

void @objc DOCProgressCollectionListCell.prepareForReuse()(void *a1)
{
  v1 = a1;
  DOCProgressCollectionListCell.prepareForReuse()();
}

uint64_t DOCProgressCollectionListCell.update(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v133 = &v116 - v6;
  v123 = type metadata accessor for UICellAccessory.DisplayedState();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v7);
  v121 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for UICellAccessory();
  v126 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v9);
  v129 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v128 = &v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v125 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v127 = &v116 - v19;
  v137 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  MEMORY[0x28223BE20](v137, v20);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v116 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v131 = &v116 - v29;
  v30 = type metadata accessor for UIBackgroundConfiguration();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35, v36);
  v39 = &v116 - v38;
  MEMORY[0x24C1FBB50](v37);
  v40 = type metadata accessor for UICellConfigurationState();
  v141 = v40;
  v142 = MEMORY[0x277D74BA8];
  v41 = __swift_allocate_boxed_opaque_existential_1(&v139);
  (*(*(v40 - 8) + 16))(v41, a1, v40);
  UIBackgroundConfiguration.updated(for:)();
  v134 = *(v31 + 8);
  v135 = v31 + 8;
  v134(v34, v30);
  __swift_destroy_boxed_opaque_existential_0(&v139);
  v132 = objc_opt_self();
  v42 = [v132 clearColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v43 = *(v2 + direct field offset for DOCProgressCollectionListCell.operationProgress);
  v136 = v30;
  if (!v43)
  {
    goto LABEL_4;
  }

  v130 = v39;
  v44 = *((*MEMORY[0x277D85000] & *v2) + 0x130);

  if (v44(v45))
  {

    v39 = v130;
LABEL_4:
    v46 = v133;
    (*(v31 + 16))(v133, v39, v30);
    (*(v31 + 56))(v46, 0, 1, v30);
    MEMORY[0x24C1FBB40](v46);
    v47 = v137;
    v141 = v137;
    v142 = lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentConfiguration and conformance DOCProgressCollectionListCell.ContentConfiguration, type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration);
    v48 = __swift_allocate_boxed_opaque_existential_1(&v139);
    static UIListContentConfiguration.subtitleCell()();
    v49 = &v22[v47[5]];
    *v49 = 0;
    v49[8] = 1;
    v22[v47[6]] = 3;
    v22[v47[7]] = 1;
    String.count.getter();
    UIListContentConfiguration.text.setter();
    String.count.getter();
    UIListContentConfiguration.secondaryText.setter();
    v50 = v39;
    if (one-time initialization token for fallbackIcon != -1)
    {
      swift_once();
    }

    v51 = static DOCProgressCollectionListCell.ContentConfiguration.fallbackIcon;
    UIListContentConfiguration.image.setter();
    v52 = objc_opt_self();
    v53 = [v52 preferredFontForTextStyle_];
    v54 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v54(v138, 0);
    v55 = [v52 preferredFontForTextStyle_];
    v56 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v56(v138, 0);
    v57 = [v132 secondaryLabelColor];
    v58 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v58(v138, 0);
    UIListContentConfiguration.directionalLayoutMargins.setter();
    UIListContentConfiguration.imageToTextPadding.setter();
    outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(v22, v48);
    MEMORY[0x24C1FBB20](&v139);
    v59 = v50;
    v60 = v136;
    return (v134)(v59, v60);
  }

  v61 = *(*v43 + 536);

  v118 = v61(v62);
  v119 = (*(*v43 + 544))();
  v120 = v63;
  v64 = [v2 traitCollection];
  [v64 displayScale];
  v66 = v65;

  v67 = (*(*v43 + 552))(64.0, 64.0, v66);
  v68 = (*(*v43 + 488))(&v139);
  v69 = v139;
  v70 = v140;
  (*(*v43 + 512))(&v139, v68);

  LOBYTE(v64) = v139;
  v71 = v67;
  static UIListContentConfiguration.subtitleCell()();
  v72 = v137;
  v73 = &v26[*(v137 + 20)];
  *v73 = v69;
  v73[8] = v70;
  v26[*(v72 + 24)] = v64;
  v26[*(v72 + 28)] = 0;
  if (String.count.getter() <= 0)
  {
  }

  UIListContentConfiguration.text.setter();
  v74 = String.count.getter();
  v117 = v31;
  if (v74 <= 0)
  {
  }

  UIListContentConfiguration.secondaryText.setter();
  v120 = v71;
  UIListContentConfiguration.image.setter();
  v75 = objc_opt_self();
  v76 = [v75 preferredFontForTextStyle_];
  v77 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v77(&v139, 0);
  v78 = [v75 preferredFontForTextStyle_];
  v79 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v79(&v139, 0);
  v80 = [v132 secondaryLabelColor];
  v81 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v81(&v139, 0);
  UIListContentConfiguration.directionalLayoutMargins.setter();
  UIListContentConfiguration.imageToTextPadding.setter();

  v82 = v131;
  outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(v26, v131);
  outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(v82, v22);
  v83 = outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(v22, v82);
  v84 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x118))(&v139, v83);
  v85 = v141;
  if (v141)
  {
    v86 = v142;
    v87 = __swift_project_boxed_opaque_existential_1(&v139, v141);
    v88 = *(v85 - 8);
    v89 = MEMORY[0x28223BE20](v87, v87);
    v91 = &v116 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v88 + 16))(v91, v89);
    outlined destroy of CharacterSet?(&v139, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    v92 = (*(v86 + 24))(v85, v86);
    (*(v88 + 8))(v91, v85);
    LOBYTE(v91) = [v92 isCancellable];

    v93 = v117;
    if (v91)
    {
      v94 = type metadata accessor for DOCProgressCollectionListCell.ContentView.CancelAccessoryView(0);
      v95 = v127;
      (*((*v84 & *v2) + 0xA0))(v94, v94);
      v96 = v125;
      outlined init with copy of DOCGridLayout.Spec?(v95, v125, &_s5UIKit15UICellAccessoryVSgMd);
      v97 = v126;
      v98 = *(v126 + 48);
      v99 = v84;
      v100 = v124;
      if (v98(v96, 1, v124) == 1)
      {
        v132 = type metadata accessor for DOCProgressCollectionListCell.ContentView(0);
        v101 = v121;
        (*((*v99 & *v2) + 0x100))();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v102 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v119 = v98;
        v103 = v128;
        static DOCProgressCollectionListCell.ContentView.cancelAccessory(displayedState:action:)(v101, v102, v128);
        v104 = v103;

        v105 = v125;
        (*(v122 + 8))(v101, v123);
        v106 = v119(v105, 1, v100);
        v107 = v126;
        if (v106 != 1)
        {
          outlined destroy of CharacterSet?(v105, &_s5UIKit15UICellAccessoryVSgMd);
        }
      }

      else
      {
        v104 = v128;
        (*(v97 + 32))(v128, v96, v100);
        v107 = v97;
      }

      (*(v107 + 16))(v129, v104, v100);
      v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v112 = v110[2];
      v111 = v110[3];
      v108 = v136;
      if (v112 >= v111 >> 1)
      {
        v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v111 > 1, v112 + 1, 1, v110);
      }

      (*(v107 + 8))(v128, v100);
      outlined destroy of CharacterSet?(v127, &_s5UIKit15UICellAccessoryVSgMd);
      v110[2] = v112 + 1;
      (*(v107 + 32))(v110 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v112, v129, v100);
    }

    else
    {
      v108 = v136;
    }

    v109 = v130;
  }

  else
  {
    outlined destroy of CharacterSet?(&v139, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    v108 = v136;
    v109 = v130;
    v93 = v117;
  }

  v113 = v133;
  (*(v93 + 16))(v133, v109, v108);
  (*(v93 + 56))(v113, 0, 1, v108);
  MEMORY[0x24C1FBB40](v113);
  v141 = v137;
  v142 = lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentConfiguration and conformance DOCProgressCollectionListCell.ContentConfiguration, type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration);
  v114 = __swift_allocate_boxed_opaque_existential_1(&v139);
  outlined init with copy of DOCProgressCollectionListCell.ContentConfiguration(v82, v114);
  MEMORY[0x24C1FBB20](&v139);
  UICollectionViewListCell.accessories.setter();

  outlined destroy of DOCProgressCollectionListCell.ContentConfiguration(v82);
  v59 = v109;
  v60 = v108;
  return (v134)(v59, v60);
}

void DOCProgressCollectionListCell.ContentConfiguration.init(title:subtitle:icon:progress:state:isBlankPlaceholder:)(void *a1@<X4>, uint64_t *a2@<X5>, char *a3@<X6>, char a4@<W7>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *a3;
  static UIListContentConfiguration.subtitleCell()();
  v11 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v12 = a5 + v11[5];
  *v12 = v8;
  *(v12 + 8) = v9;
  *(a5 + v11[6]) = v10;
  *(a5 + v11[7]) = a4;
  if (String.count.getter() <= 0)
  {
  }

  UIListContentConfiguration.text.setter();
  if (String.count.getter() <= 0)
  {
  }

  UIListContentConfiguration.secondaryText.setter();
  if (!a1)
  {
    if (one-time initialization token for fallbackIcon != -1)
    {
      swift_once();
    }

    v13 = static DOCProgressCollectionListCell.ContentConfiguration.fallbackIcon;
  }

  v14 = a1;
  UIListContentConfiguration.image.setter();
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  v17 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v17(v22, 0);
  v18 = [v15 preferredFontForTextStyle_];
  v19 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v19(v22, 0);
  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v21(v22, 0);
  UIListContentConfiguration.directionalLayoutMargins.setter();
  UIListContentConfiguration.imageToTextPadding.setter();
}

void closure #1 in implicit closure #2 in DOCProgressCollectionListCell.update(using:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x118))(v10);

    v2 = v11;
    if (v11)
    {
      v3 = v12;
      v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
      v5 = *(v2 - 8);
      v6 = MEMORY[0x28223BE20](v4, v4);
      v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v8, v6);
      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
      v9 = (*(v3 + 24))(v2, v3);
      (*(v5 + 8))(v8, v2);
      [v9 cancel];
    }

    else
    {
      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
    }
  }
}

uint64_t static DOCProgressCollectionListCell.ContentView.cancelAccessory(displayedState:action:)@<X0>(uint64_t a1@<X0>, UIAction_optional *a2@<X1>, uint64_t a3@<X8>)
{
  v29[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v29 - v7;
  v29[0] = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v29[0] - 8);
  MEMORY[0x28223BE20](v29[0], v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.Placement();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = v29 - v20;
  v22 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48) - v20);
  v23 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v23 - 8) + 16))(v21, a1, v23);
  *v22 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
  v22[1] = 0;
  (*(v14 + 104))(v21, *MEMORY[0x277D74AD8], v13);
  objc_allocWithZone(type metadata accessor for DOCProgressCollectionListCell.ContentView.CancelAccessoryView(0));
  v24 = a2;
  v25 = DOCProgressCollectionListCell.ContentView.CancelAccessoryView.init(action:)(a2);
  (*(v14 + 16))(v17, v21, v13);
  v26 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v27 = v25;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  (*(v9 + 8))(v12, v29[0]);
  return (*(v14 + 8))(v21, v13);
}

uint64_t DOCProgressCollectionListCell.operationProgress.didset(uint64_t result)
{
  v2 = v1;
  v3 = direct field offset for DOCProgressCollectionListCell.operationProgress;
  v4 = *&v1[direct field offset for DOCProgressCollectionListCell.operationProgress];
  if (!v4)
  {
    if (!result)
    {
      return result;
    }

LABEL_6:
    result = (*(*result + 424))(0, 0);
    v4 = *&v1[v3];
    if (!v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v4 == result)
  {
    return result;
  }

  if (result)
  {
    goto LABEL_6;
  }

LABEL_7:

  _StringGuts.grow(_:)(26);

  MEMORY[0x24C1FAEA0](60, 0xE100000000000000);
  swift_getObjectType();
  v5 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v5);

  MEMORY[0x24C1FAEA0](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  MEMORY[0x24C1FAEA0](0x73626F20776F6E20, 0xEF20676E69767265);
  v6 = *(*v4 + 560);

  v8 = v6(v7);
  v9 = MEMORY[0x24C1FAE00](v8);
  v11 = v10;

  MEMORY[0x24C1FAEA0](v9, v11);

  v12 = *(*v4 + 168);

  v12(1);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(*v4 + 424))(partial apply for closure #1 in DOCProgressCollectionListCell.operationProgress.didset, v13);

  [v2 setNeedsUpdateConfiguration];
}

uint64_t lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(unint64_t *a1, void (*a2)(uint64_t))
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

void *closure #1 in DOCProgressCollectionListCell.operationProgress.didset(uint64_t a1)
{
  v2 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *((*MEMORY[0x277D85000] & *result) + 0x80);
    v8 = result;
    v7();

    v9 = (*(*a1 + 488))(&v15);
    v10 = v16;
    v11 = &v5[*(v2 + 20)];
    *v11 = v15;
    v11[8] = v10;
    (*(*a1 + 536))(v9);
    v12 = UIListContentConfiguration.text.setter();
    (*(*a1 + 544))(v12);
    UIListContentConfiguration.secondaryText.setter();
    v17 = v2;
    v18 = lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentConfiguration and conformance DOCProgressCollectionListCell.ContentConfiguration, type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration);
    v13 = __swift_allocate_boxed_opaque_existential_1(&v15);
    outlined init with copy of DOCProgressCollectionListCell.ContentConfiguration(v5, v13);
    v14 = v8;
    MEMORY[0x24C1FBB20](&v15);

    return outlined destroy of DOCProgressCollectionListCell.ContentConfiguration(v5);
  }

  return result;
}

id DOCProgressCollectionListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCProgressCollectionListCell.init(coder:)(void *a1)
{
  v3 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  v4 = *MEMORY[0x277D74A88];
  v5 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  v6 = &v1[direct field offset for DOCProgressCollectionListCell.representedOperation];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v1[direct field offset for DOCProgressCollectionListCell.isBlankPlaceholder] = 0;
  *&v1[direct field offset for DOCProgressCollectionListCell.operationProgress] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DOCProgressCollectionListCell(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id DOCProgressCollectionListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  v10 = *MEMORY[0x277D74A88];
  v11 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v11 - 8) + 104))(&v4[v9], v10, v11);
  v12 = &v4[direct field offset for DOCProgressCollectionListCell.representedOperation];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v4[direct field offset for DOCProgressCollectionListCell.isBlankPlaceholder] = 0;
  *&v4[direct field offset for DOCProgressCollectionListCell.operationProgress] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for DOCProgressCollectionListCell(0);
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id @objc DOCProgressCollectionListCell.init(frame:)(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  v10 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  v11 = *MEMORY[0x277D74A88];
  v12 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v12 - 8) + 104))(&a1[v10], v11, v12);
  v13 = &a1[direct field offset for DOCProgressCollectionListCell.representedOperation];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  a1[direct field offset for DOCProgressCollectionListCell.isBlankPlaceholder] = 0;
  *&a1[direct field offset for DOCProgressCollectionListCell.operationProgress] = 0;
  v15.receiver = a1;
  v15.super_class = type metadata accessor for DOCProgressCollectionListCell(0);
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
}

uint64_t DOCProgressCollectionListCell.__ivar_destroyer()
{
  v1 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  v2 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of CharacterSet?(v0 + direct field offset for DOCProgressCollectionListCell.representedOperation, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
}

uint64_t @objc DOCProgressCollectionListCell.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for DOCProgressCollectionListCell.cancelAccessoryDisplayedState;
  v3 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  outlined destroy of CharacterSet?(a1 + direct field offset for DOCProgressCollectionListCell.representedOperation, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd);
}

uint64_t DOCProgressCollectionListCell.ContentConfiguration.base.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DOCProgressCollectionListCell.ContentConfiguration.base.setter(uint64_t a1)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DOCProgressCollectionListCell.ContentConfiguration.progress.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t DOCProgressCollectionListCell.ContentConfiguration.progress.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DOCProgressCollectionListCell.ContentConfiguration.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t DOCProgressCollectionListCell.ContentConfiguration.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

id one-time initialization function for fallbackIcon()
{
  result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  static DOCProgressCollectionListCell.ContentConfiguration.fallbackIcon = result;
  return result;
}

uint64_t *DOCProgressCollectionListCell.ContentConfiguration.fallbackIcon.unsafeMutableAddressor()
{
  if (one-time initialization token for fallbackIcon != -1)
  {
    swift_once();
  }

  return &static DOCProgressCollectionListCell.ContentConfiguration.fallbackIcon;
}

uint64_t outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DOCProgressCollectionListCell.ContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCProgressCollectionListCell.ContentConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static DOCProgressCollectionListCell.ContentConfiguration.fallbackIcon.getter()
{
  if (one-time initialization token for fallbackIcon != -1)
  {
    swift_once();
  }

  v1 = static DOCProgressCollectionListCell.ContentConfiguration.fallbackIcon;

  return v1;
}

id DOCProgressCollectionListCell.ContentConfiguration.makeContentView()()
{
  v1 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCProgressCollectionListCell.ContentConfiguration(v0, v4);
  v5 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionListCell.ContentView(0));
  v6 = DOCProgressCollectionListCell.ContentView.init(configuration:)(v4);
  lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentView and conformance DOCProgressCollectionListCell.ContentView, type metadata accessor for DOCProgressCollectionListCell.ContentView);
  return v6;
}

void DOCProgressCollectionListCell.ContentConfiguration.hash(into:)()
{
  type metadata accessor for UIListContentConfiguration();
  lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type UIListContentConfiguration and conformance UIListContentConfiguration, MEMORY[0x277D74C38]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    v3 = *v2;
    MEMORY[0x24C1FCBD0](1);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x24C1FCC00](v4);
  }

  v5 = *(v0 + v1[6]);
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    if (v5 != 3)
    {
      MEMORY[0x24C1FCBD0](2);
      Hasher._combine(_:)(v5 & 1);
      goto LABEL_13;
    }

    v6 = 1;
  }

  MEMORY[0x24C1FCBD0](v6);
LABEL_13:
  Hasher._combine(_:)(*(v0 + v1[7]));
}

Swift::Int DOCProgressCollectionListCell.ContentConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCProgressCollectionListCell.ContentConfiguration.hash(into:)();
  return Hasher._finalize()();
}

id protocol witness for UIContentConfiguration.makeContentView() in conformance DOCProgressCollectionListCell.ContentConfiguration(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1 - 8, a2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCProgressCollectionListCell.ContentConfiguration(v2, v4);
  v5 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionListCell.ContentView(0));
  v6 = DOCProgressCollectionListCell.ContentView.init(configuration:)(v4);
  lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentView and conformance DOCProgressCollectionListCell.ContentView, type metadata accessor for DOCProgressCollectionListCell.ContentView);
  return v6;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCProgressCollectionListCell.ContentConfiguration()
{
  Hasher.init(_seed:)();
  DOCProgressCollectionListCell.ContentConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressCollectionListCell.ContentConfiguration()
{
  Hasher.init(_seed:)();
  DOCProgressCollectionListCell.ContentConfiguration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCProgressCollectionListCell.ContentView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressConfiguration;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v7, v6, &_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
  v8 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  result = (*(*(v8 - 8) + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v8;
    a1[4] = lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentConfiguration and conformance DOCProgressCollectionListCell.ContentConfiguration, type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(v6, boxed_opaque_existential_1);
  }

  return result;
}

uint64_t DOCProgressCollectionListCell.ContentView.configuration.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24[-v9 - 8];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v24[-v13 - 8];
  v15 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of DOCSidebarItemIconProvider(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
  if (swift_dynamicCast())
  {
    v20 = *(v16 + 56);
    v20(v14, 0, 1, v15);
    outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(v14, v19);
    outlined init with copy of DOCProgressCollectionListCell.ContentConfiguration(v19, v10);
    v20(v10, 0, 1, v15);
    v21 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressConfiguration;
    swift_beginAccess();
    outlined assign with take of DOCProgressCollectionListCell.ContentConfiguration?(v10, v1 + v21);
    swift_endAccess();
    outlined init with copy of DOCGridLayout.Spec?(v1 + v21, v6, &_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
    result = (*(v16 + 48))(v6, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      DOCProgressCollectionListCell.ContentView.apply(base:)();
      DOCProgressCollectionListCell.ContentView.apply(progress:)(v6);
      __swift_destroy_boxed_opaque_existential_0(a1);
      outlined destroy of DOCProgressCollectionListCell.ContentConfiguration(v19);
      return outlined destroy of DOCProgressCollectionListCell.ContentConfiguration(v6);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v16 + 56))(v14, 1, 1, v15);
    return outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
  }

  return result;
}

void (*DOCProgressCollectionListCell.ContentView.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 104) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[14] = v7;
  v9 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressConfiguration;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v9, v8, &_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
  v10 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  result = (*(*(v10 - 8) + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5[3] = v10;
    v5[4] = lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentConfiguration and conformance DOCProgressCollectionListCell.ContentConfiguration, type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    outlined init with take of DOCProgressCollectionListCell.ContentConfiguration(v8, boxed_opaque_existential_1);
    return DOCProgressCollectionListCell.ContentView.configuration.modify;
  }

  return result;
}

void DOCProgressCollectionListCell.ContentView.configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  if (a2)
  {
    outlined init with copy of DOCSidebarItemIconProvider(*a1, v2 + 40);
    DOCProgressCollectionListCell.ContentView.configuration.setter(v2 + 40);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    DOCProgressCollectionListCell.ContentView.configuration.setter(*a1);
  }

  free(v3);

  free(v2);
}

id DOCProgressCollectionListCell.ContentView.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressConfiguration;
  v9 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v10 = *(*(v9 - 8) + 56);
  v10(&v1[v8], 1, 1, v9);
  v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_titleLabel;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_subtitleLabel;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconView;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v14 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressView;
  v21[0] = 0;
  v15 = objc_allocWithZone(type metadata accessor for DOCProgressIndicatorView());
  *&v2[v14] = DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(v21, 0.5);
  *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconViewToTitleTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_mainStack] = 0;
  outlined init with copy of DOCProgressCollectionListCell.ContentConfiguration(a1, v7);
  v10(v7, 0, 1, v9);
  swift_beginAccess();
  outlined assign with take of DOCProgressCollectionListCell.ContentConfiguration?(v7, &v2[v8]);
  swift_endAccess();
  v16 = type metadata accessor for DOCProgressCollectionListCell.ContentView(0);
  v20.receiver = v2;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 100.0, 100.0);
  DOCProgressCollectionListCell.ContentView.setup()();
  DOCProgressCollectionListCell.ContentView.apply(base:)();
  DOCProgressCollectionListCell.ContentView.apply(progress:)(a1);

  outlined destroy of DOCProgressCollectionListCell.ContentConfiguration(a1);
  return v17;
}

id DOCProgressCollectionListCell.ContentView.separatorLeadingAnchor.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_titleLabel) leadingAnchor];

  return v1;
}

char *DOCProgressCollectionListCell.ContentView.CancelAccessoryView.init(action:)(UIAction_optional *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v35 - v6;
  *&v2[direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.centerYConstraint] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
  v8 = DOCButtonTypeAccessoryCancel;
  v9 = a1;
  UIButton.init(type:primaryAction:)(v10, v8, a1);
  *&v2[direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.button] = v11;
  v12 = v11;
  static UIButton.Configuration.borderless()();
  v13 = type metadata accessor for UIButton.Configuration();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  UIButton.configuration.setter();

  v14 = type metadata accessor for DOCProgressCollectionListCell.ContentView.CancelAccessoryView(0);
  v35.receiver = v2;
  v35.super_class = v14;
  v15 = [(UIAction_optional *)&v35 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v16 = *&v15[direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.button];
  v17 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = v17;
  [v18 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249BA0470;
  v21 = [v18 topAnchor];
  v22 = [v16 topAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [v18 bottomAnchor];

  v25 = [v16 bottomAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [v18 leadingAnchor];

  v28 = [v16 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v30 = [v18 trailingAnchor];

  v31 = [v16 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v20 + 56) = v32;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  return v18;
}

void DOCProgressCollectionListCell.ContentView.CancelAccessoryView.apply(configuration:owningContentView:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.button);
  v5 = *(a1 + *(type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0) + 24));
  [v4 setEnabled_];
  v6 = *(a2 + OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressView);
  v7 = v6;

  DOCProgressCollectionListCell.ContentView.CancelAccessoryView.centerYReferenceView.setter(v6);
}

void @objc DOCProgressCollectionListCell.ContentView.CancelAccessoryView.layoutSubviews()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DOCProgressCollectionListCell.ContentView.CancelAccessoryView(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  DOCProgressCollectionListCell.ContentView.CancelAccessoryView.ensureCenterYConstraintActiveIfNeeded()();
}

void DOCProgressCollectionListCell.ContentView.CancelAccessoryView.centerYReferenceView.setter(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    if (Strong)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
      v6 = Strong;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v8 = *&v2[direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.centerYConstraint];
    *&v2[direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.centerYConstraint] = 0;

    [v2 setNeedsLayout];
    v6 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void DOCProgressCollectionListCell.ContentView.CancelAccessoryView.ensureCenterYConstraintActiveIfNeeded()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [v0 window];
    if (v1)
    {

      v2 = [Strong window];
      if (v2)
      {

        v3 = direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.centerYConstraint;
        v4 = *&v0[direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.centerYConstraint];
        if (v4 || (v5 = [*&v0[direct field offset for DOCProgressCollectionListCell.ContentView.CancelAccessoryView.button] centerYAnchor], v6 = objc_msgSend(Strong, sel_centerYAnchor), v7 = objc_msgSend(v5, sel_constraintEqualToAnchor_, v6), v5, v6, v8 = *&v0[v3], *&v0[v3] = v7, v8, (v4 = *&v0[v3]) != 0))
        {
          v9 = v4;
          [v9 setActive_];
        }
      }
    }
  }
}

void DOCProgressCollectionListCell.ContentView.CancelAccessoryView.__ivar_destroyer()
{

  JUMPOUT(0x24C1FE970);
}

id DOCProgressCollectionListCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void @objc DOCProgressCollectionListCell.ContentView.CancelAccessoryView.__ivar_destroyer(uint64_t a1)
{

  JUMPOUT(0x24C1FE970);
}

void DOCProgressCollectionListCell.ContentView.setup()()
{
  v78 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconView];
  [v78 setContentMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA1010;
  v2 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_titleLabel];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_subtitleLabel];
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  v6 = v4;
  v77 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_10;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  for (i = v6; ; i = MEMORY[0x24C1FC540](0, inited))
  {
    v8 = i;
    [i setAdjustsFontSizeToFitWidth_];
    [v8 setAdjustsFontForContentSizeCategory_];
    [v8 setMinimumScaleFactor_];
    LODWORD(v9) = 1148846080;
    [v8 setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [v8 setContentHuggingPriority:1 forAxis:v10];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v11 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    ;
  }

  v11 = MEMORY[0x24C1FC540](1, inited);
LABEL_7:
  v12 = v11;
  [v11 setAdjustsFontSizeToFitWidth_];
  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setMinimumScaleFactor_];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v14];

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = swift_allocObject();
  v16 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressView];
  *(v15 + 16) = xmmword_249BA37E0;
  v73 = v6;
  *(v15 + 32) = v6;
  *(v15 + 40) = v16;
  *(v15 + 48) = v77;
  v17 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v71 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithArrangedSubviews_];

  [v19 setAxis_];
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v78 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 addSubview_];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA1010;
  *(v21 + 32) = v20;
  *(v21 + 40) = v19;
  v22 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v23 = v20;
  v75 = v19;
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v22 initWithArrangedSubviews_];

  [v25 setAlignment_];
  [v25 setAxis_];
  v26 = v25;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v72 = [v0 layoutMarginsGuide];
  v27 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_mainStack];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_mainStack] = v26;
  v28 = v26;

  v29 = [v78 topAnchor];
  v30 = [v73 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:0.0];

  v32 = OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconViewToTitleTopConstraint;
  v33 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconViewToTitleTopConstraint];
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconViewToTitleTopConstraint] = v31;

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_249BA75C0;
  v35 = [v23 leadingAnchor];
  v36 = [v78 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [v23 trailingAnchor];
  v39 = [v78 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v34 + 40) = v40;
  v76 = v23;
  v41 = [v23 heightAnchor];
  v42 = [v78 heightAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor_];

  *(v34 + 48) = v43;
  v44 = [v78 heightAnchor];
  v45 = [v44 constraintLessThanOrEqualToConstant_];

  *(v34 + 56) = v45;
  v46 = *&v0[v32];
  if (v46)
  {
    v74 = objc_opt_self();
    *(v34 + 64) = v46;
    v47 = v46;
    v48 = [v78 bottomAnchor];
    v49 = [v77 centerYAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    type metadata accessor for UILayoutPriority(0);
    lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v51) = v79;
    [v50 setPriority_];
    *(v34 + 72) = v50;
    v52 = [v78 widthAnchor];
    v53 = [v78 heightAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(v34 + 80) = v54;
    v55 = [v71 heightAnchor];
    v56 = [v55 constraintEqualToConstant_];

    *(v34 + 88) = v56;
    v57 = [v28 leadingAnchor];
    v58 = [v72 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor_];

    *(v34 + 96) = v59;
    v60 = [v28 trailingAnchor];
    v61 = [v72 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor_];

    *(v34 + 104) = v62;
    v63 = [v28 topAnchor];
    v64 = [v72 topAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v34 + 112) = v65;
    v66 = [v28 bottomAnchor];

    v67 = [v72 bottomAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v69) = v79;
    [v68 setPriority_];
    *(v34 + 120) = v68;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v70 = Array._bridgeToObjectiveC()().super.isa;

    [v74 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void DOCProgressCollectionListCell.ContentView.apply(base:)()
{
  v1 = v0;
  v40 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v39 - v8;
  v10 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_mainStack];
  if (!v10)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  UIListContentConfiguration.imageToTextPadding.getter();
  [v11 setSpacing_];

  UIListContentConfiguration.directionalLayoutMargins.getter();
  [v0 setDirectionalLayoutMargins_];
  v12 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_titleLabel];
  v13 = UIListContentConfiguration.text.getter();
  v15 = v14;
  UIListContentConfiguration.textProperties.getter();
  v16 = UIListContentConfiguration.TextProperties.font.getter();
  [v12 setFont_];

  v17 = UIListContentConfiguration.TextProperties.color.getter();
  [v12 setTextColor_];

  if (v15)
  {
    v18 = MEMORY[0x24C1FAD20](v13, v15);
  }

  else
  {
    v18 = 0;
  }

  [v12 setText_];

  v19 = *(v2 + 8);
  v19(v9, v40);
  v20 = *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_subtitleLabel];
  v21 = UIListContentConfiguration.secondaryText.getter();
  v23 = v22;
  UIListContentConfiguration.secondaryTextProperties.getter();
  v24 = UIListContentConfiguration.TextProperties.font.getter();
  [v20 setFont_];

  v25 = UIListContentConfiguration.TextProperties.color.getter();
  [v20 setTextColor_];

  if (v23)
  {
    v26 = MEMORY[0x24C1FAD20](v21, v23);
  }

  else
  {
    v26 = 0;
  }

  [v20 setText_];

  v19(v5, v40);
  v27 = *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconView];
  v28 = UIListContentConfiguration.image.getter();
  [v27 setImage_];

  v29 = *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_iconViewToTitleTopConstraint];
  if (!v29)
  {
    goto LABEL_13;
  }

  v30 = v29;
  v31 = [v12 font];
  if (!v31)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v31;
  [v31 ascender];
  v34 = v33;

  v35 = [v12 font];
  if (v35)
  {
    v36 = v35;
    [v35 capHeight];
    v38 = v37;

    [v30 setConstant_];
    return;
  }

LABEL_15:
  __break(1u);
}

id DOCProgressCollectionListCell.ContentView.apply(progress:)(uint64_t a1)
{
  v3 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v4 = a1 + *(v3 + 20);
  v5.n128_u64[0] = 0;
  if ((*(v4 + 8) & 1) == 0)
  {
    v5.n128_u64[0] = *v4;
  }

  (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressView)) + 0x70))(v5);
  result = *(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_mainStack);
  if (*(a1 + *(v3 + 28)) == 1)
  {
    v7 = 0.0;
    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v7 = 1.0;
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_7:

  return [result setAlpha_];
}

void DOCProgressCollectionListCell.ContentView.__ivar_destroyer()
{
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_progressConfiguration, &_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);

  v1 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables29DOCProgressCollectionListCell11ContentView_mainStack);
}

void (*protocol witness for UIContentView.configuration.modify in conformance DOCProgressCollectionListCell.ContentView(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

uint64_t specialized static DOCProgressCollectionListCell.ContentConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x24C1F9280]() & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if ((v9 & 1) == 0)
    {
LABEL_8:
      v10 = v4[6];
      v11 = *(a1 + v10);
      v12 = *(a2 + v10);
      if (v11 == 2)
      {
        if (v12 == 2)
        {
          goto LABEL_18;
        }
      }

      else if (v11 == 3)
      {
        if (v12 == 3)
        {
LABEL_18:
          LOBYTE(v9) = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
          return v9 & 1;
        }
      }

      else if ((v12 & 0xFE) != 2 && ((v12 ^ v11) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  return v9 & 1;
}

uint64_t outlined assign with take of DOCProgressCollectionListCell.ContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressCollectionListCellC20ContentConfigurationVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for DOCProgressCollectionListCell.ContentView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UICellAccessory.DisplayedState and conformance UICellAccessory.DisplayedState(&lazy protocol witness table cache variable for type DOCProgressCollectionListCell.ContentView and conformance DOCProgressCollectionListCell.ContentView, type metadata accessor for DOCProgressCollectionListCell.ContentView);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for DOCProgressCollectionListCell()
{
  result = type metadata accessor for UICellAccessory.DisplayedState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for DOCProgressCollectionListCell.ContentConfiguration()
{
  result = type metadata accessor for UIListContentConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for DOCProgressCollectionListCell.ContentView()
{
  type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration?()
{
  if (!lazy cache variable for type metadata for DOCProgressCollectionListCell.ContentConfiguration?)
  {
    type metadata accessor for DOCProgressCollectionListCell.ContentConfiguration(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCProgressCollectionListCell.ContentConfiguration?);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t *DOCBrowserHistoryDataSource.didChange.unsafeMutableAddressor()
{
  if (one-time initialization token for didChange != -1)
  {
    swift_once();
  }

  return &static DOCBrowserHistoryDataSource.didChange;
}

void *DOCBrowserHistoryItem.locationDisplayProperties.getter()
{
  v1 = type metadata accessor for DOCBrowserHistoryItem(0);
  v2 = *(v0 + *(v1 + 20));
  v3 = *(v0 + *(v1 + 32));
  v4 = v2;
  v5 = v3;
  return v2;
}

BOOL DOCBrowserHistoryItem.isShowingSearchResults.getter()
{
  v1 = type metadata accessor for DOCBrowserHistoryItem(0);
  outlined init with copy of DOCGridLayout.Spec?(v0 + *(v1 + 36), v6, &_sypSgMd);
  if (!v7)
  {
    outlined destroy of CharacterSet?(v6, &_sypSgMd);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v5;
LABEL_6:
  v3 = v2 != 0;

  return v3;
}

__n128 DOCBrowserHistoryItem.init(topLocation:containerLocationsToRoot:anchorLocation:source:context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  UUID.init()();
  v12 = type metadata accessor for DOCBrowserHistoryItem(0);
  *(a6 + v12[5]) = a1;
  *(a6 + v12[6]) = a2;
  *(a6 + v12[7]) = a3;
  *(a6 + v12[8]) = a4;
  v13 = (a6 + v12[9]);
  result = *a5;
  v15 = *(a5 + 16);
  *v13 = *a5;
  v13[1] = v15;
  return result;
}

uint64_t DOCBrowserHistoryItem.historyNodeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id DOCBrowserHistoryItem.topLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 20));

  return v1;
}

uint64_t DOCBrowserHistoryItem.containerLocationsToRoot.getter()
{
  type metadata accessor for DOCBrowserHistoryItem(0);
}

void *DOCBrowserHistoryItem.anchorLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 28));
  v2 = v1;
  return v1;
}

id DOCBrowserHistoryItem.source.getter()
{
  v1 = *(v0 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 32));

  return v1;
}

uint64_t DOCBrowserHistoryItem.underlyingLocations.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for DOCBrowserHistoryItem(0);
  v4 = *(v0 + *(v3 + 20));
  MEMORY[0x24C1FB090]();
  if (*(v12 + 16) >= *(v12 + 24) >> 1)
  {
LABEL_13:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = specialized _arrayForceCast<A, B>(_:)(*(v1 + *(v3 + 24)));
  specialized Array.append<A>(contentsOf:)(v5);
  v6 = *(v1 + *(v3 + 28));
  MEMORY[0x24C1FB090]();
  if (*(v12 + 16) >= *(v12 + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = 0;
  v1 = v12;
  v11 = v2;
  v7 = *(v12 + 16);
  while (v7 != v3)
  {
    if (v3 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(v12 + 8 * v3++ + 32);
    if (v8)
    {
      v9 = v8;
      MEMORY[0x24C1FB090]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v11;
    }
  }

  return v2;
}

uint64_t DOCBrowserHistoryItem.debugTraceDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 20));
  v2 = [v1 representedTag];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 displayName];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = [v1 displayName];
    if (!v6)
    {
      v6 = [v1 sourceIdentifier];
    }

    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    _StringGuts.grow(_:)(19);

    strcpy(v13, "historyNode:");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v11);

    MEMORY[0x24C1FAEA0](10016, 0xE200000000000000);
    MEMORY[0x24C1FAEA0](v8, v10);

    MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
    return v13[0];
  }

  return v5;
}

uint64_t DOCBrowserHistoryShiftDirection.description.getter()
{
  if (*v0)
  {
    return 0x64726177726F66;
  }

  else
  {
    return 0x647261776B636162;
  }
}

Swift::Int DOCBrowserHistoryShiftDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCBrowserHistoryShiftDirection()
{
  if (*v0)
  {
    return 0x64726177726F66;
  }

  else
  {
    return 0x647261776B636162;
  }
}

uint64_t _DOCBrowserHistoryDataSourceBase.shortDebugID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_shortDebugID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t _DOCBrowserHistoryDataSourceBase.shortDebugID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBase_shortDebugID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t closure #1 in _DOCBrowserHistoryDataSourceBase.updateHistoryItems(endBackgroundRefresh:refreshedItemBlock:)(uint64_t a1, void (*a2)(uint64_t))
{
  v74 = type metadata accessor for DOCBrowserHistoryItem(0);
  v65 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v4);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v68 = &v61 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v69 = &v61 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v61 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v71 = (&v61 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v61 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v61 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v61 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v66 = a1;
  v37 = a1;
  v39 = &v61 - v38;
  outlined init with copy of DOCGridLayout.Spec?(v37, &v61 - v38, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v39, v34, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  v72 = *(v65 + 48);
  v73 = v65 + 48;
  if (v72(v34, 1, v74) == 1)
  {
    outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
  }

  else
  {
    v40 = v71;
    outlined init with take of DOCBrowserHistoryItem(v34, v71);
    a2(v40);
    outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v40, type metadata accessor for DOCBrowserHistoryItem);
    outlined destroy of CharacterSet?(v39, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
    outlined init with take of DOCBrowserHistoryItem?(v30, v39);
  }

  v64 = v39;
  v41 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet(0);
  v42 = *(v41 + 20);
  v62 = v41;
  v63 = v42;
  v43 = *(v66 + v42);
  v44 = *(v43 + 16);
  v71 = a2;
  if (v44)
  {
    v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v45 = v43 + v67;
    v46 = *(v65 + 72);
    v47 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v45, v15, type metadata accessor for DOCBrowserHistoryItem);
      a2(v15);
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v15, type metadata accessor for DOCBrowserHistoryItem);
      if (v72(v26, 1, v74) == 1)
      {
        outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      }

      else
      {
        outlined init with take of DOCBrowserHistoryItem(v26, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v49 = v47[2];
        v48 = v47[3];
        if (v49 >= v48 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v47);
        }

        v47[2] = v49 + 1;
        outlined init with take of DOCBrowserHistoryItem(v68, v47 + v67 + v49 * v46);
        a2 = v71;
      }

      v45 += v46;
      --v44;
    }

    while (v44);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v68 = *(v62 + 24);
  v50 = *(v66 + v68);
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v53 = v50 + v52;
    v54 = *(v65 + 72);
    v55 = MEMORY[0x277D84F90];
    do
    {
      v56 = v69;
      outlined init with copy of _DOCBrowserHistoryDataSourceBase.ItemSet(v53, v69, type metadata accessor for DOCBrowserHistoryItem);
      a2(v56);
      outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v56, type metadata accessor for DOCBrowserHistoryItem);
      if (v72(v22, 1, v74) == 1)
      {
        outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables21DOCBrowserHistoryItemVSgMd);
      }

      else
      {
        outlined init with take of DOCBrowserHistoryItem(v22, v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
        }

        v58 = v55[2];
        v57 = v55[3];
        if (v58 >= v57 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v55);
        }

        v55[2] = v58 + 1;
        outlined init with take of DOCBrowserHistoryItem(v70, v55 + v52 + v58 * v54);
        a2 = v71;
      }

      v53 += v54;
      --v51;
    }

    while (v51);
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  v59 = v66;
  outlined destroy of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(v66, type metadata accessor for _DOCBrowserHistoryDataSourceBase.ItemSet);
  result = outlined init with take of DOCBrowserHistoryItem?(v64, v59);
  *(v59 + v63) = v47;
  *(v59 + v68) = v55;
  return result;
}