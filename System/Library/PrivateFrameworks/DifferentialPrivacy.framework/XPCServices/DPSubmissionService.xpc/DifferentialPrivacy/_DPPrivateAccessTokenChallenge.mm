@interface _DPPrivateAccessTokenChallenge
- (_DPPrivateAccessTokenChallenge)initWithIssuer:(id)issuer redemptionContext:(id)context;
@end

@implementation _DPPrivateAccessTokenChallenge

- (_DPPrivateAccessTokenChallenge)initWithIssuer:(id)issuer redemptionContext:(id)context
{
  issuerCopy = issuer;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _DPPrivateAccessTokenChallenge;
  v8 = [(_DPPrivateAccessTokenChallenge *)&v12 init];
  if (v8)
  {
    v9 = [issuerCopy copy];
    issuer = v8->_issuer;
    v8->_issuer = v9;

    objc_storeStrong(&v8->_redemptionContext, context);
  }

  return v8;
}

@end