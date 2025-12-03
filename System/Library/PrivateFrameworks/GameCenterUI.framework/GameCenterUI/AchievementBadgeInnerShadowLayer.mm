@interface AchievementBadgeInnerShadowLayer
- (_TtC12GameCenterUI32AchievementBadgeInnerShadowLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation AchievementBadgeInnerShadowLayer

- (_TtC12GameCenterUI32AchievementBadgeInnerShadowLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_24E3487A8();
  swift_unknownObjectRelease();
  return sub_24DFC39B4(v4);
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_24DFC3B00(contextCopy);
}

@end