@interface IMAutomaticTranslationIndicatorChatItem
- (id)_initWithTranslationLanguageCode:(id)code userLanguageCode:(id)languageCode incomingLanguageCode:(id)incomingLanguageCode senderHandle:(id)handle isShowingTranslationText:(BOOL)text;
@end

@implementation IMAutomaticTranslationIndicatorChatItem

- (id)_initWithTranslationLanguageCode:(id)code userLanguageCode:(id)languageCode incomingLanguageCode:(id)incomingLanguageCode senderHandle:(id)handle isShowingTranslationText:(BOOL)text
{
  codeCopy = code;
  languageCodeCopy = languageCode;
  incomingLanguageCodeCopy = incomingLanguageCode;
  handleCopy = handle;
  v31.receiver = self;
  v31.super_class = IMAutomaticTranslationIndicatorChatItem;
  v18 = [(IMChatItem *)&v31 _initWithItem:0];
  if (v18)
  {
    v19 = objc_msgSend_copy(codeCopy, v16, v17);
    v20 = *(v18 + 8);
    *(v18 + 8) = v19;

    v23 = objc_msgSend_copy(languageCodeCopy, v21, v22);
    v24 = *(v18 + 9);
    *(v18 + 9) = v23;

    v27 = objc_msgSend_copy(incomingLanguageCodeCopy, v25, v26);
    v28 = *(v18 + 10);
    *(v18 + 10) = v27;

    objc_storeStrong(v18 + 11, handle);
    *(v18 + 56) = text;
    objc_msgSend__setGUID_(v18, v29, @"at:");
  }

  return v18;
}

@end