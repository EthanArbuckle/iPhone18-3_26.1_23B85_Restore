@interface URLPreviewViewControllerFactory
- (_TtC12NewsArticles31URLPreviewViewControllerFactory)init;
- (id)createViewControllerForURL:(id)a3;
@end

@implementation URLPreviewViewControllerFactory

- (id)createViewControllerForURL:(id)a3
{
  v3 = sub_1D7D2824C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  v8 = _s12NewsArticles31URLPreviewViewControllerFactoryC06createdE03forSo06UIViewE0CSg10Foundation3URLV_tF_0();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC12NewsArticles31URLPreviewViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(URLPreviewViewControllerFactory *)&v3 init];
}

@end