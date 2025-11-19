@interface DBIconLayerView
- (_TtC9DashBoard15DBIconLayerView)init;
- (_TtC9DashBoard15DBIconLayerView)initWithCoder:(id)a3;
- (_TtC9DashBoard15DBIconLayerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setIconLayer:(id)a3;
- (void)setIconLayer:(id)a3 animated:(BOOL)a4;
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

- (_TtC9DashBoard15DBIconLayerView)initWithCoder:(id)a3
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  DBIconLayerView.layoutSubviews()();
}

- (void)setIconLayer:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = v6;
  v8 = v6;
  v10.value.super.isa = a3;
  v10.is_nil = 1;
  DBIconLayerView.set(_:animated:)(v10, v7);
}

- (void)setIconLayer:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  v9 = v8;
  v10 = v8;
  v12.value.super.isa = a3;
  v12.is_nil = a4;
  DBIconLayerView.set(_:animated:)(v12, v9);
}

- (_TtC9DashBoard15DBIconLayerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end