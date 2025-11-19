@interface IMMessagePartHistoricalContent
- (IMMessagePartHistoricalContent)initWithMessagePartText:(id)a3 messagePartTranslation:(id)a4 dateSent:(id)a5 backwardCompatibleMessageGUID:(id)a6;
- (IMMessagePartHistoricalContent)initWithMessageSummaryInfoDictionary:(id)a3;
- (id)copyWithUpdatedMessagePartText:(id)a3 updatedMessagePartTranslation:(id)a4;
- (id)messageSummaryInfoDictionaryRepresentation;
@end

@implementation IMMessagePartHistoricalContent

- (IMMessagePartHistoricalContent)initWithMessagePartText:(id)a3 messagePartTranslation:(id)a4 dateSent:(id)a5 backwardCompatibleMessageGUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = IMMessagePartHistoricalContent;
  v14 = [(IMMessagePartHistoricalContent *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    messagePartText = v14->_messagePartText;
    v14->_messagePartText = v15;

    v17 = [v11 copy];
    messagePartTranslation = v14->_messagePartTranslation;
    v14->_messagePartTranslation = v17;

    objc_storeStrong(&v14->_dateSent, a5);
    v19 = [v13 copy];
    backwardCompatibleMessageGUID = v14->_backwardCompatibleMessageGUID;
    v14->_backwardCompatibleMessageGUID = v19;
  }

  return v14;
}

- (IMMessagePartHistoricalContent)initWithMessageSummaryInfoDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 __im_encodedAttributedStringForKey:@"t"];
  v6 = [v4 __im_encodedAttributedStringForKey:@"tr"];
  v7 = [v4 __im_encodedDateForKey:@"d"];
  v8 = [v4 _stringForKey:@"bcg"];

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

- (id)copyWithUpdatedMessagePartText:(id)a3 updatedMessagePartTranslation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[IMMessagePartHistoricalContent alloc] initWithMessagePartText:v7 messagePartTranslation:v6 dateSent:self->_dateSent backwardCompatibleMessageGUID:self->_backwardCompatibleMessageGUID];

  return v8;
}

@end