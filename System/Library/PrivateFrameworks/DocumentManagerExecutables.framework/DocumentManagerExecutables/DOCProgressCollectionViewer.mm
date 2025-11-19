@interface DOCProgressCollectionViewer
- (CGSize)preferredContentSize;
- (_TtC26DocumentManagerExecutables27DOCProgressCollectionViewer)init;
- (_TtC26DocumentManagerExecutables27DOCProgressCollectionViewer)initWithRootViewController:(id)a3;
- (int64_t)modalPresentationStyle;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setEditing:(BOOL)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)toggleEditTapped;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DOCProgressCollectionViewer

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DOCProgressCollectionViewer.viewWillAppear(_:)(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DOCProgressCollectionViewer.traitCollectionDidChange(_:)(v9);
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v5 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCProgressCollectionViewer_listViewController);
  v6 = objc_opt_self();
  v7 = self;
  [v5 setEditing:v3 animated:{objc_msgSend(v6, sel_areAnimationsEnabled)}];
  DOCProgressCollectionViewer.updateButtons()();
}

- (void)toggleEditTapped
{
  v2 = self;
  [(DOCProgressCollectionViewer *)v2 setEditing:[(DOCProgressCollectionViewer *)v2 isEditing]^ 1];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
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
    v11 = a3;
    v12 = self;
  }

  else
  {
    v13 = a3;
    v14 = self;
    v10 = 0;
  }

  v15 = type metadata accessor for DOCProgressCollectionViewer();
  v17.receiver = self;
  v17.super_class = v15;
  [(DOCProgressCollectionViewer *)&v17 presentViewController:a3 animated:v5 completion:v10];

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
  _Block_release(v10);
}

- (int64_t)modalPresentationStyle
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCProgressCollectionViewer();
  return [(DOCProgressCollectionViewer *)&v3 modalPresentationStyle];
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCProgressCollectionViewer();
  [(DOCProgressCollectionViewer *)&v4 setModalPresentationStyle:a3];
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

- (_TtC26DocumentManagerExecutables27DOCProgressCollectionViewer)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end