@interface IMDAvailabilityVerificationTokens
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAvailabilityVerificationTokens:(id)a3;
- (IMDAvailabilityVerificationTokens)initWithSubscriptionValidationToken:(id)a3 encryptionValidationToken:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMDAvailabilityVerificationTokens

- (IMDAvailabilityVerificationTokens)initWithSubscriptionValidationToken:(id)a3 encryptionValidationToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IMDAvailabilityVerificationTokens;
  v8 = [(IMDAvailabilityVerificationTokens *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    subscriptionValidationToken = v8->_subscriptionValidationToken;
    v8->_subscriptionValidationToken = v9;

    v11 = [v7 copy];
    encryptionValidationToken = v8->_encryptionValidationToken;
    v8->_encryptionValidationToken = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(IMDAvailabilityVerificationTokens *)self subscriptionValidationToken];
  v6 = [(IMDAvailabilityVerificationTokens *)self encryptionValidationToken];
  v7 = [v3 stringWithFormat:@"<%@: %p subscriptionValidationToken = %@, encryptionValidationToken = %@>", v4, self, v5, v6];;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMDAvailabilityVerificationTokens *)self isEqualToAvailabilityVerificationTokens:v4];

  return v5;
}

- (BOOL)isEqualToAvailabilityVerificationTokens:(id)a3
{
  v4 = a3;
  v5 = [v4 subscriptionValidationToken];
  if ((v5 || self->_subscriptionValidationToken) && ([v4 subscriptionValidationToken], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", self->_subscriptionValidationToken), v6, v5, !v7))
  {
    v10 = 0;
  }

  else
  {
    v8 = [v4 encryptionValidationToken];
    if (v8 || self->_encryptionValidationToken)
    {
      v9 = [v4 encryptionValidationToken];
      v10 = [v9 isEqualToString:self->_encryptionValidationToken];
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(IMDAvailabilityVerificationTokens *)self subscriptionValidationToken];
  v4 = [v3 hash];
  v5 = [(IMDAvailabilityVerificationTokens *)self encryptionValidationToken];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end