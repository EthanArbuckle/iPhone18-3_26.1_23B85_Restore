@interface HUIdentifierAndBlockPair
- (HUIdentifierAndBlockPair)initWithIdentifier:(id)a3 andBlock:(id)a4;
@end

@implementation HUIdentifierAndBlockPair

- (HUIdentifierAndBlockPair)initWithIdentifier:(id)a3 andBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HUIdentifierAndBlockPair;
  v8 = [(HUIdentifierAndBlockPair *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_identifier = v6;
    v10 = [v7 copy];
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

@end