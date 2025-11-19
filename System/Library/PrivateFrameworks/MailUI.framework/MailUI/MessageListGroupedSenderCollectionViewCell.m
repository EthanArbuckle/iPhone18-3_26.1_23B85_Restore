@interface MessageListGroupedSenderCollectionViewCell
- (EFCancelable)messageListItemFetchTimeoutCancelable;
- (EMCollectionItemID)itemID;
- (EMMessageListItem)messageListItem;
- (id)messageListItemFuture;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyIndicatorPreviewChangeAction:(id)a3;
- (void)prepareForReuse;
- (void)setItemID:(id)a3;
- (void)setMessageListItem:(id)a3;
- (void)setMessageListItemFetchTimeoutCancelable:(id)a3;
- (void)setMessageListItemFuture:(id)a3;
- (void)updateWithMessageListItem:(id)a3 avatarResult:(id)a4 maximumPreviewLines:(int64_t)a5 hideAvatar:(BOOL)a6 displayName:(id)a7;
@end

@implementation MessageListGroupedSenderCollectionViewCell

- (EMCollectionItemID)itemID
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListGroupedSenderCollectionViewCell.itemID.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setItemID:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.itemID.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (EMMessageListItem)messageListItem
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListGroupedSenderCollectionViewCell.messageListItem.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setMessageListItem:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.messageListItem.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (id)messageListItemFuture
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListGroupedSenderCollectionViewCell.messageListItemFuture.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setMessageListItemFuture:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.messageListItemFuture.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (EFCancelable)messageListItemFetchTimeoutCancelable
{
  MEMORY[0x277D82BE0](self);
  Timeout = MessageListGroupedSenderCollectionViewCell.messageListItemFetchTimeoutCancelable.getter();
  MEMORY[0x277D82BD8](self);

  return Timeout;
}

- (void)setMessageListItemFetchTimeoutCancelable:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.messageListItemFetchTimeoutCancelable.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

- (void)updateWithMessageListItem:(id)a3 avatarResult:(id)a4 maximumPreviewLines:(int64_t)a5 hideAvatar:(BOOL)a6 displayName:(id)a7
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a7);
  MEMORY[0x277D82BE0](self);
  v11 = sub_214CCD394();
  v8 = sub_214CCF564();
  MessageListGroupedSenderCollectionViewCell.update(messageListItem:avatarResult:maximumPreviewLines:hideAvatar:displayName:)(a3, a4, a5, v11 & 1, v8, v9);

  MEMORY[0x277D82BD8](a7);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a4);
  swift_unknownObjectRelease();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v12 = self;
  v11 = a3;
  v10 = sub_214CCDB84();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v9 = &v5 - v6;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCDB64();
  MessageListGroupedSenderCollectionViewCell.updateConfiguration(using:)(v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
}

- (void)applyIndicatorPreviewChangeAction:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.applyIndicatorPreviewChangeAction(_:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end