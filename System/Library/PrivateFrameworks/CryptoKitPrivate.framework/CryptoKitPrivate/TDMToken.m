@interface TDMToken
- (TDMToken)initWithTID:(id)a3;
@end

@implementation TDMToken

- (TDMToken)initWithTID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TDMToken;
  v5 = [(TDMToken *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC16CryptoKitPrivate9TDMClient alloc] initWithTID:v4];
    tdmClient = v5->_tdmClient;
    v5->_tdmClient = v6;
  }

  return v5;
}

@end