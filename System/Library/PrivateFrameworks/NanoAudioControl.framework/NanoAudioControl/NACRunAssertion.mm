@interface NACRunAssertion
- (NACRunAssertion)init;
@end

@implementation NACRunAssertion

- (NACRunAssertion)init
{
  v6.receiver = self;
  v6.super_class = NACRunAssertion;
  v2 = [(NACRunAssertion *)&v6 init];
  if (v2)
  {
    v3 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v3;
  }

  return v2;
}

@end