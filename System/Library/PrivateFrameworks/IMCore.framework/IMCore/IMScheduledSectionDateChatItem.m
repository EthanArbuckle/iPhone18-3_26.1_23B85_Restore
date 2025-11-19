@interface IMScheduledSectionDateChatItem
- (IMScheduledSectionDateChatItem)initWithItem:(id)a3;
@end

@implementation IMScheduledSectionDateChatItem

- (IMScheduledSectionDateChatItem)initWithItem:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IMScheduledSectionDateChatItem;
  v7 = [(IMChatItem *)&v11 _initWithItem:v4];
  if (v7)
  {
    v8 = objc_msgSend_time(v4, v5, v6);
    date = v7->_date;
    v7->_date = v8;
  }

  return v7;
}

@end