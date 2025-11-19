@interface DOCDocumentManager
- (_TtC26DocumentManagerExecutables18DOCDocumentManager)init;
- (_TtC26DocumentManagerExecutables18DOCDocumentManager)initWithConfiguration:(id)a3 sourceObserver:(id)a4 hierarchyController:(id)a5;
- (_TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession)activeDocumentCreationSession;
- (void)importDocumentAt:(id)a3 mode:(unint64_t)a4 toCurrentBrowserLocationWithCompletion:(id)a5;
- (void)importDocumentAt:(id)a3 mode:(unint64_t)a4 toDefaultLocationWithCompletion:(id)a5;
- (void)importDocumentAt:(id)a3 nextTo:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6;
- (void)setActiveDocumentCreationSession:(id)a3;
@end

@implementation DOCDocumentManager

- (_TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession)activeDocumentCreationSession
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_activeDocumentCreationSession;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActiveDocumentCreationSession:(id)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_activeDocumentCreationSession;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC26DocumentManagerExecutables18DOCDocumentManager)initWithConfiguration:(id)a3 sourceObserver:(id)a4 hierarchyController:(id)a5
{
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_activeDocumentCreationSession) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration) = a3;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver) = a4;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_hierarchyController) = a5;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DOCDocumentManager();
  v9 = a3;
  v10 = a4;
  v11 = a5;
  return [(DOCDocumentManager *)&v13 init];
}

- (void)importDocumentAt:(id)a3 nextTo:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v23 - v16;
  v18 = _Block_copy(a6);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = *((*MEMORY[0x277D85000] & *self) + 0x108);
  v21 = self;
  v20(v17, 0, 0, v13, a5, thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned NSError?) -> ()partial apply, v19);

  v22 = *(v10 + 8);
  v22(v13, v9);
  v22(v17, v9);
}

- (void)importDocumentAt:(id)a3 mode:(unint64_t)a4 toDefaultLocationWithCompletion:(id)a5
{
  v26 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v23 - v14;
  v16 = _Block_copy(a5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for DOCHierarchyController(0);
  v24 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration);
  v25 = v18;
  v23 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver);
  (*(v8 + 16))(v11, v15, v7);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned NSError?) -> ()partial apply;
  *(v21 + 24) = v17;
  (*(v8 + 32))(v21 + v19, v11, v7);
  *(v21 + v20) = self;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v22 = self;

  static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v24, v23, 0, closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)partial apply, v21);

  (*(v8 + 8))(v15, v7);
}

- (void)importDocumentAt:(id)a3 mode:(unint64_t)a4 toCurrentBrowserLocationWithCompletion:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self;
  DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(v12, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned NSError?) -> (), v14);

  (*(v9 + 8))(v12, v8);
}

- (_TtC26DocumentManagerExecutables18DOCDocumentManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end