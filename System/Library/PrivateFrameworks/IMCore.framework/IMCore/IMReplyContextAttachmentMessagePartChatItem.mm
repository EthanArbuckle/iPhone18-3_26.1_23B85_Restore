@interface IMReplyContextAttachmentMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1;
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2;
@end

@implementation IMReplyContextAttachmentMessagePartChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1
{
  itemCopy = item;
  obj = d;
  parentItemCopy = parentItem;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = IMReplyContextAttachmentMessagePartChatItem;
  context = [(IMAttachmentMessagePartChatItem *)&v28 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUID:range.length chatContext:iD, context];
  if (context)
  {
    v21 = objc_msgSend_guid(itemCopy, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(context, v23, v22);
    objc_storeStrong(context + 29, parentItem);
    *(context + 224) = me;
    objc_storeStrong(context + 30, obj);
  }

  return context;
}

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2
{
  itemCopy = item;
  obj = parentItem;
  parentItemCopy = parentItem;
  dCopy = d;
  dCopy2 = d;
  v30.receiver = self;
  v30.super_class = IMReplyContextAttachmentMessagePartChatItem;
  items = [(IMAttachmentMessagePartChatItem *)&v30 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUID:range.length chatContext:iD visibleAssociatedMessageChatItems:context, items];
  if (items)
  {
    v21 = objc_msgSend_guid(itemCopy, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(items, v23, v22);
    objc_storeStrong(items + 29, obj);
    *(items + 224) = me;
    objc_storeStrong(items + 30, dCopy);
  }

  return items;
}

@end