@interface InternalBannerPlacementUIView
- (CGSize)intrinsicContentSize;
@end

@implementation InternalBannerPlacementUIView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_bottomView);
  v3 = self;
  sub_1C2DDC248(v2);
  v5 = v4;
  sub_1C2DDC248(*(&v3->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_leadingView));
  v7 = v6;
  sub_1C2DDC248(*(&v3->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI29InternalBannerPlacementUIView_trailingView));
  v9 = v8;

  if (v7 > v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = v5 + v10 + 16.0;
  v12 = 1.79769313e308;
  result.height = v11;
  result.width = v12;
  return result;
}

@end