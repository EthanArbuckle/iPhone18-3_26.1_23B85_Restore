@interface PKCreditRecoveryPaymentPlan
- (PKCreditRecoveryPaymentPlan)initWithCoder:(id)a3;
- (PKCreditRecoveryPaymentPlan)initWithDictionary:(id)a3 enrolled:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditRecoveryPaymentPlan

- (PKCreditRecoveryPaymentPlan)initWithDictionary:(id)a3 enrolled:(BOOL)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PKCreditRecoveryPaymentPlan;
  v7 = [(PKCreditRecoveryPaymentPlan *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_enrolled = a4;
    v9 = [v6 PKStringForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v6 PKStringForKey:@"displayName"];
    displayName = v8->_displayName;
    v8->_displayName = v11;

    v13 = [v6 PKDateForKey:@"enrollmentDate"];
    enrollmentDate = v8->_enrollmentDate;
    v8->_enrollmentDate = v13;
  }

  return v8;
}

- (PKCreditRecoveryPaymentPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKCreditRecoveryPaymentPlan;
  v5 = [(PKCreditRecoveryPaymentPlan *)&v13 init];
  if (v5)
  {
    v5->_enrolled = [v4 decodeBoolForKey:@"enrolled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentDate"];
    enrollmentDate = v5->_enrollmentDate;
    v5->_enrollmentDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  enrolled = self->_enrolled;
  v5 = a3;
  [v5 encodeBool:enrolled forKey:@"enrolled"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_enrollmentDate forKey:@"enrollmentDate"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_enrolled)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"enrolled: '%@'; ", v5];
  [v4 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v4 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v4 appendFormat:@"enrollmentDate: '%@'; ", self->_enrollmentDate];
  [v4 appendString:@">"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKCreditRecoveryPaymentPlan allocWithZone:?]];
  v4->_enrolled = self->_enrolled;
  v5 = [(NSString *)self->_identifier copy];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [(NSString *)self->_displayName copy];
  displayName = v4->_displayName;
  v4->_displayName = v7;

  v9 = [(NSDate *)self->_enrollmentDate copy];
  enrollmentDate = v4->_enrollmentDate;
  v4->_enrollmentDate = v9;

  return v4;
}

@end