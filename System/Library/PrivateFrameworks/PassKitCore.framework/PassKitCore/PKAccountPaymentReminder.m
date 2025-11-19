@interface PKAccountPaymentReminder
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKAccountPaymentReminder)initWithCoder:(id)a3;
- (PKAccountPaymentReminder)initWithDictionary:(id)a3;
- (PKAccountPaymentReminder)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountPaymentReminder

- (PKAccountPaymentReminder)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountPaymentReminder;
  v5 = [(PKAccountPaymentReminder *)&v13 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [v4 PKDecimalNumberFromStringForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v8;

    v10 = [v4 PKDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v10;
  }

  return v5;
}

- (PKAccountPaymentReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountPaymentReminder;
  v5 = [(PKAccountPaymentReminder *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minimumDue = self->_minimumDue;
  v5 = a3;
  [v5 encodeObject:minimumDue forKey:@"minimumDue"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_paymentDueDate forKey:@"paymentDueDate"];
}

- (PKAccountPaymentReminder)initWithRecord:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountPaymentReminder;
  v5 = [(PKAccountPaymentReminder *)&v13 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v6;

    v8 = [v4 pk_encryptedStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [v4 pk_encryptedDecimalNumberForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v10;
  }

  return v5;
}

- (void)encodeWithRecord:(id)a3
{
  v5 = [a3 encryptedValues];
  [v5 setObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 setObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  v4 = [(NSDecimalNumber *)self->_minimumDue stringValue];
  [v5 setObject:v4 forKey:@"minimumDue"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  minimumDue = self->_minimumDue;
  v6 = v4[1];
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
  v8 = v4[3];
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
  v10 = v4[2];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_minimumDue];
  [v3 safelyAddObject:self->_paymentDueDate];
  [v3 safelyAddObject:self->_currencyCode];
  v4 = PKCombinedHash(17, v3);

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