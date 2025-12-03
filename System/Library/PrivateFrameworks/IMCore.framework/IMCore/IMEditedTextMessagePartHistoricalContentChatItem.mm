@interface IMEditedTextMessagePartHistoricalContentChatItem
- (id)_initWithMessageItem:(id)item messagePartIndex:(int64_t)index historicalContent:(id)content editIndex:(int64_t)editIndex messagePartRange:(_NSRange)range subject:(id)subject showTranslationAlternateText:(BOOL)text;
@end

@implementation IMEditedTextMessagePartHistoricalContentChatItem

- (id)_initWithMessageItem:(id)item messagePartIndex:(int64_t)index historicalContent:(id)content editIndex:(int64_t)editIndex messagePartRange:(_NSRange)range subject:(id)subject showTranslationAlternateText:(BOOL)text
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  contentCopy = content;
  subjectCopy = subject;
  if (objc_msgSend_isFromMe(itemCopy, v16, v17))
  {
    v20 = objc_msgSend_messagePartText(contentCopy, v18, v19);
    v23 = objc_msgSend_messagePartTranslation(contentCopy, v21, v22);
LABEL_5:
    v27 = v23;
    goto LABEL_6;
  }

  v24 = objc_msgSend_messagePartTranslation(contentCopy, v18, v19);
  v27 = objc_msgSend_length(v24, v25, v26);

  if (v27)
  {
    v20 = objc_msgSend_messagePartTranslation(contentCopy, v28, v29);
    v23 = objc_msgSend_messagePartText(contentCopy, v30, v31);
    goto LABEL_5;
  }

  v20 = objc_msgSend_messagePartText(contentCopy, v28, v29);
LABEL_6:
  v53.receiver = self;
  v53.super_class = IMEditedTextMessagePartHistoricalContentChatItem;
  BYTE2(v49) = 1;
  BYTE1(v49) = text;
  LOBYTE(v49) = 1;
  v32 = [(IMTextMessagePartChatItem *)&v53 _initWithItem:itemCopy text:v20 translationSecondaryText:v27 index:index messagePartRange:location subject:length visibleAssociatedMessageChatItems:subjectCopy isShowingEditHistory:0 showTranslationAlternateText:v49 shouldDisplayLink:?];

  if (v32)
  {
    objc_storeStrong(v32 + 25, content);
    v35 = objc_msgSend_guid(itemCopy, v33, v34);
    v52 = v20;
    v37 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v36, index);
    v40 = objc_msgSend_stringValue(v37, v38, v39);
    v42 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v41, editIndex);
    v45 = objc_msgSend_stringValue(v42, v43, v44);
    v46 = sub_1A83AC604();

    objc_msgSend__setGUID_(v32, v47, v46);
    v20 = v52;
  }

  return v32;
}

@end