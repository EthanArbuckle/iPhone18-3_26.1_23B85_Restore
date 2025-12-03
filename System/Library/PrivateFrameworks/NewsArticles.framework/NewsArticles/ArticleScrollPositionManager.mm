@interface ArticleScrollPositionManager
- (id)scrollPositionForHeadline:(id)headline;
- (void)setPosition:(id)position headline:(id)headline;
@end

@implementation ArticleScrollPositionManager

- (void)setPosition:(id)position headline:(id)headline
{
  positionCopy = position;
  swift_unknownObjectRetain();

  sub_1D7C582C8(positionCopy, headline);

  swift_unknownObjectRelease();
}

- (id)scrollPositionForHeadline:(id)headline
{
  swift_unknownObjectRetain();

  v4 = sub_1D7C5886C(headline);
  swift_unknownObjectRelease();

  return v4;
}

@end