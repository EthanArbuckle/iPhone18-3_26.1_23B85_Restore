@interface MILimitedConcurrencyOperation
- (MILimitedConcurrencyOperation)initWithBlock:(id)block description:(id)description;
@end

@implementation MILimitedConcurrencyOperation

- (MILimitedConcurrencyOperation)initWithBlock:(id)block description:(id)description
{
  blockCopy = block;
  descriptionCopy = description;
  v13.receiver = self;
  v13.super_class = MILimitedConcurrencyOperation;
  v8 = [(MILimitedConcurrencyOperation *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_descString, description);
    v10 = objc_retainBlock(blockCopy);
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

@end