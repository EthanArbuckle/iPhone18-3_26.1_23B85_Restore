@interface WebEmbedURLHandlerDelegate
- (_TtC8NewsFeed26WebEmbedURLHandlerDelegate)init;
- (void)URLHandler:(id)a3 wantsToPresentViewController:(id)a4 animated:(BOOL)a5;
- (void)URLHandler:(id)a3 willOpenURL:(id)a4;
@end

@implementation WebEmbedURLHandlerDelegate

- (void)URLHandler:(id)a3 wantsToPresentViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1D61363B4(v9, a5);
}

- (void)URLHandler:(id)a3 willOpenURL:(id)a4
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72584EC();
  v11 = a3;
  v12 = self;
  sub_1D61364D4(v10);

  (*(v7 + 8))(v10, v6);
}

- (_TtC8NewsFeed26WebEmbedURLHandlerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end