@interface TagImageShareAttributeProvider
- (_TtC8NewsFeed30TagImageShareAttributeProvider)init;
- (void)createShareSportsEventImageFor:(id)a3 size:(CGSize)a4 logoWidth:(double)a5 completion:(id)a6;
- (void)createSportsShareImageFor:(id)a3 completion:(id)a4;
@end

@implementation TagImageShareAttributeProvider

- (_TtC8NewsFeed30TagImageShareAttributeProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TagImageShareAttributeProvider *)&v3 init];
}

- (void)createSportsShareImageFor:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v7 = self;
  sub_1D6BEB0EC(a3, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)createShareSportsEventImageFor:(id)a3 size:(CGSize)a4 logoWidth:(double)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = _Block_copy(a6);
  _Block_copy(v11);
  swift_unknownObjectRetain();
  v12 = self;
  sub_1D6BEB728(a3, width, height, a5, v12, v11);
  _Block_release(v11);
  _Block_release(v11);
  swift_unknownObjectRelease();
}

@end