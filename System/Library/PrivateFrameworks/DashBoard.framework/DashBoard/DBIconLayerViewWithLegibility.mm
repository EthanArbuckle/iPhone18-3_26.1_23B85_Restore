@interface DBIconLayerViewWithLegibility
- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithCoder:(id)coder;
- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIconLayer:(id)layer;
- (void)setIconLayer:(id)layer animated:(BOOL)animated;
@end

@implementation DBIconLayerViewWithLegibility

- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithCoder:(id)coder
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  DBIconLayerViewWithLegibility.layoutSubviews()();
}

- (void)setIconLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  v8.value.super.isa = layer;
  DBIconLayerView.set(_:)(v8);
}

- (void)setIconLayer:(id)layer animated:(BOOL)animated
{
  layerCopy = layer;
  selfCopy = self;
  v11.value.super.isa = layer;
  v11.is_nil = animated;
  DBIconLayerView.set(_:animated:)(v11, v8);
}

- (_TtC9DashBoard29DBIconLayerViewWithLegibility)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end