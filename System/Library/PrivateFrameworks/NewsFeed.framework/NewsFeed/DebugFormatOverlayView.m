@interface DebugFormatOverlayView
- (BOOL)isUserInteractionEnabled;
- (_TtC8NewsFeed22DebugFormatOverlayView)initWithFrame:(CGRect)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation DebugFormatOverlayView

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DebugFormatOverlayView *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(DebugFormatOverlayView *)&v5 setUserInteractionEnabled:v3];
  sub_1D6B5F610();
}

- (_TtC8NewsFeed22DebugFormatOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end