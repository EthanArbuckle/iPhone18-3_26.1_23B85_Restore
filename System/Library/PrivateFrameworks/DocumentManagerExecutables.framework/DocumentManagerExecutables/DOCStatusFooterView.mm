@interface DOCStatusFooterView
- (_TtC26DocumentManagerExecutables19DOCStatusFooterView)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToWindow;
@end

@implementation DOCStatusFooterView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DOCStatusFooterView *)&v4 didMoveToWindow];
  window = [v2 window];
  if (window)
  {

    DOCStatusFooterView.updateQuotaLabelFont()();
    DOCStatusFooterView.updateFolderInformationLabel()();
  }
}

- (_TtC26DocumentManagerExecutables19DOCStatusFooterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = self + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    selfCopy = self;
    v10 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  specialized DOCStatusFooterView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(interactionCopy);
  v10 = v9;

  return v10;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview;
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview);
  if (v6)
  {
    selfCopy = self;
    [v6 removeFromSuperview];
    v9 = *(&self->super.super.super.super.super.isa + v5);
    *(&self->super.super.super.super.super.isa + v5) = 0;
  }
}

@end