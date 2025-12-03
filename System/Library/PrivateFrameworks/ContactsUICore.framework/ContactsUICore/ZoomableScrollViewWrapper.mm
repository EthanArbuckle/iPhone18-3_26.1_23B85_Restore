@interface ZoomableScrollViewWrapper
- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithCoder:(id)coder;
- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation ZoomableScrollViewWrapper

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A3379C18();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  selfCopy = self;
  [(ZoomableScrollViewWrapper *)selfCopy bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_scrollView);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (_TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end