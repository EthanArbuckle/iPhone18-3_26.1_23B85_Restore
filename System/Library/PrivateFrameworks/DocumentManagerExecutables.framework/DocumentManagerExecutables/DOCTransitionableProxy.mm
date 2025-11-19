@interface DOCTransitionableProxy
- (void)getCellFor:(id)a3 :(id)a4;
- (void)getTransitionControllerForURL:(id)a3 completionBlock:(id)a4;
- (void)getViewFor:(id)a3 waitForNewThumbnail:(BOOL)a4 :(id)a5;
- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation DOCTransitionableProxy

- (void)getTransitionControllerForURL:(id)a3 completionBlock:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);

  specialized DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(v10, self, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)getViewFor:(id)a3 waitForNewThumbnail:(BOOL)a4 :(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();

  specialized DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(a3, a4, self, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)getCellFor:(id)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();

  specialized DOCTransitionableProxy.getCell(for:_:)(a3, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5
{
  v6 = _Block_copy(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;

  DOCTransitionableProxy.reveal(nodes:selectEvenIfVisible:completionBlock:)(v7, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v8);
}

@end