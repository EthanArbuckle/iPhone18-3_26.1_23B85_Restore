@interface DBIconLayerView
- (_TtC9DashBoard15DBIconLayerView)init;
- (_TtC9DashBoard15DBIconLayerView)initWithCoder:(id)coder;
- (_TtC9DashBoard15DBIconLayerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIconLayer:(id)layer;
- (void)setIconLayer:(id)layer animated:(BOOL)animated;
@end

@implementation DBIconLayerView

- (_TtC9DashBoard15DBIconLayerView)init
{
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = DBIconLayerView.init(allowGlassGrouping:)(1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (_TtC9DashBoard15DBIconLayerView)initWithCoder:(id)coder
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  DBIconLayerView.layoutSubviews()();
}

- (void)setIconLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  v7 = selfCopy;
  v8 = selfCopy;
  v10.value.super.isa = layer;
  v10.is_nil = 1;
  DBIconLayerView.set(_:animated:)(v10, v7);
}

- (void)setIconLayer:(id)layer animated:(BOOL)animated
{
  layerCopy = layer;
  selfCopy = self;
  v9 = selfCopy;
  v10 = selfCopy;
  v12.value.super.isa = layer;
  v12.is_nil = animated;
  DBIconLayerView.set(_:animated:)(v12, v9);
}

- (_TtC9DashBoard15DBIconLayerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end