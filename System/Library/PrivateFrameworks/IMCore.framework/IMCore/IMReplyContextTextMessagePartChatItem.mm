@interface IMReplyContextTextMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0;
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0 shouldDisplayLink:(BOOL)self1;
@end

@implementation IMReplyContextTextMessagePartChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0
{
  itemCopy = item;
  parentItemCopy = parentItem;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = IMReplyContextTextMessagePartChatItem;
  v24 = 0;
  v19 = [(IMTextMessagePartChatItem *)&v27 _initWithItem:itemCopy text:text translationSecondaryText:0 index:index messagePartRange:range.location subject:range.length isShowingEditHistory:subject showTranslationAlternateText:v24];
  if (v19)
  {
    v20 = objc_msgSend_guid(itemCopy, v17, v18);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v19, v22, v21);
    objc_storeStrong(v19 + 26, parentItem);
    *(v19 + 200) = me;
    objc_storeStrong(v19 + 27, d);
  }

  return v19;
}

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range subject:(id)self0 shouldDisplayLink:(BOOL)self1
{
  meCopy = me;
  itemCopy = item;
  obj = d;
  parentItemCopy = parentItem;
  dCopy = d;
  v30.receiver = self;
  v30.super_class = IMReplyContextTextMessagePartChatItem;
  *(&v25 + 1) = 0;
  LOBYTE(v25) = link;
  v20 = [(IMTextMessagePartChatItem *)&v30 _initWithItem:itemCopy text:text translationSecondaryText:0 index:index messagePartRange:range.location subject:range.length shouldDisplayLink:subject isShowingEditHistory:v25 showTranslationAlternateText:?];
  if (v20)
  {
    v21 = objc_msgSend_guid(itemCopy, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(v20, v23, v22);
    objc_storeStrong(v20 + 26, parentItem);
    *(v20 + 200) = v27;
    objc_storeStrong(v20 + 27, obj);
  }

  return v20;
}

@end