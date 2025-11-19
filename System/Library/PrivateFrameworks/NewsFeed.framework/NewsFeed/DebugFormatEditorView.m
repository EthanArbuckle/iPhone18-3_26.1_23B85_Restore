@interface DebugFormatEditorView
- (_TtC8NewsFeed21DebugFormatEditorView)initWithCoder:(id)a3;
- (_TtC8NewsFeed21DebugFormatEditorView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation DebugFormatEditorView

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(DebugFormatEditorView *)&v7 willMoveToWindow:v4];
  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1D70A4F6C();
}

- (_TtC8NewsFeed21DebugFormatEditorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8NewsFeed21DebugFormatEditorView__isLiveResizing;
  v12 = 0;
  sub_1D70A52D4();
  swift_allocObject();
  *(&self->super.super.super.isa + v9) = sub_1D725B2FC();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(DebugFormatEditorView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed21DebugFormatEditorView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC8NewsFeed21DebugFormatEditorView__isLiveResizing;
  v11 = 0;
  sub_1D70A52D4();
  swift_allocObject();
  v7 = a3;
  *(&self->super.super.super.isa + v6) = sub_1D725B2FC();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(DebugFormatEditorView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end