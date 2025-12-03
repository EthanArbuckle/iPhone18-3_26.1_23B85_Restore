@interface TokenChallengePair
- (TokenChallengePair)initWithChallenge:(id)challenge token:(id)token;
@end

@implementation TokenChallengePair

- (TokenChallengePair)initWithChallenge:(id)challenge token:(id)token
{
  challengeCopy = challenge;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = TokenChallengePair;
  v9 = [(TokenChallengePair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_challenge, challenge);
    objc_storeStrong(&v10->_token, token);
  }

  return v10;
}

@end