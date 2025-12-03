@interface HUIdentifierAndBlockPair
- (HUIdentifierAndBlockPair)initWithIdentifier:(id)identifier andBlock:(id)block;
@end

@implementation HUIdentifierAndBlockPair

- (HUIdentifierAndBlockPair)initWithIdentifier:(id)identifier andBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = HUIdentifierAndBlockPair;
  v8 = [(HUIdentifierAndBlockPair *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_identifier = identifierCopy;
    v10 = [blockCopy copy];
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

@end