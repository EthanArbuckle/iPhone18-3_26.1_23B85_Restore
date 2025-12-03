@interface FallbackTabSnapshotCacheProvider.ContentProvider
- (_TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider)initWithWebView:(id)view contentFrame:(CGRect)frame;
- (void)prepareForSnapshotOfSize:(CGSize)size completion:(id)completion;
@end

@implementation FallbackTabSnapshotCacheProvider.ContentProvider

- (void)prepareForSnapshotOfSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  selfCopy = self;
  sub_215A20FB0(sub_215A26210, v8, width, height);
}

- (_TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider)initWithWebView:(id)view contentFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end