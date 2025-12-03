@interface WebEmbedURLHandlerDelegate
- (_TtC8NewsFeed26WebEmbedURLHandlerDelegate)init;
- (void)URLHandler:(id)handler wantsToPresentViewController:(id)controller animated:(BOOL)animated;
- (void)URLHandler:(id)handler willOpenURL:(id)l;
@end

@implementation WebEmbedURLHandlerDelegate

- (void)URLHandler:(id)handler wantsToPresentViewController:(id)controller animated:(BOOL)animated
{
  handlerCopy = handler;
  controllerCopy = controller;
  selfCopy = self;
  sub_1D61363B4(controllerCopy, animated);
}

- (void)URLHandler:(id)handler willOpenURL:(id)l
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72584EC();
  handlerCopy = handler;
  selfCopy = self;
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