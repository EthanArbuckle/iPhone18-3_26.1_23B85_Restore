@interface DOCActionManager
- (DOCActionManager)init;
- (DOCActionManager)initWithItemManager:(id)a3 managedPermission:(id)a4;
- (NSArray)actions;
- (NSArray)associatedActionManagers;
- (NSArray)forbiddenActionIdentifiers;
- (id)_filteredMenuActionsFor:(id)a3 availabilityIdentifier:(int64_t)a4 in:(id)a5 currentConfiguration:(id)a6 sortOverrideHandler:(id)a7;
- (id)additionalBuiltInActionsFor:(id)a3;
- (id)builtinActionsForNodes:(id)a3 inNode:(id)a4 currentConfiguration:(id)a5;
- (id)createToolbarDelete:(BOOL)a3;
- (id)createToolbarRecover:(BOOL)a3;
- (id)returnToSenderActionsFor:(id)a3 presentingViewController:(id)a4;
- (id)shareAction;
- (id)sharedWithYouActionsFor:(id)a3 presentingViewController:(id)a4;
- (void)performAction:(id)a3 withURLs:(id)a4 completionHandler:(id)a5;
- (void)setActions:(id)a3;
- (void)setAssociatedActionManagers:(id)a3;
- (void)setForbiddenActionIdentifiers:(id)a3;
@end

@implementation DOCActionManager

- (NSArray)forbiddenActionIdentifiers
{
  swift_beginAccess();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setForbiddenActionIdentifiers:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCActionManager_forbiddenActionIdentifiers;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSArray)associatedActionManagers
{
  v2 = swift_beginAccess();
  type metadata accessor for DOCActionManager(v2);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setAssociatedActionManagers:(id)a3
{
  type metadata accessor for DOCActionManager(self);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCActionManager_associatedActionManagers;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSArray)actions
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setActions:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCActionManager_actions;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (id)additionalBuiltInActionsFor:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  specialized DOCActionManager.additionalBuiltInActions(for:)(v4);

  type metadata accessor for FPAction(0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (DOCActionManager)init
{
  v3 = [objc_opt_self() defaultManager];
  v4 = [objc_opt_self() defaultPermission];
  v5 = [(DOCActionManager *)self initWithItemManager:v3 managedPermission:v4];

  return v5;
}

- (DOCActionManager)initWithItemManager:(id)a3 managedPermission:(id)a4
{
  v7 = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCActionManager_forbiddenActionIdentifiers) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCActionManager_associatedActionManagers) = v7;
  *(self + OBJC_IVAR___DOCActionManager_actions) = v7;
  *(self + OBJC_IVAR___DOCActionManager_actionManagerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___DOCActionManager_fpItemManager) = a3;
  *(self + OBJC_IVAR___DOCActionManager_managedPermission) = a4;
  v11.receiver = self;
  v11.super_class = DOCActionManager;
  v8 = a3;
  v9 = a4;
  return [(DOCActionManager *)&v11 init];
}

- (id)_filteredMenuActionsFor:(id)a3 availabilityIdentifier:(int64_t)a4 in:(id)a5 currentConfiguration:(id)a6 sortOverrideHandler:(id)a7
{
  v11 = _Block_copy(a7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v11 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIDocumentBrowserAction, @unowned UIDocumentBrowserAction, @unowned @callee_unowned @convention(block) () -> (@unowned ObjCBool)) -> (@unowned ObjCBool);
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectRetain();
  v14 = a6;
  v15 = self;
  DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)(v12, a4, a5, v14, v11, v13);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (id)builtinActionsForNodes:(id)a3 inNode:(id)a4 currentConfiguration:(id)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  DOCActionManager.builtinActions(for:in:currentConfiguration:)(v8, a4, v9);
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)sharedWithYouActionsFor:(id)a3 presentingViewController:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  specialized DOCActionManager.sharedWithYouActions(for:presentingViewController:)(a3, v7);
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)returnToSenderActionsFor:(id)a3 presentingViewController:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  specialized DOCActionManager.returnToSenderActions(for:presentingViewController:)();
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)createToolbarRecover:(BOOL)a3
{
  if (a3)
  {
    specialized static UIDocumentBrowserAction.untrashAction()();
  }

  else
  {
    specialized static UIDocumentBrowserAction.untrashAllAction()();
  }

  return v3;
}

- (id)createToolbarDelete:(BOOL)a3
{
  specialized DOCActionManager.createToolbarDelete(_:)(a3);

  return v3;
}

- (id)shareAction
{
  v2 = self;
  v3 = DOCActionManager.shareAction()();

  return v3;
}

- (void)performAction:(id)a3 withURLs:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = self;
  DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(v7, v9, v10, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v11);
}

@end