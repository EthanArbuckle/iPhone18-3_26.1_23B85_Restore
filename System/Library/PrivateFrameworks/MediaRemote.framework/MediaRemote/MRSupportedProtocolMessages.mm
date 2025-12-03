@interface MRSupportedProtocolMessages
- (MRSupportedProtocolMessages)initWithCoder:(id)coder;
- (MRSupportedProtocolMessages)initWithLastSupportedMessageType:(unint64_t)type;
@end

@implementation MRSupportedProtocolMessages

- (MRSupportedProtocolMessages)initWithLastSupportedMessageType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = MRSupportedProtocolMessages;
  result = [(MRSupportedProtocolMessages *)&v5 init];
  if (result)
  {
    result->_lastSupportedMessageType = type;
  }

  return result;
}

- (MRSupportedProtocolMessages)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"lastSupportedMessageType"];

  return [(MRSupportedProtocolMessages *)self initWithLastSupportedMessageType:v4];
}

@end