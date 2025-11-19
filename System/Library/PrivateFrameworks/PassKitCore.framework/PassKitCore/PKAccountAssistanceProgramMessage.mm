@interface PKAccountAssistanceProgramMessage
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKAccountAssistanceProgramMessage)initWithCoder:(id)a3;
- (PKAccountAssistanceProgramMessage)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountAssistanceProgramMessage

- (PKAccountAssistanceProgramMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountAssistanceProgramMessage;
  v5 = [(PKAccountAssistanceProgramMessage *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pastDue"];
    pastDue = v5->_pastDue;
    v5->_pastDue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pastDue = self->_pastDue;
  v5 = a3;
  [v5 encodeObject:pastDue forKey:@"pastDue"];
  [v5 encodeObject:self->_chargeOffPreventionAmount forKey:@"chargeOffPreventionAmount"];
  [v5 encodeObject:self->_currentBalance forKey:@"currentBalance"];
}

- (PKAccountAssistanceProgramMessage)initWithRecord:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountAssistanceProgramMessage;
  v5 = [(PKAccountAssistanceProgramMessage *)&v13 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedDecimalNumberForKey:@"pastDue"];
    pastDue = v5->_pastDue;
    v5->_pastDue = v6;

    v8 = [v4 pk_encryptedDecimalNumberForKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v8;

    v10 = [v4 pk_encryptedDecimalNumberForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;
  }

  return v5;
}

- (void)encodeWithRecord:(id)a3
{
  v4 = [a3 encryptedValues];
  if (PKApplePayContainerEnvironment() == 2)
  {
    [v4 setObject:self->_pastDue forKey:@"pastDue"];
    [v4 setObject:self->_chargeOffPreventionAmount forKey:@"chargeOffPreventionAmount"];
    [v4 setObject:self->_currentBalance forKey:@"currentBalance"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  pastDue = self->_pastDue;
  v6 = v4[1];
  if (pastDue && v6)
  {
    if (([(NSDecimalNumber *)pastDue isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (pastDue != v6)
  {
    goto LABEL_14;
  }

  chargeOffPreventionAmount = self->_chargeOffPreventionAmount;
  v8 = v4[2];
  if (!chargeOffPreventionAmount || !v8)
  {
    if (chargeOffPreventionAmount == v8)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (([(NSDecimalNumber *)chargeOffPreventionAmount isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  currentBalance = self->_currentBalance;
  v10 = v4[3];
  if (currentBalance && v10)
  {
    v11 = [(NSDecimalNumber *)currentBalance isEqual:?];
  }

  else
  {
    v11 = currentBalance == v10;
  }

LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_pastDue];
  [v3 safelyAddObject:self->_chargeOffPreventionAmount];
  [v3 safelyAddObject:self->_currentBalance];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDecimalNumber *)self->_pastDue description];
  [v3 appendFormat:@"pastDue: '%@'; ", v4];

  v5 = [(NSDecimalNumber *)self->_chargeOffPreventionAmount description];
  [v3 appendFormat:@"chargeOffPreventionAmount: '%@'; ", v5];

  v6 = [(NSDecimalNumber *)self->_currentBalance description];
  [v3 appendFormat:@"currentBalance: '%@'; ", v6];

  [v3 appendFormat:@">"];

  return v3;
}

@end