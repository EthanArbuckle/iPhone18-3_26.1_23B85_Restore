@interface DOCActionManager
- (DOCActionManager)init;
- (DOCActionManager)initWithItemManager:(id)manager managedPermission:(id)permission;
- (NSArray)actions;
- (NSArray)associatedActionManagers;
- (NSArray)forbiddenActionIdentifiers;
- (id)_filteredMenuActionsFor:(id)for availabilityIdentifier:(int64_t)identifier in:(id)in currentConfiguration:(id)configuration sortOverrideHandler:(id)handler;
- (id)additionalBuiltInActionsFor:(id)for;
- (id)builtinActionsForNodes:(id)nodes inNode:(id)node currentConfiguration:(id)configuration;
- (id)createToolbarDelete:(BOOL)delete;
- (id)createToolbarRecover:(BOOL)recover;
- (id)returnToSenderActionsFor:(id)for presentingViewController:(id)controller;
- (id)shareAction;
- (id)sharedWithYouActionsFor:(id)for presentingViewController:(id)controller;
- (void)performAction:(id)action withURLs:(id)ls completionHandler:(id)handler;
- (void)setActions:(id)actions;
- (void)setAssociatedActionManagers:(id)managers;
- (void)setForbiddenActionIdentifiers:(id)identifiers;
@end

@implementation DOCActionManager

- (NSArray)forbiddenActionIdentifiers
{
  swift_beginAccess();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setForbiddenActionIdentifiers:(id)identifiers
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

- (void)setAssociatedActionManagers:(id)managers
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

- (void)setActions:(id)actions
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCActionManager_actions;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (id)additionalBuiltInActionsFor:(id)for
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  specialized DOCActionManager.additionalBuiltInActions(for:)(v4);

  type metadata accessor for FPAction(0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (DOCActionManager)init
{
  defaultManager = [objc_opt_self() defaultManager];
  defaultPermission = [objc_opt_self() defaultPermission];
  v5 = [(DOCActionManager *)self initWithItemManager:defaultManager managedPermission:defaultPermission];

  return v5;
}

- (DOCActionManager)initWithItemManager:(id)manager managedPermission:(id)permission
{
  v7 = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCActionManager_forbiddenActionIdentifiers) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCActionManager_associatedActionManagers) = v7;
  *(self + OBJC_IVAR___DOCActionManager_actions) = v7;
  *(self + OBJC_IVAR___DOCActionManager_actionManagerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___DOCActionManager_fpItemManager) = manager;
  *(self + OBJC_IVAR___DOCActionManager_managedPermission) = permission;
  v11.receiver = self;
  v11.super_class = DOCActionManager;
  managerCopy = manager;
  permissionCopy = permission;
  return [(DOCActionManager *)&v11 init];
}

- (id)_filteredMenuActionsFor:(id)for availabilityIdentifier:(int64_t)identifier in:(id)in currentConfiguration:(id)configuration sortOverrideHandler:(id)handler
{
  v11 = _Block_copy(handler);
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
  configurationCopy = configuration;
  selfCopy = self;
  DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)(v12, identifier, in, configurationCopy, v11, v13);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (id)builtinActionsForNodes:(id)nodes inNode:(id)node currentConfiguration:(id)configuration
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  DOCActionManager.builtinActions(for:in:currentConfiguration:)(v8, node, configurationCopy);
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)sharedWithYouActionsFor:(id)for presentingViewController:(id)controller
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCActionManager.sharedWithYouActions(for:presentingViewController:)(for, controllerCopy);
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)returnToSenderActionsFor:(id)for presentingViewController:(id)controller
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCActionManager.returnToSenderActions(for:presentingViewController:)();
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)createToolbarRecover:(BOOL)recover
{
  if (recover)
  {
    specialized static UIDocumentBrowserAction.untrashAction()();
  }

  else
  {
    specialized static UIDocumentBrowserAction.untrashAllAction()();
  }

  return v3;
}

- (id)createToolbarDelete:(BOOL)delete
{
  specialized DOCActionManager.createToolbarDelete(_:)(delete);

  return v3;
}

- (id)shareAction
{
  selfCopy = self;
  v3 = DOCActionManager.shareAction()();

  return v3;
}

- (void)performAction:(id)action withURLs:(id)ls completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  selfCopy = self;
  DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(v7, v9, v10, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v11);
}

@end