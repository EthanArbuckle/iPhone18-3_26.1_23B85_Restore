@interface IMAutomaticTranslationIndicatorChatItem
- (id)_initWithTranslationLanguageCode:(id)a3 userLanguageCode:(id)a4 incomingLanguageCode:(id)a5 senderHandle:(id)a6 isShowingTranslationText:(BOOL)a7;
@end

@implementation IMAutomaticTranslationIndicatorChatItem

- (id)_initWithTranslationLanguageCode:(id)a3 userLanguageCode:(id)a4 incomingLanguageCode:(id)a5 senderHandle:(id)a6 isShowingTranslationText:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v31.receiver = self;
  v31.super_class = IMAutomaticTranslationIndicatorChatItem;
  v18 = [(IMChatItem *)&v31 _initWithItem:0];
  if (v18)
  {
    v19 = objc_msgSend_copy(v12, v16, v17);
    v20 = *(v18 + 8);
    *(v18 + 8) = v19;

    v23 = objc_msgSend_copy(v13, v21, v22);
    v24 = *(v18 + 9);
    *(v18 + 9) = v23;

    v27 = objc_msgSend_copy(v14, v25, v26);
    v28 = *(v18 + 10);
    *(v18 + 10) = v27;

    objc_storeStrong(v18 + 11, a6);
    *(v18 + 56) = a7;
    objc_msgSend__setGUID_(v18, v29, @"at:");
  }

  return v18;
}

@end