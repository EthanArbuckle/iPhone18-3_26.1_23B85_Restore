@interface IMReplyContextAggregateAttachmentMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1;
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2;
@end

@implementation IMReplyContextAggregateAttachmentMessagePartChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1
{
  itemCopy = item;
  obj = d;
  parentItemCopy = parentItem;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = IMReplyContextAggregateAttachmentMessagePartChatItem;
  context = [(IMAggregateAttachmentMessagePartChatItem *)&v28 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUIDs:range.length chatContext:ds, context];
  if (context)
  {
    v21 = objc_msgSend_guid(itemCopy, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(context, v23, v22);
    objc_storeStrong(context + 31, parentItem);
    *(context + 240) = me;
    objc_storeStrong(context + 32, obj);
  }

  return context;
}

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)self0 chatContext:(id)self1 visibleAssociatedMessageChatItems:(id)self2
{
  itemCopy = item;
  obj = parentItem;
  parentItemCopy = parentItem;
  dCopy = d;
  dCopy2 = d;
  v30.receiver = self;
  v30.super_class = IMReplyContextAggregateAttachmentMessagePartChatItem;
  items = [(IMAggregateAttachmentMessagePartChatItem *)&v30 _initWithItem:itemCopy text:text index:index messagePartRange:range.location transferGUIDs:range.length chatContext:ds visibleAssociatedMessageChatItems:context, items];
  if (items)
  {
    v21 = objc_msgSend_guid(itemCopy, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(items, v23, v22);
    objc_storeStrong(items + 31, obj);
    *(items + 240) = me;
    objc_storeStrong(items + 32, dCopy);
  }

  return items;
}

@end