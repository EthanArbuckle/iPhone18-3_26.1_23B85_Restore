@interface IMReplyContextAggregateAttachmentMessagePartChatItem
- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 transferGUIDs:(id)a10 chatContext:(id)a11;
- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 transferGUIDs:(id)a10 chatContext:(id)a11 visibleAssociatedMessageChatItems:(id)a12;
@end

@implementation IMReplyContextAggregateAttachmentMessagePartChatItem

- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 transferGUIDs:(id)a10 chatContext:(id)a11
{
  v16 = a3;
  obj = a5;
  v27 = a4;
  v17 = a5;
  v28.receiver = self;
  v28.super_class = IMReplyContextAggregateAttachmentMessagePartChatItem;
  v20 = [(IMAggregateAttachmentMessagePartChatItem *)&v28 _initWithItem:v16 text:a7 index:a8 messagePartRange:a9.location transferGUIDs:a9.length chatContext:a10, a11];
  if (v20)
  {
    v21 = objc_msgSend_guid(v16, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(v20, v23, v22);
    objc_storeStrong(v20 + 31, a4);
    *(v20 + 240) = a6;
    objc_storeStrong(v20 + 32, obj);
  }

  return v20;
}

- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 transferGUIDs:(id)a10 chatContext:(id)a11 visibleAssociatedMessageChatItems:(id)a12
{
  v16 = a3;
  obj = a4;
  v29 = a4;
  v27 = a5;
  v17 = a5;
  v30.receiver = self;
  v30.super_class = IMReplyContextAggregateAttachmentMessagePartChatItem;
  v20 = [(IMAggregateAttachmentMessagePartChatItem *)&v30 _initWithItem:v16 text:a7 index:a8 messagePartRange:a9.location transferGUIDs:a9.length chatContext:a10 visibleAssociatedMessageChatItems:a11, a12];
  if (v20)
  {
    v21 = objc_msgSend_guid(v16, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(v20, v23, v22);
    objc_storeStrong(v20 + 31, obj);
    *(v20 + 240) = a6;
    objc_storeStrong(v20 + 32, v27);
  }

  return v20;
}

@end