@interface MessageListGroupedSenderCollectionViewCell
- (EFCancelable)messageListItemFetchTimeoutCancelable;
- (EMCollectionItemID)itemID;
- (EMMessageListItem)messageListItem;
- (id)messageListItemFuture;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyIndicatorPreviewChangeAction:(id)action;
- (void)prepareForReuse;
- (void)setItemID:(id)d;
- (void)setMessageListItem:(id)item;
- (void)setMessageListItemFetchTimeoutCancelable:(id)cancelable;
- (void)setMessageListItemFuture:(id)future;
- (void)updateWithMessageListItem:(id)item avatarResult:(id)result maximumPreviewLines:(int64_t)lines hideAvatar:(BOOL)avatar displayName:(id)name;
@end

@implementation MessageListGroupedSenderCollectionViewCell

- (EMCollectionItemID)itemID
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListGroupedSenderCollectionViewCell.itemID.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setItemID:(id)d
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.itemID.setter(d);
  MEMORY[0x277D82BD8](self);
}

- (EMMessageListItem)messageListItem
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListGroupedSenderCollectionViewCell.messageListItem.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setMessageListItem:(id)item
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.messageListItem.setter(item);
  MEMORY[0x277D82BD8](self);
}

- (id)messageListItemFuture
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListGroupedSenderCollectionViewCell.messageListItemFuture.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setMessageListItemFuture:(id)future
{
  MEMORY[0x277D82BE0](future);
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.messageListItemFuture.setter(future);
  MEMORY[0x277D82BD8](self);
}

- (EFCancelable)messageListItemFetchTimeoutCancelable
{
  MEMORY[0x277D82BE0](self);
  Timeout = MessageListGroupedSenderCollectionViewCell.messageListItemFetchTimeoutCancelable.getter();
  MEMORY[0x277D82BD8](self);

  return Timeout;
}

- (void)setMessageListItemFetchTimeoutCancelable:(id)cancelable
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.messageListItemFetchTimeoutCancelable.setter(cancelable);
  MEMORY[0x277D82BD8](self);
}

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

- (void)updateWithMessageListItem:(id)item avatarResult:(id)result maximumPreviewLines:(int64_t)lines hideAvatar:(BOOL)avatar displayName:(id)name
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](result);
  MEMORY[0x277D82BE0](name);
  MEMORY[0x277D82BE0](self);
  v11 = sub_214CCD394();
  v8 = sub_214CCF564();
  MessageListGroupedSenderCollectionViewCell.update(messageListItem:avatarResult:maximumPreviewLines:hideAvatar:displayName:)(item, result, lines, v11 & 1, v8, v9);

  MEMORY[0x277D82BD8](name);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](result);
  swift_unknownObjectRelease();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  selfCopy = self;
  stateCopy = state;
  v10 = sub_214CCDB84();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](stateCopy);
  v9 = &v5 - v6;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCDB64();
  MessageListGroupedSenderCollectionViewCell.updateConfiguration(using:)(v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](stateCopy);
  MEMORY[0x277D82BD8](selfCopy);
}

- (void)applyIndicatorPreviewChangeAction:(id)action
{
  MEMORY[0x277D82BE0](action);
  MEMORY[0x277D82BE0](self);
  MessageListGroupedSenderCollectionViewCell.applyIndicatorPreviewChangeAction(_:)(action);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](action);
}

@end