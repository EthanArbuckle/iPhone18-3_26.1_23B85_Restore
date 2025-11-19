@interface IDSValidationQueueItem
- (BOOL)isEqual:(id)a3;
- (IDSValidationQueueItem)initWithMessage:(id)a3 subsystem:(int64_t)a4 sendBlock:(id)a5;
@end

@implementation IDSValidationQueueItem

- (IDSValidationQueueItem)initWithMessage:(id)a3 subsystem:(int64_t)a4 sendBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = IDSValidationQueueItem;
  v11 = [(IDSValidationQueueItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, a3);
    v12->_subsystem = a4;
    v13 = objc_retainBlock(v10);
    sendBlock = v12->_sendBlock;
    v12->_sendBlock = v13;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(IDSValidationQueueItem *)self message];
    v6 = [v4 message];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end