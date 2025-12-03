@interface IMMessagePartHistoricalContent
- (IMMessagePartHistoricalContent)initWithMessagePartText:(id)text messagePartTranslation:(id)translation dateSent:(id)sent backwardCompatibleMessageGUID:(id)d;
- (IMMessagePartHistoricalContent)initWithMessageSummaryInfoDictionary:(id)dictionary;
- (id)copyWithUpdatedMessagePartText:(id)text updatedMessagePartTranslation:(id)translation;
- (id)messageSummaryInfoDictionaryRepresentation;
@end

@implementation IMMessagePartHistoricalContent

- (IMMessagePartHistoricalContent)initWithMessagePartText:(id)text messagePartTranslation:(id)translation dateSent:(id)sent backwardCompatibleMessageGUID:(id)d
{
  textCopy = text;
  translationCopy = translation;
  sentCopy = sent;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = IMMessagePartHistoricalContent;
  v14 = [(IMMessagePartHistoricalContent *)&v22 init];
  if (v14)
  {
    v15 = [textCopy copy];
    messagePartText = v14->_messagePartText;
    v14->_messagePartText = v15;

    v17 = [translationCopy copy];
    messagePartTranslation = v14->_messagePartTranslation;
    v14->_messagePartTranslation = v17;

    objc_storeStrong(&v14->_dateSent, sent);
    v19 = [dCopy copy];
    backwardCompatibleMessageGUID = v14->_backwardCompatibleMessageGUID;
    v14->_backwardCompatibleMessageGUID = v19;
  }

  return v14;
}

- (IMMessagePartHistoricalContent)initWithMessageSummaryInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy __im_encodedAttributedStringForKey:@"t"];
  v6 = [dictionaryCopy __im_encodedAttributedStringForKey:@"tr"];
  v7 = [dictionaryCopy __im_encodedDateForKey:@"d"];
  v8 = [dictionaryCopy _stringForKey:@"bcg"];

  v9 = [(IMMessagePartHistoricalContent *)self initWithMessagePartText:v5 messagePartTranslation:v6 dateSent:v7 backwardCompatibleMessageGUID:v8];
  return v9;
}

- (id)messageSummaryInfoDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  messagePartText = self->_messagePartText;
  if (messagePartText)
  {
    [v3 __im_setEncodedAttributedString:messagePartText forKey:@"t"];
  }

  messagePartTranslation = self->_messagePartTranslation;
  if (messagePartTranslation)
  {
    [v4 __im_setEncodedAttributedString:messagePartTranslation forKey:@"tr"];
  }

  dateSent = self->_dateSent;
  if (dateSent)
  {
    [v4 __im_setEncodedDate:dateSent forKey:@"d"];
  }

  backwardCompatibleMessageGUID = self->_backwardCompatibleMessageGUID;
  if (backwardCompatibleMessageGUID)
  {
    [v4 setObject:backwardCompatibleMessageGUID forKey:@"bcg"];
  }

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithUpdatedMessagePartText:(id)text updatedMessagePartTranslation:(id)translation
{
  translationCopy = translation;
  textCopy = text;
  v8 = [[IMMessagePartHistoricalContent alloc] initWithMessagePartText:textCopy messagePartTranslation:translationCopy dateSent:self->_dateSent backwardCompatibleMessageGUID:self->_backwardCompatibleMessageGUID];

  return v8;
}

@end