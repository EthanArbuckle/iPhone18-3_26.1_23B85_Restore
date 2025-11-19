@interface ArticleScrollPositionManager
- (id)scrollPositionForHeadline:(id)a3;
- (void)setPosition:(id)a3 headline:(id)a4;
@end

@implementation ArticleScrollPositionManager

- (void)setPosition:(id)a3 headline:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();

  sub_1D7C582C8(v5, a4);

  swift_unknownObjectRelease();
}

- (id)scrollPositionForHeadline:(id)a3
{
  swift_unknownObjectRetain();

  v4 = sub_1D7C5886C(a3);
  swift_unknownObjectRelease();

  return v4;
}

@end