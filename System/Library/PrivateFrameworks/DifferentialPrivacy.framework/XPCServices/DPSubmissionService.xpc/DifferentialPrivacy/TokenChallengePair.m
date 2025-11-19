@interface TokenChallengePair
- (TokenChallengePair)initWithChallenge:(id)a3 token:(id)a4;
@end

@implementation TokenChallengePair

- (TokenChallengePair)initWithChallenge:(id)a3 token:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TokenChallengePair;
  v9 = [(TokenChallengePair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_challenge, a3);
    objc_storeStrong(&v10->_token, a4);
  }

  return v10;
}

@end