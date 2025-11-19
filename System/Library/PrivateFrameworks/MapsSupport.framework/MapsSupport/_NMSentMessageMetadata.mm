@interface _NMSentMessageMetadata
- (_NMSentMessageMetadata)init;
- (void)dealloc;
@end

@implementation _NMSentMessageMetadata

- (_NMSentMessageMetadata)init
{
  v10.receiver = self;
  v10.super_class = _NMSentMessageMetadata;
  v2 = [(_NMSentMessageMetadata *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [NSString stringWithFormat:@"%@.%p", v4, v2];
    [v5 UTF8String];
    v6 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v6;

    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  transaction = self->_transaction;
  self->_transaction = 0;

  v4.receiver = self;
  v4.super_class = _NMSentMessageMetadata;
  [(_NMSentMessageMetadata *)&v4 dealloc];
}

@end