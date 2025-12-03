@interface PKPaymentTransactionForeignExchangeInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToForeignExchangeInformation:(id)information;
- (PKPaymentTransactionForeignExchangeInformation)initWithCloudStoreCoder:(id)coder;
- (PKPaymentTransactionForeignExchangeInformation)initWithCoder:(id)coder;
- (id)fkForeignAmount;
- (id)jsonDictionaryRepresentation;
- (id)jsonString;
- (unint64_t)hash;
- (void)_encodeServerDataWithCloudStoreCoder:(id)coder;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionForeignExchangeInformation

- (id)jsonDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  currency = [(PKCurrencyAmount *)self->_destinationCurrencyAmount currency];

  if (currency)
  {
    currency2 = [(PKCurrencyAmount *)self->_destinationCurrencyAmount currency];
    [dictionary setObject:currency2 forKey:@"destinationCurrencyCode"];
  }

  amount = [(PKCurrencyAmount *)self->_destinationCurrencyAmount amount];

  if (amount)
  {
    amount2 = [(PKCurrencyAmount *)self->_destinationCurrencyAmount amount];
    stringValue = [amount2 stringValue];
    [dictionary setObject:stringValue forKey:@"destinationAmount"];
  }

  exchangeRate = self->_exchangeRate;
  if (exchangeRate)
  {
    stringValue2 = [(NSDecimalNumber *)exchangeRate stringValue];
    [dictionary setObject:stringValue2 forKey:@"exchangeRate"];
  }

  v11 = [dictionary copy];

  return v11;
}

- (id)jsonString
{
  v11 = *MEMORY[0x1E69E9840];
  jsonDictionaryRepresentation = [(PKPaymentTransactionForeignExchangeInformation *)self jsonDictionaryRepresentation];
  v8 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jsonDictionaryRepresentation options:2 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error forming foreign exchange dictionary for CloudKit with error: %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
LABEL_8:

  return v6;
}

- (PKPaymentTransactionForeignExchangeInformation)initWithCloudStoreCoder:(id)coder
{
  v4 = [coder recordsWithRecordType:@"Transaction"];
  firstObject = [v4 firstObject];

  v6 = [firstObject pk_encryptedDictionaryForKey:@"foreignExchangeInformation"];
  if (v6)
  {
    v18.receiver = self;
    v18.super_class = PKPaymentTransactionForeignExchangeInformation;
    v7 = [(PKPaymentTransactionForeignExchangeInformation *)&v18 init];
    if (v7)
    {
      v8 = [v6 objectForKey:@"destinationCurrencyCode"];
      v9 = [v6 PKDecimalNumberFromStringForKey:@"destinationAmount"];
      if (v9)
      {
        notANumber = [MEMORY[0x1E696AB90] notANumber];
        v11 = [v9 isEqualToNumber:notANumber];

        if ((v11 & 1) == 0)
        {
          if (v8)
          {
            v12 = [[PKCurrencyAmount alloc] initWithAmount:v9 currency:v8 exponent:0];
            destinationCurrencyAmount = v7->_destinationCurrencyAmount;
            v7->_destinationCurrencyAmount = v12;
          }
        }
      }

      v14 = [v6 PKDecimalNumberFromStringForKey:@"exchangeRate"];
      exchangeRate = v7->_exchangeRate;
      v7->_exchangeRate = v14;
    }

    if (![(PKPaymentTransactionForeignExchangeInformation *)v7 isValid])
    {

      v7 = 0;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  v4 = [record recordsWithRecordType:@"Transaction"];
  firstObject = [v4 firstObject];

  v5 = [firstObject pk_encryptedDictionaryForKey:@"foreignExchangeInformation"];
  if (firstObject)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [v5 objectForKey:@"destinationCurrencyCode"];
    v8 = [v5 PKDecimalNumberFromStringForKey:@"destinationAmount"];
    if (v8)
    {
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      v10 = [v8 isEqualToNumber:notANumber];

      if ((v10 & 1) == 0)
      {
        if (v7)
        {
          v11 = [[PKCurrencyAmount alloc] initWithAmount:v8 currency:v7 exponent:0];
          destinationCurrencyAmount = self->_destinationCurrencyAmount;
          self->_destinationCurrencyAmount = v11;
        }
      }
    }

    v13 = [v5 PKDecimalNumberFromStringForKey:@"exchangeRate"];
    exchangeRate = self->_exchangeRate;
    self->_exchangeRate = v13;
  }
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  if (type - 1 <= 1)
  {
    [(PKPaymentTransactionForeignExchangeInformation *)self _encodeServerDataWithCloudStoreCoder:coder];
  }
}

- (void)_encodeServerDataWithCloudStoreCoder:(id)coder
{
  v4 = [coder recordsWithRecordType:@"Transaction"];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  jsonString = [(PKPaymentTransactionForeignExchangeInformation *)self jsonString];
  [encryptedValues setObject:jsonString forKey:@"foreignExchangeInformation"];
}

- (PKPaymentTransactionForeignExchangeInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentTransactionForeignExchangeInformation;
  v5 = [(PKPaymentTransactionForeignExchangeInformation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationCurrencyAmount"];
    destinationCurrencyAmount = v5->_destinationCurrencyAmount;
    v5->_destinationCurrencyAmount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exchangeRate"];
    exchangeRate = v5->_exchangeRate;
    v5->_exchangeRate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  destinationCurrencyAmount = self->_destinationCurrencyAmount;
  coderCopy = coder;
  [coderCopy encodeObject:destinationCurrencyAmount forKey:@"destinationCurrencyAmount"];
  [coderCopy encodeObject:self->_exchangeRate forKey:@"exchangeRate"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_destinationCurrencyAmount];
  [array safelyAddObject:self->_exchangeRate];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionForeignExchangeInformation *)self isEqualToForeignExchangeInformation:v5];
  }

  return v6;
}

- (BOOL)isEqualToForeignExchangeInformation:(id)information
{
  informationCopy = information;
  destinationCurrencyAmount = self->_destinationCurrencyAmount;
  v6 = informationCopy[1];
  if (destinationCurrencyAmount)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKCurrencyAmount *)destinationCurrencyAmount isEqual:?])
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_13;
  }

  if (destinationCurrencyAmount != v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  exchangeRate = self->_exchangeRate;
  v10 = informationCopy[2];
  if (exchangeRate && v10)
  {
    v8 = [(NSDecimalNumber *)exchangeRate isEqual:?];
  }

  else
  {
    v8 = exchangeRate == v10;
  }

LABEL_13:

  return v8;
}

- (id)fkForeignAmount
{
  destinationCurrencyAmount = [(PKPaymentTransactionForeignExchangeInformation *)self destinationCurrencyAmount];

  if (destinationCurrencyAmount)
  {
    v4 = objc_alloc(MEMORY[0x1E6967D88]);
    destinationCurrencyAmount2 = [(PKPaymentTransactionForeignExchangeInformation *)self destinationCurrencyAmount];
    amount = [destinationCurrencyAmount2 amount];
    pk_absoluteValue = [amount pk_absoluteValue];
    destinationCurrencyAmount3 = [(PKPaymentTransactionForeignExchangeInformation *)self destinationCurrencyAmount];
    currency = [destinationCurrencyAmount3 currency];
    v10 = [v4 initWithDecimalNumber:pk_absoluteValue currency:currency];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end