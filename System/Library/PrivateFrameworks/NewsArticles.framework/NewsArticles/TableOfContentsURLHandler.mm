@interface TableOfContentsURLHandler
- (_TtC12NewsArticles25TableOfContentsURLHandler)init;
- (id)viewControllerForURL:(id)l;
- (void)commitViewController:(id)controller URL:(id)l;
- (void)openURL:(id)l;
@end

@implementation TableOfContentsURLHandler

- (_TtC12NewsArticles25TableOfContentsURLHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)openURL:(id)l
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  selfCopy = self;
  sub_1D7A068F0(v8);

  (*(v5 + 8))(v8, v4);
}

- (id)viewControllerForURL:(id)l
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  selfCopy = self;
  sub_1D7A068F0(v8);

  (*(v5 + 8))(v8, v4);

  return 0;
}

- (void)commitViewController:(id)controller URL:(id)l
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  (*(v5 + 8))(v8, v4);
}

@end