@interface ZoomableScrollViewWrapper
- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithCoder:(id)a3;
- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation ZoomableScrollViewWrapper

- (void)layoutSubviews
{
  v2 = self;
  sub_1A3379C18();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(ZoomableScrollViewWrapper *)v6 bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    v7 = *(&v6->super.super.super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_scrollView);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end