@interface EDExistingMessageWithMessageIDHeader
- (EDExistingMessageWithMessageIDHeader)initWithMessageIDHash:(id)a3 serverMessage:(id)a4 messagePersistentID:(int64_t)a5;
@end

@implementation EDExistingMessageWithMessageIDHeader

- (EDExistingMessageWithMessageIDHeader)initWithMessageIDHash:(id)a3 serverMessage:(id)a4 messagePersistentID:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = EDExistingMessageWithMessageIDHeader;
  v11 = [(EDExistingMessageWithMessageIDHeader *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_messageIDHash, a3);
    objc_storeStrong(&v12->_serverMessage, a4);
    v12->_messagePersistentID = a5;
  }

  return v12;
}

@end