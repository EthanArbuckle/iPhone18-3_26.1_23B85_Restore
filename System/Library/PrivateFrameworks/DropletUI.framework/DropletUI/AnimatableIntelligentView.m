@interface AnimatableIntelligentView
- (_TtC9DropletUI25AnimatableIntelligentView)initWithCoder:(id)a3;
- (_TtC9DropletUI25AnimatableIntelligentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation AnimatableIntelligentView

- (_TtC9DropletUI25AnimatableIntelligentView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView) = 0;
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AnimatableIntelligentView();
  v2 = v4.receiver;
  [(AnimatableIntelligentView *)&v4 layoutSubviews];
  v3 = sub_249ED34F4();
  [v2 bounds];
  [v3 setFrame_];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (a4)
  {
    v6 = sub_249ED6C70();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_249ED3258(a3, v6, v8);
}

- (_TtC9DropletUI25AnimatableIntelligentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end