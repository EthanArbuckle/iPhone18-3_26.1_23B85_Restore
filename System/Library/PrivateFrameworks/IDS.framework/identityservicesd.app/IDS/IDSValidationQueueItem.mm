@interface IDSValidationQueueItem
- (BOOL)isEqual:(id)equal;
- (IDSValidationQueueItem)initWithMessage:(id)message subsystem:(int64_t)subsystem sendBlock:(id)block;
@end

@implementation IDSValidationQueueItem

- (IDSValidationQueueItem)initWithMessage:(id)message subsystem:(int64_t)subsystem sendBlock:(id)block
{
  messageCopy = message;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = IDSValidationQueueItem;
  v11 = [(IDSValidationQueueItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, message);
    v12->_subsystem = subsystem;
    v13 = objc_retainBlock(blockCopy);
    sendBlock = v12->_sendBlock;
    v12->_sendBlock = v13;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    message = [(IDSValidationQueueItem *)self message];
    message2 = [equalCopy message];
    v7 = message == message2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end