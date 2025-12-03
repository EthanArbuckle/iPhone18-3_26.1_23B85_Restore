@interface IMCustomAcknowledgementChatItem
- (IMBalloonPluginDataSource)dataSource;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation IMCustomAcknowledgementChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_sender(self, v8, v9);
  v13 = objc_msgSend_tapback(self, v11, v12);
  v15 = objc_msgSend__initWithItem_sender_tapback_(v4, v14, v7, v10, v13);

  return v15;
}

- (id)_initWithItem:(id)item sender:(id)sender
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = IMCustomAcknowledgementChatItem;
  v9 = [(IMAssociatedMessageChatItem *)&v13 _initWithItem:itemCopy sender:sender];
  if (v9)
  {
    v10 = objc_msgSend_message(itemCopy, v7, v8);
    v11 = v9[20];
    v9[20] = v10;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_dataSource)
  {
    v4 = objc_msgSend_sharedInstance(IMBalloonPluginManager, a2, v2);
    objc_msgSend_pluginChatItemRequestedReleaseDataSource_(v4, v5, self);
  }

  v6.receiver = self;
  v6.super_class = IMCustomAcknowledgementChatItem;
  [(IMCustomAcknowledgementChatItem *)&v6 dealloc];
}

- (IMBalloonPluginDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [IMPluginPayload alloc];
    v6 = objc_msgSend_initWithMessage_(v4, v5, self->_message);
    v9 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v7, v8);
    v11 = objc_msgSend_dataSourceForPluginPayload_(v9, v10, v6);
    v12 = self->_dataSource;
    self->_dataSource = v11;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

@end