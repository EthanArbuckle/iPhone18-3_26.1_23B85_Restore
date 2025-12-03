@interface DOCNullTransitionable
- (_TtC26DocumentManagerExecutables21DOCNullTransitionable)init;
- (void)getTransitionControllerForURL:(id)l completionBlock:(id)block;
- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5;
- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block;
@end

@implementation DOCNullTransitionable

- (void)getTransitionControllerForURL:(id)l completionBlock:(id)block
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(block);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10[2](v10, 0);
  _Block_release(v10);
  (*(v6 + 8))(v9, v5);
}

- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5
{
  v5 = _Block_copy(a5);
  (*(v5 + 2))(v5, 0, 0);

  _Block_release(v5);
}

- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block
{
  v5 = _Block_copy(block);
  specialized static DOCPresentationLog.faultLog(_:)(0xD000000000000028, 0x8000000249C04AF0);
  v5[2](v5, 0);

  _Block_release(v5);
}

- (_TtC26DocumentManagerExecutables21DOCNullTransitionable)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCNullTransitionable();
  return [(DOCNullTransitionable *)&v3 init];
}

@end