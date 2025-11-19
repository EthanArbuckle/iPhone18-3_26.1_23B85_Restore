@interface IDSCarrierToken
- (IDSCarrierToken)initWithTokenString:(id)a3;
@end

@implementation IDSCarrierToken

- (IDSCarrierToken)initWithTokenString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSCarrierToken;
  v6 = [(IDSCarrierToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenString, a3);
  }

  return v7;
}

@end