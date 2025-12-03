@interface IDSTemporaryPhoneUserExpirationTimerInfo
- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)user;
- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)user expirationPhase:(int64_t)phase;
- (double)expirationInterval;
@end

@implementation IDSTemporaryPhoneUserExpirationTimerInfo

- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)user
{
  userCopy = user;
  expirationDate = [userCopy expirationDate];
  v6 = [(IDSTemporaryPhoneUserExpirationTimerInfo *)self initWithUser:userCopy expirationPhase:[IDSTemporaryPhoneUserExpirationTimerInfo phaseForExpirationDate:expirationDate]];

  return v6;
}

- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)user expirationPhase:(int64_t)phase
{
  userCopy = user;
  v11.receiver = self;
  v11.super_class = IDSTemporaryPhoneUserExpirationTimerInfo;
  v8 = [(IDSTemporaryPhoneUserExpirationTimerInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, user);
    v9->_expirationPhase = phase;
  }

  return v9;
}

- (double)expirationInterval
{
  expirationPhase = [(IDSTemporaryPhoneUserExpirationTimerInfo *)self expirationPhase];
  user = [(IDSTemporaryPhoneUserExpirationTimerInfo *)self user];
  expirationDate = [user expirationDate];
  [expirationDate timeIntervalSinceNow];
  if (expirationPhase)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + -432000.0;
  }

  return v7;
}

@end