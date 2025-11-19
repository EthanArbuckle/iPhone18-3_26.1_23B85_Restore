@interface MILimitedConcurrencyOperation
- (MILimitedConcurrencyOperation)initWithBlock:(id)a3 description:(id)a4;
@end

@implementation MILimitedConcurrencyOperation

- (MILimitedConcurrencyOperation)initWithBlock:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MILimitedConcurrencyOperation;
  v8 = [(MILimitedConcurrencyOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_descString, a4);
    v10 = objc_retainBlock(v6);
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

@end