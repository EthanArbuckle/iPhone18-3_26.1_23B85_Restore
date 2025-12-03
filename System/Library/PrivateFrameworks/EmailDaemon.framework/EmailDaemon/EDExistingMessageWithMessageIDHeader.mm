@interface EDExistingMessageWithMessageIDHeader
- (EDExistingMessageWithMessageIDHeader)initWithMessageIDHash:(id)hash serverMessage:(id)message messagePersistentID:(int64_t)d;
@end

@implementation EDExistingMessageWithMessageIDHeader

- (EDExistingMessageWithMessageIDHeader)initWithMessageIDHash:(id)hash serverMessage:(id)message messagePersistentID:(int64_t)d
{
  hashCopy = hash;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = EDExistingMessageWithMessageIDHeader;
  v11 = [(EDExistingMessageWithMessageIDHeader *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_messageIDHash, hash);
    objc_storeStrong(&v12->_serverMessage, message);
    v12->_messagePersistentID = d;
  }

  return v12;
}

@end