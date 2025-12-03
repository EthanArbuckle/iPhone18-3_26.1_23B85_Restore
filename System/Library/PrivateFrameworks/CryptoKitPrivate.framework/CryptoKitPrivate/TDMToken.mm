@interface TDMToken
- (TDMToken)initWithTID:(id)d;
@end

@implementation TDMToken

- (TDMToken)initWithTID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = TDMToken;
  v5 = [(TDMToken *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC16CryptoKitPrivate9TDMClient alloc] initWithTID:dCopy];
    tdmClient = v5->_tdmClient;
    v5->_tdmClient = v6;
  }

  return v5;
}

@end