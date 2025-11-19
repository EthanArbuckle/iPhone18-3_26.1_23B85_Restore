@interface DropletShapeView
- (_TtC9DropletUI16DropletShapeView)initWithCoder:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation DropletShapeView

- (_TtC9DropletUI16DropletShapeView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC9DropletUI16DropletShapeView_boundaryEdgesPreference;
  *v3 = 0;
  v3[8] = 1;
  v4 = self + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineFadeLengthsPreference;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = self + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineTypePreference;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  v5[80] = -1;
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC9DropletUI16DropletShapeView_keylineWidth);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions) = 0;
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions);
  if (v2)
  {
    v3 = self;
    [v2 invalidate];
    v4.receiver = v3;
    v4.super_class = type metadata accessor for DropletShapeView();
    [(DropletShapeView *)&v4 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_249ECBDF0();
}

@end