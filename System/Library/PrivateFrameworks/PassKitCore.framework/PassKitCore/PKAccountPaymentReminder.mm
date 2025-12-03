@interface PKAccountPaymentReminder
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKAccountPaymentReminder)initWithCoder:(id)coder;
- (PKAccountPaymentReminder)initWithDictionary:(id)dictionary;
- (PKAccountPaymentReminder)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountPaymentReminder

- (PKAccountPaymentReminder)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKAccountPaymentReminder;
  v5 = [(PKAccountPaymentReminder *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v8;

    v10 = [dictionaryCopy PKDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v10;
  }

  return v5;
}

- (PKAccountPaymentReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKAccountPaymentReminder;
  v5 = [(PKAccountPaymentReminder *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  minimumDue = self->_minimumDue;
  coderCopy = coder;
  [coderCopy encodeObject:minimumDue forKey:@"minimumDue"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_paymentDueDate forKey:@"paymentDueDate"];
}

- (PKAccountPaymentReminder)initWithRecord:(id)record
{
  recordCopy = record;
  v13.receiver = self;
  v13.super_class = PKAccountPaymentReminder;
  v5 = [(PKAccountPaymentReminder *)&v13 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v6;

    v8 = [recordCopy pk_encryptedStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [recordCopy pk_encryptedDecimalNumberForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v10;
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  [encryptedValues setObject:self->_currencyCode forKey:@"currencyCode"];
  [encryptedValues setObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  stringValue = [(NSDecimalNumber *)self->_minimumDue stringValue];
  [encryptedValues setObject:stringValue forKey:@"minimumDue"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  minimumDue = self->_minimumDue;
  v6 = equalCopy[1];
  if (minimumDue && v6)
  {
    if (([(NSDecimalNumber *)minimumDue isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (minimumDue != v6)
  {
    goto LABEL_14;
  }

  paymentDueDate = self->_paymentDueDate;
  v8 = equalCopy[3];
  if (!paymentDueDate || !v8)
  {
    if (paymentDueDate == v8)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (([(NSDate *)paymentDueDate isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  currencyCode = self->_currencyCode;
  v10 = equalCopy[2];
  if (currencyCode && v10)
  {
    v11 = [(NSString *)currencyCode isEqual:?];
  }

  else
  {
    v11 = currencyCode == v10;
  }

LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_minimumDue];
  [array safelyAddObject:self->_paymentDueDate];
  [array safelyAddObject:self->_currencyCode];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"minimumDue: '%@'; ", self->_minimumDue];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  v4 = [(NSDate *)self->_paymentDueDate description];
  [v3 appendFormat:@"paymentDueDate: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

@end