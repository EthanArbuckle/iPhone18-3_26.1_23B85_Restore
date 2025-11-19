@interface CRKIDSMessageFormatter
- (id)formatMessageForSending:(id)a3;
@end

@implementation CRKIDSMessageFormatter

- (id)formatMessageForSending:(id)a3
{
  v3 = a3;
  v4 = +[CRKIDSMessageMetadata metadataWithMessageType:](CRKIDSMessageMetadata, "metadataWithMessageType:", [v3 messageType]);
  v5 = [CRKIDSMessagePayload alloc];
  v6 = [v3 dictionaryValue];

  v7 = [(CRKIDSMessagePayload *)v5 initWithMessageContent:v6 messageMetadata:v4];
  v8 = [(CRKIDSMessagePayload *)v7 dictionaryValue];

  return v8;
}

@end