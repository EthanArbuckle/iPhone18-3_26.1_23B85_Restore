@interface PKAccountFundingSourceVerificationAttempt
- (BOOL)isEqual:(id)a3;
- (PKAccountFundingSourceVerificationAttempt)initWithCoder:(id)a3;
- (PKAccountFundingSourceVerificationAttempt)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountFundingSourceVerificationAttempt

- (PKAccountFundingSourceVerificationAttempt)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountFundingSourceVerificationAttempt;
  v5 = [(PKAccountFundingSourceVerificationAttempt *)&v13 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v5->_type = PKApplyVerificationTypeFromString(v6);

    v7 = [v4 PKDateForKey:@"sentDate"];
    sentDate = v5->_sentDate;
    v5->_sentDate = v7;

    v9 = [v4 PKDateForKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v9;

    v11 = [v4 PKStringForKey:@"failureReason"];
    v5->_failureReason = PKAccountFundingSourceVerificationFailureReasonFromString(v11);
  }

  return v5;
}

- (PKAccountFundingSourceVerificationAttempt)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountFundingSourceVerificationAttempt;
  v5 = [(PKAccountFundingSourceVerificationAttempt *)&v11 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sentDate"];
    sentDate = v5->_sentDate;
    v5->_sentDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v8;

    v5->_failureReason = [v4 decodeIntegerForKey:@"failureReason"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_sentDate forKey:@"sentDate"];
  [v5 encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [v5 encodeInteger:self->_failureReason forKey:@"failureReason"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  sentDate = self->_sentDate;
  v6 = v4[2];
  if (sentDate && v6)
  {
    if (([(NSDate *)sentDate isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (sentDate != v6)
  {
    goto LABEL_14;
  }

  expiryDate = self->_expiryDate;
  v8 = v4[3];
  if (!expiryDate || !v8)
  {
    if (expiryDate == v8)
    {
      goto LABEL_12;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (([(NSDate *)expiryDate isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (self->_failureReason != v4[4])
  {
    goto LABEL_14;
  }

  v9 = self->_type == v4[1];
LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_sentDate];
  [v3 safelyAddObject:self->_expiryDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_failureReason - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKApplyVerificationTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  [v3 appendFormat:@"sentDate: '%@'; ", self->_sentDate];
  [v3 appendFormat:@"expiryDate: '%@'; ", self->_expiryDate];
  v5 = self->_failureReason - 1;
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = qword_1E79DC360[v5];
  }

  [v3 appendFormat:@"failureReason: '%@'; ", v6];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAccountFundingSourceVerificationAttempt allocWithZone:](PKAccountFundingSourceVerificationAttempt init];
  v5->_type = self->_type;
  v6 = [(NSDate *)self->_sentDate copyWithZone:a3];
  sentDate = v5->_sentDate;
  v5->_sentDate = v6;

  v8 = [(NSDate *)self->_expiryDate copyWithZone:a3];
  expiryDate = v5->_expiryDate;
  v5->_expiryDate = v8;

  v5->_failureReason = self->_failureReason;
  return v5;
}

@end