@interface DOCQLItemsPreviewController
- (_TtC26DocumentManagerExecutables27DOCQLItemsPreviewController)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables27DOCQLItemsPreviewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC26DocumentManagerExecutables27DOCQLItemsPreviewController)initWithPreviewItems:(id)items;
@end

@implementation DOCQLItemsPreviewController

- (_TtC26DocumentManagerExecutables27DOCQLItemsPreviewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCQLItemsPreviewController__nonSourceBasedQLItems) = MEMORY[0x277D84F90];
    bundleCopy = bundle;
    v10 = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCQLItemsPreviewController__nonSourceBasedQLItems) = MEMORY[0x277D84F90];
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for DOCQLItemsPreviewController();
  v12 = [(QLPreviewController *)&v14 initWithNibName:v10 bundle:bundle];

  return v12;
}

- (_TtC26DocumentManagerExecutables27DOCQLItemsPreviewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables27DOCQLItemsPreviewController)initWithPreviewItems:(id)items
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end