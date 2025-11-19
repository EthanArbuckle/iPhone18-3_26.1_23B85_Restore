@interface IMReplyContextTextMessagePartChatItem
- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 subject:(id)a10;
- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 subject:(id)a10 shouldDisplayLink:(BOOL)a11;
@end

@implementation IMReplyContextTextMessagePartChatItem

- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 subject:(id)a10
{
  v15 = a3;
  v26 = a4;
  v16 = a5;
  v27.receiver = self;
  v27.super_class = IMReplyContextTextMessagePartChatItem;
  v24 = 0;
  v19 = [(IMTextMessagePartChatItem *)&v27 _initWithItem:v15 text:a7 translationSecondaryText:0 index:a8 messagePartRange:a9.location subject:a9.length isShowingEditHistory:a10 showTranslationAlternateText:v24];
  if (v19)
  {
    v20 = objc_msgSend_guid(v15, v17, v18);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v19, v22, v21);
    objc_storeStrong(v19 + 26, a4);
    *(v19 + 200) = a6;
    objc_storeStrong(v19 + 27, a5);
  }

  return v19;
}

- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 text:(id)a7 index:(int64_t)a8 messagePartRange:(_NSRange)a9 subject:(id)a10 shouldDisplayLink:(BOOL)a11
{
  v26 = a6;
  v16 = a3;
  obj = a5;
  v29 = a4;
  v17 = a5;
  v30.receiver = self;
  v30.super_class = IMReplyContextTextMessagePartChatItem;
  *(&v25 + 1) = 0;
  LOBYTE(v25) = a11;
  v20 = [(IMTextMessagePartChatItem *)&v30 _initWithItem:v16 text:a7 translationSecondaryText:0 index:a8 messagePartRange:a9.location subject:a9.length shouldDisplayLink:a10 isShowingEditHistory:v25 showTranslationAlternateText:?];
  if (v20)
  {
    v21 = objc_msgSend_guid(v16, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(v20, v23, v22);
    objc_storeStrong(v20 + 26, a4);
    *(v20 + 200) = v27;
    objc_storeStrong(v20 + 27, obj);
  }

  return v20;
}

@end