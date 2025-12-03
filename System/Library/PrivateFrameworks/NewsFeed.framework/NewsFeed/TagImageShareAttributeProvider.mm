@interface TagImageShareAttributeProvider
- (_TtC8NewsFeed30TagImageShareAttributeProvider)init;
- (void)createShareSportsEventImageFor:(id)for size:(CGSize)size logoWidth:(double)width completion:(id)completion;
- (void)createSportsShareImageFor:(id)for completion:(id)completion;
@end

@implementation TagImageShareAttributeProvider

- (_TtC8NewsFeed30TagImageShareAttributeProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TagImageShareAttributeProvider *)&v3 init];
}

- (void)createSportsShareImageFor:(id)for completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D6BEB0EC(for, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)createShareSportsEventImageFor:(id)for size:(CGSize)size logoWidth:(double)width completion:(id)completion
{
  height = size.height;
  width = size.width;
  v11 = _Block_copy(completion);
  _Block_copy(v11);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D6BEB728(for, width, height, width, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);
  swift_unknownObjectRelease();
}

@end