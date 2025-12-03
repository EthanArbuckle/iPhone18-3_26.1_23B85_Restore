@interface WebEmbedShareActivityItemSource
- (_TtC7NewsUI231WebEmbedShareActivityItemSource)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation WebEmbedShareActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v4 = sub_219BDB954();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC7NewsUI231WebEmbedShareActivityItemSource_shareURL, v4);
  v7 = sub_219BF7984();

  return v7;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v5 = sub_219BDB954();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC7NewsUI231WebEmbedShareActivityItemSource_shareURL, v5);
  v8 = sub_219BF7984();

  return v8;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{

  v4 = sub_219BF53D4();

  return v4;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_allocWithZone(MEMORY[0x277CD46C8]);
  selfCopy = self;
  v6 = [v4 init];
  v7 = sub_219BF53D4();
  [v6 setTitle_];

  v8 = sub_219BDB854();
  [v6 setOriginalURL_];

  return v6;
}

- (_TtC7NewsUI231WebEmbedShareActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end