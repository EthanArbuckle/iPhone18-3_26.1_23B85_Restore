@interface CRKIDSMessageFormatter
- (id)formatMessageForSending:(id)sending;
@end

@implementation CRKIDSMessageFormatter

- (id)formatMessageForSending:(id)sending
{
  sendingCopy = sending;
  v4 = +[CRKIDSMessageMetadata metadataWithMessageType:](CRKIDSMessageMetadata, "metadataWithMessageType:", [sendingCopy messageType]);
  v5 = [CRKIDSMessagePayload alloc];
  dictionaryValue = [sendingCopy dictionaryValue];

  v7 = [(CRKIDSMessagePayload *)v5 initWithMessageContent:dictionaryValue messageMetadata:v4];
  dictionaryValue2 = [(CRKIDSMessagePayload *)v7 dictionaryValue];

  return dictionaryValue2;
}

@end