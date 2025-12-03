@interface WrapLayer
- (CGRect)bounds;
- (_TtC14CarPlayAssetUIP33_D494934E4D2CED7DFF04AAA732ED178E9WrapLayer)init;
- (_TtC14CarPlayAssetUIP33_D494934E4D2CED7DFF04AAA732ED178E9WrapLayer)initWithCoder:(id)coder;
- (_TtC14CarPlayAssetUIP33_D494934E4D2CED7DFF04AAA732ED178E9WrapLayer)initWithLayer:(id)layer;
- (void)setBounds:(CGRect)bounds;
@end

@implementation WrapLayer

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for WrapLayer();
  [(WrapLayer *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WrapLayer();
  v7 = v8.receiver;
  [(WrapLayer *)&v8 setBounds:x, y, width, height];
  sub_242C966C4();
}

- (_TtC14CarPlayAssetUIP33_D494934E4D2CED7DFF04AAA732ED178E9WrapLayer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WrapLayer();
  return [(WrapLayer *)&v3 init];
}

- (_TtC14CarPlayAssetUIP33_D494934E4D2CED7DFF04AAA732ED178E9WrapLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_242F058F0();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_2Tm(v8, v8[3]);
  v4 = sub_242F06100();
  v7.receiver = self;
  v7.super_class = type metadata accessor for WrapLayer();
  v5 = [(WrapLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2Tm(v8);
  return v5;
}

- (_TtC14CarPlayAssetUIP33_D494934E4D2CED7DFF04AAA732ED178E9WrapLayer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WrapLayer();
  coderCopy = coder;
  v5 = [(WrapLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end