@interface SendMenuParentView
- (_TtC7ChatKit18SendMenuParentView)init;
- (_TtC7ChatKit18SendMenuParentView)initWithCoder:(id)a3;
- (_TtC7ChatKit18SendMenuParentView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SendMenuParentView

- (_TtC7ChatKit18SendMenuParentView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SendMenuParentView();
  v2 = [(SendMenuParentView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [(SendMenuParentView *)v4 setBackgroundColor:v5];

  [(SendMenuParentView *)v4 setAccessibilityViewIsModal:1];
  return v4;
}

- (_TtC7ChatKit18SendMenuParentView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting) = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  v9 = 0;
  if (*(&self->super.super.super.isa + v8) == 1)
  {
    v11.receiver = self;
    v11.super_class = type metadata accessor for SendMenuParentView();
    v9 = [(SendMenuParentView *)&v11 hitTest:a4 withEvent:x, y];
  }

  return v9;
}

- (_TtC7ChatKit18SendMenuParentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end