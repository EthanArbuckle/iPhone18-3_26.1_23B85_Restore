@interface VideoLogoBackdropLayer
- (_TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer)init;
- (_TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer)initWithCoder:(id)a3;
- (_TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer)initWithLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation VideoLogoBackdropLayer

- (_TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
  v5 = sub_1D725E94C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(VideoLogoBackdropLayer *)&v8 init];
  [(VideoLogoBackdropLayer *)v6 setNeedsDisplayOnBoundsChange:1];
  return v6;
}

- (_TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  return sub_1D5E4962C(v4);
}

- (_TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeedP33_CC8D83E957AA6608BCA74C771D42D56B22VideoLogoBackdropLayer_gradientDescriptor;
  v6 = sub_1D725E94C();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(VideoLogoBackdropLayer *)&v8 init];
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_1D5E498CC(v4);
}

@end