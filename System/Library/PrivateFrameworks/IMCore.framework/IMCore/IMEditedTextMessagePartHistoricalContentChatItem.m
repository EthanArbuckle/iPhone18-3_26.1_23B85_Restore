@interface IMEditedTextMessagePartHistoricalContentChatItem
- (id)_initWithMessageItem:(id)a3 messagePartIndex:(int64_t)a4 historicalContent:(id)a5 editIndex:(int64_t)a6 messagePartRange:(_NSRange)a7 subject:(id)a8 showTranslationAlternateText:(BOOL)a9;
@end

@implementation IMEditedTextMessagePartHistoricalContentChatItem

- (id)_initWithMessageItem:(id)a3 messagePartIndex:(int64_t)a4 historicalContent:(id)a5 editIndex:(int64_t)a6 messagePartRange:(_NSRange)a7 subject:(id)a8 showTranslationAlternateText:(BOOL)a9
{
  length = a7.length;
  location = a7.location;
  v13 = a3;
  v14 = a5;
  v15 = a8;
  if (objc_msgSend_isFromMe(v13, v16, v17))
  {
    v20 = objc_msgSend_messagePartText(v14, v18, v19);
    v23 = objc_msgSend_messagePartTranslation(v14, v21, v22);
LABEL_5:
    v27 = v23;
    goto LABEL_6;
  }

  v24 = objc_msgSend_messagePartTranslation(v14, v18, v19);
  v27 = objc_msgSend_length(v24, v25, v26);

  if (v27)
  {
    v20 = objc_msgSend_messagePartTranslation(v14, v28, v29);
    v23 = objc_msgSend_messagePartText(v14, v30, v31);
    goto LABEL_5;
  }

  v20 = objc_msgSend_messagePartText(v14, v28, v29);
LABEL_6:
  v53.receiver = self;
  v53.super_class = IMEditedTextMessagePartHistoricalContentChatItem;
  BYTE2(v49) = 1;
  BYTE1(v49) = a9;
  LOBYTE(v49) = 1;
  v32 = [(IMTextMessagePartChatItem *)&v53 _initWithItem:v13 text:v20 translationSecondaryText:v27 index:a4 messagePartRange:location subject:length visibleAssociatedMessageChatItems:v15 isShowingEditHistory:0 showTranslationAlternateText:v49 shouldDisplayLink:?];

  if (v32)
  {
    objc_storeStrong(v32 + 25, a5);
    v35 = objc_msgSend_guid(v13, v33, v34);
    v52 = v20;
    v37 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v36, a4);
    v40 = objc_msgSend_stringValue(v37, v38, v39);
    v42 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v41, a6);
    v45 = objc_msgSend_stringValue(v42, v43, v44);
    v46 = sub_1A83AC604();

    objc_msgSend__setGUID_(v32, v47, v46);
    v20 = v52;
  }

  return v32;
}

@end