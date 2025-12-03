@interface IMTranscriptPluginStatusChatItem
- (id)_initWithItem:(id)item dataSource:(id)source statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMTranscriptPluginStatusChatItem

- (id)_initWithItem:(id)item dataSource:(id)source statusItemSequenceNumber:(unint64_t)number
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = IMTranscriptPluginStatusChatItem;
  v10 = [(IMMessageStatusChatItem *)&v13 _initWithItem:item statusType:16 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:number];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 15, source);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_messageItem(self, a2, zone);
  v7 = objc_msgSend_statusItemSequenceNumber(self, v5, v6);
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend__initWithItem_dataSource_statusItemSequenceNumber_(v8, v9, v4, self->_dataSource, v7);

  return v10;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  v5 = objc_msgSend_messageItem(self, a2, number);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend__initWithItem_dataSource_statusItemSequenceNumber_(v6, v7, v5, self->_dataSource, number);

  return v8;
}

@end