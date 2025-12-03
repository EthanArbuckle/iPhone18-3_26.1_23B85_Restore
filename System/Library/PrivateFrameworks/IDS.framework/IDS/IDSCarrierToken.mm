@interface IDSCarrierToken
- (IDSCarrierToken)initWithTokenString:(id)string;
@end

@implementation IDSCarrierToken

- (IDSCarrierToken)initWithTokenString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = IDSCarrierToken;
  v6 = [(IDSCarrierToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenString, string);
  }

  return v7;
}

@end