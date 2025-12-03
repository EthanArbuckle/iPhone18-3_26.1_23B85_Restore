@interface IMScheduledSectionDateChatItem
- (IMScheduledSectionDateChatItem)initWithItem:(id)item;
@end

@implementation IMScheduledSectionDateChatItem

- (IMScheduledSectionDateChatItem)initWithItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = IMScheduledSectionDateChatItem;
  v7 = [(IMChatItem *)&v11 _initWithItem:itemCopy];
  if (v7)
  {
    v8 = objc_msgSend_time(itemCopy, v5, v6);
    date = v7->_date;
    v7->_date = v8;
  }

  return v7;
}

@end