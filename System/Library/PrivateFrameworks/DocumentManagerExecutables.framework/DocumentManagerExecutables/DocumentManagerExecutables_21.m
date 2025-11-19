uint64_t outlined init with take of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int DOCCollectionViewEditMode.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode()
{
  result = lazy protocol witness table cache variable for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode;
  if (!lazy protocol witness table cache variable for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode);
  }

  return result;
}

double static DOCStatusFooterView.insets(forDisplayMode:)(uint64_t a1)
{
  result = 40.0;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t DOCStatusFooterView.delegate.getter()
{
  return DOCStatusFooterView.delegate.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t (*DOCStatusFooterView.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

id DOCStatusFooterView.folderInformationLabel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel);
  }

  else
  {
    v4 = DOCStatusFooterView.createFolderInformationLabel()();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id DOCStatusFooterView.createFolderInformationLabel()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76968];
  v5 = [v0 traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];

  [v1 setFont_];
  [v1 setAdjustsFontForContentSizeCategory_];
  [v1 setNumberOfLines_];
  LODWORD(v7) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v7];
  return v1;
}

uint64_t DOCStatusFooterView.delegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DOCStatusFooterView.gestureDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

uint64_t key path setter for DOCStatusFooterView.folderNode : DOCStatusFooterView(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  swift_unknownObjectRetain();
  result = specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(v2, v5);
  if (result)
  {
    *(v3 + v4) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    DOCStatusFooterView.folderNode.didset(v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCStatusFooterView.folderNode.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  swift_unknownObjectRetain();
  result = specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(a1, v4);
  if (result)
  {
    *(v1 + v3) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    DOCStatusFooterView.folderNode.didset(v4);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOCStatusFooterView.folderNode.didset(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  result = swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v5 = DOCNode.isEqualTo(node:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = *(v1 + v3);
        if (v6)
        {
          v7 = [v6 isWritable];
          result = [a1 isWritable];
          if (result == v7)
          {
            return result;
          }
        }

        else
        {
          [a1 isWritable];
        }
      }
    }

    return DOCStatusFooterView.updateLabels()();
  }

  if (a1)
  {
    return DOCStatusFooterView.updateLabels()();
  }

  return result;
}

uint64_t DOCStatusFooterView.updateLabels()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
  DOCStatusFooterView.updateQuotaLabel()();
  DOCStatusFooterView.updateICloudQuotaWarningBanner()();
  DOCStatusFooterView.updateFolderInformationLabel()();
  DOCStatusFooterView.resetArrangedSubviews()();
  [v0 invalidateIntrinsicContentSize];
  [v0 setNeedsLayout];
  v3 = *&v0[v1];
  v4 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))((v2 != 0) ^ (v3 != 0), ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*DOCStatusFooterView.folderNode.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return DOCStatusFooterView.folderNode.modify;
}

void DOCStatusFooterView.folderNode.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*(*a1 + 32) + *(*a1 + 40));
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRetain();
    if (specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(v3, v4))
    {
      *(v2[4] + v2[5]) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      DOCStatusFooterView.folderNode.didset(v4);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v5 = swift_unknownObjectRetain();
  if ((specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(v5, v4) & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v2[4] + v2[5]) = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  DOCStatusFooterView.folderNode.didset(v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_6:
  swift_unknownObjectRelease();

  free(v2);
}

uint64_t DOCStatusFooterView.displayMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCStatusFooterView.displayMode.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  if (v5 != a1)
  {
    v6 = 40.0;
    if (!a1)
    {
      v6 = 0.0;
    }

    [v2 setDirectionalLayoutMargins_];
    DOCStatusFooterView.updateLabels()();
    if (v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] != 1)
    {
      v7 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
      if (v7)
      {
        v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 1;
        v8 = MEMORY[0x277D85000];
        v9 = *((*MEMORY[0x277D85000] & *v7) + 0xE8);
        v10 = v7;
        v9();
        v11 = *((*v8 & *v10) + 0xB8);
        v12 = swift_unknownObjectRetain();
        v11(v12, &protocol witness table for DOCStatusFooterView);
      }
    }
  }
}

void (*DOCStatusFooterView.displayMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCStatusFooterView.displayMode.modify;
}

void DOCStatusFooterView.displayMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    DOCStatusFooterView.displayMode.setter(v3);
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v6 != v3)
    {
      v7 = *(v2 + 32);
      v8 = 40.0;
      if (!v3)
      {
        v8 = 0.0;
      }

      [*(v2 + 32) setDirectionalLayoutMargins_];
      DOCStatusFooterView.updateLabels()();
      if ((*(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates) & 1) == 0)
      {
        v9 = *(*(v2 + 32) + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView);
        if (v9)
        {
          *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates) = 1;
          v10 = MEMORY[0x277D85000];
          v11 = *((*MEMORY[0x277D85000] & *v9) + 0xE8);
          v12 = v9;
          v11();
          v13 = *((*v10 & *v12) + 0xB8);
          v14 = swift_unknownObjectRetain();
          v13(v14, &protocol witness table for DOCStatusFooterView);
        }
      }
    }
  }

  free(v2);
}

id DOCStatusFooterView.wantsICloudQuotaBanner.getter()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x298))();

    if (v4)
    {
      return 0;
    }
  }

  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  if (*(v1 + v6) != 3 || (v7 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode, swift_beginAccess(), (result = *(v1 + v7)) != 0) && (result = [result isRootItem], result))
  {
    result = *(*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration) + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (result)
    {
      return [result isSyncStateMessagingSupported];
    }
  }

  return result;
}

uint64_t static DOCStatusFooterView.isValid(toCreateWithFolderNode:)(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ([a1 isFolder])
  {
    return 1;
  }

  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.fault.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249B9A480;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  os_log(_:dso:log:type:_:)();

  return 0;
}

char *DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)(uint64_t a1, void *a2, _OWORD *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView] = 0;
  swift_beginAccess();
  *&v3[v8] = a1;
  swift_unknownObjectWeakAssign();
  v9 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration];
  v10 = a3[3];
  v9[2] = a3[2];
  v9[3] = v10;
  v9[4] = a3[4];
  v11 = a3[1];
  *v9 = *a3;
  v9[1] = v11;
  v35.receiver = v3;
  v35.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setAxis_];
  [v12 setAlignment_];
  v13 = v12;
  [v13 setSpacing_];
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  v15 = 40.0;
  if (!*&v13[v14])
  {
    v15 = 0.0;
  }

  [v13 setDirectionalLayoutMargins_];

  [v13 setLayoutMarginsRelativeArrangement_];
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setNumberOfLines_];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];
  v18 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel];
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel] = v16;

  DOCStatusFooterView.updateQuotaLabelFont()();
  DOCStatusFooterView.updateFolderInformationLabel()();
  DOCStatusFooterView.updateLabels()();
  v19 = [objc_allocWithZone(MEMORY[0x277D753B8]) initWithDelegate_];
  [v13 addInteraction_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249B9A480;
  v21 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v22 = MEMORY[0x277D74DB8];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v23 = [v13 enclosingDocumentLandingMode];
  v24 = 1.0;
  if (v23 == 1)
  {
    v24 = 0.0;
  }

  [v13 setAlpha_];
  v29 = 0;
  LOBYTE(v30) = 1;
  UIView.registerForUIPDocumentLandingTraitChanges<A>(options:_:)(&v29, specialized closure #2 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:), 0, ObjectType);
  swift_unknownObjectRelease();
  v25 = [objc_opt_self() shared];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = partial apply for closure #3 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:);
  v34 = v26;
  v29 = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_30;
  v27 = _Block_copy(&v29);

  [v25 performAfterLaunch_];
  _Block_release(v27);

  swift_unknownObjectRelease();
  return v13;
}

Swift::Void __swiftcall DOCStatusFooterView.updateForChangedContentSizeCategory()()
{
  DOCStatusFooterView.updateQuotaLabelFont()();

  DOCStatusFooterView.updateFolderInformationLabel()();
}

void closure #3 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] & 1) == 0)
    {
      v1 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
      if (v1)
      {
        Strong[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 1;
        v2 = MEMORY[0x277D85000];
        v3 = *((*MEMORY[0x277D85000] & *v1) + 0xE8);
        v4 = Strong;
        v5 = v1;
        v3();
        v6 = *((*v2 & *v5) + 0xB8);
        v7 = swift_unknownObjectRetain();
        v6(v7, &protocol witness table for DOCStatusFooterView);

        Strong = v4;
      }
    }
  }
}

void DOCStatusFooterView.updateQuotaLabel()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel;
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel);
  if (v9)
  {
    v10 = [v9 text];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = *(v1 + v8);
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
      v14 = 0;
      v15 = *(v1 + v8);
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    v16 = v15;
    v17 = DOCStatusFooterView.quotaLabelText()();
    if (v18)
    {
      v19 = MEMORY[0x24C1FAD20](v17);
    }

    else
    {
      v19 = 0;
    }

    [v16 setText_];

    v20 = *(v1 + v8);
    if (v20)
    {
      v21 = [v20 text];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        if (v14)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

LABEL_15:
    v23 = 0;
    v25 = 0;
    if (v14)
    {
LABEL_16:
      if (v25)
      {
        if (v12 == v23 && v14 == v25)
        {

          return;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {
          return;
        }

LABEL_21:
        v26 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = *(v26 + 8);
          ObjectType = swift_getObjectType();
          (*(v27 + 8))(0, ObjectType, v27);
          swift_unknownObjectRelease();
        }

        return;
      }

LABEL_20:

      goto LABEL_21;
    }

LABEL_13:
    if (!v25)
    {
      return;
    }

    goto LABEL_20;
  }
}

void DOCStatusFooterView.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate);
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_nodeCollection);
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 24);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 56);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 72);

  swift_unknownObjectRelease();

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView);
}

id DOCStatusFooterView.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] == 1)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
    if (v3)
    {
      v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 0;
      v4 = MEMORY[0x277D85000];
      v5 = *((*MEMORY[0x277D85000] & *v3) + 0xF0);
      v6 = ObjectType;
      v7 = v3;
      v5();
      (*((*v4 & *v7) + 0xB8))(0, 0);

      ObjectType = v6;
    }
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

Swift::Void __swiftcall DOCStatusFooterView.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    DOCStatusFooterView.updateQuotaLabelFont()();
    DOCStatusFooterView.updateFolderInformationLabel()();
  }
}

void DOCStatusFooterView.updateQuotaLabelFont()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v30 = static UITraitCollection.Traits.sizeCategory;
  v31 = qword_27EEE9CC0;

  v3 = UITraitCollection.doc_hasSpecified(_:)(&v30);

  if (v3)
  {
    v4 = *MEMORY[0x277D743F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    v6 = *MEMORY[0x277D74378];
    *(inited + 32) = *MEMORY[0x277D74378];
    v7 = *MEMORY[0x277D769D0];
    type metadata accessor for UIFontTextStyle(0);
    *(inited + 40) = v7;
    v8 = *MEMORY[0x277D74380];
    *(inited + 64) = v9;
    *(inited + 72) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
    v10 = swift_initStackObject();
    v11 = MEMORY[0x277D74430];
    *(v10 + 16) = xmmword_249B9A480;
    v12 = *v11;
    *(v10 + 32) = *v11;
    *(v10 + 40) = v4;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v12;
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v10);
    swift_setDeallocating();
    outlined destroy of (UIFontDescriptorTraitKey, UIFontWeight)(v10 + 32);
    *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
    *(inited + 80) = v17;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29UIFontDescriptorAttributeNamea_yptMd);
    swift_arrayDestroy();
    v18 = objc_allocWithZone(MEMORY[0x277D74310]);
    type metadata accessor for UIFontDescriptorAttributeName(0);
    lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v18 initWithFontAttributes_];

    v21 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel];
    if (v21)
    {
      v22 = objc_opt_self();
      v23 = v21;
      v24 = v20;
      v25 = [v1 traitCollection];
      v26 = [v22 preferredFontForTextStyle:v14 compatibleWithTraitCollection:v25];

      [v26 pointSize];
      v28 = v27;

      v29 = [v22 fontWithDescriptor:v24 size:v28];
      [v23 setFont_];
    }
  }
}

void DOCStatusFooterView.updateFolderInformationLabel()()
{
  v1 = v0;
  v12 = DOCStatusFooterView.folderInformationText()();
  v2 = DOCStatusFooterView.folderInformationLabel.getter();
  v3 = [v2 attributedText];

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel) setHidden_];
  [*(v1 + v4) setAttributedText_];
  v5 = [*(v1 + v4) attributedText];
  v6 = v5;
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(0, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString);
  v7 = v3;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
}

Swift::Void __swiftcall DOCStatusFooterView.didUpdateSyncStateFooter()()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  DOCRunInMainThread(_:)();
}

void DOCStatusFooterView.updateICloudQuotaWarningBanner()()
{
  v1 = DOCStatusFooterView.wantsICloudQuotaBanner.getter();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView;
  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
  if (v1)
  {
    if (!v3)
    {
      v6 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration] + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v6)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        type metadata accessor for DOCFileProviderSyncStateFooterViewModel(0);
        swift_allocObject();
        v8 = v6;
        specialized DOCFileProviderSyncStateFooterViewModel.init(for:nodeCollection:)(v8);

        v9 = objc_allocWithZone(type metadata accessor for DOCFileProviderSyncStateFooterView());

        v11 = DOCFileProviderSyncStateFooterView.init(with:)(v10);
        v12 = *&v0[v2];
        *&v0[v2] = v11;
        v13 = v11;

        DOCStatusFooterView.resetArrangedSubviews()();
      }
    }
  }

  else
  {
    if (v3 && ([v0 removeArrangedSubview_], (v4 = *&v0[v2]) != 0))
    {
      [v4 removeFromSuperview];
      v5 = *&v0[v2];
    }

    else
    {
      v5 = 0;
    }

    *&v0[v2] = 0;

    DOCStatusFooterView.resetArrangedSubviews()();
  }
}

uint64_t DOCStatusFooterView.resetArrangedSubviews()()
{
  v1 = [v0 arrangedSubviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v0 removeArrangedSubview_];
      [v6 removeFromSuperview];

      ++v4;
      if (v7 == i)
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

  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel])
  {
    [v0 addArrangedSubview_];
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView;
  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView])
  {
    [v0 addArrangedSubview_];
  }

  v9 = DOCStatusFooterView.folderInformationLabel.getter();
  [v0 addArrangedSubview_];

  if ([*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel] isHidden] && *&v0[v8])
  {
    [v0 setCustomSpacing:11.0 afterView:?];
  }

  v10 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(1, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *DOCStatusFooterView.quotaLabelText()()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = (*((*MEMORY[0x277D85000] & *result) + 0x258))();
    if (v4 >> 62)
    {
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v6 = result;
      v18._object = 0x8000000249BD5CF0;
      v7._countAndFlagsBits = 0x54492E544349442ELL;
      v7._object = 0xEE0064252E534D45;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0xD00000000000002ALL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D83B88];
      *(v10 + 16) = xmmword_249B9A480;
      v12 = MEMORY[0x277D83C10];
      *(v10 + 56) = v11;
      *(v10 + 64) = v12;
      *(v10 + 32) = v5;
      v13 = static String.localizedStringWithFormat(_:_:)();

      v14 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration;
      v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 24);
      if (v15)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
        v16 = [objc_opt_self() recentDocumentsLocation];
        LOBYTE(v15) = static NSObject.== infix(_:_:)();
      }

      v17 = [v3 isGathering];

      if ((v17 & 1) != 0 || *(v14 + 16) != 2 || (v15 & 1) != 0 || v5 <= 0)
      {

        return 0;
      }

      else
      {
        return v13;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t DOCStatusFooterView.folderInformationText()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || ([v2 isWritable] & 1) != 0)
  {
    return 0;
  }

  v4 = _DocumentManagerBundle();
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v26._object = 0x8000000249BD5D20;
  v6._countAndFlagsBits = 0x6C6E4F2D64616552;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0xD000000000000054;
  v6._object = 0xE900000000000079;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v26);

  v10 = DOCStatusFooterView.folderInformationLabel.getter();
  v11 = [v10 font];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v13 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);
  v14 = [v12 initWithString_];

  v15 = objc_opt_self();
  v3 = v14;
  v16 = MEMORY[0x24C1FAD20](0x732E6C69636E6570, 0xEC0000006873616CLL);
  v17 = [v15 _systemImageNamed_withConfiguration_];

  if (v17)
  {

    v18 = [objc_opt_self() textAttachmentWithImage_];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    v19 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v21 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v22 = [v20 initWithString_];

    [v3 insertAttributedString:v22 atIndex:0];
    [v3 insertAttributedString:v19 atIndex:0];
    v23 = *MEMORY[0x277D740A8];
    v24 = v11;
    [v3 addAttribute:v23 value:v24 range:{0, objc_msgSend(v3, sel_length)}];

    return v3;
  }

LABEL_11:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id DOCStatusFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t protocol witness for DOCFileProviderSyncStateFooterViewDelegate.didUpdateSyncStateFooter() in conformance DOCStatusFooterView()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  DOCRunInMainThread(_:)();
}

void __swiftcall DOCStatusFooterView.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuConfiguration_optional *__return_ptr retstr, UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v4 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

void DOCStatusFooterView.contextMenuInteraction(_:willEndFor:animator:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

id specialized closure #2 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)(void *a1)
{
  v2 = [a1 enclosingDocumentLandingMode];
  v3 = 1.0;
  if (v2 == 1)
  {
    v3 = 0.0;
  }

  return [a1 setAlpha_];
}

char *specialized DOCStatusFooterView.__allocating_init(folderNode:nodeCollection:itemCollectionConfiguration:)(id a1, void *a2, _OWORD *a3)
{
  v6 = a3[3];
  v18[2] = a3[2];
  v18[3] = v6;
  v18[4] = a3[4];
  v7 = a3[1];
  v18[0] = *a3;
  v18[1] = v7;
  if (a1 && ([a1 isFolder] & 1) == 0)
  {
    outlined destroy of DOCItemCollectionConfiguration(v18);
    v12 = [a1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249B9A480;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    os_log(_:dso:log:type:_:)();
    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
    v8 = a3[3];
    v17[2] = a3[2];
    v17[3] = v8;
    v17[4] = a3[4];
    v9 = a3[1];
    v17[0] = *a3;
    v17[1] = v9;
    v10 = objc_allocWithZone(type metadata accessor for DOCStatusFooterView());
    return DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)(a1, a2, v17);
  }
}

uint64_t specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(void *a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  if ([a1 isFolder])
  {
    return 1;
  }

  if (a2)
  {
    v5 = [a2 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.fault.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9FA70;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = v6;
  *(v13 + 80) = v8;
  os_log(_:dso:log:type:_:)();

  return 0;
}

void specialized DOCStatusFooterView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  [a1 locationInView_];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview;
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview];
  if (v5)
  {
    [v5 setFrame_];
    if (!*&v1[v4])
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v7 = *&v1[v4];
    *&v1[v4] = v6;

    v8 = *&v1[v4];
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 clearColor];
    [v10 setBackgroundColor_];

    if (!*&v1[v4])
    {
      goto LABEL_8;
    }
  }

  [v1 addSubview_];
  v12 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  v14 = *&v1[v4];
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x277D75B90]);
    v16 = v14;
    [v15 initWithView:v16 parameters:v12];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t outlined destroy of (UIFontDescriptorTraitKey, UIFontWeight)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*DOCBrowserContainedViewController.eventReporting.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

uint64_t DOCBrowserContainedViewController.actionReporting.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCBrowserContainedViewController.actionReporting.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionReporting;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

uint64_t (*DOCBrowserContainedViewController.overlayDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

void *DOCBrowserContainedViewController.documentManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  v2 = v1;
  return v1;
}

uint64_t DOCBrowserContainedViewController.allowsPickingMultipleItems.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCBrowserContainedViewController.allowsPickingMultipleItems.setter(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems;
  result = swift_beginAccess();
  v2[v4] = a1;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation;
  v7 = v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation];
  if (v7 != 2)
  {
    updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
    v9 = (*(*updated + 152))(updated);

    if ((v9 & 1) == 0)
    {
      result = [v2 doc_hasAppearedOrIsAppearing];
      if (result)
      {
        type metadata accessor for DOCBrowserContainedViewController();
        v10 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMd);
        if (swift_dynamicCast())
        {
          v11 = *(&v14 + 1);
          v12 = v15;
          __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
          (*(v12 + 8))(v7 & 1, v11, v12);
          result = __swift_destroy_boxed_opaque_existential_0(&v13);
        }

        else
        {
          v15 = 0;
          v13 = 0u;
          v14 = 0u;
          result = outlined destroy of DOCOverlayUpdatable?(&v13);
        }

        v2[v6] = 2;
      }
    }
  }

  return result;
}

void DOCBrowserContainedViewController.updateOverlayIfNeeded()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation;
  v2 = v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation];
  if (v2 != 2)
  {
    updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
    v4 = (*(*updated + 152))(updated);

    if ((v4 & 1) == 0)
    {
      if ([v0 doc_hasAppearedOrIsAppearing])
      {
        type metadata accessor for DOCBrowserContainedViewController();
        v5 = v0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMd);
        if (swift_dynamicCast())
        {
          v6 = *(&v9 + 1);
          v7 = v10;
          __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
          (*(v7 + 8))(v2 & 1, v6, v7);
          __swift_destroy_boxed_opaque_existential_0(&v8);
        }

        else
        {
          v10 = 0;
          v8 = 0u;
          v9 = 0u;
          outlined destroy of DOCOverlayUpdatable?(&v8);
        }

        v0[v1] = 2;
      }
    }
  }
}

void (*DOCBrowserContainedViewController.allowsPickingMultipleItems.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.allowsPickingMultipleItems.modify;
}

void DOCBrowserContainedViewController.allowsPickingMultipleItems.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation;
    v6 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation);
    if (v6 != 2)
    {
      updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
      v8 = (*(*updated + 152))(updated);

      if ((v8 & 1) == 0)
      {
        if ([*(v3 + 48) doc_hasAppearedOrIsAppearing])
        {
          v9 = *(v3 + 48);
          *(v3 + 40) = v9;
          type metadata accessor for DOCBrowserContainedViewController();
          v10 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMd);
          if (swift_dynamicCast())
          {
            v11 = *(v3 + 24);
            v12 = *(v3 + 32);
            __swift_project_boxed_opaque_existential_1(v3, v11);
            (*(v12 + 8))(v6 & 1, v11, v12);
            __swift_destroy_boxed_opaque_existential_0(v3);
          }

          else
          {
            *(v3 + 32) = 0;
            *v3 = 0u;
            *(v3 + 16) = 0u;
            outlined destroy of DOCOverlayUpdatable?(v3);
          }

          *(v4 + v5) = 2;
        }
      }
    }
  }

  free(v3);
}

uint64_t DOCBrowserContainedViewController.forceEditingMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCBrowserContainedViewController.forceEditingMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  result = swift_beginAccess();
  v1[v3] = a1;
  if (a1)
  {
    return [v1 setEditing:1 animated:0];
  }

  return result;
}

void (*DOCBrowserContainedViewController.forceEditingMode.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCBrowserContainedViewController.forceEditingMode.modify;
}

void DOCBrowserContainedViewController.forceEditingMode.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]) == 1)
    {
      [v4 setEditing:1 animated:0];
    }
  }

  free(v3);
}

uint64_t DOCBrowserContainedViewController.isInUserTriggeredSelectionMode.getter()
{
  if ([v0 isEditing])
  {
    v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x148))() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DOCAssertionCollection();
    v2 = swift_allocObject();
    v2[5] = 0xD000000000000016;
    v2[6] = 0x8000000249BD61E0;
    v2[2] = MEMORY[0x277D84F90];
    v2[3] = partial apply for closure #1 in DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter;
    v2[4] = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t outlined destroy of DOCOverlayUpdatable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void closure #1 in DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
    v3 = (*(*updated + 152))(updated);

    if ((v3 & 1) == 0)
    {
      if ([v1 doc_hasAppearedOrIsAppearing])
      {
        DOCBrowserContainedViewController.updateOverlayIfNeeded()();
      }
    }
  }
}

uint64_t DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [v3 _definiteTransitionCoordinator];
  }

  strcpy(v12, "transition (");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  swift_unknownObjectRetain();
  MEMORY[0x24C1FAEA0](a1, a2);
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0x190))(v12[0], v12[1]);

  v15 = DOCGridLayout.specIconWidth.modify;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v14 = &block_descriptor_31;
  v8 = _Block_copy(v12);
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:);
  *(v9 + 24) = v7;
  v15 = partial apply for closure #3 in DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:);
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v14 = &block_descriptor_4;
  v10 = _Block_copy(v12);
  swift_retain_n();

  [v6 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t closure #3 in DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isCancelled])
  {
    return a2();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v17 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37_0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DOCBrowserContainedViewController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v16, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v16, v11);
}

uint64_t DOCBrowserContainedViewController.beginDisablingOverlayUpdating(traceInfo:)(uint64_t a1, uint64_t a2)
{
  updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
  v6 = (*(*updated + 152))(updated);

  if ((v6 & 1) == 0)
  {
    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  _StringGuts.grow(_:)(29);

  MEMORY[0x24C1FAEA0](a1, a2);
  type metadata accessor for DOCAssertion();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + 32) = 1;
  *(v7 + 40) = v8;
  *(v7 + 16) = 0xD00000000000001BLL;
  *(v7 + 24) = 0x8000000249BD5DF0;
  v9 = *(**(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions) + 136);

  v9(v7, 0x4014000000000000, 0);

  return v7;
}

Swift::Void __swiftcall DOCBrowserContainedViewController.setNeedsOverlayUpdate(animated:)(Swift::Bool animated)
{
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = animated;
  v2 = [v1 viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {

    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void *DOCBrowserContainedViewController.containerNavigationItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCBrowserContainedViewController.containerNavigationItem.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v6 = [v1 viewIfLoaded];
  v7 = [v6 window];

  if (v7)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t (*DOCBrowserContainedViewController.containerNavigationItem.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.containerNavigationItem.modify;
}

uint64_t (*DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.modify;
}

Class @objc DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.getter()
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

void @objc DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *a4;
  swift_beginAccess();
  *&a1[v7] = v6;
  v8 = a1;

  v8[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v9 = [v8 viewIfLoaded];
  v10 = [v9 window];

  if (v10)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *&v2[v4] = a1;

  v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v5 = [v2 viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t (*DOCBrowserContainedViewController.additionalTrailingNavigationBarButtonItems.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.modify;
}

void DOCBrowserContainedViewController.containerNavigationItem.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v4[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
    v5 = [v4 viewIfLoaded];
    v6 = [v5 window];

    if (v6)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }
}

uint64_t DOCBrowserContainedViewController.isUserInteractionEnabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCBrowserContainedViewController.isUserInteractionEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 2;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem] = 0;
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalTrailingNavigationBarButtonItems] = v7;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager] = a2;
  v8 = objc_allocWithZone(DOCActionManager);
  v9 = a2;
  v10 = a1;
  v11 = [v8 init];
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249BA0290;
    *(v12 + 32) = a3;
    type metadata accessor for DOCActionManager(0);
    v13 = a3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setAssociatedActionManagers_];
  }

  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager] = v11;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for DOCBrowserContainedViewController();
  v15 = v11;
  v16 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249B9A480;
  v18 = type metadata accessor for UITraitHorizontalSizeClass();
  v19 = MEMORY[0x277D74C50];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = v16;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v20;
}

id DOCBrowserContainedViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCBrowserContainedViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCBrowserContainedViewController();
  objc_msgSendSuper2(&v5, sel_effectiveAppearanceDidChange_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v3 = [v1 viewIfLoaded];
  v4 = [v3 window];

  if (v4)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }

  if ([v1 isViewLoaded])
  {
    DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(a1);
  }
}

uint64_t DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(0);
  }
}

void (*DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.modify;
}

void DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(0);
  }

  free(v1);
}

void DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground;
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x208))())
  {
    v6 = [v1 enclosedInUIPDocumentLanding];
    if ((((v5 != 0) ^ v6) & 1) == 0)
    {
      return;
    }

    if (v6)
    {
      v7 = a1;
      if (!a1)
      {
        v7 = [v2 effectiveAppearance];
      }

      v8 = a1;
      v9 = [v2 view];
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v11 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
      if (_UISolariumEnabled())
      {
        if (one-time initialization token for doc_documentLandingBackground != -1)
        {
          swift_once();
        }

        v12 = static _UIVisualEffectViewBackdropCaptureGroup.doc_documentLandingBackground;
        objc_allocWithZone(type metadata accessor for DOCGlassRenderingBackdropView());
      }

      else
      {
        if (one-time initialization token for doc_documentLandingBackground != -1)
        {
          swift_once();
        }

        v12 = static _UIVisualEffectViewBackdropCaptureGroup.doc_documentLandingBackground;
        *(objc_allocWithZone(type metadata accessor for DOCSystemMaterialRenderingBackdropView()) + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E38DOCSystemMaterialRenderingBackdropView_topView) = 0;
      }

      v15 = v7;
      v16 = v12;
      v17 = specialized DOCDocumentLandingBackdropView.init(configuration:captureGroup:appearance:)(v11, v16, v7);

      v14 = v17;
      [v14 setAutoresizingMask_];
      [v10 bounds];
      [v14 setFrame_];
      [v10 insertSubview:v14 atIndex:0];

      goto LABEL_19;
    }
  }

  else if (!v5)
  {
    return;
  }

  v13 = *&v1[v4];
  if (!v13)
  {
    return;
  }

  [v13 removeFromSuperview];
  v14 = 0;
LABEL_19:
  v18 = *&v2[v4];
  *&v2[v4] = v14;
}

id DOCBrowserContainedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DOCBrowserContainedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBrowserContainedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCBrowserContainedViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for DOCBrowserContainedViewController();
  objc_msgSendSuper2(&v19, sel_setEditing_animated_, _, animated);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCFullDocumentManagerViewController);
  v6 = [v3 parentViewController];
  if (v6)
  {
    v7 = v6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (([v7 isKindOfClass_] & 1) == 0)
    {
      v9 = [v7 parentViewController];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v16 = v11;
    goto LABEL_13;
  }

LABEL_5:
  v10 = [v3 presentingViewController];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [v10 parentViewController];
  if (v12)
  {
    v13 = v12;
    v14 = swift_getObjCClassFromMetadata();
    while (![v13 isKindOfClass_])
    {
      v15 = [v13 parentViewController];

      v13 = v15;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();

    v11 = v17;
    v16 = 0;
LABEL_13:
    v18 = v16;
    [v11 setEditing:_ animated:animated];
  }

LABEL_14:
}

Swift::Void __swiftcall DOCBrowserContainedViewController.applyOverlaySearchSettings()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x198))();
  if (v2)
  {
    v7 = v2;
    if ([v0 enclosedInUIPDocumentLanding])
    {
      if (one-time initialization token for doc_inlineButtonPreferred != -1)
      {
        swift_once();
      }

      v3 = static UINavigationItemSearchBarPlacement.doc_inlineButtonPreferred;
    }

    else if (DOCDeviceIsPhone())
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (((*((*v1 & *v0) + 0x148))([v7 setPreferredSearchBarPlacement_]) & 1) == 0)
    {
      v4 = [v7 searchController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 searchBar];

        [v6 _setEnabled_];
      }
    }
  }
}

BOOL DOCBrowserContainedViewController.hidesNavigationBackButton.getter()
{
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x100))())
  {
    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = __CocoaSet.count.getter();
    goto LABEL_4;
  }

  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v4 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v5 > 0;
}

Swift::Void __swiftcall DOCBrowserContainedViewController.applyOverlayBarButtonItems(leadingItems:trailingItems:fixedTrailingItems:includeSystemItems:animated:)(Swift::OpaquePointer_optional leadingItems, Swift::OpaquePointer_optional trailingItems, Swift::OpaquePointer_optional fixedTrailingItems, Swift::Bool includeSystemItems, Swift::Bool animated)
{
  v6 = v5;
  is_nil = trailingItems.is_nil;
  rawValue = trailingItems.value._rawValue;
  v9 = *&leadingItems.is_nil;
  v10 = leadingItems.value._rawValue;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v5) + 0x198))(leadingItems.value._rawValue, *&leadingItems.is_nil, trailingItems.value._rawValue, *&trailingItems.is_nil, fixedTrailingItems.value._rawValue, *&fixedTrailingItems.is_nil, includeSystemItems, animated);
  if (v12)
  {
    v41 = v12;
    if (is_nil)
    {
      if ((*((*v11 & *v5) + 0x100))())
      {
        v14 = v13;
        ObjectType = swift_getObjectType();
        v16 = (*(v14 + 56))(ObjectType, v14);
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }

      v38 = v10;
      v39 = v9;
      v40 = rawValue;
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
LABEL_40:
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      do
      {
        v20 = v19;
        if (v18 == v19)
        {
          break;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x24C1FC540](v19, v16);
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_39;
          }

          v21 = *(v16 + 8 * v19 + 32);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_38;
        }

        v23 = (*((*v11 & *v21) + 0x98))();

        v19 = v20 + 1;
      }

      while ((v23 & 1) == 0);
      if ([v6 enclosedInUIPDocumentLanding])
      {
        v24 = [*(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
        v25 = DOCTabIdentifier.tab.getter();
        v27 = v26;

        if (v18 == v20 && (v27 & 1) == 0 && v25 != 2)
        {

          v16 = MEMORY[0x277D84F90];
        }
      }

      if (v16 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        if (v28)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
LABEL_26:
          v29 = 0;
          v11 = (v16 & 0xC000000000000001);
          v17 = v16 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v11)
            {
              v32 = MEMORY[0x24C1FC540](v29, v16);
            }

            else
            {
              if (v29 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v32 = *(v16 + 8 * v29 + 32);
            }

            v33 = v32;
            v34 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if ([v6 isEditing])
            {
              v30 = MEMORY[0x277D85000];
              v31 = (*((*MEMORY[0x277D85000] & *v6) + 0x148))();
            }

            else
            {
              v31 = 1;
              v30 = MEMORY[0x277D85000];
            }

            (*((*v30 & *v33) + 0x88))(v31 & 1);

            ++v29;
            if (v34 == v28)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v16 = MEMORY[0x277D84F90];
LABEL_43:
      v9 = v39;
      rawValue = v40;
      v10 = v38;
      if (v16 >> 62)
      {
        v35 = __CocoaSet.count.getter();
      }

      else
      {
        v35 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v41 setLeftItemsSupplementBackButton_];
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    [v41 setHidesBackButton_];
    if (v16 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

      v37 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v36 = v37;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

      v36 = v16;
    }

    specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(v10, v36);

    specialized UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(v9, rawValue);
  }
}

Swift::Bool __swiftcall DOCBrowserContainedViewController.canErrorViewManageEnabledState(of:)(UIBarButtonItem *of)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))();
  v5 = (*((*v3 & *v1) + 0x1B0))();
  specialized Array.append<A>(contentsOf:)(v5);
  v18 = of;
  v17[2] = &v18;
  LOBYTE(v4) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v17, v4);

  if (v4)
  {
LABEL_16:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = (*((*v3 & *v1) + 0x100))(v6);
  if (v7)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 56))(ObjectType, v9);
    LOBYTE(v7) = swift_unknownObjectRelease();
    if (!(v11 >> 62))
    {
      goto LABEL_4;
    }

LABEL_18:
    v7 = __CocoaSet.count.getter();
    v12 = v7;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_19:

    type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0);
    LOBYTE(v7) = [(UIBarButtonItem *)of isKindOfClass:swift_getObjCClassFromMetadata()]^ 1;
    return v7;
  }

  v11 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_18;
  }

LABEL_4:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_5:
  v13 = 0;
  while ((v11 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](v13, v11);
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_23;
    }

    v15 = v7;
    LOBYTE(v7) = swift_unknownObjectRelease();
    if (v15 == of)
    {
LABEL_15:

      goto LABEL_16;
    }

LABEL_11:
    if (v13 == v12)
    {
      goto LABEL_19;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if (*(v11 + 32 + 8 * v13) == of)
    {
      goto LABEL_15;
    }

    ++v13;
    goto LABEL_11;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return v7;
}

uint64_t DOCBrowserContainedViewController.shortDescription.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  *(v3 + 56) = type metadata accessor for DOCBrowserContainedViewController();
  *(v3 + 64) = lazy protocol witness table accessor for type DOCBrowserContainedViewController and conformance NSObject(&lazy protocol witness table cache variable for type DOCBrowserContainedViewController and conformance NSObject, v4, type metadata accessor for DOCBrowserContainedViewController);
  *(v3 + 32) = v1;
  v5 = v1;
  v6 = String.init(format:_:)();
  v8 = v7;

  MEMORY[0x24C1FAEA0](v6, v8);

  v9 = [v5 title];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xEF2A656C74695420;
    v11 = 0x6E776F6E6B6E552ALL;
  }

  MEMORY[0x24C1FAEA0](v11, v13);

  MEMORY[0x24C1FAEA0](8251, 0xE200000000000000);

  MEMORY[0x24C1FAEA0](62, 0xE100000000000000);
  return 60;
}

void specialized closure #1 in DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v1 = [a1 viewIfLoaded];
  v2 = [v1 window];

  if (v2)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void specialized DOCBrowserContainedViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalTrailingNavigationBarButtonItems) = v1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type DOCBrowserContainedViewController and conformance NSObject(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DOCProviderDomainStateManager.__allocating_init(for:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DOCProviderDomainStateManager.init(for:)(a1);
  return v2;
}

uint64_t DOCProviderDomainStateManager.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656E6E6F63736964;
  v2 = 0x676E69646E6570;
  if (a1 != 2)
  {
    v2 = 0x4D676E69636E7973;
  }

  if (a1)
  {
    v1 = 0x657463656E6E6F63;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCProviderDomainStateManager.State(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000064657463;
  v3 = 0x656E6E6F63736964;
  v4 = *a1;
  v5 = 0xE700000000000000;
  v6 = 0x676E69646E6570;
  if (v4 != 2)
  {
    v6 = 0x4D676E69636E7973;
    v5 = 0xEF61746164617465;
  }

  v7 = 0x657463656E6E6F63;
  v8 = 0xE900000000000064;
  if (!*a1)
  {
    v7 = 0x656E6E6F63736964;
    v8 = 0xEC00000064657463;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  v12 = 0x676E69646E6570;
  if (*a2 != 2)
  {
    v12 = 0x4D676E69636E7973;
    v11 = 0xEF61746164617465;
  }

  if (*a2)
  {
    v3 = 0x657463656E6E6F63;
    v2 = 0xE900000000000064;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCProviderDomainStateManager.State()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCProviderDomainStateManager.State()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProviderDomainStateManager.State()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCProviderDomainStateManager.State@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCProviderDomainStateManager.State.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCProviderDomainStateManager.State(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000064657463;
  v3 = 0x656E6E6F63736964;
  v4 = 0xE700000000000000;
  v5 = 0x676E69646E6570;
  if (*v1 != 2)
  {
    v5 = 0x4D676E69636E7973;
    v4 = 0xEF61746164617465;
  }

  if (*v1)
  {
    v3 = 0x657463656E6E6F63;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t DOCProviderDomainStateManager.init(for:)(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9, v10);
  *(v1 + 16) = 512;
  *(v1 + 18) = 2;
  v11 = type metadata accessor for OS_dispatch_queue();
  v16[1] = "OverlayUpdatesDisabled";
  v16[2] = v11;
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v17);
  *(v1 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval) = 2;
  v13 = *MEMORY[0x277D85188];
  v14 = type metadata accessor for DispatchTimeInterval();
  (*(*(v14 - 8) + 104))(v2 + v12, v13, v14);
  *(v2 + 24) = v18;
  return v2;
}

uint64_t DOCProviderDomainStateManager.shouldCheckDomainState.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t DOCProviderDomainStateManager.lastStateWasDisconnected.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t DOCProviderDomainStateManager.lastStateWasPending.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 32);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = partial apply for closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

void closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 24);
    v9 = Strong;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned FPDomainState, @guaranteed Error) -> ();
    aBlock[3] = &block_descriptor_22;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    v13 = a4;

    [v12 domainStateWithCompletionHandler_];
    _Block_release(v11);
  }
}

uint64_t closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v56 = a6;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTime();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v44 - v25;
  v53 = [*(a3 + 24) disconnectionState];
  v27 = [*(a3 + 24) isiCloudDriveProvider];
  v28 = a1;
  v59 = v9;
  if ((v27 & 1) != 0 || a1 == 2)
  {
    v33 = *(*a3 + 144);
    v52 = a1;
    v33(1);
    v47 = *(a3 + 32);
    static DispatchTime.now()();
    v46 = v26;
    MEMORY[0x24C1FAA90](v21, a3 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval);
    v34 = *(v18 + 8);
    v49 = v18 + 8;
    v50 = v34;
    v48 = v17;
    v34(v21, v17);
    v35 = swift_allocObject();
    v30 = v55;
    v35[2] = a3;
    v35[3] = v30;
    v35[4] = a5;
    v65 = partial apply for closure #1 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
    v66 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v32 = &unk_249B9F000;
    v62 = 1107296256;
    v63 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v64 = &block_descriptor_34_0;
    v45 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v60 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v51 = a5;
    v29 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    a5 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v46;
    v37 = v45;
    MEMORY[0x24C1FB940](v46, v16, v12, v45);
    _Block_release(v37);
    (*(v59 + 8))(v12, v29);
    (*(v57 + 8))(v16, v58);
    v38 = v36;
    v31 = MEMORY[0x277D84F90];
    v50(v38, v48);

    v28 = v52;
  }

  else
  {
    v29 = v54;
    v30 = v55;
    v31 = MEMORY[0x277D84F90];
    v32 = &unk_249B9F000;
  }

  if (v28 == 4)
  {
    v39 = 3;
  }

  else
  {
    v39 = 1;
  }

  LODWORD(v55) = v28 == 2;
  if (v28 == 2)
  {
    v39 = 2;
  }

  LODWORD(v54) = v53 != 1;
  if (v53 == 1)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = a5;
  *(v41 + 32) = v40;
  *(v41 + 40) = a3;
  v65 = partial apply for specialized closure #2 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
  v66 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v62 = v32[467];
  v63 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v64 = &block_descriptor_28_0;
  v42 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v60 = v31;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v16, v12, v42);
  _Block_release(v42);
  (*(v59 + 8))(v12, v29);
  (*(v57 + 8))(v16, v58);

  (*(*a3 + 168))(v54);
  return (*(*a3 + 192))(v55);
}

void closure #1 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 136))())
  {
    type metadata accessor for OS_dispatch_queue();
    v6 = static OS_dispatch_queue.main.getter();
    (*(*a1 + 208))(v6, a2, a3);
  }
}

uint64_t specialized closure #2 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a4 + 24) localizedDisconnectionBannerText];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  a1(a3, v8, v10);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned FPDomainState, @guaranteed Error) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t DOCProviderDomainStateManager.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCProviderDomainStateManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t specialized DOCProviderDomainStateManager.State.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCProviderDomainStateManager.State.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State()
{
  result = lazy protocol witness table cache variable for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State;
  if (!lazy protocol witness table cache variable for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProviderDomainStateManager.State and conformance DOCProviderDomainStateManager.State);
  }

  return result;
}

uint64_t type metadata accessor for DOCProviderDomainStateManager()
{
  result = type metadata singleton initialization cache for DOCProviderDomainStateManager;
  if (!type metadata singleton initialization cache for DOCProviderDomainStateManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DOCProviderDomainStateManager()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:)(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    v8 = objc_opt_self();
    v9 = a1;
    v10 = [v8 defaultManager];
    v11 = [v9 itemID];
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = group;
    v16[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:);
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    v16[3] = &block_descriptor_59;
    v13 = _Block_copy(v16);
    v14 = v9;

    v15 = group;

    [v10 fetchParentsForItemID:v11 recursively:1 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

void closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char **a5, dispatch_group_t group)
{
  if (a2)
  {
    goto LABEL_49;
  }

  v9 = a1;
  if (!a1)
  {
    goto LABEL_49;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
  v12 = a3;
  v13 = 0;
  v14 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v12, 3);

  v65 = a5;

  v15 = _DocumentManagerBundle();
  if (!v15)
  {
    __break(1u);
    goto LABEL_55;
  }

  v16 = v15;
  v68._object = 0x8000000249BD09D0;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0xD00000000000001CLL;
  v18._object = 0x8000000249BD0990;
  v19._object = 0x8000000249BD09B0;
  v68._countAndFlagsBits = 0xD000000000000031;
  v19._countAndFlagsBits = 0xD000000000000010;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v68);
  countAndFlagsBits = v20._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x68736172542ELL;
  v22 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v20;

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd);
  if (!v14)
  {
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    *(v26 + 16) = 1;
    *(v26 + 24) = v12;
    *(v26 + 32) = 1;
    *(v26 + 40) = v20;
    *(v26 + 56) = v6;
    *(v26 + 64) = a4;
    *(v26 + 72) = 0;
    *(v26 + 80) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:);
    *(v26 + 88) = a5;
    *(v26 + 96) = v9;
    aBlock[4] = partial apply for closure #1 in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_65_0;
    v27 = _Block_copy(aBlock);
    v28 = v12;

    [v25 fetchProviderDomainForItem:v28 cachePolicy:1 completionHandler:v27];

    _Block_release(v27);
    goto LABEL_49;
  }

  object = v20._object;
  a5 = MEMORY[0x277D84F90];
  v66 = v9;
  aBlock[0] = MEMORY[0x277D84F90];
  if (v9 >> 62 && __CocoaSet.count.getter() < 0)
  {
    __break(1u);
LABEL_18:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), a5, 1, v31);
    goto LABEL_10;
  }

  v12 = v12;

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v12);

  v23 = &selRef_initWithFrame_;
  [v12 isTrashed];
  v24 = v14;
  if (DOCProviderDomainIsSharedServerDomain())
  {

    a3 = v66;
    goto LABEL_23;
  }

  v14 = group;
  v9 = v24;
  v29 = DOCLocalizedDisplayName();
  inited = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v30;

  v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  group = *(v31 + 2);
  v32 = *(v31 + 3);
  a5 = (&group->isa + 1);
  if (group >= v32 >> 1)
  {
    goto LABEL_18;
  }

LABEL_10:
  *(v31 + 2) = a5;
  v33 = &v31[16 * group];
  *(v33 + 4) = inited;
  *(v33 + 5) = v22;
  aBlock[0] = v31;
  a3 = v66;
  if (v66 >> 62)
  {
    v37 = __CocoaSet.count.getter();
    group = v14;
    v24 = v9;
    a5 = MEMORY[0x277D84F90];
    if (v37 <= 0)
    {
      goto LABEL_22;
    }

    if (!__CocoaSet.count.getter())
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_55:
    swift_isUniquelyReferenced_nonNull_bridgeObject();
    group = v14;
    v24 = v9;
    goto LABEL_13;
  }

  group = v14;
  v24 = v9;
  a5 = MEMORY[0x277D84F90];
  if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:

    v23 = &selRef_initWithFrame_;
    goto LABEL_23;
  }

  if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
LABEL_13:
    a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
  }

  v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = &selRef_initWithFrame_;
  if (!v34)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v35 = v34 - 1;
  v36 = *((a3 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20);
  *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v35;

LABEL_23:
  specialized Sequence.forEach(_:)(a3, aBlock);
  v13 = aBlock[0];
  v62 = v24;
  if (*(aBlock[0] + 2) >= 3uLL && (*(aBlock[0] + 6) == 0x736568736172542ELL && *(aBlock[0] + 7) == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v23 = a3;
    specialized Array.remove(at:)(1uLL);

    specialized Array.remove(at:)(1uLL);

    v13 = aBlock[0];
    a3 = *(aBlock[0] + 2);
    if (a3)
    {
      v12 = object;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || a3 >= *(v13 + 3) >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, a3 + 1, 1, v13);
        aBlock[0] = v13;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (![v12 v23[86]])
  {
    goto LABEL_38;
  }

  v12 = object;
  if (!*(v13 + 2))
  {
    goto LABEL_38;
  }

  v23 = a5;
  v39 = *(v13 + 4);
  v40 = *(v13 + 5);

  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  aBlock[0] = v13;
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v39, v40);

  a3 = *(v13 + 2);
  if (!a3)
  {
    goto LABEL_52;
  }

  aBlock[0] = v13;
  v41 = *(v13 + 3);

  if (a3 >= v41 >> 1)
  {
LABEL_53:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, a3 + 1, 1, v13);
    aBlock[0] = v13;
  }

  a5 = v23;
LABEL_37:
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1uLL, 1, 1, countAndFlagsBits, v12);

LABEL_38:
  v42 = *(v13 + 2);
  if (v42)
  {
    v61 = group;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v43 = a5;
    v44 = (v13 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      v47 = *(v6 + 16);

      if (v47)
      {
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
        if (v49)
        {
          v50 = (*(v6 + 56) + 16 * v48);
          v45 = *v50;
          v51 = v50[1];

          v46 = v51;
        }
      }

      v53 = a5[2];
      v52 = a5[3];
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
      }

      a5[2] = (v53 + 1);
      v54 = &a5[2 * v53];
      *(v54 + 4) = v45;
      *(v54 + 5) = v46;
      v44 += 2;
      --v42;
    }

    while (v42);

    group = v61;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v55 = specialized pathForDisplay(fromPathComponents:layoutDirection:arrowColor:)(v43, 0);
  v56 = pathForCopy(fromPathComponents:layoutDirection:)(v43, a4);
  v58 = v57;

  v59 = swift_allocObject();
  v59[2] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:);
  v59[3] = v65;
  v59[4] = v55;
  v59[5] = v56;
  v59[6] = v58;

  v60 = v55;
  DOCRunInMainThread(_:)();

LABEL_49:
  dispatch_group_leave(group);
}

void closure #1 in closure #1 in closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      *(a4 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = a2;
    *(v11 + 5) = a3;
    *(a4 + 16) = v7;
    swift_endAccess();
  }
}

void closure #2 in DOCItemCollectionViewController.performCopyAsPathname(_:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (*(v2 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    v3 = BidirectionalCollection<>.joined(separator:)();
    v5 = v4;

    v6 = [objc_opt_self() generalPasteboard];
    v7 = MEMORY[0x24C1FAD20](v3, v5);

    [v6 setString_];
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performCreateFolder(_:)(UIKeyCommand *a1)
{
  v4[3] = type metadata accessor for DOCItemCollectionViewController(0);
  v4[0] = v1;
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1548);
  v3 = v1;
  v2(v4);
  outlined destroy of CharacterSet?(v4, &_sypSgMd);
}

Swift::Void __swiftcall DOCItemCollectionViewController.performMoveHere(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    goto LABEL_6;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
  v15[0] = a1;
  v8 = *(v6 + 32);
  v9 = a1;
  v10 = v8(v1, sel_moveHere_, v15, ObjectType, v6);
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v15, &_sypSgMd);
  if (!v10)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_6:
    v12 = v1;
    goto LABEL_7;
  }

  v12 = v11;
LABEL_7:
  v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
  v15[0] = a1;
  v13 = *((*v4 & *v12) + 0x1540);
  v14 = a1;
  v13(v15);
  outlined destroy of CharacterSet?(v15, &_sypSgMd);
  [v2 setEditing:0 animated:{1, v15[0]}];
}

uint64_t DOCItemCollectionViewController.canConfirmPickerImport.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1010))();
  v2 = [v1 indexPathsForSelectedItems];

  if (v2)
  {
    type metadata accessor for IndexPath();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = *(v3 + 16);

    LODWORD(v2) = v2 != 0;
  }

  return [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingDocuments] & v2;
}

void DOCItemCollectionViewController.confirmPickerImport()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  if (DOCItemCollectionViewController.canConfirmPickerImport.getter())
  {
    v11 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v0) + 0x130))() & 1) != 0 && (v12 = DOCItemCollectionViewController.multiSelectionOpenAction.getter()) != 0)
    {
      v13 = v12;
      v20 = DOCItemCollectionViewController.actionContext(from:)();
      [v0 performActionWithAction:v13 actionContext:v20];

      v14 = v20;
    }

    else
    {
      v15 = (*((*v11 & *v0) + 0x1330))();
      if (*(v15 + 16))
      {
        (*(v3 + 16))(v6, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

        v16 = (*(v3 + 32))(v10, v6, v2);
        v17 = (*((*v11 & *v0) + 0x1010))(v16);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v1 collectionView:v17 performPrimaryActionForItemAtIndexPath:isa];

        (*(v3 + 8))(v10, v2);
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.confirmPickerExportOrDrillIn()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0)
  {
    if (!DOCItemCollectionViewController.exportablePickerTargetNode.getter())
    {
      return;
    }

    swift_unknownObjectRelease();
  }

  if (DOCItemCollectionViewController.canDrillInToPickerSelection.getter())
  {
    v11 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *v0) + 0x1330))();
    if (*(v12 + 16))
    {
      (*(v3 + 16))(v6, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      v13 = (*(v3 + 32))(v10, v6, v2);
      v14 = (*((*v11 & *v0) + 0x1010))(v13);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v1 collectionView:v14 performPrimaryActionForItemAtIndexPath:isa];

      (*(v3 + 8))(v10, v2);
      return;
    }
  }

  v16 = DOCItemCollectionViewController.exportablePickerTargetNode.getter();
  if (v16)
  {
    v17 = v16;
    v18 = (*((*MEMORY[0x277D85000] & *v0) + 0xE8))();
    if (v18)
    {
      [v18 didConfirmPickIn_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performCommandReturnKey(_:)(UIKeyCommand *a1)
{
  if (DOCItemCollectionViewController.canConfirmPickerImport.getter())
  {

    DOCItemCollectionViewController.confirmPickerImport()();
  }

  else
  {
    if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0)
    {
      if (!DOCItemCollectionViewController.exportablePickerTargetNode.getter())
      {
        return;
      }

      swift_unknownObjectRelease();
    }

    DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
  }
}

unint64_t DOCItemCollectionViewController.canDrillInToPickerSelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (([v1 forMovingDocuments] & 1) != 0 || objc_msgSend(v1, sel_forPickingDocuments) && (objc_msgSend(v1, sel_forSavingDocuments) & 1) != 0 || (result = objc_msgSend(v1, sel_forPickingFolders), result))
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1338);
    result = v3();
    if (result >> 62)
    {
      v9 = result;
      v10 = __CocoaSet.count.getter();
      result = v9;
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((result & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](0);
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v4 = *(result + 32);
        swift_unknownObjectRetain();
      }

      v6 = (v3)(v5);
      if (v6 >> 62)
      {
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 == 1 && [v4 isFolder])
      {
        v8 = [v4 isReadable];
        swift_unknownObjectRelease();
        return v8;
      }

      swift_unknownObjectRelease();
      return 0;
    }

    return 0;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.exportablePickerTargetNode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (([v1 forMovingDocuments] & 1) == 0 && (!objc_msgSend(v1, sel_forPickingDocuments) || (objc_msgSend(v1, sel_forSavingDocuments) & 1) == 0) && !objc_msgSend(v1, sel_forPickingFolders))
  {
    return 0;
  }

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xE8))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = (*((*v2 & *v0) + 0xC70))();
  if (!v5)
  {
LABEL_14:
    swift_unknownObjectRelease();
    return v5;
  }

  v6 = (*((*v2 & *v0) + 0x1338))();
  if (v6 >> 62)
  {
    v8 = __CocoaSet.count.getter();

    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
LABEL_9:
      swift_unknownObjectRelease();
LABEL_10:
      v5 = 0;
      goto LABEL_14;
    }
  }

  v9 = [v4 pickerOperationFor_];
  if ((v9 - 1) < 2)
  {
    goto LABEL_14;
  }

  if (v9)
  {
    v11 = v9 == 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = [v1 forPickingFolders];
    swift_unknownObjectRelease();
    if (v12)
    {
      return v5;
    }

    goto LABEL_10;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.performRename(_:)(UIKeyCommand *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v51 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v51 - v18;
  if (DOCItemCollectionViewController.canDrillInToPickerSelection.getter())
  {
LABEL_4:

    DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
    return;
  }

  if (DOCItemCollectionViewController.exportablePickerTargetNode.getter())
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v20 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v21 = [v20 forPickingFolders];
  v22 = MEMORY[0x277D85000];
  if ((v21 & 1) != 0 || ([v20 forPickingDocuments]) && ((*((*v22 & *v1) + 0x130))() & 1) == 0)
  {

    [v1 performOpen_];
  }

  else
  {
    v23 = (*v22 & *v1);
    v56 = v1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v57 = v8;
    v23 += 514;
    v24 = *v23;
    v25 = (*v23)();
    v26 = [v25 indexPathsForSelectedItems];

    if (v26)
    {
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = *(v27 + 16);

      if (v28 == 1)
      {
        v30 = (v24)(v29);
        v31 = [v30 indexPathsForSelectedItems];

        if (v31)
        {
          v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v33 = v57;
          v34 = MEMORY[0x277D85000];
          if (*(v32 + 16))
          {
            (*(v57 + 16))(v15, v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v7);

            v35 = *(v33 + 32);
            v35(v19, v15, v7);
            (*((*v34 & *v1) + 0x18A0))(v19);
            if ((*(v33 + 48))(v6, 1, v7) == 1)
            {
              (*(v33 + 8))(v19, v7);
              outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
            }

            else
            {
              v35(v11, v6, v7);
              v36 = (*((*v34 & *v1) + 0xD88))(v11, 0);
              if (v36)
              {
                v37 = v36;
                v54 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
                v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v55 = v38;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_249BA0290;
                *(inited + 32) = v37;
                v40 = *((*v34 & *v1) + 0xC70);
                v41 = swift_unknownObjectRetain();
                v42 = v40(v41);
                v43 = DOCItemCollectionViewController.actionContext(from:)();
                All = specialized Array<A>.fpfs_syncFetchAllFPItems()(inited);
                swift_setDeallocating();
                swift_arrayDestroy();
                v56 = v42;
                if (All)
                {
                  v52 = v43;
                  v45 = v55;
                  if (v42)
                  {
                    swift_getObjectType();
                    v46 = DOCNode.fpfs_syncFetchFPItem()();
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v48 = v57;
                  v49 = v52;
                  DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v53, v45, All, v46, v52);
                }

                else
                {

                  v48 = v57;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v50 = *(v48 + 8);
                v50(v11, v7);
                v50(v19, v7);
              }

              else
              {
                v47 = *(v33 + 8);
                v47(v11, v7);
                v47(v19, v7);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performPreview(_:)(UIKeyCommand *a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  v21.n128_f64[0] = MEMORY[0x28223BE20](v19, v20);
  v23 = (&v40 - v22);
  v24 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v21);
  v25 = [v24 indexPathsForSelectedItems];

  if (v25)
  {
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v26 + 16))
    {
      v41 = v14;
      (*(v11 + 16))(v18, v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      v40 = *(v11 + 32);
      v40(v23, v18, v10);
      (*(v11 + 56))(v9, 1, 1, v10);
      DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v9);
      outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v29 = v44;
      v43 = v28;
      *(v28 + 16) = v27;
      *(v28 + 24) = v29;
      v30 = *((*MEMORY[0x277D85000] & *v1) + 0x18A0);

      v42 = v29;
      v44 = v23;
      v30(v23);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {
        outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        v31 = v41;
        v40(v41, v5, v10);
        if ((*((*MEMORY[0x277D85000] & *v1) + 0xD88))(v31, 0))
        {

          swift_getObjectType();
          v32 = swift_allocObject();
          v33 = v43;
          *(v32 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.performPreview(_:);
          *(v32 + 24) = v33;

          DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:), v32);

          swift_unknownObjectRelease();

          v34 = *(v11 + 8);
          v34(v31, v10);
          v34(v44, v10);
          return;
        }

        (*(v11 + 8))(v31, v10);
      }

      v35 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v37 = swift_allocObject();
      v37[2] = v35;
      v37[3] = 0;
      v38 = v42;
      v37[4] = v42;
      v39 = v38;

      DOCRunInMainThread(_:)();

      (*(v11 + 8))(v44, v10);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.performPreview(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a3;
  v8 = a1;
  v9 = a3;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCItemCollectionViewController.performPreview(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v56 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *Strong) + 0xCB8))();
  Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v12);

  v15 = (*((*v11 & *v10) + 0x1018))(v14);
  if (!v15)
  {
    LOBYTE(v17) = 0;
    if (!a2)
    {
      goto LABEL_30;
    }

LABEL_11:
    v20 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration;
    v21 = *(v10 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    v22 = a2;
    v23 = v10;
    if ([v21 isFilesApp] && (v17 & 1) != 0)
    {
      v61 = v22;
      v62 = Available;
      v58 = a3;
      v59 = a2;
      v60 = v23;
      v57 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager;
      v24 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
      v25 = [v24 actions];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = [v24 associatedActionManagers];
      type metadata accessor for DOCActionManager(0);
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = specialized Sequence.flatMap<A>(_:)(v28);

      v66 = v26;
      specialized Array.append<A>(contentsOf:)(v29);

      v30 = v66;
      v56 = v20;
      if (v66 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v32 = 0;
        v63 = v30 & 0xFFFFFFFFFFFFFF8;
        v64 = v30 & 0xC000000000000001;
        while (1)
        {
          if (v64)
          {
            v33 = MEMORY[0x24C1FC540](v32, v30);
          }

          else
          {
            if (v32 >= *(v63 + 16))
            {
              goto LABEL_39;
            }

            v33 = *(v30 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v36 = [v33 identifier];
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
          {

LABEL_37:

            v44 = *(v10 + v56);
            v45 = v60;
            v46 = v60;
            v47 = v44;
            v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            v49 = type metadata accessor for DOCActionContext();
            v50 = objc_allocWithZone(v49);
            swift_unknownObjectWeakInit();
            *&v50[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_appearance] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_configuration] = v47;
            *&v50[OBJC_IVAR___DOCActionContext_presentingViewController] = v46;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            *&v50[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
            *&v50[OBJC_IVAR___DOCActionContext_userInfo] = v48;
            v65.receiver = v50;
            v65.super_class = v49;
            v51 = objc_msgSendSuper2(&v65, sel_init);
            v52 = *&v45[v57];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_249BA0290;
            v54 = v61;
            *(v53 + 32) = v61;
            v55 = v54;
            specialized DOCActionManager.perform(_:on:actionContext:)(v34, v53, v51);

            goto LABEL_31;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
            goto LABEL_37;
          }

          ++v32;
          if (v35 == i)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_41:

      a2 = v59;
      v23 = v60;
      Available = v62;
      v11 = MEMORY[0x277D85000];
    }

    else
    {
    }

    goto LABEL_30;
  }

  v16 = v15;
  v17 = [v15 window];

  if (!v17)
  {
LABEL_10:
    if (!a2)
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

  v18 = [v17 windowScene];

  if (!v18)
  {
    LOBYTE(v17) = 0;
    goto LABEL_10;
  }

  if (a2)
  {
    v19 = [a2 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v43 = type metadata accessor for UTType();
  (*(*(v43 - 8) + 56))(v8, v17, 1, v43);
  LOBYTE(v17) = UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)(v8);

  outlined destroy of CharacterSet?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_30:
  (*((*v11 & *v10) + 0x1440))(Available, a2);
LABEL_31:
}

Swift::Void __swiftcall DOCItemCollectionViewController.performGoToEnclosingFolder(_:)(UIKeyCommand *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v6 = (v2)(a1);
  v3 = v2();
  v4 = [v3 effectiveUserInterfaceLayoutDirection];

  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v5, 0);
}

id specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for timestampOfLastKeyboardFocusKeyCommand != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, &sharedTypeToFocusInputView._minimumSafeAreaInsets);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  Date.timeIntervalSinceNow.getter();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  sharedTypeToFocusInputView._minimumSafeAreaInsets.right = -v20;
  Date.init()();
  swift_beginAccess();
  (*(v14 + 40))(v18, v17, v13);
  swift_endAccess();
  [objc_msgSend(objc_opt_self() shared)];
  swift_unknownObjectRelease();
  v21 = [v3 effectiveUserInterfaceLayoutDirection];
  if (a1 == 4)
  {
    if (v21 == 1)
    {
      a1 = 3;
    }

    else
    {
      a1 = 4;
    }
  }

  else if (a1 == 3)
  {
    if (v21 == 1)
    {
      a1 = 4;
    }

    else
    {
      a1 = 3;
    }
  }

  v48 = a2;
  v22 = a2 & 3;
  v23 = [v3 indexPathsForSelectedItems];
  if (v23)
  {

    result = [v3 indexPathsForSelectedItems];
    if (!result)
    {
      __break(1u);
      goto LABEL_32;
    }

    v25 = result;
    v26 = type metadata accessor for IndexPath();
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v27 + 16);

    if (v28)
    {
      v46 = *((*MEMORY[0x277D85000] & *v3) + 0xF0);
      v30 = (v46)(v29);
      (*(*v30 + 104))(v30);

      v31 = *(v26 - 8);
      v32 = *(v31 + 48);
      v33 = v32(v12, 1, v26);
      outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
      if (v33 != 1 && v22 != 2)
      {
        v34 = v48;
        if ((v48 & 1) == 0)
        {
LABEL_17:
          if (one-time initialization token for keyboardFocus != -1)
          {
            swift_once();
          }

          static os_log_type_t.debug.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_249B9A480;
          *(v35 + 56) = type metadata accessor for DOCItemCollectionView();
          *(v35 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView);
          *(v35 + 32) = v3;
          v3;
          os_log(_:dso:log:type:_:)();

          return specialized DOCFocusableCollectionView.changeFocus(with:)(a1);
        }

        if ([v3 isEditing])
        {
          return specialized DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(a1, (v34 >> 1) & 1);
        }

        if (!(*((*MEMORY[0x277D85000] & *v3) + 0xD8))())
        {
          goto LABEL_17;
        }

        v45 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
        v44 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_249B9A480;
        v39 = v46();
        v40 = v47;
        (*(*v39 + 104))(v39);

        result = v32(v40, 1, v26);
        if (result != 1)
        {
          ObjectType = swift_getObjectType();
          (*(v31 + 32))(v38 + v44, v40, v26);
          v42 = (*(v45 + 96))(v3, &protocol witness table for DOCItemCollectionView, v38, ObjectType);
          swift_unknownObjectRelease();

          v34 = v48;
          if ((v42 & 1) == 0)
          {
            goto LABEL_17;
          }

          return specialized DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(a1, (v34 >> 1) & 1);
        }

LABEL_32:
        __break(1u);
        return result;
      }
    }
  }

  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_249B9A480;
  *(v36 + 56) = type metadata accessor for DOCItemCollectionView();
  *(v36 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView);
  *(v36 + 32) = v3;
  v3;
  os_log(_:dso:log:type:_:)();

  if (v22 == 2 && (a1 - 1) <= 3)
  {
    a1 = qword_249BA5920[a1 - 1];
  }

  return specialized DOCFocusableCollectionView.focusInitialItem(with:animated:ignoringPreviouslyFocusedItem:)(a1, v22 == 2);
}

Swift::Void __swiftcall DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  v6 = (*((*v4 & *v1) + 0xA68))();
  v7 = (*((*v4 & *v6) + 0x198))();

  if ((v7 & 1) == 0)
  {
    if (!v5)
    {
      return;
    }

    v9 = v5;
    goto LABEL_10;
  }

  v8 = (*((*v4 & *v2) + 0x1338))();
  if (v8 >> 62)
  {
    v14 = v8;
    v15 = __CocoaSet.count.getter();
    v8 = v14;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(v8 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
LABEL_10:
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    v16[4] = partial apply for closure #1 in DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:);
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v16[3] = &block_descriptor_33;
    v12 = _Block_copy(v16);
    v13 = a1;

    [v9 fetchParent_];
    _Block_release(v12);
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
}

void closure #1 in DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 && !a2)
    {
      v35 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager;
      v5 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
      v6 = Strong;
      v37 = a1;
      swift_unknownObjectRetain();
      v38 = v6;
      v36 = v6;
      v7 = v5;
      v8 = [v7 actions];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = [v7 associatedActionManagers];
      type metadata accessor for DOCActionManager(0);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = specialized Sequence.flatMap<A>(_:)(v11);

      v40 = v9;
      specialized Array.append<A>(contentsOf:)(v12);

      v13 = v9;
      if (v9 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v15 = 0;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x24C1FC540](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v19 = [v16 identifier];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
          {

LABEL_20:

            v26 = *&v36[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
            v27 = v36;
            v28 = v26;
            v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
            v30 = type metadata accessor for DOCActionContext();
            v31 = objc_allocWithZone(v30);
            swift_unknownObjectWeakInit();
            *&v31[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
            *&v31[OBJC_IVAR___DOCActionContext_appearance] = 0;
            *&v31[OBJC_IVAR___DOCActionContext_configuration] = v28;
            *&v31[OBJC_IVAR___DOCActionContext_presentingViewController] = v27;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            *&v31[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
            *&v31[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
            *&v31[OBJC_IVAR___DOCActionContext_userInfo] = v29;
            v39.receiver = v31;
            v39.super_class = v30;
            v32 = objc_msgSendSuper2(&v39, sel_init);
            v33 = *&v38[v35];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_249BA0290;
            *(v34 + 32) = v37;
            swift_unknownObjectRetain();
            specialized DOCActionManager.perform(_:on:actionContext:)(v17, v34, v32);

            swift_unknownObjectRelease();
            Strong = v38;
            goto LABEL_25;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_20;
          }

          ++v15;
          if (v18 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:
      swift_unknownObjectRelease();

      Strong = v38;
    }

LABEL_25:
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.performDismiss(_:)(UIKeyCommand *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v29 - v7;
  v9 = [v1 presentedViewController];
  if (v9)
  {

    v10 = [v1 presentedViewController];
    if (v10)
    {
      v29[0] = v10;
      [v10 dismissViewControllerAnimated:1 completion:0];
      v11 = v29[0];
    }
  }

  else
  {
    v12 = [v1 viewIfLoaded];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {
        v15 = [v14 rootViewController];

        if (v15)
        {
          v16 = [v15 presentedViewController];

          if (v16)
          {
            v29[1] = &unk_285D4FB38;
            if (swift_dynamicCastObjCProtocolConditional())
            {
              [v16 dismissViewControllerAnimated:1 completion:0];

              return;
            }
          }
        }
      }
    }

    v17 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) != 0 && [(UIKeyCommand *)a1 doc_isCancellingKeyCommand])
    {
      v18 = (*((*v17 & *v2) + 0x1498))();
      if (v18)
      {
        (*(*v18 + 472))(v18);
      }
    }

    else
    {
      v19 = *((*v17 & *v2) + 0x1010);
      v20 = v19();
      v21 = (*((*v17 & *v20) + 0xF0))();
      v22 = (*(*v21 + 152))(v21);

      if ((v22 & 1) != 0 && ([v2 isEditing] & 1) == 0 && -[UIKeyCommand doc_isCancellingKeyCommand](a1, sel_doc_isCancellingKeyCommand))
      {
        v23 = v19();
        specialized DOCFocusableCollectionView.resignFocus()();

        v24 = *((*v17 & *v2) + 0xBD8);
        v24();
        v25 = type metadata accessor for IndexPath();
        (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
        v26 = (*((*v17 & *v2) + 0xE38))(v8);
        if ((v24)(v26) != 3)
        {
          v27 = [objc_opt_self() sharedManager];
          [v27 requestCurrentFocus_];
        }
      }

      else if ([v2 isEditing] && -[UIKeyCommand doc_isCancellingKeyCommand](a1, sel_doc_isCancellingKeyCommand))
      {
        [v2 setEditing:0 animated:1];
      }

      else if ([*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI])
      {
        v28 = (*((*v17 & *v2) + 0xE8))();
        if (v28)
        {
          [v28 didIndicateCancelPicker];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

id DOCItemCollectionViewController.keyCommands.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget])
  {
    return 0;
  }

  v64 = MEMORY[0x277D84F90];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);

  v3 = objc_opt_self();
  v4 = [v3 directionalKeyCommandsWithAction:sel_performKeyboardFocusKeyCommand_ prioritize:0];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.append<A>(contentsOf:)(v5);
  v7 = [v3 selectionKeyCommandsWithAction:sel_performKeyboardFocusKeyCommand_ prioritize:0];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v8);
  v9 = [objc_opt_self() dismissingKeyCommandsWithAction_];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v10);
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = result;
  v65._object = 0x8000000249BD6330;
  v12._countAndFlagsBits = 0x646E61707845;
  v12._object = 0xE600000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0xD000000000000028;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v65);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = result;
  v66._object = 0x8000000249BD6360;
  v17._countAndFlagsBits = 0x4120646E61707845;
  v66._countAndFlagsBits = 0xD00000000000002CLL;
  v17._object = 0xEA00000000006C6CLL;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v66);

  v21 = *MEMORY[0x277D76B60];
  v22 = objc_opt_self();
  v23 = [v22 keyCommandWithInput:v21 modifierFlags:0 action:sel_performArrowKeyDisclosure_];
  v24 = [v22 keyCommandWithInput:v21 modifierFlags:0x100000 action:sel_performArrowKeyDisclosure_];
  v25 = [v22 keyCommandWithInput:v21 modifierFlags:0x80000 action:sel_performArrowKeyDisclosure_];
  v26 = [v22 keyCommandWithInput:v21 modifierFlags:1572864 action:sel_performArrowKeyDisclosure_];
  v27 = MEMORY[0x24C1FAD20](v15._countAndFlagsBits, v15._object);
  [v23 setDiscoverabilityTitle_];

  v28 = MEMORY[0x24C1FAD20](v15._countAndFlagsBits, v15._object);

  [v24 setDiscoverabilityTitle_];

  v29 = MEMORY[0x24C1FAD20](v20._countAndFlagsBits, v20._object);
  [v25 setDiscoverabilityTitle_];

  v30 = MEMORY[0x24C1FAD20](v20._countAndFlagsBits, v20._object);

  [v26 setDiscoverabilityTitle_];

  v60 = v23;
  [v23 setAttributes_];
  v61 = v24;
  [v24 setAttributes_];
  v62 = v25;
  [v25 setAttributes_];
  v63 = v26;
  [v26 setAttributes_];
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = result;
  v67._object = 0x8000000249BD6390;
  v67._countAndFlagsBits = 0xD00000000000002ALL;
  v32._countAndFlagsBits = 0x657370616C6C6F43;
  v32._object = 0xE800000000000000;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v67);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v36 = result;
  v68._object = 0x8000000249BD63C0;
  v37._object = 0xEC0000006C6C4120;
  v68._countAndFlagsBits = 0xD00000000000002ELL;
  v37._countAndFlagsBits = 0x657370616C6C6F43;
  v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v38.value._object = 0xEB00000000656C62;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v68);

  v41 = *MEMORY[0x277D76B48];
  v42 = [v22 keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:0 action:sel_performArrowKeyDisclosure_];
  v43 = [v22 keyCommandWithInput:v41 modifierFlags:0x100000 action:sel_performArrowKeyDisclosure_];
  v44 = [v22 keyCommandWithInput:v41 modifierFlags:0x80000 action:sel_performArrowKeyDisclosure_];
  v45 = v42;
  v46 = [v22 keyCommandWithInput:v41 modifierFlags:1572864 action:sel_performArrowKeyDisclosure_];
  v47 = MEMORY[0x24C1FAD20](v35._countAndFlagsBits, v35._object);
  [v42 setDiscoverabilityTitle_];

  v48 = MEMORY[0x24C1FAD20](v35._countAndFlagsBits, v35._object);

  [v43 setDiscoverabilityTitle_];

  v49 = MEMORY[0x24C1FAD20](v40._countAndFlagsBits, v40._object);
  [v44 setDiscoverabilityTitle_];

  v50 = v43;
  v51 = MEMORY[0x24C1FAD20](v40._countAndFlagsBits, v40._object);

  [v46 setDiscoverabilityTitle_];

  [v45 setAttributes_];
  [v43 setAttributes_];
  [v44 setAttributes_];
  [v46 setAttributes_];
  [v60 setWantsPriorityOverSystemBehavior_];
  [v45 setWantsPriorityOverSystemBehavior_];
  v52 = v60;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v53 = v61;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v54 = v62;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v55 = v63;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v50 = v43;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v56 = v45;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v57 = v50;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v58 = v44;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v59 = v46;
  MEMORY[0x24C1FB090]();
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v64;
}

uint64_t DOCItemCollectionViewController.displayEmptyFolderAsExpandedIfNeeded(_:)(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x248))();
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      return result;
    }

LABEL_4:
    result = (*((*v5 & *v3) + 0x128))(v4);
    if ((result & 1) == 0)
    {
      return result;
    }

    result = (*((*v5 & *v2) + 0x820))(v11);
    v8 = v12;
    if (v12)
    {
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 104))(v4, v8, v9);
      return __swift_destroy_boxed_opaque_existential_0(v11);
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v10 = __CocoaSet.count.getter();

  if (!v10)
  {
    goto LABEL_4;
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.performArrowKeyDisclosurePostAuthentication(on:expand:recursive:)(Swift::OpaquePointer on, Swift::Bool expand, Swift::Bool recursive)
{
  v4 = v3;
  v59 = recursive;
  v60 = expand;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v51 - v8);
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (on._rawValue >> 62)
  {
    goto LABEL_54;
  }

  v16 = *((on._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v16;
  if (!v16)
  {
    return;
  }

  v18 = on._rawValue & 0xC000000000000001;
  if ((on._rawValue & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

LABEL_4:
  if (!*((on._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v58 = *(on._rawValue + 4);
  swift_unknownObjectRetain();
LABEL_6:
  if (v17 != 1 || v60)
  {
    goto LABEL_10;
  }

  v19 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v19)
  {
    goto LABEL_60;
  }

  if ((*((*MEMORY[0x277D85000] & *v19) + 0x128))(v58))
  {
LABEL_10:
    v10 = 0;
    v57 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v20 = on._rawValue & 0xFFFFFFFFFFFFFF8;
    v21 = &selRef_initWithFrame_;
    v9 = MEMORY[0x277D85000];
    v56 = on._rawValue & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v15 = MEMORY[0x24C1FC540](v10, on._rawValue);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          goto LABEL_53;
        }

        v15 = *(on._rawValue + v10 + 4);
        swift_unknownObjectRetain();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v49 = __CocoaSet.count.getter();
          if (v49 < 1)
          {
            return;
          }

          v17 = v49;
          v50 = __CocoaSet.count.getter();
          if (!v50)
          {
            return;
          }

          v16 = v50;
          v18 = on._rawValue & 0xC000000000000001;
          if ((on._rawValue & 0xC000000000000001) != 0)
          {
LABEL_57:
            v58 = MEMORY[0x24C1FC540](0, on._rawValue, v13);
            goto LABEL_6;
          }

          goto LABEL_4;
        }
      }

      if ([v15 v21[65]] && objc_msgSend(v15, sel_isBrowsable) && objc_msgSend(v15, sel_isFullyFormed))
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_12:
      ++v10;
      if (v11 == v16)
      {
        swift_unknownObjectRelease();
        return;
      }
    }

    if (!v60)
    {
      if (v59)
      {
        DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(v15);
        goto LABEL_27;
      }

      v27 = (*((*v9 & *v4) + 0xD60))();
      if (!v27[2])
      {
        swift_unknownObjectRelease();

        goto LABEL_40;
      }

      v28 = v27[5];
      v52 = v27[4];
      v29 = v27[7];
      v51 = v27[6];
      v30 = v27[8];
      v55 = v28;

      v54 = v29;

      v53 = v30;

      (*((*MEMORY[0x277D85000] & *v4) + 0x820))(v62, v31);
      v32 = v4;
      v33 = v63;
      if (!v63)
      {
        goto LABEL_62;
      }

      v34 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v61[0] = v52;
      v61[1] = v55;
      v61[2] = v51;
      v61[3] = v54;
      v61[4] = v53;
      (*(v34 + 56))(v15, v61, v33, v34);
      __swift_destroy_boxed_opaque_existential_0(v62);
      v35 = *(v32 + v57);
      if (!v35)
      {
        goto LABEL_61;
      }

      v4 = v32;
      v9 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v35) + 0x130))(v15);

      goto LABEL_38;
    }

    if (v59)
    {
      DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v15);
LABEL_27:
      swift_unknownObjectRelease();
LABEL_40:
      v21 = &selRef_initWithFrame_;
      goto LABEL_12;
    }

    v22 = *(v4 + v57);
    if (!v22)
    {
      goto LABEL_59;
    }

    (*((*v9 & *v22) + 0x120))(v15);
    v23 = (*((*v9 & *v22) + 0x248))(v15);
    if (v23 >> 62)
    {
      v36 = __CocoaSet.count.getter();
      v9 = MEMORY[0x277D85000];

      if (v36)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v24)
      {
        goto LABEL_38;
      }
    }

    if ((*((*v9 & *v22) + 0x128))(v15))
    {
      (*((*v9 & *v4) + 0x820))(v62);
      v25 = v63;
      if (!v63)
      {
        goto LABEL_64;
      }

      v26 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v26 + 104))(v15, v25, v26);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v62);
      v9 = MEMORY[0x277D85000];
      goto LABEL_39;
    }

LABEL_38:
    swift_unknownObjectRelease();
LABEL_39:
    v20 = v56;
    goto LABEL_40;
  }

  v37 = v11;
  (*((*MEMORY[0x277D85000] & *v4) + 0x820))(v62);
  v38 = v63;
  if (v63)
  {
    v39 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v40 = v58;
    v41 = (*(v39 + 112))(v58, v38, v39);
    if (v41)
    {
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_0(v62);
      v43 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v4) + 0xD98))(v40);
      if ((*(v37 + 48))(v9, 1, v10) == 1)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        v44 = (*(v37 + 32))(v15, v9, v10);
        v45 = (*((*v43 & *v4) + 0x1010))(v44);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v45 deselectItemAtIndexPath:isa animated:0];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_249BA0290;
        *(v47 + 32) = v42;
        v48 = *((*v43 & *v4) + 0x1378);
        swift_unknownObjectRetain();
        v48(v47, 0, 0);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v37 + 8))(v15, v10);
      }
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

    return;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

void DOCItemCollectionViewController.recursivelyExpandNodes(_:)(uint64_t a1)
{
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v20)
  {
    v21 = MEMORY[0x277D85000];
    v22 = (*((*MEMORY[0x277D85000] & *v20) + 0x128))(a1, v17);
    v34 = v10;
    if (v22)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v32 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v33 = *(v11 + 8);
      v33(v14, v10);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a1;
      v43 = partial apply for closure #2 in DOCItemCollectionViewController.recursivelyExpandNodes(_:);
      v44 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v25 = &block_descriptor_28_1;
    }

    else
    {
      (*((*v21 & *v20) + 0x120))(a1);
      DOCItemCollectionViewController.displayEmptyFolderAsExpandedIfNeeded(_:)(a1);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v32 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v33 = *(v11 + 8);
      v33(v14, v10);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = a1;
      v43 = partial apply for closure #1 in DOCItemCollectionViewController.recursivelyExpandNodes(_:);
      v44 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v25 = &block_descriptor_21_0;
    }

    v41 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v42 = v25;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v32;
    MEMORY[0x24C1FB940](v19, v9, v5, v28);
    _Block_release(v28);

    (*(v38 + 8))(v5, v29);
    (*(v36 + 8))(v9, v37);
    v33(v19, v34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = result;
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x128))();
  if ((result & 1) == 0)
  {
    return result;
  }

  v5 = (*((*v4 & *v2) + 0x248))(v3);
  v6 = v5;
  v22 = v3;
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_16;
      }

LABEL_13:
      if ([v9 isBrowsable])
      {
        if ((*((*MEMORY[0x277D85000] & *v2) + 0x128))(v9))
        {
          DOCItemCollectionViewController.recursivelyCollapseNodes(_:)(v9);
        }
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v1) + 0xD60))();
  if (!v12[2])
  {

    v21 = v22;
    goto LABEL_23;
  }

  v13 = v12[4];
  v14 = v12[5];
  v16 = v12[6];
  v15 = v12[7];
  v17 = v12[8];

  result = (*((*v11 & *v1) + 0x820))(v24, v18);
  v19 = v25;
  if (!v25)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v23[0] = v13;
  v23[1] = v14;
  v23[2] = v16;
  v23[3] = v15;
  v23[4] = v17;
  v21 = v22;
  (*(v20 + 56))(v22, v23, v19, v20);

  __swift_destroy_boxed_opaque_existential_0(v24);
  v11 = MEMORY[0x277D85000];
LABEL_23:

  return (*((*v11 & *v2) + 0x130))(v21);
}

Swift::Void __swiftcall DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(UIKeyCommand *a1)
{
  v3 = MEMORY[0x277D85000];
  if (*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() != 2 || ((*((*v3 & *v1) + 0xF10))())
  {
    return;
  }

  v4 = [(UIKeyCommand *)a1 modifierFlags];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 effectiveUserInterfaceLayoutDirection];

  v8 = [(UIKeyCommand *)a1 input];
  if (v7 != 1)
  {
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_14:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v12)
  {
    if (v10 == v13 && v12 == v14)
    {

      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  v16 = *&v4 & 0x80000;

  v18._rawValue = (*((*v3 & *v1) + 0x1338))(v17);
  rawValue = v18._rawValue;
  if (v15)
  {
    v20 = [objc_opt_self() sharedManager];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = rawValue;
    *(v22 + 32) = v16 >> 19;

    specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v23, 1, 1, partial apply for closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:), v22);
  }

  else
  {
    DOCItemCollectionViewController.performArrowKeyDisclosurePostAuthentication(on:expand:recursive:)(v18, 0, v16 != 0);
  }
}

void closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a1)
  {
    v6 = objc_opt_self();
    swift_unknownObjectRetain();
    v7 = [v6 sharedManager];
    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = a3;
    *(v10 + 32) = a4 & 1;
    v38 = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:);
    v39 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v37 = &block_descriptor_39_0;
    v11 = _Block_copy(aBlock);

    [v7 authenticateLocationWithNoUI:a1 completion:v11];
    _Block_release(v11);

    swift_unknownObjectRelease_n();
    return;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    if (a3 >> 62)
    {
      goto LABEL_40;
    }

    v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
LABEL_42:

      return;
    }

LABEL_7:
    v14 = a3 & 0xC000000000000001;
    v34 = v12;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C1FC540](0, a3);
      v15 = a3 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_10;
    }

    v15 = a3 & 0xFFFFFFFFFFFFFF8;
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = swift_unknownObjectRetain();
LABEL_10:
      v16 = 0;
      v17 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
      v18 = &selRef_initWithFrame_;
      v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      while (1)
      {
        if (v14)
        {
          v12 = MEMORY[0x24C1FC540](v16, a3);
          v20 = v12;
          v21 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v16 >= *(v15 + 16))
          {
            goto LABEL_39;
          }

          v20 = *(a3 + 8 * v16 + 32);
          v12 = swift_unknownObjectRetain();
          v21 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v31 = v12;
            v32 = __CocoaSet.count.getter() < 1;
            v12 = v31;
            if (v32)
            {
              goto LABEL_42;
            }

            v13 = __CocoaSet.count.getter();
            v12 = v31;
            if (!v13)
            {
              goto LABEL_42;
            }

            goto LABEL_7;
          }
        }

        if ([v20 v18[65]] && objc_msgSend(v20, v19[262]) && (objc_msgSend(v20, sel_isFullyFormed) & 1) != 0)
        {
          if (a4)
          {
            DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v20);
          }

          else
          {
            v22 = *(v34 + v17);
            if (!v22)
            {
              goto LABEL_46;
            }

            v23 = MEMORY[0x277D85000];
            (*((*MEMORY[0x277D85000] & *v22) + 0x120))(v20);
            v24 = *(v34 + v17);
            if (!v24)
            {
              goto LABEL_45;
            }

            v25 = (*((*v23 & *v24) + 0x248))(v20);
            if (v25 >> 62)
            {
              v26 = __CocoaSet.count.getter();
            }

            else
            {
              v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v18 = &selRef_initWithFrame_;
            v14 = a3 & 0xC000000000000001;

            if (!v26)
            {
              v27 = *(v34 + v17);
              if (!v27)
              {
                goto LABEL_47;
              }

              v28 = MEMORY[0x277D85000];
              if ((*((*MEMORY[0x277D85000] & *v27) + 0x128))(v20))
              {
                v33 = v17;
                (*((*v28 & *v34) + 0x820))(aBlock);
                v29 = v37;
                if (!v37)
                {
                  goto LABEL_48;
                }

                v30 = v38;
                __swift_project_boxed_opaque_existential_1(aBlock, v37);
                (*(v30 + 13))(v20, v29, v30);
                swift_unknownObjectRelease();
                v12 = __swift_destroy_boxed_opaque_existential_0(aBlock);
                v17 = v33;
              }

              else
              {
                v12 = swift_unknownObjectRelease();
              }

              v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              v14 = a3 & 0xC000000000000001;
              goto LABEL_12;
            }
          }

          v12 = swift_unknownObjectRelease();
          v19 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        }

        else
        {
          v12 = swift_unknownObjectRelease();
        }

LABEL_12:
        ++v16;
        if (v21 == v13)
        {

          swift_unknownObjectRelease();
          return;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(char a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a1 & 1) == 0)
  {
    v5 = a2;
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (a4 >> 62)
  {
    v34 = Strong;
    v35 = __CocoaSet.count.getter() < 1;
    Strong = v34;
    if (v35)
    {
      goto LABEL_41;
    }

    v8 = __CocoaSet.count.getter();
    Strong = v34;
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  v9 = a4 & 0xC000000000000001;
  v37 = Strong;
  if ((a4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a4);
    v10 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  v11 = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
  v13 = &selRef_initWithFrame_;
  v14 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  while (v9)
  {
    v15 = MEMORY[0x24C1FC540](v11, a4);
    v5 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_17:
    if ([v15 v13[65]] && objc_msgSend(v15, v14[262]) && (objc_msgSend(v15, sel_isFullyFormed) & 1) != 0)
    {
      if (a5)
      {
        DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v15);
      }

      else
      {
        v16 = *(v37 + v12);
        if (!v16)
        {
          goto LABEL_53;
        }

        v17 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v16) + 0x120))(v15);
        v18 = *(v37 + v12);
        if (!v18)
        {
          goto LABEL_52;
        }

        v19 = (*((*v17 & *v18) + 0x248))(v15);
        if (v19 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = &selRef_initWithFrame_;
        v9 = a4 & 0xC000000000000001;

        if (!v20)
        {
          v21 = *(v37 + v12);
          if (!v21)
          {
            goto LABEL_54;
          }

          v22 = MEMORY[0x277D85000];
          if ((*((*MEMORY[0x277D85000] & *v21) + 0x128))(v15))
          {
            v36 = v12;
            (*((*v22 & *v37) + 0x820))(v40);
            v23 = v41;
            if (!v41)
            {
              goto LABEL_55;
            }

            v24 = v42;
            __swift_project_boxed_opaque_existential_1(v40, v41);
            (*(v24 + 104))(v15, v23, v24);
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0(v40);
            v12 = v36;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v14 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          v9 = a4 & 0xC000000000000001;
          goto LABEL_10;
        }
      }

      swift_unknownObjectRelease();
      v14 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_10:
    ++v11;
    if (v5 == v8)
    {

      swift_unknownObjectRelease();
      return;
    }
  }

  if (v11 >= *(v10 + 16))
  {
    goto LABEL_45;
  }

  v15 = *(a4 + 8 * v11 + 32);
  swift_unknownObjectRetain();
  v5 = (v11 + 1);
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_17;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_36:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.UI);
  v26 = v5;
  osloga = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BD65C0, v40);
    *(v28 + 12) = 2080;
    v43 = v5;
    v30 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v40);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_2493AC000, osloga, v27, "%s app protection authentication did not succeed or hit error: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v29, -1, -1);
    MEMORY[0x24C1FE850](v28, -1, -1);
    Strong = &osloga->isa;
  }

  else
  {
    Strong = &osloga->isa;
  }

LABEL_41:
}

void closure #1 in DOCItemCollectionViewController.recursivelyExpandNodes(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x248);
    v7 = v5;
    v8 = v6(a2);

    if (v8 >> 62)
    {
      v9 = __CocoaSet.count.getter();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 >= 1)
        {
          for (i = 0; i != v9; ++i)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x24C1FC540](i, v8);
            }

            else
            {
              v11 = *(v8 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            if ([v11 isFolder] && objc_msgSend(v11, sel_isBrowsable))
            {
              if ([v11 isFullyFormed])
              {
                DOCItemCollectionViewController.recursivelyExpandNodes(_:)(v11);
              }
            }

            swift_unknownObjectRelease();
          }

          goto LABEL_16;
        }

        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }
    }

LABEL_16:
  }
}

uint64_t DOCItemCollectionViewController.canPerformAction(_:withSender:)(const char *a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of DOCGridLayout.Spec?(a2, v61, &_sypSgMd);
  if (v62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    if (swift_dynamicCast())
    {
      v6 = [v58 doc_isDismissingKeyCommand];

      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v61, &_sypSgMd);
  }

  DOCItemCollectionViewController.canPerformKeyCommandAction(_:withSender:)(a1, a2);
  if (v7 != 2)
  {
    v8 = v7;
    return v8 & 1;
  }

LABEL_7:
  outlined init with copy of DOCGridLayout.Spec?(a2, v61, &_sypSgMd);
  if (v62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuController);
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v61, &_sypSgMd);
  }

  outlined init with copy of DOCGridLayout.Spec?(a2, v61, &_sypSgMd);
  if (v62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextMenuInteraction);
    if (swift_dynamicCast())
    {
LABEL_14:

      v9 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v61, &_sypSgMd);
  }

  v9 = 0;
LABEL_17:
  if (static Selector.== infix(_:_:)())
  {
    goto LABEL_18;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v29 = MEMORY[0x277D85000];
      v30 = (*((*MEMORY[0x277D85000] & *v2) + 0xC70))();
      if (v30)
      {
        v31 = [v30 fpfs_fpItem];
        v32 = swift_unknownObjectRelease();
        if (v31)
        {
          if (((*((*v29 & *v2) + 0x1448))(v32) & 1) == 0)
          {
            v34 = specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v31, 1);

            v8 = v34 > 0;
            goto LABEL_19;
          }
        }
      }

      goto LABEL_18;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (v9)
      {
        goto LABEL_18;
      }

      v33 = DOCItemCollectionViewController.canPerformSelectAll.getter();
LABEL_42:
      v8 = v33;
      goto LABEL_19;
    }

    if (static Selector.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (static Selector.== infix(_:_:)())
    {
LABEL_45:
      v8 = 1;
      goto LABEL_19;
    }

    if (static Selector.== infix(_:_:)())
    {
      v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x1448))() ^ 1;
      goto LABEL_19;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) != 0 || (specialized static DOCDocumentScannerUtil.canPresentScanner.getter() & 1) == 0)
      {
        goto LABEL_18;
      }

      outlined init with copy of DOCGridLayout.Spec?(a2, v61, &_sypSgMd);
      v35 = v62;
      if (v62)
      {
        v36 = __swift_project_boxed_opaque_existential_1(v61, v62);
        v37 = *(v35 - 8);
        v38 = MEMORY[0x28223BE20](v36, v36);
        v40 = &v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v37 + 16))(v40, v38);
        v41 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v37 + 8))(v40, v35);
        __swift_destroy_boxed_opaque_existential_0(v61);
      }

      else
      {
        v41 = 0;
      }

      v56 = type metadata accessor for DOCItemCollectionViewController(0);
      v59.receiver = v3;
      v59.super_class = v56;
      v50 = objc_msgSendSuper2(&v59, sel_canPerformAction_withSender_, a1, v41);
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
      {
        if (static Selector.== infix(_:_:)())
        {
          goto LABEL_18;
        }

        if ((static Selector.== infix(_:_:)() & 1) == 0)
        {
          if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_18;
          }

          DOCItemCollectionViewController.canPerformKeyCommandAction(_:withSender:)(a1, a2);
          goto LABEL_42;
        }

        v51 = MEMORY[0x277D85000];
        if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) == 0)
        {
          v52 = (*((*v51 & *v2) + 0x1010))();
          v53 = (*((*v51 & *v52) + 0xF0))();
          v54 = (*(*v53 + 152))(v53);

          if ((v54 & 1) == 0 && ([v2 isEditing] & 1) == 0)
          {
            v55 = [v2 presentedViewController];
            if (v55)
            {

              v8 = 1;
              goto LABEL_19;
            }

            v33 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI];
            goto LABEL_42;
          }
        }

        goto LABEL_45;
      }

      if ((*((*MEMORY[0x277D85000] & *v2) + 0x1448))())
      {
        goto LABEL_18;
      }

      outlined init with copy of DOCGridLayout.Spec?(a2, v61, &_sypSgMd);
      v42 = v62;
      if (v62)
      {
        v43 = __swift_project_boxed_opaque_existential_1(v61, v62);
        v44 = *(v42 - 8);
        v45 = MEMORY[0x28223BE20](v43, v43);
        v47 = &v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v44 + 8))(v47, v42);
        __swift_destroy_boxed_opaque_existential_0(v61);
      }

      else
      {
        v48 = 0;
      }

      v49 = type metadata accessor for DOCItemCollectionViewController(0);
      v60.receiver = v3;
      v60.super_class = v49;
      v50 = objc_msgSendSuper2(&v60, sel_canPerformAction_withSender_, a1, v48);
    }

    v8 = v50;
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v21 = MEMORY[0x277D85000];
  v22 = *((*MEMORY[0x277D85000] & *v2) + 0x1338);
  v23 = v22();
  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 < 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v9;
  }

  if ((v26 & 1) == 0 && ((*((*v21 & *v3) + 0x1448))(v25) & 1) == 0)
  {
    v27 = *MEMORY[0x277CC5FD8];
    v28 = v22();
    v8 = specialized static DOCActionManager.canPerform(_:on:)(v27, v28);

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
LABEL_19:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v61[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000249BD63F0, v61);
    *(v13 + 12) = 2080;
    v15 = NSStringFromSelector(a1);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v61);

    *(v13 + 14) = v19;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v8 & 1;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s Can perform key command with action '%s': %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return v8 & 1;
}

void DOCItemCollectionViewController.canPerformKeyCommandAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v152 = a2;
  v154 = a1;
  v3 = type metadata accessor for IndexPath();
  v155 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v139 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v139 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v139 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v139 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v139 - v29;
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v139 - v34;
  v36 = [v2 presentedViewController];
  if (v36)
  {

    return;
  }

  v145 = v26;
  v142 = v10;
  v143 = v22;
  v148 = v30;
  v146 = v18;
  v144 = v14;
  v141 = v6;
  v151 = v3;
  v37 = MEMORY[0x277D85000];
  v38 = *((*MEMORY[0x277D85000] & *v2) + 0x1338);
  v149 = (*MEMORY[0x277D85000] & *v2) + 4920;
  v150 = v38;
  v39 = v38();
  v153 = v35;
  if (v39 >> 62)
  {
    v40 = __CocoaSet.count.getter();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = *((*v37 & *v2) + 0xC80);
  v43 = v153;
  (v42)(v41);
  v44 = *(v155 + 48);
  v45 = v43;
  v147 = v155 + 48;
  v46 = v44;
  v47 = v44(v45, 1, v151);
  IsKeyInput = DOCFirstResponderIsKeyInput();
  if (static Selector.== infix(_:_:)())
  {
    if ((*((*v37 & *v2) + 0xBD8))() != 2)
    {
      v50 = v153;
      goto LABEL_29;
    }

    v49 = (*((*v37 & *v2) + 0xF10))();
    v50 = v153;
    if (v49)
    {
LABEL_29:
      v69 = v50;
LABEL_30:
      outlined destroy of CharacterSet?(v69, &_s10Foundation9IndexPathVSgMd);
      return;
    }

LABEL_8:
    (*((*v37 & *v2) + 0x1448))();
    goto LABEL_29;
  }

  v140 = v2;
  if (static Selector.== infix(_:_:)())
  {
    v50 = v153;
    if (v40 >= 1)
    {
      v51 = *MEMORY[0x277CC5FD0];
      v52 = v150();
      specialized static DOCActionManager.canPerform(_:on:)(v51, v52);
    }

    goto LABEL_29;
  }

  if (static Selector.== infix(_:_:)())
  {
    v53 = v140;
    if ((*((*v37 & *v140) + 0xBD8))() != 3)
    {
      v54 = (*((*v37 & *v53) + 0xC70))();
      v55 = v153;
      if (v54)
      {
        v56 = [v54 fpfs_fpItem];
        swift_unknownObjectRelease();
        if (v56)
        {
          v57 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA0290;
          *(inited + 32) = v56;
          v59 = v56;
          specialized static DOCActionManager.canPerform(_:on:)(v57, inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          [v140 isEditing];
        }
      }

      v69 = v55;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (static Selector.== infix(_:_:)())
  {
    v60 = v140;
    if ((*((*v37 & *v140) + 0xBD8))() != 3)
    {
      v63 = (*((*v37 & *v60) + 0xC70))();
      v50 = v153;
      if (v63)
      {
        v64 = [v63 fpfs_fpItem];
        swift_unknownObjectRelease();
        if (v64)
        {
          v65 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v66 = swift_initStackObject();
          *(v66 + 16) = xmmword_249BA0290;
          *(v66 + 32) = v64;
          v67 = v64;
          specialized static DOCActionManager.canPerform(_:on:)(v65, v66);
          swift_setDeallocating();
          v68 = swift_arrayDestroy();
          (*((*v37 & *v140) + 0x1368))(v68);

          v50 = v153;
        }
      }

      goto LABEL_29;
    }

    goto LABEL_35;
  }

  if (static Selector.== infix(_:_:)())
  {
    v2 = v140;
    v61 = v150();
    if (v61 >> 62)
    {
      v62 = __CocoaSet.count.getter();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v153;

    if (v62 < 1)
    {
      goto LABEL_29;
    }

    goto LABEL_8;
  }

  if (static Selector.== infix(_:_:)())
  {
LABEL_32:
    v69 = v153;
    goto LABEL_30;
  }

  if (static Selector.== infix(_:_:)())
  {
LABEL_35:
    outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd);
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    v70 = v140;
    if ((*((*v37 & *v140) + 0xC70))())
    {
      swift_getObjectType();
      v71 = DOCNode.fpfs_syncFetchFPItem()();
      v72 = v153;
      if (v71)
      {
        v73 = v71;
        specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v71, v70, 1);
      }

      swift_unknownObjectRelease();
      v69 = v72;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (static Selector.== infix(_:_:)())
  {
    v74 = v47;
    v75 = v140;
    if ((*((*v37 & *v140) + 0x148))())
    {
      v76 = [v75 isEditing];
    }

    else
    {
      v76 = 0;
    }

    if ([v75 isEditing] && !v76)
    {
      goto LABEL_35;
    }

    v77 = v74 == 1 ? 0 : v76;
    if (v40 != 1 && !v77)
    {
      goto LABEL_35;
    }

    if (v76)
    {
      v78 = v148;
      v42();
      v79 = v151;
LABEL_124:
      v122 = v145;
      outlined init with copy of DOCGridLayout.Spec?(v78, v145, &_s10Foundation9IndexPathVSgMd);
      if (v46(v122, 1, v79) == 1)
      {
        outlined destroy of CharacterSet?(v78, &_s10Foundation9IndexPathVSgMd);
        outlined destroy of CharacterSet?(v122, &_s10Foundation9IndexPathVSgMd);
        outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd);
        return;
      }

      v123 = (*(v155 + 32))(v146, v122, v79);
      v124 = v140;
      v125 = (*((*v37 & *v140) + 0x1010))(v123);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      LODWORD(v124) = [v124 collectionView:v125 shouldSelectItemAtIndexPath:isa];

      if (v124)
      {
        v127 = v150();
        if (v127 >> 62)
        {
          v128 = __CocoaSet.count.getter();
        }

        else
        {
          v128 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v128 >= 2)
        {
          (*((*v37 & *v140) + 0x130))(v129);
        }

        (*(v155 + 8))(v146, v151);
        outlined destroy of CharacterSet?(v148, &_s10Foundation9IndexPathVSgMd);
        goto LABEL_35;
      }

      (*(v155 + 8))(v146, v151);
      v111 = &v159;
      goto LABEL_133;
    }

    v88 = (*((*v37 & *v140) + 0x1018))();
    if (v88)
    {
      v89 = v88;
      v90 = [v88 indexPathsForSelectedItems];

      if (v90)
      {
        v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v91 + 16))
        {
          v92 = v155;
          v78 = v148;
          v79 = v151;
          (*(v155 + 16))(v148, v91 + ((*(v92 + 80) + 32) & ~*(v92 + 80)), v151);

          (*(v92 + 56))(v78, 0, 1, v79);
          goto LABEL_124;
        }
      }
    }

    v78 = v148;
    v79 = v151;
    (*(v155 + 56))(v148, 1, 1, v151);
    goto LABEL_124;
  }

  if (static Selector.== infix(_:_:)())
  {
    if ((DOCItemCollectionViewController.canConfirmPickerImport.getter() & 1) == 0 && (DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0 && DOCItemCollectionViewController.exportablePickerTargetNode.getter())
    {
      swift_unknownObjectRelease();
    }

    v69 = v153;
    goto LABEL_30;
  }

  if (static Selector.== infix(_:_:)())
  {
    if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) != 0 || !DOCItemCollectionViewController.exportablePickerTargetNode.getter())
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

  if (static Selector.== infix(_:_:)())
  {
    v80 = *&v140[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
    if (([v80 forMovingDocuments] & 1) == 0 && (!objc_msgSend(v80, sel_forPickingDocuments) || !objc_msgSend(v80, sel_forSavingDocuments)))
    {
      if ([v80 forPickingFolders] & 1) == 0 && !objc_msgSend(v80, sel_forPickingDocuments) || ((*((*v37 & *v140) + 0x130))())
      {
        if (IsKeyInput)
        {
          goto LABEL_35;
        }

        if ([v80 forPickingFolders])
        {
          goto LABEL_35;
        }

        if ([v80 forPickingDocuments])
        {
          goto LABEL_35;
        }

        if ([v140 isEditing])
        {
          goto LABEL_35;
        }

        v96 = *((*v37 & *v140) + 0x1010);
        v97 = v96();
        v98 = [v97 indexPathsForSelectedItems];

        if (!v98)
        {
          goto LABEL_35;
        }

        v99 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = *(v99 + 16);

        if (!v100)
        {
          goto LABEL_35;
        }

        v102 = (v96)(v101);
        v103 = [v102 indexPathsForSelectedItems];

        if (v103)
        {
          v104 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v104 + 16))
          {

            goto LABEL_35;
          }

          v105 = v155;
          v106 = v142;
          v107 = v151;
          (*(v155 + 16))(v142, v104 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v151);

          v108 = *(v105 + 32);
          v109 = v144;
          v108(v144, v106, v107);
          v110 = v143;
          (*((*v37 & *v140) + 0x18A0))(v109);
          if (v46(v110, 1, v107) != 1)
          {
            v135 = v141;
            v136 = v151;
            v108(v141, v143, v151);
            v137 = (*((*v37 & *v140) + 0xD88))(v135, 0);
            v138 = *(v155 + 8);
            v138(v135, v136);
            v138(v144, v136);
            if (v137)
            {
              swift_unknownObjectRelease();
            }

            goto LABEL_35;
          }

          (*(v155 + 8))(v144, v151);
          v111 = &v158;
LABEL_133:
          outlined destroy of CharacterSet?(*(v111 - 32), &_s10Foundation9IndexPathVSgMd);
          outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd);
          return;
        }

        goto LABEL_170;
      }

      goto LABEL_111;
    }

    v81 = (*((*v37 & *v140) + 0x1010))();
    v82 = [v81 indexPathsForSelectedItems];

    if (v82)
    {
      v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = *(v83 + 16);

      if (v84)
      {
LABEL_111:
        outlined init with copy of DOCGridLayout.Spec?(v152, v156, &_sypSgMd);
        v114 = v157;
        if (v157)
        {
          v115 = __swift_project_boxed_opaque_existential_1(v156, v157);
          v116 = *(v114 - 8);
          v117 = MEMORY[0x28223BE20](v115, v115);
          v119 = &v139 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v116 + 16))(v119, v117);
          v120 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v116 + 8))(v119, v114);
          __swift_destroy_boxed_opaque_existential_0(v156);
        }

        else
        {
          v120 = 0;
        }

        [v140 canPerformAction:sel_performOpen_ withSender:v120];
        goto LABEL_77;
      }
    }

    v85 = (*((*v37 & *v140) + 0xC70))();
    if (!v85)
    {
      goto LABEL_35;
    }

    v86 = v85;
    v87 = (*((*v37 & *v140) + 0xE8))();
    if (v87)
    {
      [v87 pickerOperationFor_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

LABEL_77:
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (v40 != 1 || (((*((*v37 & **&v140[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController]) + 0xF8))() | IsKeyInput) & 1) != 0)
    {
      goto LABEL_32;
    }

    v93 = v150();
    v94 = v93;
    if (v93 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_83:
        if ((v94 & 0xC000000000000001) == 0)
        {
          if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v95 = *(v94 + 32);
            swift_unknownObjectRetain();
LABEL_86:

            [v95 isFolder];
            swift_unknownObjectRelease();
            goto LABEL_32;
          }

          __break(1u);
          goto LABEL_164;
        }

LABEL_161:
        v95 = MEMORY[0x24C1FC540](0, v94);
        goto LABEL_86;
      }
    }

    else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

    __break(1u);
    goto LABEL_159;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (v40 != 1)
    {
      goto LABEL_32;
    }

    v112 = v150();
    v94 = v112;
    if (!(v112 >> 62))
    {
      if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_160:

        __break(1u);
        goto LABEL_161;
      }

LABEL_106:
      if ((v94 & 0xC000000000000001) != 0)
      {
        v113 = MEMORY[0x24C1FC540](0, v94);
      }

      else
      {
        if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_164:
          __break(1u);
LABEL_165:
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_166;
          }

          goto LABEL_118;
        }

        v113 = *(v94 + 32);
        swift_unknownObjectRetain();
      }

      [v113 isFolder];
      goto LABEL_77;
    }

LABEL_159:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_160;
    }

    goto LABEL_106;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      (*((*v37 & *v140) + 0xBD8))();
      goto LABEL_32;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (v40 != 1 || (v130 = (*((*v37 & *v140) + 0xA68))(), v131 = (*((*v37 & *v130) + 0x198))(), v130, (v131 & 1) == 0))
      {
        v132 = (*((*v37 & *v140) + 0xC70))();
        if (v132)
        {
          [v132 isRootItem];
          swift_unknownObjectRelease();
          goto LABEL_32;
        }
      }

      goto LABEL_35;
    }

    if (static Selector.== infix(_:_:)())
    {
      if (v40 == 1)
      {
        v133 = (*((*v37 & *v140) + 0xA68))();
        (*((*v37 & *v133) + 0x198))();
      }
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        static Selector.== infix(_:_:)();
        outlined destroy of CharacterSet?(v153, &_s10Foundation9IndexPathVSgMd);
        return;
      }

      if (v40 >= 1)
      {
        v134._rawValue = v150();
        DOCActionManager.canShare(_:)(v134);
      }
    }

LABEL_167:
    v69 = v153;
    goto LABEL_30;
  }

  if (v40 != 1)
  {
    goto LABEL_167;
  }

  v121 = v150();
  v94 = v121;
  if (v121 >> 62)
  {
    goto LABEL_165;
  }

  if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_166:

    goto LABEL_167;
  }

LABEL_118:
  if ((v94 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, v94);
    goto LABEL_121;
  }

  if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_121:

    swift_getObjectType();
    DOCNode.canBeAddedToDock.getter();
    swift_unknownObjectRelease();
    goto LABEL_167;
  }

  __break(1u);
LABEL_170:
  __break(1u);
}

id DOCItemCollectionViewController.canPerformSelectAll.getter()
{
  v1 = v0;
  result = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forSavingDocuments];
  if (result)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v3)
  {
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v3) + 0x258))();
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 < 1 || ((*((*v4 & *v1) + 0x1448))(v7) & 1) != 0)
    {
      return 0;
    }

    return (DOCFirstResponderIsKeyInput() ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.canPerformDeselectAll.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*((*v1 & *v0) + 0x1448))(v4) ^ 1;
  }

  return v5 & 1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.validate(_:)(UICommand *a1)
{
  [(UICommand *)a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1338))();
    if (v3 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 >= 1000)
    {
      v5 = 1000;
    }

    else
    {
      v5 = v4;
    }

    if (v4 >= 2)
    {
      v6 = _DocumentManagerBundle();
      if (v6)
      {
        v7 = v6;
        v84._object = 0x8000000249BD6560;
        v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v8.value._object = 0xEB00000000656C62;
        v9._countAndFlagsBits = 0xD000000000000023;
        v9._object = 0x8000000249BD6530;
        v84._countAndFlagsBits = 0xD00000000000005FLL;
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v84);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v11 = swift_allocObject();
        v12 = MEMORY[0x277D83B88];
        *(v11 + 16) = xmmword_249B9A480;
        v13 = MEMORY[0x277D83C10];
        *(v11 + 56) = v12;
        *(v11 + 64) = v13;
        *(v11 + 32) = v5;
        v14 = static String.localizedStringWithFormat(_:_:)();
        v16 = v15;

        v80 = MEMORY[0x24C1FAD20](v14, v16);
LABEL_37:

        [(UICommand *)a1 setDiscoverabilityTitle:v80];
LABEL_38:
        v31 = v80;
        goto LABEL_39;
      }

      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      v17 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
      if (!v17)
      {
        return;
      }

      v80 = [v17 fpfs_fpItem];
      swift_unknownObjectRelease();
      if (!v80)
      {
        return;
      }

      v18 = specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v80, 1);
      if (v18 < 1)
      {
        goto LABEL_38;
      }

      v19 = v18;
      v20 = _DocumentManagerBundle();
      if (v20)
      {
        v21 = v20;
        v85._object = 0x8000000249BD6510;
        v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v22.value._object = 0xEB00000000656C62;
        v23._countAndFlagsBits = 0xD000000000000024;
        v23._object = 0x8000000249BD64E0;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        v85._countAndFlagsBits = 0xD00000000000001BLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v85);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v25 = swift_allocObject();
        v26 = MEMORY[0x277D83B88];
        *(v25 + 16) = xmmword_249B9A480;
        v27 = MEMORY[0x277D83C10];
        *(v25 + 56) = v26;
        *(v25 + 64) = v27;
        *(v25 + 32) = v19;
        v28 = static String.localizedStringWithFormat(_:_:)();
        v30 = v29;

        v79 = MEMORY[0x24C1FAD20](v28, v30);

        [(UICommand *)a1 setDiscoverabilityTitle:v79];

        v31 = v79;
LABEL_39:

        return;
      }

LABEL_59:
      __break(1u);
      return;
    }

    if (static Selector.== infix(_:_:)())
    {
      v32 = *MEMORY[0x277CC6048];
      v33 = *((*MEMORY[0x277D85000] & *v1) + 0x1338);
      v34 = v33();
      LOBYTE(v32) = specialized static DOCActionManager.canPerform(_:on:)(v32, v34);

      if (v32)
      {
        v36 = (v33)(v35);
        if (v36 >> 62)
        {
          v37 = __CocoaSet.count.getter();
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v37 = 0;
      }

      v64 = _DocumentManagerBundle();
      if (v64)
      {
        v65 = v64;
        v88._object = 0x8000000249BD64A0;
        v66.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v66.value._object = 0xEB00000000656C62;
        v67._countAndFlagsBits = 0xD00000000000002ELL;
        v67._object = 0x8000000249BD6470;
        v88._countAndFlagsBits = 0xD000000000000034;
        v68._countAndFlagsBits = 0;
        v68._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v66, v65, v68, v88);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v69 = swift_allocObject();
        v70 = MEMORY[0x277D83B88];
        *(v69 + 16) = xmmword_249B9A480;
        v71 = MEMORY[0x277D83C10];
        *(v69 + 56) = v70;
        *(v69 + 64) = v71;
        *(v69 + 32) = v37;
        v72 = static String.localizedStringWithFormat(_:_:)();
        v74 = v73;

        v80 = MEMORY[0x24C1FAD20](v72, v74);
        goto LABEL_37;
      }

      goto LABEL_56;
    }

    if (static Selector.== infix(_:_:)())
    {
      v38 = _DocumentManagerBundle();
      if (!v38)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v39 = v38;
      v86._object = 0x8000000249BD6410;
      v40._countAndFlagsBits = 0x7265766F636552;
      v86._countAndFlagsBits = 0xD000000000000029;
      v40._object = 0xE700000000000000;
      v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v41.value._object = 0xEB00000000656C62;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v86);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;

      v46 = _DocumentManagerBundle();
      if (!v46)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v47 = v46;
      v87._object = 0x8000000249BD6440;
      v48._countAndFlagsBits = 0x6574656C6544;
      v87._countAndFlagsBits = 0xD000000000000028;
      v48._object = 0xE600000000000000;
      v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v49.value._object = 0xEB00000000656C62;
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v87);

      v52 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v1) + 0xA50))(v81);
      v53 = outlined destroy of DOCItemCollectionConfiguration(v81);
      v54 = v82;
      v55 = (*((*v52 & *v1) + 0x1338))(v53);
      if (v55 >> 62)
      {
        v56 = __CocoaSet.count.getter();
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v57 = 2;
      if (v56)
      {
        v58 = 0;
      }

      else
      {
        v57 = 3;
        v58 = 1;
      }

      if (v54)
      {
        v59 = v58;
      }

      else
      {
        object = v51._object;
        countAndFlagsBits = v51._countAndFlagsBits;
        v59 = v57;
      }

      v60 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      [(UICommand *)a1 setTitle:v60];

      v61 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      [(UICommand *)a1 setDiscoverabilityTitle:v61];

      [(UICommand *)a1 setAttributes:v59];
      if (v54)
      {
        v62 = 0x6C732E6873617274;
        v63 = 0xEB00000000687361;
      }

      else
      {
        v62 = 0x6873617274;
        v63 = 0xE500000000000000;
      }

      v77 = MEMORY[0x24C1FAD20](v62, v63);
      v78 = [objc_opt_self() systemImageNamed_];

      [(UICommand *)a1 setImage:v78];
    }

    else if (static Selector.== infix(_:_:)())
    {
      v75 = (*((*MEMORY[0x277D85000] & *v1) + 0x1338))();
      if (v75 >> 62)
      {
        v76 = __CocoaSet.count.getter();
      }

      else
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [(UICommand *)a1 setAttributes:4 * (v76 > 1)];
    }
  }
}

Swift::Bool __swiftcall DOCItemCollectionViewController.canPerformCreateFolder(withSelection:)(Swift::Bool withSelection)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (v4 && (v5 = [v4 fpfs_fpItem], swift_unknownObjectRelease(), v5))
  {
    v6 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v5;
    v8 = v5;
    v9 = specialized static DOCActionManager.canPerform(_:on:)(v6, inited);
    swift_setDeallocating();
    v10 = swift_arrayDestroy();
    if (withSelection)
    {
      v11 = (*((*v3 & *v1) + 0x1368))(v10);

      v12 = v11 & v9;
    }

    else
    {
      v13 = [v1 isEditing];

      v12 = (v13 ^ 1) & v9;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t specialized DOCFocusableCollectionView.resignFocus()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  v14 = (v13)(v11);
  outlined init with copy of DOCGridLayout.Spec?(v9, v5, &_s10Foundation9IndexPathVSgMd);
  (*(*v14 + 112))(v5);

  v15 = outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
  v16 = (v13)(v15);
  v17 = (*(*v16 + 152))(v16);

  if (v17)
  {
    result = (*((*v12 & *v1) + 0xD8))(result);
    if (result)
    {
      v20 = v19;
      ObjectType = swift_getObjectType();
      v22 = v13();
      (*(*v22 + 104))(v22);

      (*(v20 + 16))(v1, &protocol witness table for DOCItemCollectionView, v9, ObjectType, v20);
      swift_unknownObjectRelease();
      return outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
    }
  }

  return result;
}

uint64_t specialized DOCFocusableCollectionView.selectOrExtendSelection(with:toBoundary:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v149) = a2;
  v147 = a1;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg_ACSgtMd);
  MEMORY[0x28223BE20](v144, v4);
  v143 = (&v139 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v148 = (&v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v155 = &v139 - v11;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v140 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v141 = &v139 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v146 = &v139 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v145 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v153 = &v139 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v142 = (&v139 - v30);
  MEMORY[0x28223BE20](v31, v32);
  v154 = &v139 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v139 = &v139 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v139 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v139 - v43;
  MEMORY[0x28223BE20](v45, v46);
  v150 = &v139 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v151 = &v139 - v50;
  v53 = MEMORY[0x28223BE20](v51, v52);
  v55 = &v139 - v54;
  v56 = *((*MEMORY[0x277D85000] & *v2) + 0xF0);
  v158 = (*MEMORY[0x277D85000] & *v2) + 240;
  v57 = v56(v53);
  (*(*v57 + 128))(v57);

  v157 = v13;
  v58 = *(v13 + 48);
  v156 = v13 + 48;
  v159 = v58;
  v59 = v58(v55, 1, v12);
  v60 = outlined destroy of CharacterSet?(v55, &_s10Foundation9IndexPathVSgMd);
  if (v59 == 1)
  {
    v61 = (v56)(v60);
    v62 = v151;
    (*(*v61 + 104))(v61);

    v64 = (v56)(v63);
    v65 = v150;
    outlined init with copy of DOCGridLayout.Spec?(v62, v150, &_s10Foundation9IndexPathVSgMd);
    (*(*v64 + 136))(v65);

    v60 = outlined destroy of CharacterSet?(v62, &_s10Foundation9IndexPathVSgMd);
  }

  v66 = MEMORY[0x277D85000];
  v152 = v56;
  if (v149)
  {
    v60 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v60);
    if (v60)
    {
      v68 = v67;
      ObjectType = swift_getObjectType();
      v70 = (*(v68 + 80))(v3, &protocol witness table for DOCItemCollectionView, v147, ObjectType, v68);
      v60 = swift_unknownObjectRelease();
      if (v70)
      {
        v71 = (*((*v66 & *v3) + 0xD8))(v60);
        v73 = v154;
        v74 = v159;
        if (v71)
        {
          v44 = v72;
          v75 = (v56)();
          v76 = v139;
          (*(*v75 + 104))(v75);
          v77 = v76;

          v78 = v74(v76, 1, v12);
          v79 = v155;
          if (v78 != 1)
          {
            v80 = swift_getObjectType();
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
            v82 = *(v44 + 11);
            v83 = v44;
            v84 = v77;
            v85 = v82(v79 + *(v81 + 48), v3, &protocol witness table for DOCItemCollectionView, v77, v147, v80, v83);
            swift_unknownObjectRelease();
            v86 = v157;
            (*(v157 + 8))(v84, v12);
            *v79 = v85;
            (*(*(v81 - 8) + 56))(v79, 0, 1, v81);
            v73 = v154;
            goto LABEL_21;
          }

          goto LABEL_33;
        }

        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
        v79 = v155;
        (*(*(v138 - 8) + 56))(v155, 1, 1, v138);
        v86 = v157;
        goto LABEL_21;
      }
    }
  }

  v87 = (v56)(v60);
  (*(*v87 + 104))(v87);

  if (v159(v44, 1, v12) != 1)
  {
    v86 = v157;
    v88 = *(v157 + 32);
    v89 = v146;
    v90 = v88(v146, v44, v12);
    if ((*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v90))
    {
      v92 = v91;
      v93 = swift_getObjectType();
      (*(v92 + 32))(v3, &protocol witness table for DOCItemCollectionView, v89, v147, 0, v93, v92);
      swift_unknownObjectRelease();
      if (v159(v40, 1, v12) != 1)
      {
        v96 = v141;
        v88(v141, v40, v12);
        v86 = v157;
        v97 = v151;
        (*(v157 + 16))(v151, v96, v12);
        v98 = (*(v86 + 56))(v97, 0, 1, v12);
        v99 = (v152)(v98);
        v100 = v150;
        outlined init with copy of DOCGridLayout.Spec?(v97, v150, &_s10Foundation9IndexPathVSgMd);
        (*(*v99 + 112))(v100);

        outlined destroy of CharacterSet?(v97, &_s10Foundation9IndexPathVSgMd);
        v94 = *(v86 + 8);
        v94(v96, v12);
        v95 = (v94)(v89, v12);
        goto LABEL_16;
      }

      v86 = v157;
      v94 = *(v157 + 8);
      v94(v89, v12);
    }

    else
    {
      v94 = *(v86 + 8);
      v94(v89, v12);
      (*(v86 + 56))(v40, 1, 1, v12);
    }

    v95 = outlined destroy of CharacterSet?(v40, &_s10Foundation9IndexPathVSgMd);
LABEL_16:
    v79 = v155;
    v66 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v3) + 0xD8))(v95))
    {
      v44 = v101;
      v149 = v94;
      v102 = v152;
      v103 = v152();
      v104 = v153;
      (*(*v103 + 128))(v103);

      v105 = v159;
      if (v159(v104, 1, v12) == 1)
      {
        __break(1u);
      }

      else
      {
        v106 = v12;
        v107 = v102();
        v108 = v145;
        (*(*v107 + 104))(v107);

        if (v105(v108, 1, v106) != 1)
        {
          v109 = swift_getObjectType();
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
          v79 = v155;
          v111 = v153;
          v112 = (*(v44 + 5))(&v155[*(v110 + 48)], v3, &protocol witness table for DOCItemCollectionView, v153, v108, v109, v44);
          swift_unknownObjectRelease();
          v86 = v157;
          v113 = v108;
          v114 = v149;
          v149(v113, v106);
          v114(v111, v106);
          *v79 = v112;
          (*(*(v110 - 8) + 56))(v79, 0, 1, v110);
          v74 = v159;
          v66 = MEMORY[0x277D85000];
          v12 = v106;
          v73 = v154;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
    (*(*(v115 - 8) + 56))(v79, 1, 1, v115);
    v73 = v154;
    v74 = v159;
LABEL_21:
    v116 = v148;
    outlined init with copy of DOCGridLayout.Spec?(v79, v148, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtMd);
    if ((*(*(v117 - 8) + 48))(v116, 1, v117) == 1)
    {
      v118 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd;
      v119 = v79;
    }

    else
    {
      v120 = *(v117 + 48);
      v122 = v143;
      v121 = v144;
      v123 = *(v144 + 48);
      *v143 = *v116;
      outlined init with take of IndexPath?(v116 + v120, v122 + v123);
      v124 = *v122;
      v125 = outlined init with take of IndexPath?(v122 + *(v121 + 48), v73);
      if ((*((*v66 & *v3) + 0xD8))(v125))
      {
        v127 = v126;
        v128 = swift_getObjectType();
        (*(v127 + 104))(v3, &protocol witness table for DOCItemCollectionView, v124, v128, v127);
        swift_unknownObjectRelease();
      }

      v116 = v142;
      outlined init with copy of DOCGridLayout.Spec?(v73, v142, &_s10Foundation9IndexPathVSgMd);
      if (v74(v116, 1, v12) != 1)
      {
        v131 = v140;
        (*(v86 + 32))(v140, v116, v12);
        v132 = v151;
        (*(v86 + 16))(v151, v131, v12);
        v133 = (*(v86 + 56))(v132, 0, 1, v12);
        v134 = (v152)(v133);
        v135 = v73;
        v136 = v150;
        outlined init with copy of DOCGridLayout.Spec?(v132, v150, &_s10Foundation9IndexPathVSgMd);
        (*(*v134 + 112))(v136);

        outlined destroy of CharacterSet?(v132, &_s10Foundation9IndexPathVSgMd);
        specialized DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(v131);
        (*(v86 + 8))(v131, v12);
        outlined destroy of CharacterSet?(v135, &_s10Foundation9IndexPathVSgMd);
        v130 = &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd;
        v129 = v79;
        return outlined destroy of CharacterSet?(v129, v130);
      }

      v118 = &_s10Foundation9IndexPathVSgMd;
      outlined destroy of CharacterSet?(v73, &_s10Foundation9IndexPathVSgMd);
      v119 = v79;
    }

    outlined destroy of CharacterSet?(v119, &_sSay10Foundation9IndexPathVGSg9selection_ACSg4headtSgMd);
    v129 = v116;
    v130 = v118;
    return outlined destroy of CharacterSet?(v129, v130);
  }

LABEL_34:
  outlined destroy of CharacterSet?(v44, &_s10Foundation9IndexPathVSgMd);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized DOCFocusableCollectionView.changeFocus(with:)(uint64_t a1)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v52 - v17;
  v19 = MEMORY[0x277D85000];
  v20 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v16);
  (*(*v20 + 104))(v20);

  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    return outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
  }

  v55 = v11;
  v56 = v10;
  v52 = *(v11 + 32);
  v23 = v52(v18, v9, v10);
  v24 = *((*v19 & *v1) + 0xD8);
  if ((v24)(v23))
  {
    v26 = v25;
    ObjectType = swift_getObjectType();
    LOBYTE(v26) = (*(v26 + 112))(v1, &protocol witness table for DOCItemCollectionView, v57, v18, ObjectType, v26);
    swift_unknownObjectRelease();
    if ((v26 & 1) == 0)
    {
      return (*(v55 + 8))(v18, v56);
    }
  }

  v53 = v18;
  if (v24())
  {
    v29 = v28;
    v30 = swift_getObjectType();
    v31 = v57;
    (*(v29 + 32))(v1, &protocol witness table for DOCItemCollectionView, v53, v57, 0, v30, v29);
    swift_unknownObjectRelease();
    if (v21(v5, 1, v56) != 1)
    {
      v32 = v54;
      v33 = v56;
      v52(v54, v5, v56);
      if (one-time initialization token for keyboardFocus != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_249BA08C0;
      *(v34 + 56) = type metadata accessor for DOCItemCollectionView();
      *(v34 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView);
      *(v34 + 32) = v1;
      v1;
      v35 = v53;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v37 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSIndexPath);
      *(v34 + 96) = v37;
      v38 = lazy protocol witness table accessor for type NSIndexPath and conformance NSObject();
      *(v34 + 104) = v38;
      *(v34 + 72) = isa;
      v39.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      *(v34 + 136) = v37;
      *(v34 + 144) = v38;
      *(v34 + 112) = v39;
      os_log(_:dso:log:type:_:)();

      specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v32, 1);
      v40 = *(v55 + 8);
      v40(v32, v33);
      return (v40)(v35, v33);
    }
  }

  else
  {
    (*(v55 + 56))(v5, 1, 1, v56);
    v31 = v57;
  }

  v41 = outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd);
  if (!(v24)(v41))
  {
    return (*(v55 + 8))(v53, v56);
  }

  v43 = v42;
  v44 = swift_getObjectType();
  v45 = (*(v43 + 120))(v1, &protocol witness table for DOCItemCollectionView, v31, v44, v43);
  v47 = v46;
  swift_unknownObjectRelease();
  v49 = v55;
  v48 = v56;
  v50 = v53;
  if (v45)
  {
    specialized DOCFocusableCollectionView.resignFocus()();
    v51 = swift_getObjectType();
    DOCFocusableCollectionView.handleFocusHandOff(from:)(v31, v51, v47);
  }

  return (*(v49 + 8))(v50, v48);
}

id specialized DOCItemCollectionViewController.performCompress(_:)()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  v6 = (*((*v4 & *v0) + 0xC70))();
  v7 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v5);

  if (All)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v9 = 0;
    }

    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v1, v3, All, v9, v7);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return [v0 setEditing:0 animated:1];
}

id specialized DOCItemCollectionViewController.performCopyAsPathname(_:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x277D84F90];
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v27 = v10;
    v33 = [result effectiveUserInterfaceLayoutDirection];

    v13 = dispatch_group_create();
    v14 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
    v15 = v14;
    v31 = v2;
    v32 = v1;
    v29 = v5;
    v30 = v6;
    v28 = v7;
    if (v14 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v17 = 0;
      while ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v17, v15);
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        dispatch_group_enter(v13);
        swift_getObjectType();
        v19 = swift_allocObject();
        v19[2] = v33;
        v19[3] = v34;
        v19[4] = v13;

        v20 = v13;
        DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.performCopyAsPathname(_:), v19);
        swift_unknownObjectRelease();

        ++v17;
        if (v18 == i)
        {
          goto LABEL_15;
        }
      }

      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      swift_unknownObjectRetain();
      v18 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v21 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #2 in DOCItemCollectionViewController.performCopyAsPathname(_:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_53;
    v22 = _Block_copy(aBlock);

    v23 = v27;
    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v24 = v29;
    v25 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v22);

    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v23, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DOCItemCollectionViewController.performDuplicate(_:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1338);
  v2 = v1();
  v3 = DOCItemCollectionViewController.bestTargetNode(for:)(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = v1();
  v8 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v7);

  if (All)
  {
    if (v3)
    {
      swift_getObjectType();
      v10 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v10 = 0;
    }

    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v4, v6, All, v10, v8);
  }

  else
  {
  }

  [v0 setEditing:0 animated:1];

  return swift_unknownObjectRelease();
}

uint64_t specialized DOCItemCollectionViewController.performOpen(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x148))(v13) & 1) != 0 && [v0 isEditing])
  {
    (*((*v16 & *v0) + 0xC80))();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
    }

LABEL_9:
    (*(v11 + 32))(v15, v9, v10);
    (*(v11 + 16))(v5, v15, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v5);
    outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd);
    if (DOCItemCollectionViewController.canConfirmPickerImport.getter())
    {
      DOCItemCollectionViewController.confirmPickerImport()();
    }

    else
    {
      if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0)
      {
        if (!DOCItemCollectionViewController.exportablePickerTargetNode.getter())
        {
          v22 = (*((*v16 & *v1) + 0x1010))();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v1 collectionView:v22 performPrimaryActionForItemAtIndexPath:isa];

          return (*(v11 + 8))(v15, v10);
        }

        swift_unknownObjectRelease();
      }

      DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
    }

    return (*(v11 + 8))(v15, v10);
  }

  v17 = (*((*v16 & *v0) + 0x1018))();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 indexPathsForSelectedItems];

    if (v19)
    {
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16))
      {
        (*(v11 + 16))(v9, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

        (*(v11 + 56))(v9, 0, 1, v10);
        goto LABEL_9;
      }
    }
  }

  (*(v11 + 56))(v9, 1, 1, v10);
  return outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
}

unint64_t specialized DOCItemCollectionViewController.performAddFolderToDock(_:)()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = MEMORY[0x277D85000];
  if (!v7)
  {

    goto LABEL_12;
  }

  v1 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v18 = v2;
  *v1 = 136315394;
  *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BD6730, &v18);
  *(v1 + 12) = 2080;
  result = (*((*v8 & *v4) + 0x1338))();
  if (result >> 62)
  {
    v11 = result;
    v12 = __CocoaSet.count.getter();
    result = v11;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((result & 0xC000000000000001) != 0)
    {
      goto LABEL_24;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_11;
    }

    __break(1u);
    return result;
  }

  while (1)
  {
LABEL_11:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v1 + 14) = v15;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s add node to dock: %s", v1, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v2, -1, -1);
    MEMORY[0x24C1FE850](v1, -1, -1);

LABEL_12:
    v16 = (*((*v8 & *v4) + 0x1338))(v10);
    if (v16 >> 62)
    {
      v4 = v16;
      v17 = __CocoaSet.count.getter();
      v16 = v4;
      if (!v17)
      {
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_17;
    }

    __break(1u);
LABEL_24:
    MEMORY[0x24C1FC540](0);
  }

  MEMORY[0x24C1FC540](0);
LABEL_17:

  swift_getObjectType();
  if (DOCNode.canBeAddedToDock.getter())
  {
    DOCNode.addToDock()();
  }

  return swift_unknownObjectRelease();
}

uint64_t specialized DOCFocusableCollectionView.focusInitialItem(with:animated:ignoringPreviouslyFocusedItem:)(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v2) + 0xD8))(v12))
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v2, &protocol witness table for DOCItemCollectionView, a1, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v14, v8, v9);
      specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v14, 1);
      return (*(v10 + 8))(v14, v9);
    }
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd);
  if (one-time initialization token for keyboardFocus != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249B9FA70;
  *(v19 + 56) = type metadata accessor for DOCItemCollectionView();
  v20 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DOCItemCollectionView and conformance NSObject, type metadata accessor for DOCItemCollectionView);
  *(v19 + 32) = v2;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 96) = MEMORY[0x277D83B88];
  *(v19 + 104) = v21;
  *(v19 + 64) = v20;
  *(v19 + 72) = a1;
  v22 = v2;
  os_log(_:dso:log:type:_:)();
}

void specialized DOCItemCollectionViewController.performRevealItem(_:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  if (v2 >> 62)
  {
    v14 = v2;
    v15 = __CocoaSet.count.getter();
    v2 = v14;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1FC540](0);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
    swift_unknownObjectRetain();
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v3;
  v8 = *((*v1 & *v0) + 0xC70);
  v9 = swift_unknownObjectRetain();
  v10 = v8(v9);
  v11 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (All)
  {
    if (v10)
    {
      swift_getObjectType();
      v13 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v13 = 0;
    }

    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v4, v6, All, v13, v11);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

void specialized DOCItemCollectionViewController.performDeleteNow(_:)()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  v6 = (*((*v4 & *v0) + 0xC70))();
  v7 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v5);

  if (All)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v1, v3, All, v9, v7);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_17Tm_0(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t outlined init with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type NSIndexPath and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSIndexPath and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSIndexPath and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSIndexPath);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSIndexPath and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t specialized Sequence.forEach(_:)(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = (*(a3 + 56) + 80 * v14);
      v36[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v36[3] = v18[3];
      v36[4] = v19;
      v36[1] = v21;
      v36[2] = v20;
      v22 = v18[3];
      v33 = v18[2];
      v34 = v22;
      v35 = v18[4];
      v23 = v18[1];
      v31 = *v18;
      v32 = v23;
      *&v30 = v17;
      *(&v30 + 1) = v16;

      outlined init with copy of DOCDebugUIScenario.Settings(v36, &v24);
      a1(&v30);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v24 = v30;
      v25 = v31;
      result = outlined destroy of (key: String, value: DOCDebugUIScenario.Settings)(&v24);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    outlined destroy of (key: String, value: DOCDebugUIScenario.Settings)(&v24);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized Sequence.forEach(_:)(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    for (i = (a3 + 88); ; i += 64)
    {
      v13 = v3;
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v14 = *(i - 56);
      v15 = v5;
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = v9;
      v20 = v10;
      swift_unknownObjectRetain();
      outlined copy of DOCSidebarItem?(v5, v6, v7, v8, v9, v10);
      v11 = v21;
      a1(&v14);
      v21 = v11;
      if (v11)
      {
        break;
      }

      swift_unknownObjectRelease();
      outlined consume of DOCSidebarItem?(v5, v6, v7, v8, v9, v10);
      v3 = v13 - 1;
      if (v13 == 1)
      {
        return;
      }
    }

    swift_unknownObjectRelease();
    outlined consume of DOCSidebarItem?(v5, v6, v7, v8, v9, v10);
  }
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      swift_unknownObjectRetain();
      a1(&v8);
      if (v3)
      {
        break;
      }

      swift_unknownObjectRelease();

      if (!--v4)
      {
        return;
      }
    }

    swift_unknownObjectRelease();
  }
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

{
  sub_2493D2D08(a1, a2, a3);
}

void UIViewController.doc_dismiss(animated:includingPresented:completion:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 && (v8 = [v4 presentedViewController]) != 0)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    v11 = a1 & 1;
    *(v10 + 24) = v11;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    v12 = v4;

    UIViewController.doc_dismiss(animated:includingPresented:completion:)(v11, 1, partial apply for closure #1 in UIViewController.doc_dismiss(animated:includingPresented:completion:), v10);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v15[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v15[5] = v13;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15[3] = &block_descriptor_34;
    v14 = _Block_copy(v15);

    [v4 dismissViewControllerAnimated:a1 & 1 completion:v14];
    _Block_release(v14);
  }
}

void Array<A>.doc_setActive(_:)(char a1)
{
  v2 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = &selRef_activateConstraints_;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_deactivateConstraints_;
  }

  [v2 *v3];
}

uint64_t UIView.doc_performBlock(allowingAnimations:block:)(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  if ((a1 & 1) != 0 && (v6 = [v3 window]) != 0)
  {

    return a2();
  }

  else
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v10 + 24) = v9;
    v12[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v12[5] = v10;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed () -> ();
    v12[3] = &block_descriptor_12_1;
    v11 = _Block_copy(v12);

    [v8 performWithoutAnimation_];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }

  return result;
}

BOOL UIView.doc_shouldAllowAnimations.getter()
{
  v1 = [v0 window];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t static UIView.doc_performBlock(allowingAnimations:block:)(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    return a2();
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
  *(v8 + 24) = v7;
  v10[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_23;
  v9 = _Block_copy(v10);

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void static UIView.doc_performAnimatable(allowingAnimations:animationDuration:animations:completion:)(char a1, uint64_t (*a2)(), uint64_t a3, uint64_t (*a4)(), uint64_t a5, double a6)
{
  if (a1 & 1) != 0 && (v11 = objc_opt_self(), ([v11 areAnimationsEnabled]))
  {
    v23 = a2;
    v24 = a3;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v22 = &block_descriptor_36;
    v12 = _Block_copy(&v19);

    v23 = a4;
    v24 = a5;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v22 = &block_descriptor_39_1;
    v13 = _Block_copy(&v19);

    [v11 animateWithDuration:v12 animations:v13 completion:a6];
    _Block_release(v13);
    _Block_release(v12);
  }

  else
  {
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in static UIView.doc_performAnimatable(allowingAnimations:animationDuration:animations:completion:);
    *(v16 + 24) = v15;
    v23 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v24 = v16;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed () -> ();
    v22 = &block_descriptor_33_0;
    v17 = _Block_copy(&v19);

    [v14 performWithoutAnimation_];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id UIView.doc_nearestAncestorNavBar.getter()
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UINavigationBar);
  result = [v0 superview];
  if (result)
  {
    v2 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (![v2 isKindOfClass_])
    {
      v4 = [v2 superview];

      v2 = v4;
      if (!v4)
      {
        return 0;
      }
    }

    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  return result;
}

id UIView.doc_nearestAncestor(passingTest:)(uint64_t (*a1)(id))
{
  v3 = [v1 superview];
  if (v3)
  {
    do
    {
      if (a1(v3))
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

id static UIView.doc_autolayoutFlexibleHorizontalSpacer.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  [v2 setActive_];
  LODWORD(v3) = 1144750080;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];
  return v0;
}

Swift::Void __swiftcall UIView.doc_addAutoresizingSubview(_:insetBy:)(UIView *_, NSDirectionalEdgeInsets insetBy)
{
  [v2 addSubview_];
  [(UIView *)_ setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = DOCConstraintsToResizeWithSuperview();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v6 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints_];
}

uint64_t UIView.doc_findSubtreeViews<A>(includingSelf:ofType:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v15 = static Array._allocateUninitialized(_:)();
  if (a1)
  {
    v7 = swift_dynamicCastUnknownClass();
    if (v7)
    {
      v14[5] = v7;
      type metadata accessor for Array();
      v8 = v4;
      Array.append(_:)();
    }
  }

  v9 = [v4 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x28223BE20](v11, v12);
  v14[2] = a3;
  v14[3] = &v15;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in UIView.doc_findSubtreeViews<A>(includingSelf:ofType:), v14, v10);

  return v15;
}

BOOL closure #1 in closure #1 in UIView.doc_findSubtreeViews<A>(includingSelf:ofType:)(void *a1)
{
  v2 = swift_dynamicCastUnknownClass();
  if (v2)
  {
    type metadata accessor for Array();
    v3 = a1;
    Array.append(_:)();
  }

  return v2 == 0;
}