@interface DOCProgressCollectionViewer
- (CGSize)preferredContentSize;
- (_TtC26DocumentManagerExecutables27DOCProgressCollectionViewer)init;
- (_TtC26DocumentManagerExecutables27DOCProgressCollectionViewer)initWithRootViewController:(id)controller;
- (int64_t)modalPresentationStyle;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setEditing:(BOOL)editing;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)toggleEditTapped;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DOCProgressCollectionViewer

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DOCProgressCollectionViewer.viewWillAppear(_:)(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DOCProgressCollectionViewer.traitCollectionDidChange(_:)(v9);
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v5 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController);
  v6 = objc_opt_self();
  selfCopy = self;
  [v5 setEditing:editingCopy animated:{objc_msgSend(v6, sel_areAnimationsEnabled)}];
  DOCProgressCollectionViewer.updateButtons()();
}

- (void)toggleEditTapped
{
  selfCopy = self;
  [(DOCProgressCollectionViewer *)selfCopy setEditing:[(DOCProgressCollectionViewer *)selfCopy isEditing]^ 1];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
    v16[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
    v16[5] = v9;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v16[3] = &block_descriptor_39_5;
    v10 = _Block_copy(v16);
    controllerCopy = controller;
    selfCopy = self;
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
    v10 = 0;
  }

  v15 = type metadata accessor for DOCProgressCollectionViewer();
  v17.receiver = self;
  v17.super_class = v15;
  [(DOCProgressCollectionViewer *)&v17 presentViewController:controller animated:animatedCopy completion:v10];

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
  _Block_release(v10);
}

- (int64_t)modalPresentationStyle
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCProgressCollectionViewer();
  return [(DOCProgressCollectionViewer *)&v3 modalPresentationStyle];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCProgressCollectionViewer();
  [(DOCProgressCollectionViewer *)&v4 setModalPresentationStyle:style];
}

- (CGSize)preferredContentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCProgressCollectionViewer();
  [(DOCProgressCollectionViewer *)&v4 preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC26DocumentManagerExecutables27DOCProgressCollectionViewer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables27DOCProgressCollectionViewer)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end