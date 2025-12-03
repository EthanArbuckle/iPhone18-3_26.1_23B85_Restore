@interface PKCreditRecoveryPaymentPlan
- (PKCreditRecoveryPaymentPlan)initWithCoder:(id)coder;
- (PKCreditRecoveryPaymentPlan)initWithDictionary:(id)dictionary enrolled:(BOOL)enrolled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCreditRecoveryPaymentPlan

- (PKCreditRecoveryPaymentPlan)initWithDictionary:(id)dictionary enrolled:(BOOL)enrolled
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PKCreditRecoveryPaymentPlan;
  v7 = [(PKCreditRecoveryPaymentPlan *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_enrolled = enrolled;
    v9 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [dictionaryCopy PKStringForKey:@"displayName"];
    displayName = v8->_displayName;
    v8->_displayName = v11;

    v13 = [dictionaryCopy PKDateForKey:@"enrollmentDate"];
    enrollmentDate = v8->_enrollmentDate;
    v8->_enrollmentDate = v13;
  }

  return v8;
}

- (PKCreditRecoveryPaymentPlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKCreditRecoveryPaymentPlan;
  v5 = [(PKCreditRecoveryPaymentPlan *)&v13 init];
  if (v5)
  {
    v5->_enrolled = [coderCopy decodeBoolForKey:@"enrolled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentDate"];
    enrollmentDate = v5->_enrollmentDate;
    v5->_enrollmentDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  enrolled = self->_enrolled;
  coderCopy = coder;
  [coderCopy encodeBool:enrolled forKey:@"enrolled"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_enrollmentDate forKey:@"enrollmentDate"];
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

- (id)copyWithZone:(_NSZone *)zone
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