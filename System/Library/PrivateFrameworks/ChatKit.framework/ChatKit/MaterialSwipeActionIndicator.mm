@interface MaterialSwipeActionIndicator
- (CGSize)preferredSize;
- (_TtC7ChatKit28MaterialSwipeActionIndicator)initWithFrame:(CGRect)a3;
- (double)blurRadius;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)a3;
@end

@implementation MaterialSwipeActionIndicator

- (CGSize)preferredSize
{
  sub_190921AF4(self, a2, &selRef_endingMaterialReplyIndicatorSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)blurRadius
{
  v2 = self;
  v3 = sub_190A86BA4();

  return v3;
}

- (void)setBlurRadius:(double)a3
{
  v3 = self;
  sub_190921D3C();
}

- (_TtC7ChatKit28MaterialSwipeActionIndicator)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_vibrancyStroke;
  if (qword_1EAD51A08 != -1)
  {
    swift_once();
  }

  v9 = byte_1EAD570E8;
  v10 = objc_allocWithZone(type metadata accessor for VibrancyBackgroundLayerView());
  *(&self->super.super.super.super.isa + v8) = sub_190C205CC(v9, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_materialView;
  v12 = byte_1EAD570E8;
  v13 = objc_allocWithZone(type metadata accessor for CKUnborderedBackdropMaterialView());
  *(&self->super.super.super.super.isa + v11) = sub_1908F0230(v12, 0.0, 0.0, 0.0, 0.0);
  v15.receiver = self;
  v15.super_class = type metadata accessor for MaterialSwipeActionIndicator();
  return [(CKSwipeActionIndicator *)&v15 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190922278();
}

@end