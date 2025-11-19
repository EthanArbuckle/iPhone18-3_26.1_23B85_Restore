@interface CircularProgressView
- (_TtC9MomentsUI20CircularProgressView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)touchPlayback:(id)a3;
@end

@implementation CircularProgressView

- (void)touchPlayback:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CircularProgressView.touchPlayback(_:)();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  CircularProgressView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)layoutSubviews
{
  v2 = self;
  CircularProgressView.layoutSubviews()();
}

- (_TtC9MomentsUI20CircularProgressView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end