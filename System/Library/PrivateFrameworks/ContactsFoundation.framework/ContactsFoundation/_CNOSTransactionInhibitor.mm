@interface _CNOSTransactionInhibitor
- (_CNOSTransactionInhibitor)initWithLabel:(id)label;
- (void)start;
- (void)stop;
@end

@implementation _CNOSTransactionInhibitor

- (void)stop
{
  v4.receiver = self;
  v4.super_class = _CNOSTransactionInhibitor;
  [(CNInhibitor *)&v4 stop];
  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)start
{
  v6.receiver = self;
  v6.super_class = _CNOSTransactionInhibitor;
  [(CNInhibitor *)&v6 start];
  label = [(_CNOSTransactionInhibitor *)self label];
  [label UTF8String];
  v4 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v4;
}

- (_CNOSTransactionInhibitor)initWithLabel:(id)label
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = _CNOSTransactionInhibitor;
  v5 = [(_CNOSTransactionInhibitor *)&v11 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;

    transaction = v5->_transaction;
    v5->_transaction = 0;

    v9 = v5;
  }

  return v5;
}

@end