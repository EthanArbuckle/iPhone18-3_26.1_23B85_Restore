@interface EmptyHeaderCollectionReusableView
- (_TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView)initWithFrame:(CGRect)frame;
@end

@implementation EmptyHeaderCollectionReusableView

- (_TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  v9 = type metadata accessor for EmptyHeaderCollectionReusableView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(EmptyHeaderCollectionReusableView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyHeaderCollectionReusableView();
  coderCopy = coder;
  v6 = [(EmptyHeaderCollectionReusableView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end