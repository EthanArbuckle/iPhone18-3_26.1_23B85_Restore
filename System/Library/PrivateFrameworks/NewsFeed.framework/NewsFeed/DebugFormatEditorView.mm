@interface DebugFormatEditorView
- (_TtC8NewsFeed21DebugFormatEditorView)initWithCoder:(id)coder;
- (_TtC8NewsFeed21DebugFormatEditorView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation DebugFormatEditorView

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  windowCopy = window;
  v5 = v7.receiver;
  [(DebugFormatEditorView *)&v7 willMoveToWindow:windowCopy];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver_];
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1D70A4F6C();
}

- (_TtC8NewsFeed21DebugFormatEditorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC8NewsFeed21DebugFormatEditorView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC8NewsFeed21DebugFormatEditorView__isLiveResizing;
  v11 = 0;
  sub_1D70A52D4();
  swift_allocObject();
  coderCopy = coder;
  *(&self->super.super.super.isa + v6) = sub_1D725B2FC();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(DebugFormatEditorView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end