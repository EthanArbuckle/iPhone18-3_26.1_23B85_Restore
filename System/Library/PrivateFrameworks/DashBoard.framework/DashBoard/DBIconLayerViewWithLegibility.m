@interface DBIconLayerViewWithLegibility
- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithCoder:(id)a3;
- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setIconLayer:(id)a3;
- (void)setIconLayer:(id)a3 animated:(BOOL)a4;
@end

@implementation DBIconLayerViewWithLegibility

- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithCoder:(id)a3
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  DBIconLayerViewWithLegibility.layoutSubviews()();
}

- (void)setIconLayer:(id)a3
{
  v6 = a3;
  v5 = self;
  v8.value.super.isa = a3;
  DBIconLayerView.set(_:)(v8);
}

- (void)setIconLayer:(id)a3 animated:(BOOL)a4
{
  v9 = a3;
  v7 = self;
  v11.value.super.isa = a3;
  v11.is_nil = a4;
  DBIconLayerView.set(_:animated:)(v11, v8);
}

- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end