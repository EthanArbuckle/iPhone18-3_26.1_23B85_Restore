@interface IDSTemporaryPhoneUserExpirationTimerInfo
- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)a3;
- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)a3 expirationPhase:(int64_t)a4;
- (double)expirationInterval;
@end

@implementation IDSTemporaryPhoneUserExpirationTimerInfo

- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)a3
{
  v4 = a3;
  v5 = [v4 expirationDate];
  v6 = [(IDSTemporaryPhoneUserExpirationTimerInfo *)self initWithUser:v4 expirationPhase:[IDSTemporaryPhoneUserExpirationTimerInfo phaseForExpirationDate:v5]];

  return v6;
}

- (IDSTemporaryPhoneUserExpirationTimerInfo)initWithUser:(id)a3 expirationPhase:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSTemporaryPhoneUserExpirationTimerInfo;
  v8 = [(IDSTemporaryPhoneUserExpirationTimerInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, a3);
    v9->_expirationPhase = a4;
  }

  return v9;
}

- (double)expirationInterval
{
  v3 = [(IDSTemporaryPhoneUserExpirationTimerInfo *)self expirationPhase];
  v4 = [(IDSTemporaryPhoneUserExpirationTimerInfo *)self user];
  v5 = [v4 expirationDate];
  [v5 timeIntervalSinceNow];
  if (v3)
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