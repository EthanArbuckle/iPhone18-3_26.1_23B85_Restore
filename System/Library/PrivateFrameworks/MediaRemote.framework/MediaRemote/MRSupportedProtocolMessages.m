@interface MRSupportedProtocolMessages
- (MRSupportedProtocolMessages)initWithCoder:(id)a3;
- (MRSupportedProtocolMessages)initWithLastSupportedMessageType:(unint64_t)a3;
@end

@implementation MRSupportedProtocolMessages

- (MRSupportedProtocolMessages)initWithLastSupportedMessageType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MRSupportedProtocolMessages;
  result = [(MRSupportedProtocolMessages *)&v5 init];
  if (result)
  {
    result->_lastSupportedMessageType = a3;
  }

  return result;
}

- (MRSupportedProtocolMessages)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"lastSupportedMessageType"];

  return [(MRSupportedProtocolMessages *)self initWithLastSupportedMessageType:v4];
}

@end