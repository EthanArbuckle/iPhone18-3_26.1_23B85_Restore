@interface DOCTransitionableProxy
- (void)getCellFor:(id)for :(id)a4;
- (void)getTransitionControllerForURL:(id)l completionBlock:(id)block;
- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5;
- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block;
@end

@implementation DOCTransitionableProxy

- (void)getTransitionControllerForURL:(id)l completionBlock:(id)block
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(block);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);

  specialized DOCTransitionableProxy.getTransitionController(forURL:completionBlock:)(v10, self, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();

  specialized DOCTransitionableProxy.getView(for:waitForNewThumbnail:_:)(for, thumbnail, self, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)getCellFor:(id)for :(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();

  specialized DOCTransitionableProxy.getCell(for:_:)(for, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block
{
  v6 = _Block_copy(block);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;

  DOCTransitionableProxy.reveal(nodes:selectEvenIfVisible:completionBlock:)(v7, visible, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v8);
}

@end