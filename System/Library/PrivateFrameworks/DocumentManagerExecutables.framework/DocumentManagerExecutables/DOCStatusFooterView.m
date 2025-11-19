@interface DOCStatusFooterView
- (_TtC26DocumentManagerExecutables19DOCStatusFooterView)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToWindow;
@end

@implementation DOCStatusFooterView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DOCStatusFooterView *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    DOCStatusFooterView.updateQuotaLabelFont()();
    DOCStatusFooterView.updateFolderInformationLabel()();
  }
}

- (_TtC26DocumentManagerExecutables19DOCStatusFooterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = self + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = self;
    v10 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized DOCStatusFooterView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(v6);
  v10 = v9;

  return v10;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview;
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview);
  if (v6)
  {
    v8 = self;
    [v6 removeFromSuperview];
    v9 = *(&self->super.super.super.super.super.isa + v5);
    *(&self->super.super.super.super.super.isa + v5) = 0;
  }
}

@end