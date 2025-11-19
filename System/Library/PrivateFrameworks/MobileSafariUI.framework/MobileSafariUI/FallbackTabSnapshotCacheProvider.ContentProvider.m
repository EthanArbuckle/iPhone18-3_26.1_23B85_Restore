@interface FallbackTabSnapshotCacheProvider.ContentProvider
- (_TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider)initWithWebView:(id)a3 contentFrame:(CGRect)a4;
- (void)prepareForSnapshotOfSize:(CGSize)a3 completion:(id)a4;
@end

@implementation FallbackTabSnapshotCacheProvider.ContentProvider

- (void)prepareForSnapshotOfSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = self;
  sub_215A20FB0(sub_215A26210, v8, width, height);
}

- (_TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider)initWithWebView:(id)a3 contentFrame:(CGRect)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end