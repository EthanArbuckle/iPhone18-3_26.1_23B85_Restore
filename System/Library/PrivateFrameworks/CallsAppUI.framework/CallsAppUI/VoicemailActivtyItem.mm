@interface VoicemailActivtyItem
- (_TtC10CallsAppUI20VoicemailActivtyItem)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation VoicemailActivtyItem

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v4 = sub_1CFC9BF28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL, v4);
  v8 = sub_1CFCA02E8();

  return v8;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v5 = sub_1CFC9BF28();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL, v5);
  v9 = sub_1CFCA02E8();

  return v9;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_1CFBE5E9C();

  return v6;
}

- (_TtC10CallsAppUI20VoicemailActivtyItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end