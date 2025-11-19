@interface _DPPrivateAccessTokenChallenge
- (_DPPrivateAccessTokenChallenge)initWithIssuer:(id)a3 redemptionContext:(id)a4;
@end

@implementation _DPPrivateAccessTokenChallenge

- (_DPPrivateAccessTokenChallenge)initWithIssuer:(id)a3 redemptionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _DPPrivateAccessTokenChallenge;
  v8 = [(_DPPrivateAccessTokenChallenge *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    issuer = v8->_issuer;
    v8->_issuer = v9;

    objc_storeStrong(&v8->_redemptionContext, a4);
  }

  return v8;
}

@end