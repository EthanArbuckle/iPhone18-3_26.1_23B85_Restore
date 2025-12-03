@interface PKPeerPaymentRecurringPaymentTransaction
+ (id)transactionWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentRecurringPaymentTransaction)initWithCoder:(id)coder;
- (PKPeerPaymentRecurringPaymentTransaction)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentRecurringPaymentTransaction

+ (id)transactionWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (PKPeerPaymentRecurringPaymentTransaction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKPeerPaymentRecurringPaymentTransaction;
  v5 = [(PKPeerPaymentRecurringPaymentTransaction *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [dictionaryCopy PKStringForKey:@"status"];
    v5->_status = PKPeerPaymentRecurringPaymentTransactionStatusFromString(v9);

    v10 = [dictionaryCopy PKDateForKey:@"executionDate"];
    v11 = [v10 copy];
    executionDate = v5->_executionDate;
    v5->_executionDate = v11;

    v13 = [dictionaryCopy PKStringForKey:@"errorCode"];
    v14 = v13;
    if (v13)
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = [dictionaryCopy PKIntegerForKey:@"errorCode"];
    }

    v5->_errorCode = integerValue;
  }

  return v5;
}

- (PKPeerPaymentRecurringPaymentTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentRecurringPaymentTransaction;
  v5 = [(PKPeerPaymentRecurringPaymentTransaction *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKPeerPaymentRecurringPaymentTransactionStatusFromString(v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executionDate"];
    executionDate = v5->_executionDate;
    v5->_executionDate = v9;

    v5->_errorCode = [coderCopy decodeIntegerForKey:@"errorCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = PKPeerPaymentRecurringPaymentTransactionStatusToString(self->_status);
  [coderCopy encodeObject:v5 forKey:@"status"];

  [coderCopy encodeObject:self->_executionDate forKey:@"executionDate"];
  [coderCopy encodeInteger:self->_errorCode forKey:@"errorCode"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_executionDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_status - v4 + 32 * v4;
  v6 = self->_errorCode - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  v6 = equalCopy[1];
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
  v8 = equalCopy[3];
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
  if (self->_status != equalCopy[2])
  {
    goto LABEL_14;
  }

  v9 = self->_errorCode == equalCopy[4];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentRecurringPaymentTransaction allocWithZone:](PKPeerPaymentRecurringPaymentTransaction init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_status = self->_status;
  v8 = [(NSDate *)self->_executionDate copyWithZone:zone];
  executionDate = v5->_executionDate;
  v5->_executionDate = v8;

  v5->_errorCode = self->_errorCode;
  return v5;
}

@end