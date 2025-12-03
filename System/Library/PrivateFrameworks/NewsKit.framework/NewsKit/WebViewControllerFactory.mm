@interface WebViewControllerFactory
- (_TtC7NewsKit24WebViewControllerFactory)init;
- (id)createViewControllerForURL:(id)l;
@end

@implementation WebViewControllerFactory

- (id)createViewControllerForURL:(id)l
{
  v3 = sub_25BEF8098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8088();
  (*(v4 + 8))(v7, v3);

  return 0;
}

- (_TtC7NewsKit24WebViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(WebViewControllerFactory *)&v3 init];
}

@end