@interface PKAccountAssistanceProgramMessage
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKAccountAssistanceProgramMessage)initWithCoder:(id)coder;
- (PKAccountAssistanceProgramMessage)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountAssistanceProgramMessage

- (PKAccountAssistanceProgramMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKAccountAssistanceProgramMessage;
  v5 = [(PKAccountAssistanceProgramMessage *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pastDue"];
    pastDue = v5->_pastDue;
    v5->_pastDue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pastDue = self->_pastDue;
  coderCopy = coder;
  [coderCopy encodeObject:pastDue forKey:@"pastDue"];
  [coderCopy encodeObject:self->_chargeOffPreventionAmount forKey:@"chargeOffPreventionAmount"];
  [coderCopy encodeObject:self->_currentBalance forKey:@"currentBalance"];
}

- (PKAccountAssistanceProgramMessage)initWithRecord:(id)record
{
  recordCopy = record;
  v13.receiver = self;
  v13.super_class = PKAccountAssistanceProgramMessage;
  v5 = [(PKAccountAssistanceProgramMessage *)&v13 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedDecimalNumberForKey:@"pastDue"];
    pastDue = v5->_pastDue;
    v5->_pastDue = v6;

    v8 = [recordCopy pk_encryptedDecimalNumberForKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v8;

    v10 = [recordCopy pk_encryptedDecimalNumberForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  if (PKApplePayContainerEnvironment() == 2)
  {
    [encryptedValues setObject:self->_pastDue forKey:@"pastDue"];
    [encryptedValues setObject:self->_chargeOffPreventionAmount forKey:@"chargeOffPreventionAmount"];
    [encryptedValues setObject:self->_currentBalance forKey:@"currentBalance"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  pastDue = self->_pastDue;
  v6 = equalCopy[1];
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
  v8 = equalCopy[2];
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
  v10 = equalCopy[3];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_pastDue];
  [array safelyAddObject:self->_chargeOffPreventionAmount];
  [array safelyAddObject:self->_currentBalance];
  v4 = PKCombinedHash(17, array);

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