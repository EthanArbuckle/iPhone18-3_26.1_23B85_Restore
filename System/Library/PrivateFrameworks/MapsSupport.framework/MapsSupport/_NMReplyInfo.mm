@interface _NMReplyInfo
- (_NMReplyInfo)init;
- (void)dealloc;
@end

@implementation _NMReplyInfo

- (_NMReplyInfo)init
{
  v10.receiver = self;
  v10.super_class = _NMReplyInfo;
  v2 = [(_NMReplyInfo *)&v10 init];
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
  v4.super_class = _NMReplyInfo;
  [(_NMReplyInfo *)&v4 dealloc];
}

@end