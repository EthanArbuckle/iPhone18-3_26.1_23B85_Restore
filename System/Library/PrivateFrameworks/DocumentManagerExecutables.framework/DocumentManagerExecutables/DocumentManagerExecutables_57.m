uint64_t specialized DOCItemCollectionViewController.focusNextItemAndThen(_:)(void *a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v9);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchTime();
  v46 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v45 = &v45 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v45 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v53 = v21;
  v22 = MEMORY[0x277D85000];
  v23 = *((*MEMORY[0x277D85000] & *a1) + 0x1010);

  v24 = a3;
  v25 = v23();
  v26 = (*((*v22 & *v25) + 0xF0))();
  (*(*v26 + 104))(v26);

  v27 = type metadata accessor for IndexPath();
  LODWORD(a3) = (*(*(v27 - 8) + 48))(v20, 1, v27);
  v28 = outlined destroy of CharacterSet?(v20, &_s10Foundation9IndexPathVSgMd);
  if (a3 == 1)
  {
    v29 = [objc_opt_self() defaultManager];
    FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(a2, *&v24[OBJC_IVAR___DOCActionContext_presentingViewController], 0, 0);

    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    (*((*v22 & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
  }

  v30 = (*((*v22 & *a1) + 0xBD8))(v28);
  if ((v30 - 1) < 3)
  {
    v31 = 2;
LABEL_11:
    v34 = v23();
    specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v31, 0);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v35 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v36 = v45;
    + infix(_:_:)();
    v46 = *(v46 + 8);
    (v46)(v13, v54);
    v37 = swift_allocObject();
    v38 = v53;
    *(v37 + 16) = partial apply for trashOrDeleteItems #1 () in closure #1 in static UIDocumentBrowserAction.mixedDeleteAction();
    *(v37 + 24) = v38;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_19_9;
    v39 = _Block_copy(aBlock);

    v40 = v47;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_12(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v41 = v49;
    v42 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB940](v36, v40, v41, v39);
    _Block_release(v39);

    (*(v51 + 8))(v41, v42);
    (*(v48 + 8))(v40, v50);
    (v46)(v36, v54);
  }

  if (!v30)
  {
    v32 = v23();
    v33 = [v32 effectiveUserInterfaceLayoutDirection];

    if (v33)
    {
      v31 = 3;
    }

    else
    {
      v31 = 4;
    }

    goto LABEL_11;
  }

  v44 = v30;

  aBlock[0] = v44;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t objectdestroy_2Tm_3()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t NSRunLoop.runUntil(predicate:timeout:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  if (a4)
  {
    static Date.distantFuture.getter();
    Date.timeIntervalSinceNow.getter();
    v17 = v16;
    v14 = (*(v10 + 8))(v13, v9);
  }

  else
  {
    v17 = *&a3;
  }

  if ((a1)(v14))
  {
    return 1;
  }

  v19 = (v10 + 8);
  do
  {
    v20 = CFAbsoluteTimeGetCurrent() - Current;
    v18 = v17 >= v20;
    if (v17 < v20)
    {
      break;
    }

    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*v19)(v13, v9);
    [v5 runUntilDate_];
  }

  while ((a1() & 1) == 0);
  return v18;
}

Swift::Int NSRunLoop.DOCRunUntilPredicateResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult()
{
  result = lazy protocol witness table cache variable for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult;
  if (!lazy protocol witness table cache variable for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult);
  }

  return result;
}

id DOCCircularCancelButton.init(primaryAction:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DOCCircularCancelButton();
  v18.receiver = v1;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = objc_opt_self();
  v15 = v13;

  static UIButton.Configuration.borderless()();
  closure #1 in DOCCircularCancelButton.init(primaryAction:)();
  (*(v8 + 16))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  UIButton.configuration.setter();
  [v15 setDoc:a1 primaryAction:?];

  v17.receiver = v15;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, sel_setTranslatesAutoresizingMaskIntoConstraints_, 0);

  (*(v8 + 8))(v11, v7);
  return v15;
}

void closure #1 in DOCCircularCancelButton.init(primaryAction:)()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UIBackgroundConfiguration();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v31 - v10;
  v12 = MEMORY[0x24C1FAD20](0x69632E6B72616D78, 0xEC000000656C6372, v9);
  v13 = [objc_opt_self() systemImageNamed_];

  if (v13)
  {
    [v13 alignmentRectInsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20 + -0.5;
    UIButton.Configuration.contentInsets.setter();
    v22 = [v13 imageWithAlignmentRectInsets_];
    UIButton.Configuration.image.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v23 = swift_allocObject();
    v31 = xmmword_249BA37E0;
    *(v23 + 16) = xmmword_249BA37E0;
    v24 = objc_opt_self();
    *(v23 + 32) = [v24 configurationWithWeight_];
    *(v23 + 40) = [v24 configurationWithTextStyle_];
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    v26 = objc_opt_self();
    *(v25 + 32) = [v26 secondaryLabelColor];
    *(v25 + 40) = [v26 clearColor];
    *(v25 + 48) = [v26 clearColor];
    type metadata accessor for UIColor();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v28 = [v24 configurationWithPaletteColors_];

    *(v23 + 48) = v28;
    specialized static UIImageSymbolConfiguration.applying(_:)(v23);

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    static UIBackgroundConfiguration.clear()();
    v29 = [objc_opt_self() effectWithStyle_];
    UIBackgroundConfiguration.visualEffect.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    (*(v33 + 104))(v32, *MEMORY[0x277D74FE0], v34);
    UIButton.Configuration.cornerStyle.setter();
    v30 = v35;
    (*(v3 + 16))(v6, v11, v35);
    UIButton.Configuration.background.setter();

    (*(v3 + 8))(v11, v30);
  }

  else
  {
    __break(1u);
  }
}

id DOCCircularCancelButton.translatesAutoresizingMaskIntoConstraints.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCCircularCancelButton();
  return objc_msgSendSuper2(&v2, sel_translatesAutoresizingMaskIntoConstraints);
}

id DOCCircularCancelButton.translatesAutoresizingMaskIntoConstraints.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCCircularCancelButton();
  return objc_msgSendSuper2(&v4, sel_setTranslatesAutoresizingMaskIntoConstraints_, a1 & 1);
}

id DOCCircularCancelButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCCircularCancelButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCCircularCancelButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized DOCCircularCancelButton.hitTest(_:with:)(CGFloat a1, CGFloat a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 layoutDirection];

  if (v6 == 1)
  {
    v7 = -25.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [v2 traitCollection];
  [v8 layoutDirection];

  [v2 bounds];
  v16.origin.x = UIEdgeInsetsInsetRect(v9, v10, v11, v12, 0.0, v7);
  v15.x = a1;
  v15.y = a2;
  if (!CGRectContainsPoint(v16, v15))
  {
    return 0;
  }

  v13 = v2;
  return v2;
}

uint64_t static DOCNamedLocation.allCases.setter(void *a1)
{
  swift_beginAccess();
  static DOCNamedLocation.allCases = a1;
}

uint64_t DOCNamedLocation.subfolderPathComponent.getter(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return *&aDocumentdeskto[8 * a1];
  }
}

uint64_t DOCNamedLocation.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x64616F6C6E776F44;
    }

    if (a1 == 3)
    {
      return 0x724464756F6C4369;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x746E656D75636F44;
    }

    if (a1 == 1)
    {
      return 0x706F746B736544;
    }
  }

  type metadata accessor for DOCNamedLocation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t static DOCNamedLocation.from(location:)(uint64_t a1, unint64_t a2)
{
  v4 = String.lowercased()();
  if (v4._countAndFlagsBits == 0x746E656D75636F64 && v4._object == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  if (v4._countAndFlagsBits == 0x706F746B736564 && v4._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v4._countAndFlagsBits == 0x64616F6C6E776F64 && v4._object == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (v4._countAndFlagsBits == 0x726464756F6C6369 && v4._object == 0xEB00000000657669)
  {

    return 3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 3;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);
    _os_log_impl(&dword_2493AC000, v8, v9, "Can not create a named location from provided string: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  return 0;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance DOCNamedLocation@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static DOCNamedLocation.allCases;
}

unint64_t lazy protocol witness table accessor for type [DOCNamedLocation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCNamedLocation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCNamedLocation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16DOCNamedLocationVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCNamedLocation] and conformance [A]);
  }

  return result;
}

id key path getter for DOCUSBEraseOperation.operationState : DOCUSBEraseOperation@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operationState];
  *a2 = result;
  return result;
}

void *DOCRemovableMediaStateSidebarCellAccessoryItem.init(with:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  v4 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x118);
  v8 = v6;
  v7(v8, v9);

  return v8;
}

uint64_t type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem()
{
  result = type metadata singleton initialization cache for DOCRemovableMediaStateSidebarCellAccessoryItem;
  if (!type metadata singleton initialization cache for DOCRemovableMediaStateSidebarCellAccessoryItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (a1)
  {
    if (v6)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v7 = a1;
      v8 = v6;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {

LABEL_11:
        return;
      }
    }

    else
    {
      v5 = a1;
    }

LABEL_8:
    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v2) + 0x120))(v5);
    type metadata accessor for DOCProgressIndicatorView();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v2 + v4);
      v14 = *((*v10 & *v12) + 0x88);
      v15 = v13;
      v14(v13);
    }

    v8 = a1;
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_18:
LABEL_19:
          v11 = *v4;
          goto LABEL_24;
        }
      }

      else
      {
        a1 = v3;
      }
    }

    else if (!v7)
    {
      goto LABEL_19;
    }

    v14 = MEMORY[0x277D85000];
    v15 = (*((*MEMORY[0x277D85000] & **(v2 + 32)) + 0x120))(a1);
    type metadata accessor for DOCProgressIndicatorView();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = *(*(v2 + 32) + *(v2 + 40));
      v18 = *((*v14 & *v16) + 0x88);
      v19 = v17;
      v18(v17);
    }

    v8 = v3;
    goto LABEL_18;
  }

  if (v3)
  {
    if (v7)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v11 = v3;
      v12 = v7;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      a1 = v3;
    }

LABEL_21:
    v20 = MEMORY[0x277D85000];
    v21 = (*((*MEMORY[0x277D85000] & **(v2 + 32)) + 0x120))(a1);
    type metadata accessor for DOCProgressIndicatorView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = *(*(v2 + 32) + *(v2 + 40));
      v24 = *((*v20 & *v22) + 0x88);
      v25 = v23;
      v24(v23);
    }

    v11 = v3;
    goto LABEL_24;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_25:

  free(v2);
}

uint64_t key path setter for DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties : DOCRemovableMediaStateSidebarCellAccessoryItem(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xF0))(v7);
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v41 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v39[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMd);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v39[-v22];
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  swift_beginAccess();
  v25 = *(v20 + 56);
  v42 = v2;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v2 + v24, v23);
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v43, &v23[v25]);
  v26 = *(v4 + 48);
  if (v26(v23, 1, v3) == 1)
  {
    if (v26(&v23[v25], 1, v3) == 1)
    {
      v27 = v23;
      return outlined destroy of CharacterSet?(v27, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
    }
  }

  else
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v23, v18);
    if (v26(&v23[v25], 1, v3) != 1)
    {
      (*(v4 + 32))(v10, &v23[v25], v3);
      lazy protocol witness table accessor for type UIListContentConfiguration.ImageProperties and conformance UIListContentConfiguration.ImageProperties();
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = v4;
      v38 = *(v4 + 8);
      v38(v10, v3);
      v38(v18, v3);
      result = outlined destroy of CharacterSet?(v23, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
      if (v40)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v18, v3);
  }

  v43 = v4;
  outlined destroy of CharacterSet?(v23, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMd);
LABEL_7:
  v28 = v42;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v42 + v24, v14);
  if (v26(v14, 1, v3) == 1)
  {
    v27 = v14;
    return outlined destroy of CharacterSet?(v27, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  }

  v30 = v43;
  v31 = v41;
  (*(v43 + 32))(v41, v14, v3);
  result = [v28 tintColor];
  if (result)
  {
    v32 = result;
    isa = UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(result).super.isa;

    v34 = MEMORY[0x277D85000];
    v35 = (*((*MEMORY[0x277D85000] & *v28) + 0x138))();
    v36 = isa;
    [v35 setTintColor_];

    v37 = (*((*v34 & *v28) + 0x150))();
    [v37 setTintColor_];

    return (*(v30 + 8))(v31, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  swift_beginAccess();
  return outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v3, a1);
}

uint64_t DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v7, v6);
  swift_beginAccess();
  outlined assign with copy of UIListContentConfiguration.ImageProperties?(a1, v1 + v7);
  swift_endAccess();
  DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(v6);
  outlined destroy of CharacterSet?(a1, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  return outlined destroy of CharacterSet?(v6, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v9, v8);
  return DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(*(*a1 + 96), v6);
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v7 + v4, v5);
    swift_beginAccess();
    outlined assign with copy of UIListContentConfiguration.ImageProperties?(v6, v7 + v4);
    swift_endAccess();
    DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(v5);
    outlined destroy of CharacterSet?(v5, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  }

  else
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v7 + v4, v6);
    swift_beginAccess();
    outlined assign with copy of UIListContentConfiguration.ImageProperties?(v3, v7 + v4);
    swift_endAccess();
    DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(v6);
  }

  outlined destroy of CharacterSet?(v6, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  outlined destroy of CharacterSet?(v3, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.startObserving()()
{
  v1 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = v5;
  v3 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver) = v3;
}

uint64_t closure #1 in DOCRemovableMediaStateSidebarCellAccessoryItem.startObserving()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.Rename);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      v8 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation];
      v9 = [v8 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_2493AC000, v4, v5, "ERASE: Formatting operation state changed %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);
    }

    *(swift_allocObject() + 16) = v3;
    v14 = v3;
    DOCRunInMainThread(_:)();
  }

  return result;
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.stopObserving()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver) = 0;
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.didMoveToSuperview()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem();
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  DOCRemovableMediaStateSidebarCellAccessoryItem.updateViews(state:)([*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation] operationState]);
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.updateViews(state:)(uint64_t a1)
{
  v15 = *((*MEMORY[0x277D85000] & *v1) + 0x188);
  v2 = v15();
  v3 = [v2 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v15();
      [v10 removeArrangedSubview_];

      [v8 removeFromSuperview];
      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return;
    }

    if (a1 == 3)
    {
      v12 = (v15)(v11);
      v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x138))();
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v12 = (v15)(v11);
      v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x150))();
      goto LABEL_23;
    }

LABEL_26:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = (v15)(v11);
  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))();
LABEL_23:
  v16 = v13;
  [v12 addArrangedSubview_];
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.setUpMainContainer()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x188);
  v2 = v1();
  [v0 addSubview_];

  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0470;
  v5 = v1();
  v6 = [v5 leadingAnchor];

  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = v1();
  v10 = [v9 trailingAnchor];

  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v4 + 40) = v12;
  v13 = v1();
  v14 = [v13 topAnchor];

  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 48) = v16;
  v17 = v1();
  v18 = [v17 bottomAnchor];

  v19 = [v0 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 56) = v20;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];
}

char *DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  }

  else
  {
    v4 = v0;
    v12 = 1;
    v5 = objc_allocWithZone(type metadata accessor for DOCProgressIndicatorView());
    v6 = DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(&v12, 0.5);
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
    (*((*v7 & *v6) + 0x88))(v8);
    v9 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.modify(char **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView) = v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView) = v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView) = v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView) = v2;
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setDistribution_];
    [v4 setAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer) = v2;
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.__ivar_destroyer()
{
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd);

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for DOCSidebarCellProgressAccessoryItem.preferredIconColor.modify in conformance DOCRemovableMediaStateSidebarCellAccessoryItem(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & **v1) + 0xE0))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

void type metadata completion function for DOCRemovableMediaStateSidebarCellAccessoryItem()
{
  type metadata accessor for UIListContentConfiguration.ImageProperties?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL NSError.isProviderDomainNotAuthenticated.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return [v0 code] == -1000;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v7)
  {
    return [v0 code] == -1000;
  }

  return result;
}

id static NSError.noSuchFileError.getter()
{
  v0 = *MEMORY[0x277CCA050];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v1 initWithDomain:v0 code:4 userInfo:0];
}

BOOL NSError.isProviderNotFound.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return [v0 code] == -2001;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v7)
  {
    return [v0 code] == -2001;
  }

  return result;
}

BOOL NSError.isProviderServerUnreachable.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return [v0 code] == -1004;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v7)
  {
    return [v0 code] == -1004;
  }

  return result;
}

uint64_t NSError.isFilenameCollisionError.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v0 code] == -1001)
  {
    return 1;
  }

LABEL_10:
  v9 = [v0 domain];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    return [v0 code] == -48;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v15)
  {
    return [v0 code] == -48;
  }

  return result;
}

id static NSError.userCancelledError.getter()
{
  v0 = *MEMORY[0x277CCA050];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v1 initWithDomain:v0 code:3072 userInfo:0];
}

uint64_t NSError.isUserCancelledError.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v0 code] == 3072)
  {
    return 1;
  }

LABEL_10:
  v9 = [v0 domain];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    return [v0 code] == -128;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v15)
  {
    return [v0 code] == -128;
  }

  return result;
}

id DOCItemCollectionCellContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCFakeFPItemDecoration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFakeFPItemDecoration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DOCNodeStatusAppearance.iconVerticalOffset(forTitleFont:traitCollection:)(void *a1, void *a2)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = 4.0;
  if ((v11 - 3) < 3 || v11 == 1)
  {
    if (!a2)
    {
LABEL_10:
      v16 = [objc_opt_self() mainScreen];
      [v16 scale];
      v15 = v17;

      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0.0;
    if (v11 == 8)
    {
      return;
    }

    v12 = 10.0;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  [a2 displayScale];
  v15 = v14;
LABEL_11:
  [a1 capHeight];
  v19 = -v18 / v12;
  (*(v6 + 104))(v10, *MEMORY[0x277D84688], v5);
  specialized CGFloat.init(_:roundedBy:inScale:)(v10, v19, v15);
}

Swift::Int DOCListAccessoryType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance DOCItemCollectionCellContent.CellContentProperties@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

void one-time initialization function for numberFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setNumberStyle_];
  [v5 setMaximumFractionDigits_];
  [v5 setMinimumFractionDigits_];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  static DOCItemCollectionCellContent.numberFormatter = v5;
}

uint64_t *DOCItemCollectionCellContent.numberFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    swift_once();
  }

  return &static DOCItemCollectionCellContent.numberFormatter;
}

id static DOCItemCollectionCellContent.numberFormatter.getter()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    swift_once();
  }

  v1 = static DOCItemCollectionCellContent.numberFormatter;

  return v1;
}

uint64_t DOCItemCollectionCellContent.primaryBadgeItemDecoration.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  v37 = result;
  if (!result)
  {
    return result;
  }

  if (!DOCIsInternalBuild())
  {
    goto LABEL_10;
  }

  if (one-time initialization token for docUserDefaults != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    swift_beginAccess();
    if (static NSUserDefaults.docUserDefaults)
    {
      v2 = static NSUserDefaults.docUserDefaults;
      v3 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BF41B0);
      v4 = [v2 BOOLForKey_];

      if (v4)
      {
        break;
      }
    }

LABEL_10:
    v11 = [v37 itemDecorations];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemDecoration);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = MEMORY[0x277D84F90];
    if (v12 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C1FC540](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = [v15 type];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v25 = [v16 decorationIdentifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v26 == 0x64656E6E6950 && v28 == 0xE600000000000000)
        {

          goto LABEL_14;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_14;
        }

LABEL_13:

LABEL_14:
        ++v14;
        if (v17 == i)
        {
          v30 = v39;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_38:

    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_46:
        swift_unknownObjectRelease();

        return 0;
      }
    }

    else if (!*(v30 + 16))
    {
      goto LABEL_46;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x24C1FC540](0, v30);
      goto LABEL_44;
    }

    if (*(v30 + 16))
    {
      v35 = *(v30 + 32);
LABEL_44:
      v36 = v35;
      swift_unknownObjectRelease();

      return v36;
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  v5 = &unk_285C7F298;
  v6 = 12;
  while (1)
  {
    v8 = *(v5 - 1);
    v7 = *v5;

    v9 = [v37 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.lowercased()();

    v10._countAndFlagsBits = v8;
    v10._object = v7;
    LOBYTE(v9) = String.hasPrefix(_:)(v10);

    if (v9)
    {
      break;
    }

    v5 += 2;
    if (!--v6)
    {
      swift_arrayDestroy();
      goto LABEL_10;
    }
  }

  swift_arrayDestroy();
  v39 = 0xD000000000000020;
  v40 = 0x8000000249BF41D0;
  MEMORY[0x24C1FAEA0](v8, v7);

  v31 = type metadata accessor for DOCFakeFPItemDecoration();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B700B1D3F74C3145CA523EE0550A1F4223DOCFakeFPItemDecoration_ut];
  *v33 = 0xD000000000000020;
  *(v33 + 1) = 0x8000000249BF41D0;
  v38.receiver = v32;
  v38.super_class = v31;
  v34 = objc_msgSendSuper2(&v38, sel_init);
  swift_unknownObjectRelease();
  return v34;
}

uint64_t DOCItemCollectionCellContent.withNotificationsDisabled(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount;
  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount) = v14;
  if (!v14)
  {
    result = (*((*MEMORY[0x277D85000] & *v2) + 0xBB0))(result);
  }

  result = a1(result);
  v15 = *(v2 + v11);
  v13 = __OFSUB__(v15, 1);
  v16 = v15 - 1;
  if (v13)
  {
    goto LABEL_11;
  }

  *(v2 + v11) = v16;
  if (!v16)
  {
    return (*((*MEMORY[0x277D85000] & *v2) + 0xBB0))(result);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.pendingNotifications.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_pendingNotifications;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.pendingNotifications.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_pendingNotifications;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionCellContent.gridItemLayoutTraits.didset(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v53 - v5;
  v7 = a1[9];
  v100 = a1[8];
  v101 = v7;
  v102[0] = a1[10];
  *(v102 + 9) = *(a1 + 169);
  v8 = a1[5];
  v96 = a1[4];
  v97 = v8;
  v9 = a1[7];
  v98 = a1[6];
  v99 = v9;
  v10 = a1[1];
  v92 = *a1;
  v93 = v10;
  v11 = a1[2];
  v12 = a1[3];
  v13 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits);
  v94 = v11;
  v95 = v12;
  swift_beginAccess();
  v14 = v13[9];
  v15 = v13[7];
  v110 = v13[8];
  v111 = v14;
  v16 = v13[9];
  v112[0] = v13[10];
  *(v112 + 9) = *(v13 + 169);
  v17 = v13[5];
  v18 = v13[3];
  v106 = v13[4];
  v107 = v17;
  v19 = v13[5];
  v20 = v13[7];
  v108 = v13[6];
  v109 = v20;
  v21 = v13[1];
  v103[0] = *v13;
  v103[1] = v21;
  v22 = v13[3];
  v23 = *v13;
  v24 = v13[1];
  v104 = v13[2];
  v105 = v22;
  v25 = v13[9];
  v91[8] = v13[8];
  v91[9] = v25;
  v91[10] = v13[10];
  *(&v91[10] + 9) = *(v13 + 169);
  v26 = v13[5];
  v91[4] = v13[4];
  v91[5] = v26;
  v27 = v13[7];
  v91[6] = v13[6];
  v91[7] = v27;
  v28 = v13[1];
  v91[0] = *v13;
  v91[1] = v28;
  v29 = v13[3];
  v91[2] = v13[2];
  v91[3] = v29;
  *(&v91[22] + 9) = *(v102 + 9);
  v91[21] = v101;
  v91[22] = v102[0];
  v91[17] = v97;
  v91[18] = v98;
  v91[20] = v100;
  v91[19] = v99;
  v91[12] = v92;
  v91[13] = v93;
  v91[14] = v94;
  v91[16] = v96;
  v91[15] = v95;
  v113[8] = v110;
  v113[9] = v16;
  v114[0] = v13[10];
  *(v114 + 9) = *(v13 + 169);
  v113[4] = v106;
  v113[5] = v19;
  v113[6] = v108;
  v113[7] = v15;
  v113[0] = v23;
  v113[1] = v24;
  v113[2] = v104;
  v113[3] = v18;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v113) == 1)
  {
    v79[8] = v91[20];
    v79[9] = v91[21];
    v79[10] = v91[22];
    *(&v79[10] + 9) = *(&v91[22] + 9);
    v79[4] = v91[16];
    v79[5] = v91[17];
    v79[6] = v91[18];
    v79[7] = v91[19];
    v79[0] = v91[12];
    v79[1] = v91[13];
    v79[2] = v91[14];
    v79[3] = v91[15];
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v79) == 1)
    {
      v88 = v91[8];
      v89 = v91[9];
      v90[0] = v91[10];
      *(v90 + 9) = *(&v91[10] + 9);
      v84 = v91[4];
      v85 = v91[5];
      v86 = v91[6];
      v87 = v91[7];
      v80 = v91[0];
      v81 = v91[1];
      v82 = v91[2];
      v83 = v91[3];
      outlined init with copy of DOCGridLayout.Spec?(v103, &v68, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      outlined init with copy of DOCGridLayout.Spec?(&v92, &v68, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      return outlined destroy of CharacterSet?(&v80, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    }

    outlined init with copy of DOCGridLayout.Spec?(v103, &v80, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(&v92, &v80, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  }

  else
  {
    v88 = v91[8];
    v89 = v91[9];
    v90[0] = v91[10];
    *(v90 + 9) = *(&v91[10] + 9);
    v84 = v91[4];
    v85 = v91[5];
    v86 = v91[6];
    v87 = v91[7];
    v80 = v91[0];
    v81 = v91[1];
    v82 = v91[2];
    v83 = v91[3];
    v76 = v91[8];
    v77 = v91[9];
    v78[0] = v91[10];
    *(v78 + 9) = *(&v91[10] + 9);
    v72 = v91[4];
    v73 = v91[5];
    v74 = v91[6];
    v75 = v91[7];
    v68 = v91[0];
    v69 = v91[1];
    v70 = v91[2];
    v71 = v91[3];
    v79[8] = v91[20];
    v79[9] = v91[21];
    v79[10] = v91[22];
    *(&v79[10] + 9) = *(&v91[22] + 9);
    v79[4] = v91[16];
    v79[5] = v91[17];
    v79[6] = v91[18];
    v79[7] = v91[19];
    v79[0] = v91[12];
    v79[1] = v91[13];
    v79[2] = v91[14];
    v79[3] = v91[15];
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v79) != 1)
    {
      v65 = v91[20];
      v66 = v91[21];
      v67[0] = v91[22];
      *(v67 + 9) = *(&v91[22] + 9);
      v61 = v91[16];
      v62 = v91[17];
      v63 = v91[18];
      v64 = v91[19];
      v57 = v91[12];
      v58 = v91[13];
      v59 = v91[14];
      v60 = v91[15];
      outlined init with copy of DOCGridLayout.Spec?(v103, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      outlined init with copy of DOCGridLayout.Spec?(&v92, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      outlined init with copy of DOCGridLayout.Spec?(&v80, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      v52 = specialized static DOCItemCollectionLayoutTraits.GridItemTraits.== infix(_:_:)(&v68, &v57);
      v53[8] = v65;
      v53[9] = v66;
      v54[0] = v67[0];
      *(v54 + 9) = *(v67 + 9);
      v53[4] = v61;
      v53[5] = v62;
      v53[6] = v63;
      v53[7] = v64;
      v53[0] = v57;
      v53[1] = v58;
      v53[2] = v59;
      v53[3] = v60;
      outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v53);
      v55[8] = v76;
      v55[9] = v77;
      v56[0] = v78[0];
      *(v56 + 9) = *(v78 + 9);
      v55[4] = v72;
      v55[5] = v73;
      v55[6] = v74;
      v55[7] = v75;
      v55[0] = v68;
      v55[1] = v69;
      v55[2] = v70;
      v55[3] = v71;
      outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v55);
      v65 = v91[8];
      v66 = v91[9];
      v67[0] = v91[10];
      *(v67 + 9) = *(&v91[10] + 9);
      v61 = v91[4];
      v62 = v91[5];
      v63 = v91[6];
      v64 = v91[7];
      v57 = v91[0];
      v58 = v91[1];
      v59 = v91[2];
      v60 = v91[3];
      result = outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      if (v52)
      {
        return result;
      }

      goto LABEL_8;
    }

    v65 = v91[8];
    v66 = v91[9];
    v67[0] = v91[10];
    *(v67 + 9) = *(&v91[10] + 9);
    v61 = v91[4];
    v62 = v91[5];
    v63 = v91[6];
    v64 = v91[7];
    v57 = v91[0];
    v58 = v91[1];
    v59 = v91[2];
    v60 = v91[3];
    outlined init with copy of DOCGridLayout.Spec?(v103, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(&v92, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(&v80, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v57);
  }

  memcpy(v79, v91, 0x179uLL);
  outlined destroy of CharacterSet?(v79, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSg_AFtMd);
LABEL_8:
  v31 = v13[9];
  v91[8] = v13[8];
  v91[9] = v31;
  v91[10] = v13[10];
  *(&v91[10] + 9) = *(v13 + 169);
  v32 = v13[5];
  v91[4] = v13[4];
  v91[5] = v32;
  v33 = v13[7];
  v91[6] = v13[6];
  v91[7] = v33;
  v34 = v13[1];
  v91[0] = *v13;
  v91[1] = v34;
  v35 = v13[3];
  v91[2] = v13[2];
  v91[3] = v35;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v91);
  if (result != 1)
  {
    v36 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
    DOCItemCollectionCellContent._thumbnail.didset(v36);
    swift_unknownObjectRelease();
    v37 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v37 = 0;
    v37[1] = 0;

    v38 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    v39 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v39, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v40 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v41 = MEMORY[0x277D85000];
    v42 = *((*MEMORY[0x277D85000] & *v1) + 0x2D0);
    v44 = v42(v79);
    if ((*v43 & 0x200) == 0)
    {
      *v43 |= 0x200uLL;
    }

    v44(v79, 0);
    v46 = v42(v79);
    if ((*v45 & 0x100) == 0)
    {
      *v45 |= 0x100uLL;
    }

    v46(v79, 0);
    v48 = v42(v79);
    if ((*v47 & 0x1000) == 0)
    {
      *v47 |= 0x1000uLL;
    }

    v48(v79, 0);
    v50 = v42(v79);
    if ((*v49 & 0x2000) == 0)
    {
      *v49 |= 0x2000uLL;
    }

    v51 = v50(v79, 0);
    return (*((*v41 & *v1) + 0xBB0))(v51);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.gridItemLayoutTraits.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[7];
  v27 = v3[8];
  v28 = v4;
  v6 = v3[9];
  v29[0] = v3[10];
  *(v29 + 9) = *(v3 + 169);
  v7 = v3[5];
  v9 = v3[3];
  v23 = v3[4];
  v8 = v23;
  v24 = v7;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  *(a1 + 169) = *(v3 + 169);
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v5;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v9;
  return outlined init with copy of DOCGridLayout.Spec?(v20, v19, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
}

uint64_t DOCItemCollectionCellContent.gridItemLayoutTraits.setter(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[7];
  v31 = v3[8];
  v32 = v4;
  v6 = v3[9];
  v33[0] = v3[10];
  *(v33 + 9) = *(v3 + 169);
  v7 = v3[5];
  v8 = v3[3];
  v27 = v3[4];
  v28 = v7;
  v9 = v3[5];
  v10 = v3[7];
  v29 = v3[6];
  v30 = v10;
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v12 = v3[3];
  v14 = *v3;
  v13 = v3[1];
  v25 = v3[2];
  v26 = v12;
  v34[8] = v31;
  v34[9] = v6;
  v35[0] = v3[10];
  *(v35 + 9) = *(v3 + 169);
  v34[4] = v27;
  v34[5] = v9;
  v34[6] = v29;
  v34[7] = v5;
  v34[0] = v14;
  v34[1] = v13;
  v34[2] = v25;
  v34[3] = v8;
  v15 = a1[9];
  v3[8] = a1[8];
  v3[9] = v15;
  v3[10] = a1[10];
  *(v3 + 169) = *(a1 + 169);
  v16 = a1[5];
  v3[4] = a1[4];
  v3[5] = v16;
  v17 = a1[7];
  v3[6] = a1[6];
  v3[7] = v17;
  v18 = a1[1];
  *v3 = *a1;
  v3[1] = v18;
  v19 = a1[3];
  v3[2] = a1[2];
  v3[3] = v19;
  outlined init with copy of DOCGridLayout.Spec?(&v23, v21, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v21[8] = v31;
  v21[9] = v32;
  v22[0] = v33[0];
  *(v22 + 9) = *(v33 + 9);
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v21[7] = v30;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  DOCItemCollectionCellContent.gridItemLayoutTraits.didset(v21);
  return outlined destroy of CharacterSet?(&v23, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
}

void (*DOCItemCollectionCellContent.gridItemLayoutTraits.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x568uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 192;
  *(v3 + 1368) = v1;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits;
  *(v3 + 1376) = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v4[2] = v7[2];
  v4[3] = v10;
  *v4 = v8;
  v4[1] = v9;
  v11 = v7[4];
  v12 = v7[5];
  v13 = v7[7];
  v4[6] = v7[6];
  v4[7] = v13;
  v4[4] = v11;
  v4[5] = v12;
  v14 = v7[8];
  v15 = v7[9];
  v16 = v7[10];
  *(v4 + 169) = *(v7 + 169);
  v4[9] = v15;
  v4[10] = v16;
  v4[8] = v14;
  v17 = *v7;
  v18 = v7[1];
  v19 = v7[3];
  v4[14] = v7[2];
  v4[15] = v19;
  v4[12] = v17;
  v4[13] = v18;
  v20 = v7[4];
  v21 = v7[5];
  v22 = v7[7];
  v4[18] = v7[6];
  v4[19] = v22;
  v4[16] = v20;
  v4[17] = v21;
  v23 = v7[8];
  v24 = v7[9];
  v25 = v7[10];
  *(v5 + 169) = *(v7 + 169);
  v4[21] = v24;
  v4[22] = v25;
  v4[20] = v23;
  outlined init with copy of DOCGridLayout.Spec?(v4, (v4 + 24), &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  return DOCItemCollectionCellContent.gridItemLayoutTraits.modify;
}

void DOCItemCollectionCellContent.gridItemLayoutTraits.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 192);
  v4 = (*a1 + 384);
  v5 = (*a1 + 576);
  v6 = (*a1 + 768);
  v7 = (*(v2 + 1368) + *(v2 + 1376));
  if (a2)
  {
    v8 = *(*a1 + 320);
    *(v2 + 1072) = *(*a1 + 304);
    v9 = v3[5];
    *(v2 + 1056) = v3[6];
    *(v2 + 1040) = v9;
    v10 = v3[3];
    v11 = v3[4];
    *(v2 + 1129) = *(v3 + 169);
    v12 = v3[9];
    *(v2 + 1120) = v3[10];
    *(v2 + 1104) = v12;
    *(v2 + 1088) = v8;
    v13 = v3[1];
    *(v2 + 960) = *v3;
    *(v2 + 976) = v13;
    v14 = v3[3];
    v16 = *v3;
    v15 = v3[1];
    v17 = v3[2];
    *(v2 + 992) = v17;
    *(v2 + 1008) = v14;
    *(v2 + 1024) = v11;
    v18 = *v7;
    v19 = v7[1];
    v20 = v7[3];
    v6[2] = v7[2];
    v6[3] = v20;
    *v6 = v18;
    v6[1] = v19;
    v21 = v7[4];
    v22 = v7[5];
    v23 = v7[7];
    v6[6] = v7[6];
    v6[7] = v23;
    v6[4] = v21;
    v6[5] = v22;
    v24 = v7[8];
    v25 = v7[9];
    v26 = v7[10];
    *(v6 + 169) = *(v7 + 169);
    v6[9] = v25;
    v6[10] = v26;
    v6[8] = v24;
    v27 = *v7;
    v28 = v7[1];
    v29 = v7[3];
    v5[2] = v7[2];
    v5[3] = v29;
    *v5 = v27;
    v5[1] = v28;
    v30 = v7[4];
    v31 = v7[5];
    v32 = v7[7];
    v5[6] = v7[6];
    v5[7] = v32;
    v5[4] = v30;
    v5[5] = v31;
    v33 = v7[8];
    v34 = v7[9];
    v35 = v7[10];
    *(v5 + 169) = *(v7 + 169);
    v5[9] = v34;
    v5[10] = v35;
    v5[8] = v33;
    v7[2] = v17;
    v7[3] = v10;
    *v7 = v16;
    v7[1] = v15;
    v36 = v3[4];
    v37 = v3[5];
    v38 = v3[7];
    v7[6] = v3[6];
    v7[7] = v38;
    v7[4] = v36;
    v7[5] = v37;
    v39 = v3[8];
    v40 = v3[9];
    v41 = v3[10];
    *(v7 + 169) = *(v3 + 169);
    v7[9] = v40;
    v7[10] = v41;
    v7[8] = v39;
    outlined init with copy of DOCGridLayout.Spec?(v2 + 960, v2 + 1152, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v6, v2 + 1152, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    v42 = v6[9];
    v93 = v6[8];
    v94 = v42;
    v95[0] = v6[10];
    *(v95 + 9) = *(v6 + 169);
    v43 = v6[5];
    v89 = v6[4];
    v90 = v43;
    v44 = v6[7];
    v91 = v6[6];
    v92 = v44;
    v45 = v6[1];
    v85 = *v6;
    v86 = v45;
    v46 = v6[3];
    v87 = v6[2];
    v88 = v46;
    DOCItemCollectionCellContent.gridItemLayoutTraits.didset(&v85);
    outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    v47 = v3[9];
    v4[8] = v3[8];
    v4[9] = v47;
    v4[10] = v3[10];
    *(v4 + 169) = *(v3 + 169);
    v48 = v3[5];
    v4[4] = v3[4];
    v4[5] = v48;
    v49 = v3[7];
    v4[6] = v3[6];
    v4[7] = v49;
    v50 = v3[1];
    *v4 = *v3;
    v4[1] = v50;
    v51 = v3[3];
    v4[2] = v3[2];
    v4[3] = v51;
    v52 = v4;
  }

  else
  {
    v53 = v7[3];
    v55 = *v7;
    v54 = v7[1];
    *(*a1 + 608) = v7[2];
    v5[3] = v53;
    *v5 = v55;
    v5[1] = v54;
    v56 = v7[7];
    v58 = v7[4];
    v57 = v7[5];
    v5[6] = v7[6];
    v5[7] = v56;
    v5[4] = v58;
    v5[5] = v57;
    v60 = v7[9];
    v59 = v7[10];
    v61 = v7[8];
    *(v5 + 169) = *(v7 + 169);
    v5[9] = v60;
    v5[10] = v59;
    v5[8] = v61;
    v62 = *v7;
    v63 = v7[1];
    v64 = v7[3];
    v4[2] = v7[2];
    v4[3] = v64;
    *v4 = v62;
    v4[1] = v63;
    v65 = v7[4];
    v66 = v7[5];
    v67 = v7[7];
    v4[6] = v7[6];
    v4[7] = v67;
    v4[4] = v65;
    v4[5] = v66;
    v68 = v7[8];
    v69 = v7[9];
    v70 = v7[10];
    *(v4 + 169) = *(v7 + 169);
    v4[9] = v69;
    v4[10] = v70;
    v4[8] = v68;
    v71 = *v3;
    v72 = v3[1];
    v73 = v3[3];
    v7[2] = v3[2];
    v7[3] = v73;
    *v7 = v71;
    v7[1] = v72;
    v74 = v3[4];
    v75 = v3[5];
    v76 = v3[7];
    v7[6] = v3[6];
    v7[7] = v76;
    v7[4] = v74;
    v7[5] = v75;
    v77 = v3[8];
    v78 = v3[9];
    v79 = v3[10];
    *(v7 + 169) = *(v3 + 169);
    v7[9] = v78;
    v7[10] = v79;
    v7[8] = v77;
    outlined init with copy of DOCGridLayout.Spec?(v5, v6, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    v80 = v5[9];
    v93 = v5[8];
    v94 = v80;
    v95[0] = v5[10];
    *(v95 + 9) = *(v5 + 169);
    v81 = v5[5];
    v89 = v5[4];
    v90 = v81;
    v82 = v5[7];
    v91 = v5[6];
    v92 = v82;
    v83 = v5[1];
    v85 = *v5;
    v86 = v83;
    v84 = v5[3];
    v87 = v5[2];
    v88 = v84;
    DOCItemCollectionCellContent.gridItemLayoutTraits.didset(&v85);
    v52 = v5;
  }

  outlined destroy of CharacterSet?(v52, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);

  free(v2);
}

uint64_t DOCItemCollectionCellContent.listItemLayoutTraits.didset(__int128 *a1)
{
  v2 = a1[5];
  v97 = a1[4];
  v98 = v2;
  v3 = a1[7];
  v99 = a1[6];
  v100 = v3;
  v4 = a1[1];
  v93 = *a1;
  v94 = v4;
  v5 = a1[3];
  v6 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits);
  v95 = a1[2];
  v96 = v5;
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[5];
  v102 = v6[4];
  v103 = v8;
  v9 = v6[5];
  v10 = v6[7];
  v104 = v6[6];
  v105 = v10;
  v11 = v6[1];
  v101[0] = *v6;
  v101[1] = v11;
  v12 = v6[3];
  v14 = *v6;
  v13 = v6[1];
  v101[2] = v6[2];
  v101[3] = v12;
  v15 = v6[5];
  v81 = v6[4];
  v82 = v15;
  v16 = v6[7];
  v83 = v6[6];
  v84 = v16;
  v17 = v6[1];
  v18 = v6[2];
  v77 = *v6;
  v78 = v17;
  v19 = v6[3];
  v79 = v6[2];
  v80 = v19;
  v88 = v96;
  v87 = v95;
  v86 = v94;
  v85 = v93;
  v92 = v100;
  v91 = v99;
  v90 = v98;
  v89 = v97;
  v106[2] = v18;
  v106[3] = v7;
  v106[0] = v14;
  v106[1] = v13;
  v20 = v6[7];
  v106[6] = v104;
  v106[7] = v20;
  v106[4] = v102;
  v106[5] = v9;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v106) == 1)
  {
    v57 = v89;
    v58 = v90;
    v59 = v91;
    v60 = v92;
    v53 = v85;
    v54 = v86;
    v55 = v87;
    v56 = v88;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v53) == 1)
    {
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v69 = v77;
      v70 = v78;
      v71 = v79;
      v72 = v80;
      outlined init with copy of DOCGridLayout.Spec?(v101, &v45, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      outlined init with copy of DOCGridLayout.Spec?(&v93, &v45, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      return outlined destroy of CharacterSet?(&v69, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    }

    outlined init with copy of DOCGridLayout.Spec?(v101, &v69, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(&v93, &v69, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  }

  else
  {
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80;
    v47 = v79;
    v48 = v80;
    v45 = v77;
    v46 = v78;
    v51 = v83;
    v52 = v84;
    v49 = v81;
    v50 = v82;
    v55 = v87;
    v56 = v88;
    v53 = v85;
    v54 = v86;
    v59 = v91;
    v60 = v92;
    v57 = v89;
    v58 = v90;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v53) != 1)
    {
      v41 = v89;
      v42 = v90;
      v43 = v91;
      v44 = v92;
      v37 = v85;
      v38 = v86;
      v39 = v87;
      v40 = v88;
      outlined init with copy of DOCGridLayout.Spec?(v101, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      outlined init with copy of DOCGridLayout.Spec?(&v93, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      outlined init with copy of DOCGridLayout.Spec?(&v69, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      v34 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(&v45, &v37);
      v35[4] = v41;
      v35[5] = v42;
      v35[6] = v43;
      v35[7] = v44;
      v35[0] = v37;
      v35[1] = v38;
      v35[2] = v39;
      v35[3] = v40;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v35);
      v36[4] = v49;
      v36[5] = v50;
      v36[6] = v51;
      v36[7] = v52;
      v36[0] = v45;
      v36[1] = v46;
      v36[2] = v47;
      v36[3] = v48;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v36);
      v41 = v81;
      v42 = v82;
      v43 = v83;
      v44 = v84;
      v37 = v77;
      v38 = v78;
      v39 = v79;
      v40 = v80;
      result = outlined destroy of CharacterSet?(&v37, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      if (v34)
      {
        return result;
      }

      goto LABEL_8;
    }

    v41 = v81;
    v42 = v82;
    v43 = v83;
    v44 = v84;
    v37 = v77;
    v38 = v78;
    v39 = v79;
    v40 = v80;
    outlined init with copy of DOCGridLayout.Spec?(v101, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(&v93, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(&v69, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v37);
  }

  v65 = v89;
  v66 = v90;
  v67 = v91;
  v68 = v92;
  v61 = v85;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  outlined destroy of CharacterSet?(&v53, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSg_AFtMd);
LABEL_8:
  v22 = v6[5];
  v81 = v6[4];
  v82 = v22;
  v23 = v6[7];
  v83 = v6[6];
  v84 = v23;
  v24 = v6[1];
  v77 = *v6;
  v78 = v24;
  v25 = v6[3];
  v79 = v6[2];
  v80 = v25;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v77);
  if (result != 1)
  {
    v26 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v27 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
    *v27 = 0;
    v27[1] = 0;

    v28 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
    *v28 = 0;
    v28[1] = 0;

    v29 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
    *v29 = 0;
    v29[1] = 0;

    v30 = MEMORY[0x277D85000];
    v32 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(&v53);
    if ((*v31 & 0x200) == 0)
    {
      *v31 |= 0x200uLL;
    }

    v33 = v32(&v53, 0);
    return (*((*v30 & *v1) + 0xBB0))(v33);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.listItemLayoutTraits.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits);
  swift_beginAccess();
  v5 = v3[5];
  v16 = v3[4];
  v4 = v16;
  v17 = v5;
  v7 = v3[7];
  v18 = v3[6];
  v6 = v18;
  v19 = v7;
  v8 = v3[1];
  v13[0] = *v3;
  v13[1] = v8;
  v10 = v3[3];
  v14 = v3[2];
  v9 = v14;
  v15 = v10;
  *a1 = v13[0];
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  return outlined init with copy of DOCGridLayout.Spec?(v13, v12, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
}

uint64_t DOCItemCollectionCellContent.listItemLayoutTraits.setter(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits);
  swift_beginAccess();
  v4 = v3[5];
  v18 = v3[4];
  v19 = v4;
  v5 = v3[7];
  v20 = v3[6];
  v21 = v5;
  v6 = v3[1];
  v14 = *v3;
  v15 = v6;
  v7 = v3[3];
  v16 = v3[2];
  v17 = v7;
  v22[0] = v14;
  v22[1] = v6;
  v22[2] = v16;
  v22[3] = v7;
  v22[4] = v18;
  v22[5] = v4;
  v22[6] = v20;
  v22[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  outlined init with copy of DOCGridLayout.Spec?(&v14, v13, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  v13[4] = v18;
  v13[5] = v19;
  v13[6] = v20;
  v13[7] = v21;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  DOCItemCollectionCellContent.listItemLayoutTraits.didset(v13);
  return outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
}

void (*DOCItemCollectionCellContent.listItemLayoutTraits.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3A8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 920) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits;
  *(v3 + 928) = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v4[2] = v6[2];
  v4[3] = v9;
  *v4 = v7;
  v4[1] = v8;
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[7];
  v4[6] = v6[6];
  v4[7] = v12;
  v4[4] = v10;
  v4[5] = v11;
  v13 = v6[7];
  v15 = v6[4];
  v14 = v6[5];
  v4[14] = v6[6];
  v4[15] = v13;
  v4[12] = v15;
  v4[13] = v14;
  v16 = *v6;
  v17 = v6[1];
  v18 = v6[3];
  v4[10] = v6[2];
  v4[11] = v18;
  v4[8] = v16;
  v4[9] = v17;
  outlined init with copy of DOCGridLayout.Spec?(v4, (v4 + 16), &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  return DOCItemCollectionCellContent.listItemLayoutTraits.modify;
}

void DOCItemCollectionCellContent.listItemLayoutTraits.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(v2 + 920) + *(v2 + 928));
  if (a2)
  {
    v4 = *(v2 + 144);
    *(v2 + 640) = *(v2 + 128);
    *(v2 + 656) = v4;
    v5 = *(v2 + 176);
    v7 = *(v2 + 128);
    v6 = *(v2 + 144);
    *(v2 + 672) = *(v2 + 160);
    *(v2 + 688) = v5;
    v8 = *(v2 + 240);
    *(v2 + 736) = *(v2 + 224);
    *(v2 + 752) = v8;
    v9 = *(v2 + 208);
    v11 = *(v2 + 160);
    v10 = *(v2 + 176);
    *(v2 + 704) = *(v2 + 192);
    *(v2 + 720) = v9;
    v12 = *v3;
    v13 = v3[1];
    v14 = v3[3];
    *(v2 + 544) = v3[2];
    *(v2 + 560) = v14;
    *(v2 + 512) = v12;
    *(v2 + 528) = v13;
    v15 = v3[4];
    v16 = v3[5];
    v17 = v3[7];
    *(v2 + 608) = v3[6];
    *(v2 + 624) = v17;
    *(v2 + 576) = v15;
    *(v2 + 592) = v16;
    v18 = *v3;
    v19 = v3[1];
    v20 = v3[3];
    *(v2 + 416) = v3[2];
    *(v2 + 432) = v20;
    *(v2 + 384) = v18;
    *(v2 + 400) = v19;
    v21 = v3[4];
    v22 = v3[5];
    v23 = v3[7];
    *(v2 + 480) = v3[6];
    *(v2 + 496) = v23;
    *(v2 + 448) = v21;
    *(v2 + 464) = v22;
    v3[2] = v11;
    v3[3] = v10;
    *v3 = v7;
    v3[1] = v6;
    v24 = *(v2 + 192);
    v25 = *(v2 + 208);
    v26 = *(v2 + 240);
    v3[6] = *(v2 + 224);
    v3[7] = v26;
    v3[4] = v24;
    v3[5] = v25;
    outlined init with copy of DOCGridLayout.Spec?(v2 + 640, v2 + 768, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v2 + 512, v2 + 768, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined destroy of CharacterSet?(v2 + 384, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v27 = *(v2 + 592);
    v62 = *(v2 + 576);
    v63 = v27;
    v28 = *(v2 + 624);
    v64 = *(v2 + 608);
    v65 = v28;
    v29 = *(v2 + 528);
    v58 = *(v2 + 512);
    v59 = v29;
    v30 = *(v2 + 560);
    v60 = *(v2 + 544);
    v61 = v30;
    DOCItemCollectionCellContent.listItemLayoutTraits.didset(&v58);
    outlined destroy of CharacterSet?(v2 + 512, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v31 = *(v2 + 208);
    *(v2 + 320) = *(v2 + 192);
    *(v2 + 336) = v31;
    v32 = *(v2 + 240);
    *(v2 + 352) = *(v2 + 224);
    *(v2 + 368) = v32;
    v33 = *(v2 + 144);
    *(v2 + 256) = *(v2 + 128);
    *(v2 + 272) = v33;
    v34 = *(v2 + 176);
    *(v2 + 288) = *(v2 + 160);
    *(v2 + 304) = v34;
    v35 = v2 + 256;
  }

  else
  {
    v36 = v3[3];
    v38 = *v3;
    v37 = v3[1];
    *(v2 + 416) = v3[2];
    *(v2 + 432) = v36;
    *(v2 + 384) = v38;
    *(v2 + 400) = v37;
    v39 = v3[7];
    v41 = v3[4];
    v40 = v3[5];
    *(v2 + 480) = v3[6];
    *(v2 + 496) = v39;
    *(v2 + 448) = v41;
    *(v2 + 464) = v40;
    v42 = v3[3];
    v44 = *v3;
    v43 = v3[1];
    *(v2 + 288) = v3[2];
    *(v2 + 304) = v42;
    *(v2 + 256) = v44;
    *(v2 + 272) = v43;
    v45 = v3[7];
    v47 = v3[4];
    v46 = v3[5];
    *(v2 + 352) = v3[6];
    *(v2 + 368) = v45;
    *(v2 + 320) = v47;
    *(v2 + 336) = v46;
    v48 = *(v2 + 128);
    v49 = *(v2 + 144);
    v50 = *(v2 + 176);
    v3[2] = *(v2 + 160);
    v3[3] = v50;
    *v3 = v48;
    v3[1] = v49;
    v51 = *(v2 + 192);
    v52 = *(v2 + 208);
    v53 = *(v2 + 240);
    v3[6] = *(v2 + 224);
    v3[7] = v53;
    v3[4] = v51;
    v3[5] = v52;
    outlined init with copy of DOCGridLayout.Spec?(v2 + 384, v2 + 512, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    outlined destroy of CharacterSet?(v2 + 256, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    v54 = *(v2 + 464);
    v62 = *(v2 + 448);
    v63 = v54;
    v55 = *(v2 + 496);
    v64 = *(v2 + 480);
    v65 = v55;
    v56 = *(v2 + 400);
    v58 = *(v2 + 384);
    v59 = v56;
    v57 = *(v2 + 432);
    v60 = *(v2 + 416);
    v61 = v57;
    DOCItemCollectionCellContent.listItemLayoutTraits.didset(&v58);
    v35 = v2 + 384;
  }

  outlined destroy of CharacterSet?(v35, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);

  free(v2);
}

double DOCItemCollectionCellContent.minimumRowHeight.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumRowHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.minimumRowHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumRowHeight;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v10);
    if ((*v7 & 0x200) == 0)
    {
      *v7 |= 0x200uLL;
    }

    v9 = v8(v10, 0);
    return (*((*v6 & *v1) + 0xBB0))(v9);
  }

  return result;
}

void (*DOCItemCollectionCellContent.minimumRowHeight.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumRowHeight;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  *(v4 + 56) = *(v1 + v5);
  return DOCItemCollectionCellContent.minimumRowHeight.modify;
}

void DOCItemCollectionCellContent.minimumRowHeight.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v7 = (*((*MEMORY[0x277D85000] & *v1[8]) + 0x2D0))(v1);
    if ((*v6 & 0x200) == 0)
    {
      *v6 |= 0x200uLL;
    }

    v8 = v1[8];
    v9 = v7(v1, 0);
    (*((*MEMORY[0x277D85000] & *v8) + 0xBB0))(v9);
  }

  free(v1);
}

void DOCItemCollectionCellContent.appearance.didset(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23[-v6 - 8];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_appearance;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9)
  {
    if (!a1 || (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance), v10 = v9, v11 = a1, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12 & 1) == 0) && *(v2 + v8))
    {
      v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

      v14 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
      *v14 = 0;
      v14[1] = 0;

      v15 = type metadata accessor for DOCFastLabel.LabelInformation(0);
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v7, v2 + v16, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
      swift_endAccess();
      v17 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

      v18 = MEMORY[0x277D85000];
      v20 = (*((*MEMORY[0x277D85000] & *v2) + 0x2D0))(v23);
      if ((*v19 & 1) == 0)
      {
        *v19 |= 1uLL;
      }

      v21 = v20(v23, 0);
      (*((*v18 & *v2) + 0xBB0))(v21);
    }
  }
}

void *DOCItemCollectionCellContent.appearance.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_appearance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*DOCItemCollectionCellContent.appearance.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_appearance;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.appearance.modify;
}

void DOCItemCollectionCellContent.traitCollection.setter(void *a1)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  MEMORY[0x28223BE20](v48, v7);
  v9 = &v47 - v8;
  if (v10)
  {
    if (one-time initialization token for displayScale != -1)
    {
      swift_once();
    }

    v49 = static UITraitCollection.Traits.displayScale;
    v50 = qword_27EEE9C90;

    v11 = UITraitCollection.doc_hasSpecified(_:)(&v49);

    if (v11)
    {
      [v48 displayScale];
      v13 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection;
      v14 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection);
      if (v14 && (v15 = v12, [v14 displayScale], v15 == v16) && (v17 = objc_msgSend(v48, sel_userInterfaceStyle), (v18 = *(v2 + v13)) != 0) && v17 == objc_msgSend(v18, sel_userInterfaceStyle))
      {
        v19 = *(v2 + v13);
        v20 = v19;
        v52.value.super.isa = v19;
        v21 = UITraitCollection.traitCollectionTintEqual(_:)(v52);
      }

      else
      {
        v21 = 1;
      }

      v23 = v48;
      v24 = *(v2 + v13);
      *(v2 + v13) = v48;
      v25 = v23;

      UITraitCollection._ifColorForIconFolderTintComponents.getter();
      v26 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_folderTintComponents;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v9, v2 + v26, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
      swift_endAccess();
      v27 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
      *v27 = 0;
      v27[1] = 0;

      v28 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

      v29 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
      *v29 = 0;
      v29[1] = 0;

      if (v21)
      {
        v30 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
        *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
        DOCItemCollectionCellContent._thumbnail.didset(v30);
        swift_unknownObjectRelease();
      }

      v31 = type metadata accessor for DOCFastLabel.LabelInformation(0);
      (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
      v32 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v6, v2 + v32, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
      swift_endAccess();
      v33 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

      v34 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
      *v34 = 0;
      v34[1] = 0;

      v35 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
      *v35 = 0;
      v35[1] = 0;

      v36 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
      *v36 = 0;
      v36[1] = 0;

      v37 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
      *v37 = 0;
      v37[1] = 0;

      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = 0;

      v38 = MEMORY[0x277D85000];
      v39 = *((*MEMORY[0x277D85000] & *v2) + 0x2D0);
      v41 = v39(&v49);
      if ((*v40 & 2) == 0)
      {
        *v40 |= 2uLL;
      }

      v41(&v49, 0);
      v43 = v39(&v49);
      if ((*v42 & 0x100) == 0)
      {
        *v42 |= 0x100uLL;
      }

      v43(&v49, 0);
      v45 = v39(&v49);
      if ((*v44 & 0x80) == 0)
      {
        *v44 |= 0x80uLL;
      }

      v46 = v45(&v49, 0);
      (*((*v38 & *v2) + 0xBB0))(v46);
    }

    else
    {
      v22 = v48;
    }
  }
}

void *DOCItemCollectionCellContent.traitCollection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection);
  v2 = v1;
  return v1;
}

void (*DOCItemCollectionCellContent.traitCollection.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return DOCItemCollectionCellContent.traitCollection.modify;
}

void DOCItemCollectionCellContent.traitCollection.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DOCItemCollectionCellContent.traitCollection.setter(v2);
  }

  else
  {
    DOCItemCollectionCellContent.traitCollection.setter(*a1);
  }
}

uint64_t DOCItemCollectionCellContent.preferLastUsedDate.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_preferLastUsedDate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.preferLastUsedDate.setter(int a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_preferLastUsedDate;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 != 2 && (v6 == 2 || ((v6 ^ a1) & 1) != 0))
  {
    v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
    *v7 = 0;
    v7[1] = 0;

    return (*((*MEMORY[0x277D85000] & *v1) + 0xBB0))(v8);
  }

  return result;
}

void (*DOCItemCollectionCellContent.preferLastUsedDate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_preferLastUsedDate;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.preferLastUsedDate.modify;
}

void DOCItemCollectionCellContent.preferLastUsedDate.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCItemCollectionCellContent.preferLastUsedDate.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != 2 && (v6 == 2 || ((v6 ^ v3) & 1) != 0))
    {
      v7 = v2[3];
      v8 = (v7 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
      *v8 = 0;
      v8[1] = 0;

      (*((*MEMORY[0x277D85000] & *v7) + 0xBB0))(v9);
    }
  }

  free(v2);
}

uint64_t DOCItemCollectionCellContent.useSystemHighlightStyle.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_useSystemHighlightStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.useSystemHighlightStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_useSystemHighlightStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionCellContent.roundedCorners.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_roundedCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.roundedCorners.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_roundedCorners;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DOCItemCollectionCellContent.node.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v72[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v72[-v8];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_node;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (!v11)
  {
    return;
  }

  v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock);
  swift_unknownObjectRetain();
  [v12 lock];
  v13 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
  *v13 = 0;
  v13[1] = 0;

  [v12 unlock];
  v14 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
  *v14 = 0;
  v14[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags) = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isFolder) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isExcludedFromSync) = 2;
  v15 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x8A0))(0);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
  v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
  *v16 = 0;
  v16[1] = 0;

  v17 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__kind);
  *v17 = 0;
  v17[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemStatusBadge) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemAccessStatusBadge) = 2;
  (*((*v15 & *v1) + 0x920))(2);
  v18 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
  DOCItemCollectionCellContent._thumbnail.didset(v18);
  swift_unknownObjectRelease();
  v19 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
  *v19 = 0;
  v19[1] = 0;

  v20 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v9, v1 + v21, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  swift_endAccess();
  v22 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

  v23 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

  v24 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
  *v24 = 0;
  v24[1] = 0;

  v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
  *v25 = 0;
  v25[1] = 0;

  v26 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
  *v26 = 0;
  v26[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory) = 2;
  v27 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType;
  *v27 = 0;
  v27[8] = 1;
  v28 = type metadata accessor for Date();
  v29 = *(*(v28 - 8) + 56);
  v29(v5, 1, 1, v28);
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_creationDate;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v30, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  v29(v5, 1, 1, v28);
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_lastUsedDate;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v31, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  v29(v5, 1, 1, v28);
  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__modificationDate;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v32, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  v29(v5, 1, 1, v28);
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__dateAdded;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v33, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  v34 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
  *v34 = 0;
  v34[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = 0;

  v36 = (*((*v15 & *v1) + 0x610))(v35);
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    v40 = [v11 filename];
    if (!v40)
    {
      __break(1u);
      return;
    }

    v41 = v40;
    v42 = [v40 stringByDeletingPathExtension];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v38 == v43 && v39 == v45)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
        (*((*v15 & *v1) + 0x600))(0, 0);
        v36 = (*((*v15 & *v1) + 0x618))(0, 0);
      }
    }
  }

  v47 = (*((*v15 & *v1) + 0x568))(v36);
  if ((*((*v15 & *v1) + 0x3D0))())
  {
    ObjectType = swift_getObjectType();
    DOCNode.debugUIScenario.getter(ObjectType, v73);
    swift_unknownObjectRelease();
    if (v73[0] != 1)
    {
      v49 = v74;
      v50 = v74;
      outlined destroy of CharacterSet?(v73, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
      if (v49)
      {

        goto LABEL_32;
      }
    }
  }

  if ([v11 isExternalDownloadPlaceholder])
  {
    v51 = [v11 downloadingProgress];
    if (v51)
    {
      goto LABEL_25;
    }
  }

  if ([v11 isCloudItem] && objc_msgSend(v11, sel_isDownloading))
  {
    v52 = [v11 downloadingError];
    if (v52)
    {
    }

    else
    {
      v51 = [v11 downloadingProgress];
      if (v51)
      {
        goto LABEL_25;
      }
    }
  }

  if ([v11 isCloudItem] && objc_msgSend(v11, sel_isUploading))
  {
    v53 = [v11 uploadingError];
    if (v53)
    {

      goto LABEL_23;
    }

    v51 = [v11 uploadingProgress];
    if (!v51)
    {
      goto LABEL_23;
    }

LABEL_25:
    v50 = v51;

    v49 = v50;
    goto LABEL_32;
  }

LABEL_23:
  if ([v11 isCopying])
  {
    v51 = [v11 copyingProgress];
    if (v51)
    {
      goto LABEL_25;
    }
  }

  if ([v11 isActionable])
  {
    v54 = (*((*v15 & *v1) + 0x538))();
    if (v54)
    {

      if (!v47)
      {
        goto LABEL_36;
      }

LABEL_31:
      v50 = v47;
      v49 = v47;
LABEL_32:
      if ([v50 isFinished])
      {
        v56 = 0;
      }

      else
      {
        v57 = v49;
        v56 = v49;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v55 = [objc_opt_self() progressWithTotalUnitCount_];

    v47 = v55;
    if (v55)
    {
      goto LABEL_31;
    }
  }

LABEL_36:
  v56 = 0;
  v49 = 0;
LABEL_37:
  (*((*v15 & *v1) + 0x570))(v56);
  v58 = *((*v15 & *v1) + 0x2D0);
  v60 = v58(v72);
  if ((*v59 & 4) == 0)
  {
    *v59 |= 4uLL;
  }

  v60(v72, 0);
  v62 = v58(v72);
  if ((*v61 & 1) == 0)
  {
    *v61 |= 1uLL;
  }

  v62(v72, 0);
  v64 = v58(v72);
  if ((*v63 & 0x80) == 0)
  {
    *v63 |= 0x80uLL;
  }

  v64(v72, 0);
  v66 = v58(v72);
  if ((*v65 & 0x100) == 0)
  {
    *v65 |= 0x100uLL;
  }

  v66(v72, 0);
  v68 = v58(v72);
  if ((*v67 & 0x1000) == 0)
  {
    *v67 |= 0x1000uLL;
  }

  v68(v72, 0);
  v70 = v58(v72);
  if ((*v69 & 0x2000) == 0)
  {
    *v69 |= 0x2000uLL;
  }

  v71 = v70(v72, 0);
  (*((*v15 & *v1) + 0xBB0))(v71);
  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionCellContent.node.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_node;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  DOCItemCollectionCellContent.node.didset();
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionCellContent.node.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionCellContent.node.modify;
}

void DOCItemCollectionCellContent.node.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCItemCollectionCellContent.node.didset();
  }
}

uint64_t key path setter for DOCItemCollectionCellContent.sortingDescriptor : DOCItemCollectionCellContent(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v9 = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x3F0);
  outlined copy of DOCItemSortDescriptor?(v8[0], v2);
  return v6(v8);
}

uint64_t DOCItemCollectionCellContent.sortingDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_sortingDescriptor;
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

uint64_t DOCItemCollectionCellContent.sortingDescriptor.setter(__int128 *a1)
{
  v12 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_sortingDescriptor;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  *v4 = v12;
  *(v4 + 2) = v2;
  v4[24] = v3;
  outlined consume of DOCItemSortDescriptor?(v5, v6);
  v7 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v13);
  if ((*v8 & 0x200) == 0)
  {
    *v8 |= 0x200uLL;
  }

  v10 = v9(v13, 0);
  return (*((*v7 & *v1) + 0xBB0))(v10);
}

void (*DOCItemCollectionCellContent.sortingDescriptor.modify(uint64_t *a1))(void ***a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  return DOCItemCollectionCellContent.sortingDescriptor.modify;
}

void DOCItemCollectionCellContent.sortingDescriptor.modify(void ***a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v3[4]) + 0x2D0))(v3);
    if ((*v5 & 0x200) == 0)
    {
      *v5 |= 0x200uLL;
    }

    v7 = v3[4];
    v8 = v6(v3, 0);
    (*((*v4 & *v7) + 0xBB0))(v8);
  }

  free(v3);
}

uint64_t DOCItemCollectionCellContent.isInSearchMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInSearchMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.isInSearchMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInSearchMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionCellContent.grouping.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_grouping;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t DOCItemCollectionCellContent.grouping.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_grouping;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t DOCItemCollectionCellContent.isParentItemShared.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isParentItemShared;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.isParentItemShared.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isParentItemShared;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionCellContent.shouldPreserveSpaceForDisclosureButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_shouldPreserveSpaceForDisclosureButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.shouldPreserveSpaceForDisclosureButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_shouldPreserveSpaceForDisclosureButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionCellContent.isInCreateMode.didset(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v45[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v45[-v9 - 8];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInCreateMode;
  result = swift_beginAccess();
  v13 = *(v1 + v11);
  if (v13 != 2 && (a1 == 2 || ((v13 ^ a1) & 1) != 0))
  {
    v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock);
    [v14 lock];
    v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
    *v15 = 0;
    v15[1] = 0;

    [v14 unlock];
    v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
    *v16 = 0;
    v16[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags) = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isFolder) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isExcludedFromSync) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
    v17 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
    *v17 = 0;
    v17[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
    v18 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1) + 0x920))(2);
    v19 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
    DOCItemCollectionCellContent._thumbnail.didset(v19);
    swift_unknownObjectRelease();
    v20 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v20 = 0;
    v20[1] = 0;

    v21 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v10, v1 + v22, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v23 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v24 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
    *v25 = 0;
    v25[1] = 0;

    v26 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
    *v26 = 0;
    v26[1] = 0;

    v27 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
    *v27 = 0;
    v27[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = 2;
    v28 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType;
    *v28 = 0;
    v28[8] = 1;
    v29 = type metadata accessor for Date();
    v30 = *(*(v29 - 8) + 56);
    v30(v6, 1, 1, v29);
    v31 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_creationDate;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v31, &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v30(v6, 1, 1, v29);
    v32 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_lastUsedDate;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v32, &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v30(v6, 1, 1, v29);
    v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__modificationDate;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v33, &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v30(v6, 1, 1, v29);
    v34 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__dateAdded;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v34, &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v35 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
    *v35 = 0;
    v35[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = 0;

    v36 = *((*v18 & *v1) + 0x2D0);
    v38 = v36(v45);
    if ((*v37 & 1) == 0)
    {
      *v37 |= 1uLL;
    }

    v38(v45, 0);
    v40 = v36(v45);
    if ((*v39 & 0x100) == 0)
    {
      *v39 |= 0x100uLL;
    }

    v40(v45, 0);
    v42 = v36(v45);
    if ((*v41 & 8) == 0)
    {
      *v41 |= 8uLL;
    }

    v43 = v42(v45, 0);
    return (*((*v18 & *v1) + 0xBB0))(v43);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.isInCreateMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInCreateMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCItemCollectionCellContent.isInCreateMode.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInCreateMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.isInCreateMode.modify;
}

uint64_t DOCItemCollectionCellContent.itemsOrigin.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_itemsOrigin;
  swift_beginAccess();
  return *v1;
}

uint64_t DOCItemCollectionCellContent.itemsOrigin.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_itemsOrigin;
  result = swift_beginAccess();
  v8 = *v6;
  v9 = v6[8];
  *v6 = a1;
  v6[8] = v5;
  v10 = v8 != a1;
  if (a2 & 1) == 0 && ((v9 | v10))
  {
    v11 = MEMORY[0x277D85000];
    v13 = (*((*MEMORY[0x277D85000] & *v2) + 0x2D0))(v15);
    if ((*v12 & 1) == 0)
    {
      *v12 |= 1uLL;
    }

    v14 = v13(v15, 0);
    return (*((*v11 & *v2) + 0xBB0))(v14);
  }

  return result;
}

void (*DOCItemCollectionCellContent.itemsOrigin.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_itemsOrigin;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 56) = *v6;
  *(v4 + 64) = v7;
  return DOCItemCollectionCellContent.itemsOrigin.modify;
}

void DOCItemCollectionCellContent.itemsOrigin.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = (*(*a1 + 72) + *(*a1 + 80));
  v5 = *(*a1 + 64);
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v3;
  *(v4 + 8) = v5;
  v8 = (v5 ^ 1) & (v7 | (v3 != v6));
  if (a2)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  v10 = (*((*MEMORY[0x277D85000] & *v2[9]) + 0x2D0))(v2);
  if ((*v9 & 1) == 0)
  {
    *v9 |= 1uLL;
  }

  v11 = v2[9];
  v12 = v10(v2, 0);
  (*((*MEMORY[0x277D85000] & *v11) + 0xBB0))(v12);
LABEL_8:

  free(v2);
}

uint64_t DOCItemCollectionCellContent.isSelecting.didset(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19[-v5 - 8];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isSelecting;
  result = swift_beginAccess();
  v9 = *(v1 + v7);
  if (v9 != 2 && (a1 == 2 || ((v9 ^ a1) & 1) != 0))
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = 2;
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v11 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v12, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v14 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1) + 0x920))(2);
    v16 = (*((*v14 & *v1) + 0x2D0))(v19);
    if ((*v15 & 8) == 0)
    {
      *v15 |= 8uLL;
    }

    v17 = v16(v19, 0);
    return (*((*v14 & *v1) + 0xBB0))(v17);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.isSelecting.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isSelecting;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCItemCollectionCellContent.isSelecting.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isSelecting;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.isSelecting.modify;
}

uint64_t key path setter for DOCItemCollectionCellContent.titleHighlightIndexSet : DOCItemCollectionCellContent(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation8IndexSetVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x4B0))(v7);
}

id DOCItemCollectionCellContent.titleHighlightIndexSet.didset(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v44 = &v42[-v6];
  v7 = type metadata accessor for IndexSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v45 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v42[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSg_ADtMd);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v42[-v18];
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  swift_beginAccess();
  v21 = *(v16 + 56);
  outlined init with copy of DOCGridLayout.Spec?(v2 + v20, v19, &_s10Foundation8IndexSetVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v19[v21], &_s10Foundation8IndexSetVSgMd);
  v46 = v8;
  v22 = *(v8 + 48);
  if (v22(v19, 1, v7) == 1)
  {
    if (v22(&v19[v21], 1, v7) == 1)
    {
      return outlined destroy of CharacterSet?(v19, &_s10Foundation8IndexSetVSgMd);
    }
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(v19, v14, &_s10Foundation8IndexSetVSgMd);
    if (v22(&v19[v21], 1, v7) != 1)
    {
      v25 = v45;
      (*(v46 + 32))(v45, &v19[v21], v7);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28]);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v46 + 8);
      v26(v25, v7);
      v26(v14, v7);
      result = outlined destroy of CharacterSet?(v19, &_s10Foundation8IndexSetVSgMd);
      if (v43)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v46 + 8))(v14, v7);
  }

  outlined destroy of CharacterSet?(v19, &_s10Foundation8IndexSetVSg_ADtMd);
LABEL_7:
  result = [objc_opt_self() typeToFocusIsSupported];
  if (result)
  {
    if (v22(v2 + v20, 1, v7))
    {
      v24 = 0;
    }

    else
    {
      v27 = v46;
      v28 = v2 + v20;
      v29 = v45;
      (*(v46 + 16))(v45, v28, v7);
      v24 = IndexSet.isEmpty.getter();
      (*(v27 + 8))(v29, v7);
    }

    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = v24 & 1;
    v30 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v31 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    v32 = v44;
    (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
    v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v32, v2 + v33, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v34 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v35 = MEMORY[0x277D85000];
    v36 = *((*MEMORY[0x277D85000] & *v2) + 0x2D0);
    v38 = v36(v47);
    if ((*v37 & 1) == 0)
    {
      *v37 |= 1uLL;
    }

    v38(v47, 0);
    v40 = v36(v47);
    if ((*v39 & 8) == 0)
    {
      *v39 |= 8uLL;
    }

    v41 = v40(v47, 0);
    return (*((*v35 & *v2) + 0xBB0))(v41);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.titleHighlightIndexSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s10Foundation8IndexSetVSgMd);
}

uint64_t DOCItemCollectionCellContent.titleHighlightIndexSet.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v7, v6, &_s10Foundation8IndexSetVSgMd);
  swift_beginAccess();
  outlined assign with copy of IndexSet?(a1, v1 + v7);
  swift_endAccess();
  DOCItemCollectionCellContent.titleHighlightIndexSet.didset(v6);
  outlined destroy of CharacterSet?(a1, &_s10Foundation8IndexSetVSgMd);
  return outlined destroy of CharacterSet?(v6, &_s10Foundation8IndexSetVSgMd);
}

void (*DOCItemCollectionCellContent.titleHighlightIndexSet.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v9, v8, &_s10Foundation8IndexSetVSgMd);
  return DOCItemCollectionCellContent.titleHighlightIndexSet.modify;
}

void DOCItemCollectionCellContent.titleHighlightIndexSet.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of DOCGridLayout.Spec?(*(*a1 + 96), v6, &_s10Foundation8IndexSetVSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v7 + v4, v5, &_s10Foundation8IndexSetVSgMd);
    swift_beginAccess();
    outlined assign with copy of IndexSet?(v6, v7 + v4);
    swift_endAccess();
    DOCItemCollectionCellContent.titleHighlightIndexSet.didset(v5);
    outlined destroy of CharacterSet?(v5, &_s10Foundation8IndexSetVSgMd);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(v7 + v4, v6, &_s10Foundation8IndexSetVSgMd);
    swift_beginAccess();
    outlined assign with copy of IndexSet?(v3, v7 + v4);
    swift_endAccess();
    DOCItemCollectionCellContent.titleHighlightIndexSet.didset(v6);
  }

  outlined destroy of CharacterSet?(v6, &_s10Foundation8IndexSetVSgMd);
  outlined destroy of CharacterSet?(v3, &_s10Foundation8IndexSetVSgMd);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t DOCItemCollectionCellContent.isFocusing.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isFocusing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.isFocusing.setter(char a1)
{
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20[-v6 - 8];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isFocusing;
  result = swift_beginAccess();
  v10 = *(v1 + v8);
  *(v1 + v8) = a1;
  if (v10 != v3)
  {
    v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v12 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v1 + v13, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v15 = MEMORY[0x277D85000];
    v17 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v20);
    if ((*v16 & 0x10) == 0)
    {
      *v16 |= 0x10uLL;
    }

    v18 = v17(v20, 0);
    return (*((*v15 & *v1) + 0xBB0))(v18);
  }

  return result;
}

void (*DOCItemCollectionCellContent.isFocusing.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isFocusing;
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;
  swift_beginAccess();
  *(v5 + 104) = *(v1 + v8);
  return DOCItemCollectionCellContent.isFocusing.modify;
}

void DOCItemCollectionCellContent.isFocusing.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = v2[10];
  if (a2)
  {
    v5 = v2[11];
    DOCItemCollectionCellContent.isFocusing.setter(v3);
  }

  else
  {
    v6 = v2[12];
    v7 = *(v4 + v6);
    *(v4 + v6) = v3;
    if (v3 != v7)
    {
      v9 = v2[10];
      v8 = v2[11];
      v10 = *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
      *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

      v11 = type metadata accessor for DOCFastLabel.LabelInformation(0);
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v8, v9 + v12, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
      swift_endAccess();
      v13 = *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
      *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

      v14 = MEMORY[0x277D85000];
      v16 = (*((*MEMORY[0x277D85000] & *v9) + 0x2D0))(v2);
      if ((*v15 & 0x10) == 0)
      {
        *v15 |= 0x10uLL;
      }

      v17 = v2[10];
      v18 = v16(v2, 0);
      (*((*v14 & *v17) + 0xBB0))(v18);
    }

    v5 = v2[11];
  }

  free(v5);

  free(v2);
}

uint64_t DOCItemCollectionCellContent.isDropping.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isDropping;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.isDropping.setter(int a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isDropping;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 != 2 && (v6 == 2 || ((v6 ^ a1) & 1) != 0))
  {
    v7 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v11);
    if ((*v8 & 0x800) == 0)
    {
      *v8 |= 0x800uLL;
    }

    v10 = v9(v11, 0);
    return (*((*v7 & *v1) + 0xBB0))(v10);
  }

  return result;
}

void (*DOCItemCollectionCellContent.isDropping.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isDropping;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return DOCItemCollectionCellContent.isDropping.modify;
}

void DOCItemCollectionCellContent.isDropping.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (a2)
  {
    DOCItemCollectionCellContent.isDropping.setter(v3);
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != 2 && (v6 == 2 || ((v6 ^ v3) & 1) != 0))
    {
      v7 = MEMORY[0x277D85000];
      v9 = (*((*MEMORY[0x277D85000] & *v2[7]) + 0x2D0))(v2);
      if ((*v8 & 0x800) == 0)
      {
        *v8 |= 0x800uLL;
      }

      v10 = v2[7];
      v11 = v9(v2, 0);
      (*((*v7 & *v10) + 0xBB0))(v11);
    }
  }

  free(v2);
}

uint64_t DOCItemCollectionCellContent.isPickable.didset(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22[-v5 - 8];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isPickable;
  result = swift_beginAccess();
  v9 = *(v1 + v7);
  if (v9 != 2 && (a1 == 2 || ((v9 ^ a1) & 1) != 0))
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = 2;
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v11 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v12, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v14 = MEMORY[0x277D85000];
    v15 = *((*MEMORY[0x277D85000] & *v1) + 0x2D0);
    v17 = v15(v22);
    if ((*v16 & 0x20) == 0)
    {
      *v16 |= 0x20uLL;
    }

    v17(v22, 0);
    v19 = v15(v22);
    if ((*v18 & 8) == 0)
    {
      *v18 |= 8uLL;
    }

    v20 = v19(v22, 0);
    return (*((*v14 & *v1) + 0xBB0))(v20);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.isPickable.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isPickable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.isInCreateMode.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void (*DOCItemCollectionCellContent.isPickable.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isPickable;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.isPickable.modify;
}

void DOCItemCollectionCellContent.isInCreateMode.modify(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  a3(v7);

  free(v3);
}

uint64_t DOCItemCollectionCellContent.canBecomeSelectable.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_canBecomeSelectable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.canBecomeSelectable.setter(int a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_canBecomeSelectable;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 != 2 && (v6 == 2 || ((v6 ^ a1) & 1) != 0))
  {
    v7 = MEMORY[0x277D85000];
    v8 = *((*MEMORY[0x277D85000] & *v1) + 0x2D0);
    v10 = v8(v14);
    if ((*v9 & 1) == 0)
    {
      *v9 |= 1uLL;
    }

    v10(v14, 0);
    v12 = v8(v14);
    if ((*v11 & 8) == 0)
    {
      *v11 |= 8uLL;
    }

    v13 = v12(v14, 0);
    return (*((*v7 & *v1) + 0xBB0))(v13);
  }

  return result;
}

void (*DOCItemCollectionCellContent.canBecomeSelectable.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_canBecomeSelectable;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return DOCItemCollectionCellContent.canBecomeSelectable.modify;
}

void DOCItemCollectionCellContent.canBecomeSelectable.modify(uint64_t a1)
{
  v1 = *a1;
  DOCItemCollectionCellContent.canBecomeSelectable.setter(*(*a1 + 32));

  free(v1);
}

uint64_t DOCItemCollectionCellContent.stackMetrics.didset(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics);
  result = swift_beginAccess();
  if ((LOBYTE(v5[2].f64[1]) & 1) == 0 && ((v4 & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, *a1), vceqq_f64(v5[1], *(a1 + 16))))) & 1) == 0 || v5[2].f64[0] != v3))
  {
    v7 = MEMORY[0x277D85000];
    v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v11);
    if ((*v8 & 0x400) == 0)
    {
      *v8 |= 0x400uLL;
    }

    v10 = v9(v11, 0);
    return (*((*v7 & *v1) + 0xBB0))(v10);
  }

  return result;
}

__n128 DOCItemCollectionCellContent.stackMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t DOCItemCollectionCellContent.stackMetrics.setter(__int128 *a1)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics);
  swift_beginAccess();
  v6 = *(v5 + 4);
  v7 = *(v5 + 40);
  v9 = *a1;
  v8 = a1[1];
  *(v5 + 4) = v3;
  *(v5 + 40) = v4;
  v10 = *v5;
  v11 = v5[1];
  *v5 = v9;
  v5[1] = v8;
  v13[0] = v10;
  v13[1] = v11;
  v14 = v6;
  v15 = v7;
  return DOCItemCollectionCellContent.stackMetrics.didset(v13);
}

void (*DOCItemCollectionCellContent.stackMetrics.modify(uint64_t *a1))(_OWORD **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 16);
  *v4 = *v6;
  *(v4 + 16) = v9;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  return DOCItemCollectionCellContent.stackMetrics.modify;
}

void DOCItemCollectionCellContent.stackMetrics.modify(_OWORD **a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 9) + *(*a1 + 10));
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 40);
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  v11 = (*a1)[1];
  *v2 = **a1;
  *(v2 + 1) = v11;
  v2[4] = v3;
  *(v2 + 40) = v4;
  v12[0] = v6;
  v12[1] = v5;
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v9;
  v13 = v10;
  DOCItemCollectionCellContent.stackMetrics.didset(v12);

  free(v1);
}

void DOCItemCollectionCellContent.loadingProgress.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_loadingProgress;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x920))(2);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory) = 2;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
  v11 = (*((*v9 & *v2) + 0x2D0))(v16);
  if ((*v10 & 4) == 0)
  {
    *v10 |= 4uLL;
  }

  v11(v16, 0);
  v12 = *(v2 + v4);
  if (v12)
  {
    if ([v12 isFinished])
    {
      v12 = 0;
    }

    else
    {
      v13 = *(v2 + v4);
      v14 = v13;
      v12 = v13;
    }
  }

  v15 = (*((*v9 & *v2) + 0x570))(v12);
  (*((*v9 & *v2) + 0xBB0))(v15);
}

void *DOCItemCollectionCellContent.loadingProgress.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_loadingProgress;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCellContent.appearance.setter(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

void (*DOCItemCollectionCellContent.loadingProgress.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_loadingProgress;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.loadingProgress.modify;
}

void DOCItemCollectionCellContent.appearance.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v7 = (*a1 + 24);
  v6 = *v7;
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v10 = *(v9 + v8);
  *(v9 + v8) = *v7;
  v11 = v6;
  v12 = v11;
  if (a2)
  {
    v13 = v11;
    a3(v10);

    v10 = *v7;
  }

  else
  {
    a3(v10);
  }

  free(v5);
}

Swift::Void __swiftcall DOCItemCollectionCellContent.clearCachedResources()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
  if (v2)
  {
    [v2 removeListener_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 addListener_];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCItemCollectionCellContent.clearCachedTitles()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
  *v5 = 0;
  v5[1] = 0;

  v6 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v4, v0 + v7, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  swift_endAccess();
  v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;
}

Swift::Void __swiftcall DOCItemCollectionCellContent.prepareForReuse()()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x570))(0);
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  (*((*v1 & *v0) + 0x3F0))(v2);
  (*((*v1 & *v0) + 0x438))(0);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
}

id DOCItemCollectionCellContent.__deallocating_deinit()
{
  DOCItemCollectionCellContent.stopObservingProgressIfNeeded()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionCellContent(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCItemCollectionCellContent.observedProgress.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_observedProgress;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCellContent.observedProgress.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_observedProgress;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (a1)
  {
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      *(v1 + v3) = a1;
      v6 = a1;
      goto LABEL_10;
    }
  }

  else if (!v4)
  {
    return;
  }

  v7 = v4;
  DOCItemCollectionCellContent.stopObservingProgressIfNeeded()();
  v8 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = a1;

  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (!a1 || v4 != a1)
  {
LABEL_14:
    v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x568))();
    if (v9)
    {
      v10 = v9;
      if (([v9 isFinished] & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isObservingProgress) = 1;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_249B9A480;
        *(v11 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
        *(v11 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSProgress and conformance NSObject, &lazy cache variable for type metadata for NSProgress);
        *(v11 + 32) = v10;
        v12 = v10;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v13 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BD68C0);
        [v12 addObserver:v1 forKeyPath:v13 options:1 context:&DOCItemCollectionCellObservationContext];

        v10 = MEMORY[0x24C1FAD20](0x6D72657465646E69, 0xED00006574616E69);
        [v12 addObserver:v1 forKeyPath:v10 options:1 context:&DOCItemCollectionCellObservationContext];

        v4 = v6;
        v6 = v12;
      }

      v4 = v6;
      v6 = v10;
    }
  }
}

void (*DOCItemCollectionCellContent.observedProgress.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_observedProgress;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.observedProgress.modify;
}

void DOCItemCollectionCellContent.observedProgress.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    DOCItemCollectionCellContent.observedProgress.setter(v3);
  }

  else
  {
    DOCItemCollectionCellContent.observedProgress.setter(*(*a1 + 24));
  }

  free(v2);
}

void *DOCItemCollectionCellContent.hasObservedProgress.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x568))();
  if (result)
  {
    v2 = result;
    v3 = [result isFinished];

    return (v3 ^ 1);
  }

  return result;
}

void DOCItemCollectionCellContent.stopObservingProgressIfNeeded()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x568))();
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isObservingProgress) == 1)
    {
      v5 = v1;
      *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isObservingProgress) = 0;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_249B9A480;
      *(v2 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
      *(v2 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSProgress and conformance NSObject, &lazy cache variable for type metadata for NSProgress);
      *(v2 + 32) = v5;
      v3 = v5;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v4 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BD68C0);
      [v3 removeObserver:v0 forKeyPath:v4 context:&DOCItemCollectionCellObservationContext];

      v6 = MEMORY[0x24C1FAD20](0x6D72657465646E69, 0xED00006574616E69);
      [v3 removeObserver:v0 forKeyPath:v6 context:&DOCItemCollectionCellObservationContext];

      v1 = v6;
    }
  }
}

void DOCItemCollectionCellContent.observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, Swift::Int *a5)
{
  if (a5 == &DOCItemCollectionCellObservationContext)
  {
    outlined init with copy of DOCGridLayout.Spec?(a3, &v22, &_sypSgMd);
    v7 = swift_allocObject();
    v8 = v23;
    *(v7 + 16) = v22;
    *(v7 + 32) = v8;
    *(v7 + 48) = v5;
    v9 = v5;
    DOCRunInMainThread(_:)();

    return;
  }

  if (a2)
  {
    v12 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v12 = 0;
  }

  outlined init with copy of DOCGridLayout.Spec?(a3, &v22, &_sypSgMd);
  v13 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    v19 = 0;
    if (!isa)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v14, v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  v19 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v15 + 8))(v18, v13);
  __swift_destroy_boxed_opaque_existential_0(&v22);
  if (isa)
  {
LABEL_8:
    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_9:
  v20 = type metadata accessor for DOCItemCollectionCellContent(0);
  v21.receiver = v5;
  v21.super_class = v20;
  objc_msgSendSuper2(&v21, sel_observeValueForKeyPath_ofObject_change_context_, v12, v19, isa, a5);

  swift_unknownObjectRelease();
}

void closure #1 in DOCItemCollectionCellContent.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v19, &_sypSgMd);
  if (v20)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
    if (swift_dynamicCast())
    {
      v3 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v19, &_sypSgMd);
  }

  v3 = 0;
LABEL_6:
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *a2) + 0x538))();
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }

      goto LABEL_14;
    }

    v6 = v3;
  }

  else if (!v5)
  {
    return;
  }

LABEL_14:
  v8 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

  v9 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
  *v9 = 0;
  v9[1] = 0;

  v10 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
  *v10 = 0;
  v10[1] = 0;

  v11 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
  *v11 = 0;
  v11[1] = 0;

  v12 = *((*v4 & *a2) + 0x2D0);
  v14 = v12(v19);
  if ((*v13 & 0x80) == 0)
  {
    *v13 |= 0x80uLL;
  }

  v14(v19, 0);
  v16 = v12(v19);
  if ((*v15 & 4) == 0)
  {
    *v15 |= 4uLL;
  }

  v17 = v16(v19, 0);
  (*((*v4 & *a2) + 0xBB0))(v17);
}

uint64_t DOCItemCollectionCellContent.thumbnailLoaded(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCItemCollectionCellContent.thumbnailLoaded(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0xA80))();
    if (v6)
    {
      v7 = v6;
      v8 = swift_unknownObjectRelease();
      if (v7 == a2)
      {
        v9 = (*((*v5 & *v4) + 0x368))(v8);
        if (v9)
        {
          v10 = v9;
          v11 = [v9 preferredContentSizeCategory];

          LOBYTE(v10) = UIContentSizeCategory.isAccessibilityCategory.getter();
          if (v10)
          {
            v12 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
            *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
          }
        }

        v14 = (*((*v5 & *v4) + 0x2D0))(v16);
        if ((*v13 & 0x100) == 0)
        {
          *v13 |= 0x100uLL;
        }

        v15 = v14(v16, 0);
        (*((*v5 & *v4) + 0xBB0))(v15);
      }
    }
  }
}

uint64_t DOCItemCollectionCellContent.updateThumbnail(completion:)(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  v7 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
  DOCItemCollectionCellContent._thumbnail.didset(v7);
  swift_unknownObjectRelease();
  DOCItemCollectionCellContent.fetchThumbnailIfNeeded()();
  v8 = *(v2 + v6);
  if (v8)
  {
    [swift_unknownObjectRetain() scheduleUpdateIfNeeded];
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateLock;
    [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateLock) lock];
    if ([v8 hasFinishedTryingToFetchCorrectThumbnail])
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_249B9FA70;
      v21 = v8;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12DOCThumbnail_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd);
      v11 = swift_dynamicCast();
      v20 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D0))(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      *(v10 + 96) = MEMORY[0x277D837D0];
      *(v10 + 104) = lazy protocol witness table accessor for type String and conformance String();
      *(v10 + 72) = v12;
      *(v10 + 80) = v14;
      os_log(_:dso:log:type:_:)();

      a1(v15);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      *(swift_allocObject() + 16) = xmmword_249B9A480;
      v21 = v8;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12DOCThumbnail_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd);
      swift_dynamicCast();
      os_log(_:dso:log:type:_:)();

      v18 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock);
      v19 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock);
      *v18 = a1;
      v18[1] = a2;

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v19);
    }

    [*(v3 + v9) unlock];
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    v16 = os_log(_:dso:log:type:_:)();
    return (a1)(v16);
  }
}

uint64_t DOCItemCollectionCellContent.inflightRenameTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameTitle);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v8)
    {
      if (v7 == a1 && v8 == a2)
      {
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x558))(result);
  v12 = (*((*v10 & *v2) + 0x2D0))(v14);
  if ((*v11 & 1) == 0)
  {
    *v11 |= 1uLL;
  }

  v13 = v12(v14, 0);
  (*((*v10 & *v2) + 0xBB0))(v13);
}

void (*DOCItemCollectionCellContent.inflightRenameTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameTitle;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 56) = *v6;
  *(v4 + 64) = v7;

  return DOCItemCollectionCellContent.inflightRenameTitle.modify;
}

void DOCItemCollectionCellContent.inflightRenameTitle.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v5 = (v2[9] + v2[10]);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v4;
    if (v4)
    {
      if (v7)
      {
        v8 = v3 == v6 && v4 == v7;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_15;
        }
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v9 = v2[9];
    v10 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v9) + 0x558))();
    v12 = (*((*v10 & *v9) + 0x2D0))(v2);
    if ((*v11 & 1) == 0)
    {
      *v11 |= 1uLL;
    }

    v13 = v2[9];
    v14 = v12(v2, 0);
    (*((*v10 & *v13) + 0xBB0))(v14);
    goto LABEL_15;
  }

  DOCItemCollectionCellContent.inflightRenameTitle.setter(v3, v4);
LABEL_15:

LABEL_16:

  free(v2);
}

uint64_t DOCItemCollectionCellContent.inflightRenameTitle.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t DOCItemCollectionCellContent.inflightRenameOldTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameOldTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *DOCItemCollectionCellContent.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title + 8))
  {
    goto LABEL_7;
  }

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  if (v3)
  {
    v4 = DOCItemCollectionCellContent.title(forNode:)(v3);
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    result = (*((*v2 & *v0) + 0x320))();
    if (!result)
    {
      goto LABEL_9;
    }

    v8 = result;
    v9 = [result collectionCreateButtonTitle];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v10;
  }

  *v1 = v4;
  v1[1] = v6;

  if (v1[1])
  {
LABEL_7:
    v11 = *v1;

    return v11;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

double DOCItemCollectionCellContent.attributedStringAttachmentDimension(forTitleFont:)(void *a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v3, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x368))(v6);
  if (v9)
  {
    v10 = v9;
    [v9 displayScale];
  }

  else
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
  }

  v12 = v11;

  [a1 capHeight];
  v14 = v13 * 0.5;
  (*(v4 + 104))(v8, *MEMORY[0x277D84688], v3);
  v15 = fmax(specialized CGFloat.init(_:roundedBy:inScale:)(v8, v14, v12), 5.0);
  return v15 + v15;
}

id DOCItemCollectionCellContent._titleColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionCellContent._titleColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void DOCItemCollectionCellContent.titleColor.setter(void *a1)
{
  v2 = v1;
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v17 - v6;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x658))(v5);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = v17;
  }

  else
  {
    (*((*v8 & *v2) + 0x660))(v17);
    v12 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v12 = 0;
    v12[1] = 0;

    v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v14 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v15, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
  }
}

id DOCItemCollectionCellContent.titleColor.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x910))())
  {
    v2 = [objc_opt_self() tertiaryLabelColor];

    return v2;
  }

  else
  {
    v4 = *((*v1 & *v0) + 0x658);

    return v4();
  }
}

void (*DOCItemCollectionCellContent.titleColor.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x910))())
  {
    v4 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v4 = (*((*v3 & *v1) + 0x658))();
  }

  *a1 = v4;
  return DOCItemCollectionCellContent.titleColor.modify;
}

void DOCItemCollectionCellContent.trailingAttachmentcolor.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  swift_beginAccess();
  v7 = *(v0 + v6);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v8 = v7;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    v10 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v10 = 0;
    v10[1] = 0;

    v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v12 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v5, v1 + v13, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
  }
}

id DOCItemCollectionCellContent.trailingAttachmentcolor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionCellContent.trailingAttachmentcolor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  DOCItemCollectionCellContent.trailingAttachmentcolor.didset();
}

void (*DOCItemCollectionCellContent.trailingAttachmentcolor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.trailingAttachmentcolor.modify;
}

void DOCItemCollectionCellContent.trailingAttachmentcolor.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    DOCItemCollectionCellContent.trailingAttachmentcolor.didset();

    v10 = *v5;
  }

  else
  {
    DOCItemCollectionCellContent.trailingAttachmentcolor.didset();
  }

  free(v3);
}

id DOCItemCollectionCellContent._suffixColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__suffixColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionCellContent._suffixColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__suffixColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void DOCItemCollectionCellContent.suffixColor.setter(void *a1)
{
  v2 = v1;
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v17 - v6;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x6A0))(v5);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = v17;
  }

  else
  {
    (*((*v8 & *v2) + 0x6A8))(v17);
    v12 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v12 = 0;
    v12[1] = 0;

    v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v14 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v15, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    swift_endAccess();
    v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
  }
}

id DOCItemCollectionCellContent.suffixColor.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x910))())
  {
    v2 = [objc_opt_self() quaternaryLabelColor];

    return v2;
  }

  else
  {
    v4 = *((*v1 & *v0) + 0x6A0);

    return v4();
  }
}

void (*DOCItemCollectionCellContent.suffixColor.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x910))())
  {
    v4 = [objc_opt_self() quaternaryLabelColor];
  }

  else
  {
    v4 = (*((*v3 & *v1) + 0x6A0))();
  }

  *a1 = v4;
  return DOCItemCollectionCellContent.suffixColor.modify;
}

void DOCItemCollectionCellContent.titleColor.modify(void **a1, char a2, void (*a3)(void))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3();
  }

  else
  {
    (a3)(v4);
  }
}

void *DOCItemCollectionCellContent.titleWithTags.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v310 = *MEMORY[0x277D85DE8];
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd);
  MEMORY[0x28223BE20](v235, v4);
  v236 = &v210 - v5;
  v6 = type metadata accessor for CharacterSet();
  v237 = *(v6 - 8);
  v238 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v224 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v250 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v251 = &v210 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v210 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v210 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v210 - v25;
  v27 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v27, v26, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v28 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v239 = *(v28 - 8);
  v29 = v239 + 48;
  v30 = *(v239 + 48);
  if (v30(v26, 1, v28) != 1)
  {
    v35 = v26;
    v36 = a1;
    return outlined init with take of DOCFastLabel.LabelInformation(v35, v36);
  }

  v219 = v30;
  v220 = v29;
  v233 = v28;
  v234 = v22;
  v221 = v27;
  v222 = v18;
  v31 = outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v32 = *MEMORY[0x277D85000] & *v2;
  v258 = *(v32 + 0x368);
  *&v259 = v32 + 872;
  v33 = v258(v31);
  if (v33)
  {
    v34 = v33;
    [v33 displayScale];
  }

  else
  {
    v34 = [objc_opt_self() mainScreen];
    [v34 scale];
  }

  v37 = MEMORY[0x277D85000];
  v38 = *((*MEMORY[0x277D85000] & *v2) + 0x2D8);
  v257 = ((*MEMORY[0x277D85000] & *v2) + 728);
  v38(&v295);
  v306[8] = v303;
  v306[9] = v304;
  v307[0] = v305[0];
  *(v307 + 9) = *(v305 + 9);
  v306[4] = v299;
  v306[5] = v300;
  v306[6] = v301;
  v306[7] = v302;
  v306[0] = v295;
  v306[1] = v296;
  v306[2] = v297;
  v306[3] = v298;
  v308[8] = v303;
  v308[9] = v304;
  v309[0] = v305[0];
  *(v309 + 9) = *(v305 + 9);
  v308[4] = v299;
  v308[5] = v300;
  v308[6] = v301;
  v308[7] = v302;
  v308[0] = v295;
  v308[1] = v296;
  v308[2] = v297;
  v308[3] = v298;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v308);
  if (result == 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v40 = *&v308[0];
  v41 = outlined destroy of CharacterSet?(v306, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v42 = (*((*v37 & *v2) + 0x3D0))(v41);
  v218 = a1;
  v256 = v40;
  if (v42)
  {
    swift_unknownObjectRelease();
    v43 = DOCItemCollectionCellContent.attributedStringAttachmentDimension(forTitleFont:)(v40);
    (*((*v37 & *v2) + 0x7E0))();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v45 = [objc_opt_self() requestForChainedTags:isa tagDimension:v43];

    if (v45)
    {
      v46 = (v258)();
      if (v46)
      {
        v47 = v46;
        v48 = [v46 layoutDirection];

        v49 = v48 == 1;
      }

      else
      {
        v49 = 0;
      }

      [v45 setLayoutDirection_];
      v56 = [v45 setSpacingType_];
      if ((*((*MEMORY[0x277D85000] & *v2) + 0x4C0))(v56))
      {
        v57 = [objc_opt_self() lightTextColor];
      }

      else
      {
        v57 = 0;
      }

      [v45 setSelectionOutlineColor_];

      v58 = [objc_opt_self() shared];
      [v58 sizeOfTagContentForRenderingRequest_];
      v60 = v59;
      v62 = v61;

      v63 = swift_allocObject();
      *(v63 + 16) = v45;
      v53 = v60;
      v55 = v62;
      v231 = v63;
      v232 = partial apply for closure #1 in DOCItemCollectionCellContent.titleWithTags.getter;
      v229 = 0x4018000000000000;
    }

    else
    {
      v53 = 0;
      v55 = 0;
      v229 = 0;
      v231 = 0;
      v232 = 0;
    }

    v230 = v55;
    v64 = MEMORY[0x277D85000];
    v65 = (*((*MEMORY[0x277D85000] & *v2) + 0x718))(v43);
    if (v65)
    {
      v66 = v65;
      v67 = [v65 size];
      v69 = v68;
      v71 = v70;
      v72 = (*((*MEMORY[0x277D85000] & *v2) + 0xAA0))(&v295, v67);
      v73 = v258(v72);
      DOCNodeStatusAppearance.iconVerticalOffset(forTitleFont:traitCollection:)(v40, v73);
      v75 = v74;

      v76 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v77 = swift_allocObject();
      *(v77 + 16) = v76;
      *(v77 + 24) = v66;
      v243 = v77;
      v64 = MEMORY[0x277D85000];
      v248 = v69;
      v241 = v75;
      v242 = v71;
      v249 = partial apply for closure #2 in DOCItemCollectionCellContent.titleWithTags.getter;
      v247 = 0x4010000000000000;
    }

    else
    {
      v247 = 0;
      v248 = 0;
      v241 = 0;
      v242 = 0;
      v249 = 0;
      v243 = 0;
    }

    v223 = (*((*v64 & *v2) + 0x640))();
    v228 = v78;
    v54 = v64;
  }

  else
  {
    result = (*((*v37 & *v2) + 0x320))();
    if (!result)
    {
LABEL_87:
      __break(1u);
      return result;
    }

    v50 = result;
    v51 = [result collectionCreateButtonTitle];

    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v228 = v52;

    v247 = 0;
    v248 = 0;
    v241 = 0;
    v242 = 0;
    v249 = 0;
    v243 = 0;
    v53 = 0;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 0;
    v54 = MEMORY[0x277D85000];
  }

  v79 = (*((*v54 & *v2) + 0x4A8))();
  (v38)(&v282, v79);
  v293[8] = v290;
  v293[9] = v291;
  v294[0] = v292[0];
  *(v294 + 9) = *(v292 + 9);
  v293[4] = v286;
  v293[5] = v287;
  v293[6] = v288;
  v293[7] = v289;
  v293[0] = v282;
  v293[1] = v283;
  v293[2] = v284;
  v293[3] = v285;
  v303 = v290;
  v304 = v291;
  v305[0] = v292[0];
  *(v305 + 9) = *(v292 + 9);
  v299 = v286;
  v300 = v287;
  v301 = v288;
  v302 = v289;
  v295 = v282;
  v296 = v283;
  v297 = v284;
  v298 = v285;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v295);
  if (result == 1)
  {
    goto LABEL_84;
  }

  v80 = outlined destroy of CharacterSet?(v293, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  (v38)(&v267, v80);
  v278[8] = v275;
  v278[9] = v276;
  v279[0] = v277[0];
  *(v279 + 9) = *(v277 + 9);
  v278[4] = v271;
  v278[5] = v272;
  v278[6] = v273;
  v278[7] = v274;
  v278[0] = v267;
  v278[1] = v268;
  v278[2] = v269;
  v278[3] = v270;
  v280[8] = v275;
  v280[9] = v276;
  v281[0] = v277[0];
  *(v281 + 9) = *(v277 + 9);
  v280[4] = v271;
  v280[5] = v272;
  v280[6] = v273;
  v280[7] = v274;
  v280[0] = v267;
  v280[1] = v268;
  v280[2] = v269;
  v280[3] = v270;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v280);
  if (result == 1)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v81 = outlined destroy of CharacterSet?(v278, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v246 = (*((*MEMORY[0x277D85000] & *v2) + 0x670))(v81);
  v82 = (v258)();
  v83 = v234;
  v84 = v229;
  v85 = v256;
  if (v82)
  {
    v86 = v82;
    v87 = [v82 layoutDirection];

    v227 = v87 == 1;
  }

  else
  {
    v227 = 0;
  }

  v88 = *(&v280[0] + 1);
  *v83 = v85;
  outlined init with copy of DOCGridLayout.Spec?(v251, v250, &_s10Foundation8IndexSetVSgMd);
  v89 = v83 + *(v233 + 20);
  v266 = 0x3FF0000000000000;
  v90 = v85;
  outlined copy of DOCFastLabel.AttachmentRenderer?(v248, v242, v247, v241, v249);
  v91 = v231;
  v92 = v232;
  outlined copy of DOCFastLabel.AttachmentRenderer?(v53, v230, v84, 0, v232);
  [v246 getRed:0 green:0 blue:0 alpha:&v266];
  v93 = v266;
  v215 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  v216 = v89;
  *&v89[*(v215 + 48)] = v93;
  v245 = 0u;
  v94 = 0.0;
  if (v92)
  {

    UICeilToScale();
    v240 = v95;
    UICeilToScale();
    v259 = v96;
    UIPointRoundToScale();
    *&v97 = v240;
    v99 = *&v240 + *&v98;
    *(&v98 + 1) = v100;
    v214 = v98;
    *(&v97 + 1) = v259;
    v240 = v97;
    v213 = v91;
  }

  else
  {
    v213 = 0;
    v99 = 0.0;
    v240 = 0uLL;
    v214 = 0uLL;
  }

  v225 = v53;
  if (v249)
  {
    v101 = v243;

    UICeilToScale();
    v245 = v102;
    UICeilToScale();
    v259 = v103;
    UIPointRoundToScale();
    *&v104 = v245;
    v94 = *&v245 + *&v105;
    *(&v105 + 1) = v106;
    v212 = v105;
    *(&v104 + 1) = v259;
    v245 = v104;
    v211 = v101;
  }

  else
  {
    v211 = 0;
    v212 = 0u;
  }

  UICeilToScale();
  v108 = v107;
  v109 = [v246 colorWithAlphaComponent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_249B9FA70;
  v111 = *MEMORY[0x277D740A8];
  *(v110 + 32) = *MEMORY[0x277D740A8];
  v112 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
  *(v110 + 40) = v90;
  v113 = *MEMORY[0x277D740C0];
  *(v110 + 64) = v112;
  *(v110 + 72) = v113;
  *(v110 + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  *(v110 + 80) = v109;
  v226 = v90;
  v114 = v111;
  v115 = v113;
  v116 = v109;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v110);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v117 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v118 = MEMORY[0x24C1FAD20](v223, v228);
  type metadata accessor for NSAttributedStringKey(0);
  v120 = v119;
  v253 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v254 = v120;
  v121 = Dictionary._bridgeToObjectiveC()().super.isa;

  v122 = [v117 initWithString:v118 attributes:v121];

  v217 = v122;
  v210 = v116;
  v123.super.isa = applyHighlighting(to:indexSet:color:)(v122, v250, v116).super.isa;
  v124 = CTTypesetterCreateWithAttributedString(v123.super.isa);
  v125 = MEMORY[0x277D84F90];
  v260 = MEMORY[0x277D84F90];
  v126 = [(objc_class *)v123.super.isa length];
  v127 = 0;
  *&v259 = v88 - 1;
  v244 = xmmword_249B9A480;
  v128 = v125;
  v256 = v126;
  v257 = v123.super.isa;
  v255 = v88;
  v252 = v124;
  while (v127 < v126)
  {
    if (v128 >> 62)
    {
      if (__CocoaSet.count.getter() >= v88)
      {
        break;
      }

      v130 = __CocoaSet.count.getter() == v259;
      if (v127)
      {
LABEL_39:
        v131 = v108;
        if (!v130)
        {
          goto LABEL_49;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v129 >= v88)
      {
        break;
      }

      v130 = v129 == v259;
      if (v127)
      {
        goto LABEL_39;
      }
    }

    v131 = v108 - v99;
    if (!v130)
    {
LABEL_49:
      v149 = CTTypesetterSuggestLineBreak(v124, v127, v131);
      if (__OFADD__(v127, v149))
      {
        goto LABEL_81;
      }

      v144 = v149;
      if (v127 + v149 >= v126)
      {
        v144 = CTTypesetterSuggestLineBreak(v124, v127, v131 - v94);
      }

      v312.location = v127;
      v312.length = v144;
      Line = CTTypesetterCreateLine(v124, v312);
      goto LABEL_53;
    }

LABEL_40:
    v311.location = v127;
    v311.length = 0;
    v258 = CTTypesetterCreateLine(v124, v311);
    if (one-time initialization token for horizontalEllipsis != -1)
    {
      swift_once();
    }

    v132 = (*((*MEMORY[0x277D85000] & *static DOCUnicode.horizontalEllipsis) + 0x58))();
    v134 = v133;
    v135 = [(objc_class *)v123.super.isa attributesAtIndex:0 effectiveRange:0];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v136 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v137 = MEMORY[0x24C1FAD20](v132, v134);

    v138 = Dictionary._bridgeToObjectiveC()().super.isa;

    v139 = [v136 initWithString:v137 attributes:v138];

    v140 = CTLineCreateWithAttributedString(v139);
    Line = v258;
    TruncatedLine = CTLineCreateTruncatedLine(v258, v131 - v94, kCTLineTruncationMiddle, v140);
    if (TruncatedLine)
    {
      v143 = TruncatedLine;

      v144 = 0;
      Line = v143;
      v123.super.isa = v257;
    }

    else
    {
      v145 = DOCUILogHandle();
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v146 = swift_allocObject();
      *(v146 + 16) = v244;
      *(v146 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
      *(v146 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
      v147 = v257;
      *(v146 + 32) = v257;
      v148 = v147;
      os_log(_:dso:log:type:_:)();

      v144 = 0;
      v123.super.isa = v147;
    }

    v88 = v255;
    v126 = v256;
    v125 = MEMORY[0x277D84F90];
    v124 = v252;
LABEL_53:
    v150 = Line;
    MEMORY[0x24C1FB090]();
    if (*((v260 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v126 = v256;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v128 = v260;
    v151 = __OFADD__(v127, v144);
    v127 += v144;
    if (v151)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v88 = v226;
  specialized static DOCFastLabel.TextDrawInformation.lineMetrics(for:font:leadingAttachmentOffset:trailingAttachmentOffset:layoutDirection:scale:)(v128, v226, v99, v94);
  v127 = v152;
  v94 = v153;
  v154 = *(MEMORY[0x277D768C8] + 8);
  v155 = *(MEMORY[0x277D768C8] + 16);
  v156 = *(MEMORY[0x277D768C8] + 24);
  v265 = *MEMORY[0x277D768C8];
  v264 = v154;
  v262 = v156;
  v263 = v155;
  if (one-time initialization token for charsWithSpecialOutset == -1)
  {
    goto LABEL_59;
  }

LABEL_82:
  swift_once();
LABEL_59:
  v157 = __swift_project_value_buffer(v235, static DOCFastLabel.TextDrawInformation.charsWithSpecialOutset);
  v158 = v236;
  outlined init with copy of DOCGridLayout.Spec?(v157, v236, &_s10Foundation12CharacterSetVSgMd);
  v160 = v237;
  v159 = v238;
  if ((*(v237 + 48))(v158, 1, v238) == 1)
  {

    outlined destroy of CharacterSet?(v158, &_s10Foundation12CharacterSetVSgMd);
    v161 = DOCUILogHandle();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();

    v162 = v225;
  }

  else
  {
    v163 = v224;
    (*(v160 + 32))(v224, v158, v159);
    v260 = v223;
    v261 = v228;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v165 = v164;
    (*(v160 + 8))(v163, v159);

    v162 = v225;
    if ((v165 & 1) == 0)
    {
      CTFontGetLanguageAwareOutsets();
      v264 = -v264;
      v265 = -v265;
      v262 = -v262;
      v263 = -v263;
    }
  }

  v166 = *(v127 + 16);
  *&v259 = v127;
  if (v166)
  {
    v260 = v125;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v166, 0);
    v125 = v260;
    v167 = v127 + 56;
    do
    {
      Height = CGRectGetHeight(*(v167 - 24));
      v260 = v125;
      v170 = *(v125 + 16);
      v169 = *(v125 + 24);
      v171 = v170 + 1;
      if (v170 >= v169 >> 1)
      {
        v172 = Height;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v169 > 1), v170 + 1, 1);
        Height = v172;
        v125 = v260;
      }

      *(v125 + 16) = v171;
      *(v125 + 8 * v170 + 32) = Height;
      v167 += 32;
      --v166;
    }

    while (v166);
    v162 = v225;
LABEL_70:
    v173 = v217;
    if (v171 <= 3)
    {
      v174 = 0;
      v175 = 0.0;
      goto LABEL_75;
    }

    v174 = v171 & 0xFFFFFFFFFFFFFFFCLL;
    v176 = (v125 + 48);
    v175 = 0.0;
    v177 = v171 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v175 = v175 + *(v176 - 2) + *(v176 - 1) + *v176 + v176[1];
      v176 += 4;
      v177 -= 4;
    }

    while (v177);
    if (v171 != v174)
    {
LABEL_75:
      v178 = v171 - v174;
      v179 = 8 * v174 + 32;
      do
      {
        v175 = v175 + *(v125 + v179);
        v179 += 8;
        --v178;
      }

      while (v178);
    }
  }

  else
  {
    v171 = *(v125 + 16);
    if (v171)
    {
      goto LABEL_70;
    }

    v175 = 0.0;
    v173 = v217;
  }

  UIEdgeInsetsInsetRect(0.0, 0.0, v94, v175, v265, v264);
  UIRectIntegralWithScale();
  v181 = v180;
  v183 = v182;
  v185 = v184;
  v187 = v186;

  v189 = v241;
  v188 = v242;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v248, v242, v247, v241, v249);
  v190 = v162;
  v191 = v230;
  v192 = v162;
  v193 = v229;
  v194 = v232;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v190, v230, v229, 0, v232);
  v195 = v193;
  v196 = v194;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v192, v191, v195, 0, v194);
  v197 = v188;
  v198 = v249;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v248, v197, v247, v189, v249);
  outlined destroy of CharacterSet?(v251, &_s10Foundation8IndexSetVSgMd);
  v200 = v215;
  v199 = v216;
  outlined init with take of (key: URL, value: FPItem)(v250, &v216[*(v215 + 36)], &_s10Foundation8IndexSetVSgMd);
  *v199 = 0;
  *(v199 + 1) = 0;
  *(v199 + 2) = v94;
  *(v199 + 3) = v175;
  *(v199 + 4) = v181;
  *(v199 + 5) = v183;
  *(v199 + 6) = v185;
  *(v199 + 7) = v187;
  v201 = v259;
  *(v199 + 9) = v128;
  *(v199 + 10) = v201;
  *&v199[v200[13]] = v227;
  v202 = &v199[v200[10]];
  *(v202 + 1) = v214;
  *v202 = v240;
  v203 = v213;
  *(v202 + 4) = v196;
  *(v202 + 5) = v203;
  v204 = &v199[v200[11]];
  *(v204 + 1) = v212;
  *v204 = v245;
  v205 = v211;
  *(v204 + 4) = v198;
  *(v204 + 5) = v205;
  *(v199 + 8) = v257;
  v207 = v233;
  v206 = v234;
  (*(v239 + 56))(v234, 0, 1, v233);
  v208 = v221;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v206, v208, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  swift_endAccess();
  v209 = v222;
  outlined init with copy of DOCGridLayout.Spec?(v208, v222, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  result = v219(v209, 1, v207);
  if (result == 1)
  {
    goto LABEL_86;
  }

  v35 = v209;
  v36 = v218;
  return outlined init with take of DOCFastLabel.LabelInformation(v35, v36);
}

void closure #1 in DOCItemCollectionCellContent.titleWithTags.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() shared];
  v8 = [v3 renderImageWithRequest_];

  v4 = [v8 CGImage];
  if (v4)
  {
    v5 = v4;
    [v8 size];
    v10.size.width = v6;
    v10.size.height = v7;
    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    CGContextRef.draw(_:in:byTiling:)(v5, v10, 0);
  }
}

void closure #2 in DOCItemCollectionCellContent.titleWithTags.getter(CGContext *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a3 CGImage];
    if (v7)
    {
      v8 = v7;
      [a3 size];
      v10 = v9;
      v12 = v11;
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v15.size.width = v10;
      v15.size.height = v12;
      CGContextRef.draw(_:in:byTiling:)(v8, v15, 0);
      CGContextSetBlendMode(a1, kCGBlendModeSourceIn);
      v13 = (*((*MEMORY[0x277D85000] & *v6) + 0x688))();
      v14 = [v13 CGColor];

      CGContextSetFillColorWithColor(a1, v14);
      v16.origin.x = 0.0;
      v16.origin.y = 0.0;
      v16.size.width = v10;
      v16.size.height = v12;
      CGContextFillRect(a1, v16);
    }
  }
}

void DOCItemCollectionCellContent.titleWithIconAndTags.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
  if (v2)
  {
    goto LABEL_31;
  }

  v3 = v0;
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x2F0))(v93);
  v94[4] = v93[4];
  v94[5] = v93[5];
  v94[6] = v93[6];
  v94[7] = v93[7];
  v94[0] = v93[0];
  v94[1] = v93[1];
  v94[2] = v93[2];
  v94[3] = v93[3];
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v94) == 1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = *&v94[0];
  v6 = outlined destroy of CharacterSet?(v93, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  if ((*((*v4 & *v0) + 0x3D0))(v6))
  {
    v7 = swift_unknownObjectRelease();
    v8 = (*((*v4 & *v0) + 0xA80))(v7);
    if (v8)
    {
      v88 = v1;
      v9 = [v8 thumbnail];
      swift_unknownObjectRelease();
      v10 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
      [v9 size];
      v12 = v11;
      [v9 size];
      v14 = v12 / v13;
      [v5 lineHeight];
      v16 = v15;
      [v5 descender];
      v89 = v9;
      v91 = v10;
      if ((*((*v4 & *v0) + 0x940))([v10 setBounds_]))
      {
        v18 = [objc_allocWithZone(MEMORY[0x277D06368]) initWithImage_];
        [v18 setAddDecoration_];
        v19 = v18;
        [v10 bounds];
        [v19 setFrame_];

        v20 = v19;
        [v10 bounds];
        [v20 setFittingSize_];

        [v20 bounds];
        v95.width = v23;
        v95.height = v24;
        UIGraphicsBeginImageContextWithOptions(v95, 0, 0.0);
        v25 = UIGraphicsGetCurrentContext();
        if (v25)
        {
          v26 = v25;
          v27 = [v20 layer];
          [v27 renderInContext_];
        }

        v28 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [v10 setImage_];
      }

      else
      {
        [v10 setImage_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9FA70;
      v35 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v36 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
      *(inited + 40) = v5;
      v37 = *MEMORY[0x277D740C0];
      *(inited + 64) = v36;
      *(inited + 72) = v37;
      v38 = *((*v4 & *v3) + 0x670);
      v90 = v5;
      v39 = v5;
      v40 = v35;
      v41 = v38(v37);
      *(inited + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      *(inited + 80) = v41;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
      swift_arrayDestroy();
      v42 = DOCItemCollectionCellContent.attributedStringAttachmentDimension(forTitleFont:)(v39);
      v43 = (*((*v4 & *v3) + 0x7E0))();
      v44 = *((*v4 & *v3) + 0x640);
      v45 = (v44)(v43);
      v47 = v46;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v49 = MEMORY[0x24C1FAD20](v45, v47);

      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      v50 = Dictionary._bridgeToObjectiveC()().super.isa;
      v51 = [objc_opt_self() requestForChainedTags:isa tagDimension:v49 text:v50 textAttributes:v42];

      if (v51)
      {

        [v51 setTagToTitleSpacing_];
        [v51 setTagBaselineAdjustment_];
        v52 = MEMORY[0x277D85000];
        v53 = *((*MEMORY[0x277D85000] & *v3) + 0x368);
        v54 = v51;
        v55 = v53();
        if (v55)
        {
          v56 = v55;
          v57 = [v55 layoutDirection];

          v58 = v57 == 1;
        }

        else
        {
          v58 = 0;
        }

        [v54 setLayoutDirection_];

        v64.super.isa = [objc_opt_self() shared];
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = partial apply for closure #1 in DOCItemCollectionCellContent.titleWithIconAndTags.getter;
        aBlock[5] = v66;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
        aBlock[3] = &block_descriptor_128;
        v67 = _Block_copy(aBlock);

        v65 = [(objc_class *)v64.super.isa renderAttributedStringWithRequest:v54 titleHighlighter:v67];

        _Block_release(v67);
      }

      else
      {
        v59 = v44();
        v61 = v60;
        v62 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v63 = MEMORY[0x24C1FAD20](v59, v61);

        v64.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v65 = [v62 initWithString:v63 attributes:v64.super.isa];

        v52 = MEMORY[0x277D85000];
      }

      v68 = objc_opt_self();
      v31 = v65;
      v69 = [v68 attributedStringWithAttachment_];
      v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
      if (one-time initialization token for nonBreakingSpace_zeroWidth != -1)
      {
        swift_once();
      }

      v70 = static DOCUnicode.nonBreakingSpace_zeroWidth;
      v71 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v72 = (*((*v52 & *v70) + 0x58))();
      v73 = MEMORY[0x24C1FAD20](v72);

      v74 = [v71 initWithString_];

      [v33 appendAttributedString_];
      [v33 appendAttributedString_];
      if (one-time initialization token for nonBreakingSpace != -1)
      {
        swift_once();
      }

      v75 = static DOCUnicode.nonBreakingSpace;
      v76 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v77 = (*((*v52 & *v75) + 0x58))();
      v78 = MEMORY[0x24C1FAD20](v77);

      v79 = [v76 initWithString_];

      [v33 appendAttributedString_];
      v80 = [v31 wrappedInDirectionalIsolation_];

      [v33 appendAttributedString_];
      v81 = (*((*v52 & *v3) + 0x368))();
      if (v81 && (v82 = v81, v83 = [v81 layoutDirection], v82, v83 == 1))
      {
        v84 = 2;
      }

      else
      {
        v84 = 1;
      }

      v5 = v90;
      [v33 wrapInDirectionalIsolation_];

      v1 = v88;
      goto LABEL_29;
    }
  }

  v29 = (*((*v4 & *v0) + 0x320))();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 collectionCreateButtonTitle];

    if (!v31)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = MEMORY[0x24C1FAD20](v32);
    }

    v33 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
LABEL_29:

    v85 = *(v3 + v1);
    *(v3 + v1) = v33;

    v86 = *(v3 + v1);
    if (v86)
    {
      v86;

      v2 = 0;
LABEL_31:
      v87 = v2;
      return;
    }

    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
}

id closure #1 in DOCItemCollectionCellContent.titleWithIconAndTags.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  }

  v7 = Strong;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *Strong) + 0x4A8))();
  v10 = (*((*v8 & *v7) + 0x670))(v9);
  isa = applyHighlighting(to:indexSet:color:)(a1, v5, v10).super.isa;

  outlined destroy of CharacterSet?(v5, &_s10Foundation8IndexSetVSgMd);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  return v12;
}

double DOCItemCollectionCellContent.attributedTitleIconWidth(forTextHeight:)(double a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA80))();
  if (v3)
  {
    v4 = [v3 thumbnail];
    swift_unknownObjectRelease();
    [v4 size];
    v6 = v5;
    [v4 size];
    v8 = v7;

    return v6 / v8 * a1;
  }

  return a1;
}

uint64_t DOCItemCollectionCellContent.date.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date + 8))
  {
    goto LABEL_13;
  }

  v2 = v0;
  v3 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x3D0))())
  {
    goto LABEL_11;
  }

  v4 = (*((*v3 & *v0) + 0x368))();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_12;
  }

  v5 = v4;
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v19 = static UITraitCollection.Traits.hSizeClass;
  v20 = qword_27EEE9C60;
  if ((UITraitCollection.doc_hasSpecified(_:)(&v19) & 1) == 0)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
    [v9 BOOLForKey_];
    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  v6 = [v5 preferredContentSizeCategory];
  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 horizontalSizeClass];
  }

  result = (*((*v3 & *v2) + 0x380))();
  if (result == 2)
  {
    goto LABEL_23;
  }

  v15 = result;
  swift_getObjectType();
  v16 = DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)(v8, v15 & 1);
  v18 = v17;
  swift_unknownObjectRelease();

  if (v18)
  {
    v11 = v16;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v18)
  {
    v12 = v18;
  }

LABEL_12:
  *v1 = v11;
  v1[1] = v12;

  if (v1[1])
  {
LABEL_13:
    v14 = *v1;

    return v14;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionCellContent.size.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock);
  [v2 lock];
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
  countAndFlagsBits = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
  v5 = v3[1];

  v6 = [v2 unlock];
  if (!v5)
  {
    v7 = MEMORY[0x277D85000];
    v8 = *((*MEMORY[0x277D85000] & *v1) + 0x3D0);
    v9 = (v8)(v6);
    if (v9)
    {
      ObjectType = swift_getObjectType();
      DOCNode.debugUIScenario.getter(ObjectType, v22);
      v9 = swift_unknownObjectRelease();
      if (v22[0] != 1)
      {
        if (v22[7])
        {
          v11 = v22[9];
          v9 = outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
          if (v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
        }
      }
    }

    v12 = (*((*v7 & *v1) + 0x800))(v9);
    v13 = v8();
    v14 = v13;
    if (v12)
    {
      if (v13)
      {
        swift_getObjectType();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();

        countAndFlagsBits = DOCNode.cachedLocalizedChildItemCountDescription(fetchIfStale:completionHandler:)(1, partial apply for closure #2 in DOCItemCollectionCellContent.size.getter, v15);
        object = v16;

        if (!object)
        {
          v18 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
          countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          object = v19;
          swift_unknownObjectRelease();

LABEL_18:
          [v2 lock];
          *v3 = countAndFlagsBits;
          v3[1] = object;

          [v2 unlock];
          return countAndFlagsBits;
        }

LABEL_17:
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    else if (v13)
    {
      swift_getObjectType();
      if (([v14 isExternalDownloadPlaceholder] & 1) == 0)
      {
        v20 = DOCNode.localizedSizeDescription()();
        countAndFlagsBits = v20._countAndFlagsBits;
        object = v20._object;
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

LABEL_15:
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_18;
  }

  return countAndFlagsBits;
}

uint64_t closure #2 in DOCItemCollectionCellContent.size.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(result + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock);
    v22 = v9;
    v17 = v16;
    [v16 lock];
    v18 = &v15[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size];
    *v18 = a1;
    *(v18 + 1) = a2;

    [v17 unlock];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #2 in closure #2 in DOCItemCollectionCellContent.size.getter;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_283_0;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v13, v8, v21);
    _Block_release(v21);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v22);
  }

  return result;
}

void closure #2 in closure #2 in DOCItemCollectionCellContent.size.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x2D0))(v6);
    if ((*v3 & 0x80) == 0)
    {
      *v3 |= 0x80uLL;
    }

    v5 = v4(v6, 0);
    (*((*v2 & *v1) + 0xBB0))(v5);
  }
}

uint64_t DOCItemCollectionCellContent.kind.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  v5 = MEMORY[0x28223BE20](v1, v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__kind);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__kind + 8))
  {
    goto LABEL_11;
  }

  v9 = v4;
  v10 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))(v5);
  v11 = 0xE000000000000000;
  if (v10)
  {
    v12 = [v10 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = UTType.localizedDescription.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    (*(v2 + 8))(v7, v9);
    v16 = v15 ? v13 : 0;
    if (v15)
    {
      v11 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  *v8 = v16;
  v8[1] = v11;

  if (v8[1])
  {
LABEL_11:
    v18 = *v8;

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOCItemCollectionCellContent.statusText.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  if (result)
  {
    v4 = result;
    if ([result isExcludedFromSync] && !objc_msgSend(v4, sel_isExternalDownloadPlaceholder))
    {
      goto LABEL_74;
    }

    v5 = [v4 downloadingError];
    if (v5)
    {

      v6 = (*((*v2 & *v0) + 0x368))();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 horizontalSizeClass];

        if (v8 == 1)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v9 = result;
            v116 = 0x8000000249BF3930;
            v10 = 0x617A696C61636F4CLL;
            v11 = 0xEB00000000656C62;
            v12 = 0x6F727245209386E2;
            v13 = 0xD00000000000003ALL;
LABEL_16:
            v14 = 0xA900000000000072;
            goto LABEL_19;
          }

          goto LABEL_122;
        }
      }

      result = _DocumentManagerBundle();
      if (result)
      {
        v9 = result;
        v116 = 0x8000000249BF38F0;
        v12 = 0x64616F6C6E776F44;
        v14 = 0xEE00726F72724520;
        v10 = 0x617A696C61636F4CLL;
        v11 = 0xEB00000000656C62;
        v13 = 0xD000000000000030;
LABEL_19:
        v19.super.isa = v9;
        v20 = 0;
        v21 = 0xE000000000000000;
LABEL_20:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, *&v10, v19, *&v20, *&v13)._countAndFlagsBits;

        v23 = [v4 isDownloading];
        goto LABEL_21;
      }

LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v15 = [v4 uploadingError];
    if (v15)
    {

      v16 = (*((*v2 & *v0) + 0x368))();
      if (v16)
      {
        v17 = v16;
        v18 = [v16 horizontalSizeClass];

        if (v18 == 1)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v9 = result;
            v116 = 0x8000000249BF38B0;
            v12 = 0x6F727245209186E2;
            v10 = 0x617A696C61636F4CLL;
            v11 = 0xEB00000000656C62;
            v13 = 0xD000000000000038;
            goto LABEL_16;
          }

          goto LABEL_124;
        }
      }

      result = _DocumentManagerBundle();
      if (result)
      {
        v9 = result;
        v116 = 0x8000000249BF3880;
        v12 = 0x452064616F6C7055;
        v14 = 0xEC000000726F7272;
        v10 = 0x617A696C61636F4CLL;
        v11 = 0xEB00000000656C62;
        v13 = 0xD00000000000002ELL;
        goto LABEL_19;
      }

LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (([v4 isUploaded] & 1) == 0 && (objc_msgSend(v4, sel_isActionable) & 1) == 0 && (objc_msgSend(v4, sel_isExternalDownloadPlaceholder) & 1) == 0)
    {
      v26 = [v4 providerID];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
      {
        v32 = 1;
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v33)
      {
        v35 = 1;
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v36)
      {
      }

      else
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (((v32 | v35) & 1) == 0 && (v69 & 1) == 0)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v9 = result;
            v116 = 0x8000000249BF3680;
            v12 = 0x6F6C705520746F4ELL;
            v14 = 0xEC00000064656461;
            v10 = 0x617A696C61636F4CLL;
            v11 = 0xEB00000000656C62;
            v19.super.isa = v9;
            v20 = 0;
            v21 = 0xE000000000000000;
            v13 = 0xD000000000000029;
            goto LABEL_20;
          }

          goto LABEL_128;
        }
      }
    }

    v37 = [v4 downloadingProgress];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 doc_isPending];

      if ([v4 isDownloading])
      {
        v40 = v39 == 0;
      }

      else
      {
        v40 = 1;
      }

      if (!v40)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v41 = result;
          v118._object = 0x8000000249BF3830;
          v42._object = 0xAE00A680E2676E69;
          v43.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v43.value._object = 0xEB00000000656C62;
          v42._countAndFlagsBits = 0x74696157209386E2;
          v118._countAndFlagsBits = 0x1000000000000046;
          v44._countAndFlagsBits = 0;
          v44._object = 0xE000000000000000;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v118)._countAndFlagsBits;

          v23 = [v4 isDownloading];
LABEL_21:
          if (v23)
          {
LABEL_22:
            swift_unknownObjectRelease();
            return countAndFlagsBits;
          }

LABEL_23:
          v24 = [v4 isUploading];
          swift_unknownObjectRelease();
          if ((v24 & 1) == 0)
          {
            v25 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
            *v25 = 0;
            v25[8] = 1;
          }

          return countAndFlagsBits;
        }

        goto LABEL_125;
      }
    }

    else
    {
      [v4 isDownloading];
    }

    v45 = [v4 uploadingProgress];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 doc_isPending];

      if ([v4 isUploading] && v47)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v48 = result;
          v119._object = 0x8000000249BF37E0;
          v49._countAndFlagsBits = 0x74696157209186E2;
          v49._object = 0xAE00A680E2676E69;
          v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v50.value._object = 0xEB00000000656C62;
          v119._countAndFlagsBits = 0x1000000000000044;
          v51._countAndFlagsBits = 0;
          v51._object = 0xE000000000000000;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v119)._countAndFlagsBits;

          if ([v4 isDownloading])
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        goto LABEL_126;
      }
    }

    else
    {
      [v4 isUploading];
    }

    if (![v4 isExternalDownloadPlaceholder] || (v52 = objc_msgSend(v4, sel_downloadingProgress)) == 0)
    {
LABEL_63:
      v54 = [v4 fileSize];
      if (!v54)
      {
        goto LABEL_73;
      }

      v55 = v54;
      v56 = [v54 longLongValue];

      if (v56 < 1)
      {
        goto LABEL_73;
      }

      if (![v4 isDownloading] || (v57 = objc_msgSend(v4, sel_downloadingProgress)) == 0)
      {
LABEL_69:
        if ([v4 isUploading])
        {
          v59 = [v4 uploadingProgress];
          if (v59)
          {
            v60 = v59;
            if ([v59 isFinished])
            {

              goto LABEL_73;
            }

            result = [v60 fractionCompleted];
            v103 = (1.0 - v102) * v56;
            if ((*&v103 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v103 > -9.22337204e18)
              {
                if (v103 < 9.22337204e18)
                {
                  v104 = DOCItemCollectionCellContent.displayablePartialProgress(for:fileSize:)(v103, v56);
                  v105 = [objc_opt_self() stringFromByteCount:v104 countStyle:0];
                  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v108 = v107;

                  result = _DocumentManagerBundle();
                  if (!result)
                  {
LABEL_132:
                    __break(1u);
                    return result;
                  }

                  v109 = result;
                  v110._countAndFlagsBits = 0x4025209186E2;
                  v122._object = 0x8000000249BF36B0;
                  v111.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                  v111.value._object = 0xEB00000000656C62;
                  v122._countAndFlagsBits = 0x100000000000002BLL;
                  v110._object = 0xA600000000000000;
                  v112._countAndFlagsBits = 0;
                  v112._object = 0xE000000000000000;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v110, v111, v109, v112, v122);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                  v113 = swift_allocObject();
                  *(v113 + 16) = xmmword_249B9A480;
                  *(v113 + 56) = MEMORY[0x277D837D0];
                  *(v113 + 64) = lazy protocol witness table accessor for type String and conformance String();
                  *(v113 + 32) = v106;
                  *(v113 + 40) = v108;
                  v101 = static String.localizedStringWithFormat(_:_:)();

                  if ([v4 isDownloading])
                  {
LABEL_111:
                    swift_unknownObjectRelease();
                    return v101;
                  }

LABEL_112:
                  v114 = [v4 isUploading];
                  swift_unknownObjectRelease();
                  if ((v114 & 1) == 0)
                  {
                    v115 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
                    *v115 = 0;
                    v115[8] = 1;
                  }

                  return v101;
                }

LABEL_120:
                __break(1u);
                goto LABEL_121;
              }

LABEL_119:
              __break(1u);
              goto LABEL_120;
            }

LABEL_118:
            __break(1u);
            goto LABEL_119;
          }
        }

LABEL_73:
        if (![v4 isDownloading])
        {
          v61 = [v4 isUploading];
          swift_unknownObjectRelease();
          if ((v61 & 1) == 0)
          {
            result = 0;
            v62 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
            *v62 = 0;
            v62[8] = 1;
            return result;
          }

          return 0;
        }

LABEL_74:
        swift_unknownObjectRelease();
        return 0;
      }

      v58 = v57;
      if ([v57 isFinished])
      {

        goto LABEL_69;
      }

      result = [v58 fractionCompleted];
      v90 = (1.0 - v89) * v56;
      if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v90 > -9.22337204e18)
      {
        if (v90 < 9.22337204e18)
        {
          v91 = DOCItemCollectionCellContent.displayablePartialProgress(for:fileSize:)(v90, v56);
          v92 = [objc_opt_self() stringFromByteCount:v91 countStyle:0];
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v94;

          result = _DocumentManagerBundle();
          if (!result)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v96 = result;
          v121._object = 0x8000000249BF36E0;
          v97._countAndFlagsBits = 0x4025209386E2;
          v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v98.value._object = 0xEB00000000656C62;
          v121._countAndFlagsBits = 0x100000000000002DLL;
          v97._object = 0xA600000000000000;
          v99._countAndFlagsBits = 0;
          v99._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v96, v99, v121);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_249B9A480;
          *(v100 + 56) = MEMORY[0x277D837D0];
          *(v100 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v100 + 32) = v93;
          *(v100 + 40) = v95;
          v101 = static String.localizedStringWithFormat(_:_:)();

          if ([v4 isDownloading])
          {
            goto LABEL_111;
          }

          goto LABEL_112;
        }

        goto LABEL_117;
      }

      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v53 = v52;
    if ([v52 isFinished])
    {

      goto LABEL_63;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    [v53 fractionCompleted];
    v64.super.super.isa = NSNumber.init(floatLiteral:)(v63).super.super.isa;
    if (one-time initialization token for numberFormatter != -1)
    {
      swift_once();
    }

    v65 = [static DOCItemCollectionCellContent.numberFormatter stringFromNumber_];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v66 = result;
      v120._object = 0x8000000249BF3710;
      v120._countAndFlagsBits = 0x100000000000003ALL;
      v70._countAndFlagsBits = 4271950;
      v70._object = 0xE300000000000000;
      v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v71.value._object = 0xEB00000000656C62;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v66, v72, v120);
      object = v73._object;
      v67 = v73._countAndFlagsBits;
    }

    v74 = v67;
    v75 = object;

    v76 = (*((*v2 & *v1) + 0x368))();
    if (v76 && (v77 = v76, v78 = [v76 horizontalSizeClass], v77, v78 == 1))
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v79 = result;
      v117 = 0x8000000249BF37B0;
      v80 = 0x4025209386E2;
      v81 = 0x100000000000002ELL;
      v82 = 0xA600000000000000;
    }

    else
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v79 = result;
      v117 = 0x8000000249BF3770;
      v82 = 0x8000000249BF3750;
      v81 = 0x1000000000000038;
      v80 = 0x1000000000000011;
    }

    v83.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v83.value._object = 0xEB00000000656C62;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v80, v83, v79, v84, *&v81);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_249B9A480;
    *(v85 + 56) = MEMORY[0x277D837D0];
    *(v85 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v85 + 32) = v74;
    *(v85 + 40) = v75;
    v86 = String.init(format:_:)();

    if ([v4 isDownloading])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = [v4 isUploading];
      swift_unknownObjectRelease();
      if ((v87 & 1) == 0)
      {
        v88 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
        *v88 = 0;
        v88[8] = 1;
      }
    }

    return v86;
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.displayablePartialProgress(for:fileSize:)(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress + 8))
  {
    goto LABEL_9;
  }

  v4 = *v3;
  v5 = result - *v3;
  if (__OFSUB__(result, *v3))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 < 0)
  {
    v6 = __OFSUB__(0, v5);
    v5 = *v3 - result;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  v7 = a2 * 0.05;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v7 > -9.22337204e18)
  {
    if (v7 < 9.22337204e18)
    {
      if (v5 <= v7)
      {
        return v4;
      }

LABEL_9:
      *v3 = result;
      *(v3 + 8) = 0;
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionCellContent.share.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString + 8))
  {
    goto LABEL_16;
  }

  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x3D0);
  if (v3() && (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, v17), swift_unknownObjectRelease(), v17[0] != 1) && (v19 = v18, outlined init with copy of DOCGridLayout.Spec?(&v19, v15, &_sSSSgMd), outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd), *(&v19 + 1)))
  {
    v5 = v19;
  }

  else
  {
    if (v3())
    {
      v16 = 0;
      v6 = (*((*v2 & *v0) + 0x368))();
      v9 = 0;
      if (v6)
      {
        v7 = v6;
        v8 = [v6 horizontalSizeClass];

        if (v8 == 1)
        {
          v9 = 1;
        }
      }

      swift_getObjectType();
      v15[0] = v9;
      v10 = DOCNode.localizedSharingStatusDescription(type:options:)(&v16, v15);
      v12 = v11;
      swift_unknownObjectRelease();
      if (v12)
      {
        *v1 = v10;
        v1[1] = v12;
        goto LABEL_15;
      }
    }

    v5 = xmmword_249BA62B0;
  }

  *v1 = v5;
LABEL_15:

  if (v1[1])
  {
LABEL_16:
    v14 = *v1;

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionCellContent.tags.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags))
  {
  }

  v2 = v0;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x3D0);
  if (v3() && (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, &v11), swift_unknownObjectRelease(), v11 != 1))
  {
    v17 = v11;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v18 = v12;
    v19 = v13;
    v9 = DOCDebugUIScenario.tags.getter();
    outlined destroy of CharacterSet?(&v11, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
    *(v2 + v1) = v9;
  }

  else
  {
    v5 = v3();
    if (v5)
    {
      v6 = [v5 tags];
      v7 = DOCTagsFromFPTags();

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      *(v0 + v1) = v8;
    }

    else
    {
      *(v0 + v1) = MEMORY[0x277D84F90];
    }
  }

  result = *(v2 + v1);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionCellContent.isFolder.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D0))();
    if (v6)
    {
      v7 = [v6 *a2];
      swift_unknownObjectRelease();
      LOBYTE(v4) = v7;
    }

    else
    {
      v7 = 0;
      LOBYTE(v4) = 0;
    }

    *(v2 + v3) = v7;
  }

  return v4 & 1;
}

uint64_t DOCItemCollectionCellContent.sourceName.setter(uint64_t a1, uint64_t a2)
{
  if (String.count.getter() < 1)
  {

    a1 = 0;
    a2 = 0;
  }

  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t DOCItemCollectionCellContent.sourceName.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName);
  }

  else if ((*((*MEMORY[0x277D85000] & *v0) + 0x3D0))() && (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, v5), swift_unknownObjectRelease(), v5[0] != 1) && (v1 = v5[8], v3 = v5[9], , outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd), v3))
  {
  }

  else
  {

    return 0;
  }

  return v1;
}

void (*DOCItemCollectionCellContent.sourceName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName;
  *(v3 + 104) = v1;
  *(v3 + 112) = v5;
  v6 = (v1 + v5);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else if (!(*((*MEMORY[0x277D85000] & *v1) + 0x3D0))() || (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, v4), swift_unknownObjectRelease(), *v4 == 1) || (v7 = v4[8], v8 = v4[9], , outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd), !v8))
  {

    v7 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_11;
  }

LABEL_11:
  v4[11] = v7;
  v4[12] = v8;
  return DOCItemCollectionCellContent.sourceName.modify;
}

void DOCItemCollectionCellContent.sourceName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  if (a2)
  {

    if (String.count.getter() < 1)
    {

      v3 = 0;
      v4 = 0;
    }

    v5 = (v2[13] + v2[14]);
    *v5 = v3;
    v5[1] = v4;
  }

  else
  {
    if (String.count.getter() < 1)
    {

      v3 = 0;
      v4 = 0;
    }

    v6 = (v2[13] + v2[14]);
    *v6 = v3;
    v6[1] = v4;
  }

  free(v2);
}

uint64_t DOCItemCollectionCellContent.shouldShowItemStatusBadge.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemStatusBadge;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemStatusBadge);
  if (v2 == 2)
  {
    v3 = DOCItemCollectionCellContent.primaryBadgeItemDecoration.getter();
    v4 = v3;
    LOBYTE(v2) = v3 != 0;
    if (v3)
    {
    }

    *(v0 + v1) = v4 != 0;
  }

  return v2 & 1;
}

uint64_t DOCItemCollectionCellContent.shouldShowItemAccessStatusBadge.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemAccessStatusBadge;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemAccessStatusBadge);
  if (v2 == 2)
  {
    v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
    if (v3)
    {
      v4 = [v3 fpfs_fpItem];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = [v4 itemID];
        v6 = [v5 isPlaceholder];

        if ((v6 & 1) == 0)
        {
          if ([v4 isWritable])
          {
            v8 = [v4 isReadable];

            LOBYTE(v2) = v8 ^ 1;
          }

          else
          {

            LOBYTE(v2) = 1;
          }

          goto LABEL_7;
        }
      }
    }

    LOBYTE(v2) = 0;
LABEL_7:
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t DOCItemCollectionCellContent.disableProgressViews.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disableProgressViews;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.disableProgressViews.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disableProgressViews;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionCellContent.showGridCircularProgressView.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x898);
  if (v3())
  {
    v4 = 0;
LABEL_3:
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = v4;
    goto LABEL_8;
  }

  if ((*((*v2 & *v0) + 0x3D0))())
  {
    ObjectType = swift_getObjectType();
    DOCNode.debugUIScenario.getter(ObjectType, v17);
    swift_unknownObjectRelease();
    if (v17[0] != 1)
    {
      v18 = v17[10];
      outlined init with copy of DOCGridLayout.Spec?(&v18, v16, &_sSo10NSProgressCSgMd);
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
      if (v18)
      {
        v6 = [v18 isFinished];
        outlined destroy of CharacterSet?(&v18, &_sSo10NSProgressCSgMd);
        if ((v6 & 1) == 0)
        {
          v4 = 1;
          goto LABEL_3;
        }
      }
    }
  }

LABEL_8:
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView;
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView);
  if (v8 == 2)
  {
    v9 = (*((*v2 & *v1) + 0x3D0))();
    if (!v9)
    {
LABEL_20:
      LOBYTE(v8) = 0;
LABEL_21:
      *(v1 + v7) = v8;
      return v8 & 1;
    }

    v10 = v9;
    v11 = (*((*v2 & *v1) + 0x568))();
    if (v11)
    {
      v12 = v11;
      if ((v3() & 1) == 0)
      {
        if ([v12 isIndeterminate])
        {
        }

        else
        {
          v13 = [v12 isFinished];

          if (v13)
          {
            goto LABEL_19;
          }
        }

        swift_getObjectType();
        if (([v10 isExternalDownloadPlaceholder] & 1) == 0 && (DOCNode.doc_isAppContainerRoot.getter() & 1) == 0)
        {
          v15 = [v10 isTrashed];
          swift_unknownObjectRelease();
          LOBYTE(v8) = v15 ^ 1;
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  return v8 & 1;
}

uint64_t DOCItemCollectionCellContent.showHorizontalProgressView.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x898);
  if (v2())
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 0;
  }

  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView;
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView);
  if (v4 == 2)
  {
    v5 = (*((*v1 & *v0) + 0x3D0))();
    if (v5)
    {
      if ([v5 isExternalDownloadPlaceholder])
      {
        v6 = (*((*v1 & *v0) + 0x568))();
        if (v6)
        {
          v7 = v6;
          if ((v2() & 1) == 0)
          {
            if ([v7 isIndeterminate])
            {

              swift_unknownObjectRelease();
              LOBYTE(v4) = 1;
            }

            else
            {
              v9 = [v7 isFinished];

              swift_unknownObjectRelease();
              LOBYTE(v4) = v9 ^ 1;
            }

            goto LABEL_11;
          }
        }
      }

      swift_unknownObjectRelease();
    }

    LOBYTE(v4) = 0;
LABEL_11:
    *(v0 + v3) = v4;
  }

  return v4 & 1;
}

uint64_t DOCItemCollectionCellContent.shouldDim.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim);
  if (v2 == 2)
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x460))();
    if (v4 == 2 || (v4 & 1) == 0)
    {
      LOBYTE(v2) = (*((*v3 & *v0) + 0x4F0))();
      LOBYTE(v2) = (v2 != 2) ^ v2;
    }

    else
    {
      LOBYTE(v2) = (*((*v3 & *v0) + 0x490))();
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t DOCItemCollectionCellContent._shouldDimThumbnail.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDimThumbnail;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent._shouldDimThumbnail.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDimThumbnail;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionCellContent.shouldDimThumbnail.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x918);
  v3 = v2();
  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v4 = (*((*v1 & *v0) + 0x3D0))();
  if (v4)
  {
    v5 = v4;
    if (![v4 isActionable] || (objc_msgSend(v5, sel_isCopying) & 1) != 0)
    {
      goto LABEL_5;
    }

    if ([v5 isDownloading])
    {
      v9 = [v5 downloadingError];
      if (!v9)
      {
LABEL_5:
        v6 = 1;
LABEL_6:
        (*((*v1 & *v0) + 0x920))(v6);
        v3 = swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    v6 = (*((*v1 & *v0) + 0x538))();
    if (v6)
    {
      v10 = v6;
      v11 = [v6 isFinished];

      v6 = v11 ^ 1;
    }

    goto LABEL_6;
  }

  v7 = (*((*v1 & *v0) + 0x490))();
  v3 = (*((*v1 & *v0) + 0x920))(v7 & 1);
LABEL_8:
  result = (v2)(v3);
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

id DOCItemCollectionCellContent.hasGeneratedThumbnail.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA80))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ((*((*v1 & *v0) + 0x800))())
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isRepresentativeIcon];
  }

  swift_unknownObjectRelease();
  return v4;
}

id DOCItemCollectionCellContent._thumbnail.didset(id a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  result = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

LABEL_6:
    [a1 removeListener_];
    result = *(v1 + v3);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (result == a1)
  {
    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:

  return [result addListener_];
}

uint64_t DOCItemCollectionCellContent.imageCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_imageCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

__n128 DOCItemCollectionCellContent.neededThumbnailCreationProperties.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x3D0))();
  if (v4)
  {
    v5 = v4;
    v6 = (*((*v3 & *v1) + 0x368))();
    if (v6)
    {
      v7 = v6;
      (*((*v3 & *v1) + 0x2D8))(v14);
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v14) != 1)
      {
        v33 = v21;
        v34 = v22;
        v35[0] = v23[0];
        *(v35 + 9) = *(v23 + 9);
        v29 = v17;
        v30 = v18;
        v31 = v19;
        v32 = v20;
        v25 = v14[0];
        v26 = v14[1];
        v27 = v15;
        v28 = v16;
        *&v24 = v5;
        *(&v24 + 1) = v7;
        DOCGridLayout.specIconWidth.modify(*&v15, *&v16);
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  _sSo7DOCNode_p_So17UITraitCollectionC26DocumentManagerExecutables07DOCItemC12LayoutTraitsC08GridItemI0VtSgWOi0_(&v24);
LABEL_7:
  v8 = v35[0];
  *(a1 + 160) = v34;
  *(a1 + 176) = v8;
  *(a1 + 185) = *(v35 + 9);
  v9 = v31;
  *(a1 + 96) = v30;
  *(a1 + 112) = v9;
  v10 = v33;
  *(a1 + 128) = v32;
  *(a1 + 144) = v10;
  v11 = v27;
  *(a1 + 32) = v26;
  *(a1 + 48) = v11;
  v12 = v29;
  *(a1 + 64) = v28;
  *(a1 + 80) = v12;
  result = v25;
  *a1 = v24;
  *(a1 + 16) = result;
  return result;
}

id DOCItemCollectionCellContent.primaryItemStatusBadgeImage.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x978))(v12);
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v12) == 1)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  v2 = v12[1];
  v3 = DOCItemCollectionCellContent.primaryBadgeItemDecoration.getter();
  if (v3)
  {
    v4 = v3;
    v5 = *&v13[19];
    v6 = *&v13[20];
    v7 = [v3 imageType];
    if (!v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = MEMORY[0x24C1FAD20](v8);
    }

    v9 = objc_opt_self();
    [v2 displayScale];
    v1 = [v9 vendorBadgeDecorationForType:v7 size:1 scale:v5 prepare:{v6, v10}];
  }

  else
  {
    v1 = 0;
  }

  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);

  return v1;
}

uint64_t key path getter for DOCItemCollectionCellContent.DecorationImageObserver.image : DOCItemCollectionCellContent.DecorationImageObserver@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DOCItemCollectionCellContent.DecorationImageObserver.image : DOCItemCollectionCellContent.DecorationImageObserver(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *a1;
  return v3(v2);
}

void *DOCItemCollectionCellContent.DecorationImageObserver.image.getter()
{
  swift_getKeyPath();
  (*(*v0 + 192))();

  swift_beginAccess();
  v1 = v0[6];
  v2 = v1;
  return v1;
}

void DOCItemCollectionCellContent.DecorationImageObserver.image.setter(void *a1)
{
  swift_beginAccess();
  v3 = v1[6];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    (*(*v1 + 200))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIImage);
  v4 = v3;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[6];
LABEL_8:
  v1[6] = a1;
}

void closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.image.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void (*DOCItemCollectionCellContent.DecorationImageObserver.image.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 192))();

  v4[5] = OBJC_IVAR____TtCC26DocumentManagerExecutables28DOCItemCollectionCellContent23DecorationImageObserver___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type DOCItemCollectionCellContent.DecorationImageObserver and conformance DOCItemCollectionCellContent.DecorationImageObserver, type metadata accessor for DOCItemCollectionCellContent.DecorationImageObserver);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DOCInlineRenameController.proposedFileName.modify();
  return DOCItemCollectionCellContent.DecorationImageObserver.image.modify;
}

void DOCItemCollectionCellContent.DecorationImageObserver.image.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.__allocating_init(type:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  ObservationRegistrar.init()();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.init(type:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 48) = 0;
  ObservationRegistrar.init()();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

Swift::Void __swiftcall DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v12 - v5;
  v7 = (*(*v0 + 144))(v4);
  if (v7)
  {
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage(), v10);
  }
}

uint64_t closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v8 = (*(*a4 + 184) + **(*a4 + 184));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage();

  return v8();
}

uint64_t closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage(), v3, v2);
}

uint64_t closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()()
{
  v1 = v0[6];
  v2 = v0[2];

  (*(*v2 + 152))(v1);
  v3 = v0[1];

  return v3();
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.getImage()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCItemCollectionCellContent.DecorationImageObserver.getImage(), 0, 0);
}

{
  v1 = [objc_opt_self() itemAccessDecorationForType:*(*(v0 + 16) + 16) size:1 scale:*(*(v0 + 16) + 24) prepare:{*(*(v0 + 16) + 32), *(*(v0 + 16) + 40)}];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables28DOCItemCollectionCellContent23DecorationImageObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables28DOCItemCollectionCellContent23DecorationImageObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DOCItemCollectionCellContent.cachedItemDecorationAccessType.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType + 8) == 1)
  {
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v0) + 0x3D0))())
    {
      v3 = (*((*v2 & *v0) + 0xA60))();
      v5 = v4;
      swift_unknownObjectRelease();
      *v1 = v3;
      v1[8] = v5 & 1;
    }
  }

  return *v1;
}

uint64_t DOCItemCollectionCellContent.cachedDocCreationDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(__int128 *)@<X1>, uint64_t *a3@<X2>, SEL *a4@<X3>, unint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v37 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v35 - v22;
  v40 = v37;
  v39 = &v40;
  if (specialized Sequence.contains(where:)(a2, v38, a1))
  {
    v36 = v19;
    v37.n128_u64[0] = a5;
    v24 = *a3;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v6 + v24, v23, &_s10Foundation4DateVSgMd);
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v23, 1, v25);
    v28 = outlined destroy of CharacterSet?(v23, &_s10Foundation4DateVSgMd);
    if (v27 == 1)
    {
      v29 = (*((*MEMORY[0x277D85000] & *v6) + 0x3D0))(v28);
      if (v29)
      {
        v30 = [v29 *a4];
        swift_unknownObjectRelease();
        v31 = v36;
        if (v30)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        (*(v26 + 56))(v15, v32, 1, v25);
        outlined init with take of (key: URL, value: FPItem)(v15, v31, &_s10Foundation4DateVSgMd);
      }

      else
      {
        v31 = v36;
        (*(v26 + 56))(v36, 1, 1, v25);
      }

      swift_beginAccess();
      outlined assign with take of IndexPath?(v31, v6 + v24, &_s10Foundation4DateVSgMd);
      swift_endAccess();
    }

    return outlined init with copy of DOCGridLayout.Spec?(v6 + v24, v37.n128_i64[0], &_s10Foundation4DateVSgMd);
  }

  else
  {
    v33 = type metadata accessor for Date();
    return (*(*(v33 - 8) + 56))(a5, 1, 1, v33);
  }
}

Swift::String __swiftcall DOCItemCollectionCellContent.cachedSubtitle(for:)(Swift::OpaquePointer a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle + 8);
  if (!v4 || !*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes))
  {
    goto LABEL_5;
  }

  v5 = *v3;

  v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v6, a1._rawValue);

  if ((v7 & 1) == 0)
  {

LABEL_5:
    v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xAC8))(a1._rawValue);
    v4 = v8;
    *v3 = v5;
    v3[1] = v8;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = a1._rawValue;
  }

  v9 = v5;
  v10 = v4;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DOCItemCollectionCellContent.itemDecorationAccessType(for:)(void *a1)
{
  swift_getObjectType();
  if ([a1 isReadable])
  {
    return 0;
  }

  if ([a1 isWritable])
  {
    return 1;
  }

  if (DOCNode.isFINode.getter())
  {
    return 0;
  }

  if ([a1 isFullyFormed])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void *DOCItemCollectionCellContent.itemAccessObserver.getter()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x978))(v12);
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v12) == 1)
  {
    return 0;
  }

  v2 = v12[1];
  v3 = (*((*v1 & *v0) + 0xA30))();
  if (v4)
  {
    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
    swift_unknownObjectRelease();

    return 0;
  }

  v6 = v3;
  v7 = v13[19];
  v8 = v13[20];
  [v2 displayScale];
  v10 = v9;
  type metadata accessor for DOCItemCollectionCellContent.DecorationImageObserver(0);
  v11 = swift_allocObject();
  v11[6] = 0;
  ObservationRegistrar.init()();
  swift_unknownObjectRelease();

  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
  result = v11;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v10;
  return result;
}

id DOCItemCollectionCellContent.itemAccessStatusBadgeImage.getter()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x978))(v12);
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v12) == 1)
  {
    return 0;
  }

  v2 = v12[1];
  v3 = (*((*v1 & *v0) + 0xA30))();
  if (v4)
  {
    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
    swift_unknownObjectRelease();

    return 0;
  }

  v6 = v3;
  v7 = *&v13[19];
  v8 = *&v13[20];
  v9 = objc_opt_self();
  [v2 displayScale];
  v11 = [v9 itemAccessDecorationForType:v6 size:1 scale:v7 prepare:{v8, v10}];
  swift_unknownObjectRelease();

  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
  return v11;
}

void DOCItemCollectionCellContent.fetchThumbnailIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v29 - v4;
  v6 = type metadata accessor for ImageOptions();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = v29 - v14;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail))
  {
    return;
  }

  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))(v13);
  if (!v18)
  {
    return;
  }

  v32 = v18;
  v19 = (*((*v17 & *v0) + 0x960))();
  if (v19)
  {
    v31 = v19;
    v20 = (*((*v17 & *v0) + 0x460))();
    if (v20 == 2)
    {
      __break(1u);
    }

    else
    {
      if (v20)
      {
        swift_unknownObjectRelease();

        return;
      }

      v29[0] = v7;
      v21 = *((*v17 & *v0) + 0x2D8);
      v29[1] = (*v17 & *v0) + 728;
      v30 = v21;
      v21(v37);
      v39[8] = v37[8];
      v39[9] = v37[9];
      v40[0] = v38[0];
      *(v40 + 9) = *(v38 + 9);
      v39[4] = v37[4];
      v39[5] = v37[5];
      v39[6] = v37[6];
      v39[7] = v37[7];
      v39[0] = v37[0];
      v39[1] = v37[1];
      v39[2] = v37[2];
      v39[3] = v37[3];
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v39) != 1)
      {
        outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        v22 = [objc_opt_self() mainScreen];
        [v22 scale];

        v30(v33);
        v35[8] = v33[8];
        v35[9] = v33[9];
        v36[0] = v34[0];
        *(v36 + 9) = *(v34 + 9);
        v35[4] = v33[4];
        v35[5] = v33[5];
        v35[6] = v33[6];
        v35[7] = v33[7];
        v35[0] = v33[0];
        v35[1] = v33[1];
        v35[2] = v33[2];
        v35[3] = v33[3];
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v35) != 1)
        {
          outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
          v23 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_folderTintComponents;
          swift_beginAccess();
          outlined init with copy of DOCGridLayout.Spec?(v1 + v23, v5, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
          ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
          v24 = v29[0];
          (*(v29[0] + 16))(v10, v15, v6);
          v25 = objc_allocWithZone(type metadata accessor for NodeThumbnail());
          swift_unknownObjectRetain();

          v26 = NodeThumbnail.init(node:imageOptions:imageCache:)();
          v27 = *(v1 + v16);
          *(v1 + v16) = v26;
          v28 = v26;
          DOCItemCollectionCellContent._thumbnail.didset(v27);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v24 + 8))(v15, v6);
          return;
        }

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionCellContent.thumbnail.getter()
{
  DOCItemCollectionCellContent.fetchThumbnailIfNeeded()();

  return swift_unknownObjectRetain();
}

void DOCItemCollectionCellContent.statusAppearance.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance;
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance);
  if (v4 == 10)
  {
    v5 = v1;
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v1) + 0x3D0);
    if (!v7() || (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, &v20), swift_unknownObjectRelease(), v20 == 1))
    {
      v9 = v7();
      if (!v9)
      {
LABEL_8:
        LOBYTE(v4) = 2;
LABEL_26:
        *(v5 + v3) = v4;
        goto LABEL_27;
      }

      v7 = v9;
      swift_getObjectType();
      if ([v7 isExcludedFromSync] && objc_msgSend(v7, sel_isExternalDownloadPlaceholder))
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      if ([v7 isExcludedFromSync])
      {
        swift_unknownObjectRelease();
        LOBYTE(v4) = 4;
        goto LABEL_26;
      }

      goto LABEL_13;
    }

    v26 = v20;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v27 = v21;
    v28 = v22;
    DOCDebugUIScenario.statusAppearance.getter(&v19);
    outlined destroy of CharacterSet?(&v20, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
    v4 = v19;
    *(v1 + v3) = v19;
    if (v4 == 10)
    {
      __break(1u);
LABEL_13:
      v10 = (*((*v6 & *v1) + 0x538))();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 isFinished];

        if (!v12)
        {
          goto LABEL_16;
        }
      }

      if ([v7 isCopying])
      {
        goto LABEL_16;
      }

      if ([v7 isDownloading])
      {
        v13 = [v7 downloadingError];
        if (!v13)
        {
LABEL_16:
          swift_unknownObjectRelease();
          LOBYTE(v4) = 7;
          goto LABEL_26;
        }
      }

      if ([v7 isCloudItem] && (objc_msgSend(v7, sel_isDownloading) & 1) == 0 && (objc_msgSend(v7, sel_isExternalDownloadPlaceholder) & 1) == 0)
      {
        if (![v7 isDownloaded])
        {
          goto LABEL_50;
        }

        if (![v7 isFolder])
        {
          goto LABEL_23;
        }

        v16 = [v7 cachedDomain];
        if (!v16)
        {
          goto LABEL_23;
        }

        v17 = v16;
        if ([v16 isiCloudDriveProvider])
        {
          v18 = FPProviderDomain.shouldUseDSEnumeration.getter();

          if ((v18 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

        if (([v7 isRecursivelyDownloaded] & 1) == 0)
        {
LABEL_50:
          swift_unknownObjectRelease();
          LOBYTE(v4) = 1;
          goto LABEL_26;
        }
      }

LABEL_23:
      v14 = [v7 uploadingError];
      if (v14 || (v14 = [v7 downloadingError]) != 0)
      {
        v15 = v14;
        swift_unknownObjectRelease();

        LOBYTE(v4) = 3;
        goto LABEL_26;
      }

      if ([v7 isCloudItem] && objc_msgSend(v7, sel_isItemPinned) && (objc_msgSend(v7, sel_isExternalDownloadPlaceholder) & 1) == 0)
      {
        swift_unknownObjectRelease();
        LOBYTE(v4) = 9;
        goto LABEL_26;
      }

      if ([v7 isCloudItem] && (objc_msgSend(v7, sel_isUploaded) & 1) == 0 && (objc_msgSend(v7, sel_isExternalDownloadPlaceholder) & 1) == 0)
      {
        swift_unknownObjectRelease();
        LOBYTE(v4) = 5;
        goto LABEL_26;
      }

      DOCNode.collaborationType.getter(&v26);
      swift_unknownObjectRelease();
      if (v26 == 2)
      {
        LOBYTE(v4) = 8;
        goto LABEL_26;
      }

      if (v26 != 3)
      {
        if (v26)
        {
          LOBYTE(v4) = 6;
        }

        else
        {
          LOBYTE(v4) = 0;
        }

        goto LABEL_26;
      }

      goto LABEL_8;
    }
  }

LABEL_27:
  *a1 = v4;
}