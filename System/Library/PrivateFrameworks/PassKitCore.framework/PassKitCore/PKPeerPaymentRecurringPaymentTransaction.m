@interface PKPeerPaymentRecurringPaymentTransaction
+ (id)transactionWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRecurringPaymentTransaction)initWithCoder:(id)a3;
- (PKPeerPaymentRecurringPaymentTransaction)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentTransaction

+ (id)transactionWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (PKPeerPaymentRecurringPaymentTransaction)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPeerPaymentRecurringPaymentTransaction;
  v5 = [(PKPeerPaymentRecurringPaymentTransaction *)&v17 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 PKStringForKey:@"status"];
    v5->_status = PKPeerPaymentRecurringPaymentTransactionStatusFromString(v9);

    v10 = [v4 PKDateForKey:@"executionDate"];
    v11 = [v10 copy];
    executionDate = v5->_executionDate;
    v5->_executionDate = v11;

    v13 = [v4 PKStringForKey:@"errorCode"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 integerValue];
    }

    else
    {
      v15 = [v4 PKIntegerForKey:@"errorCode"];
    }

    v5->_errorCode = v15;
  }

  return v5;
}

- (PKPeerPaymentRecurringPaymentTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentRecurringPaymentTransaction;
  v5 = [(PKPeerPaymentRecurringPaymentTransaction *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKPeerPaymentRecurringPaymentTransactionStatusFromString(v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executionDate"];
    executionDate = v5->_executionDate;
    v5->_executionDate = v9;

    v5->_errorCode = [v4 decodeIntegerForKey:@"errorCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  v5 = PKPeerPaymentRecurringPaymentTransactionStatusToString(self->_status);
  [v6 encodeObject:v5 forKey:@"status"];

  [v6 encodeObject:self->_executionDate forKey:@"executionDate"];
  [v6 encodeInteger:self->_errorCode forKey:@"errorCode"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_executionDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_status - v4 + 32 * v4;
  v6 = self->_errorCode - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_14;
  }

  executionDate = self->_executionDate;
  v8 = v4[3];
  if (!executionDate || !v8)
  {
    if (executionDate == v8)
    {
      goto LABEL_12;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (([(NSDate *)executionDate isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (self->_status != v4[2])
  {
    goto LABEL_14;
  }

  v9 = self->_errorCode == v4[4];
LABEL_15:

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = PKPeerPaymentRecurringPaymentTransactionStatusToString(self->_status);
  [v3 appendFormat:@"status: '%@'; ", v4];

  [v3 appendFormat:@"executionDate: '%@'; ", self->_executionDate];
  [v3 appendFormat:@"errorCode: '%ld'; ", self->_errorCode];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentRecurringPaymentTransaction allocWithZone:](PKPeerPaymentRecurringPaymentTransaction init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_status = self->_status;
  v8 = [(NSDate *)self->_executionDate copyWithZone:a3];
  executionDate = v5->_executionDate;
  v5->_executionDate = v8;

  v5->_errorCode = self->_errorCode;
  return v5;
}

@end