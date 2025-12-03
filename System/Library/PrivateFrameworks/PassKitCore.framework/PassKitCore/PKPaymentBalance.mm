@interface PKPaymentBalance
+ (id)identifiersFromComponentBalances:(id)balances;
- (BOOL)isCurrency;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (NSSet)identifiers;
- (NSString)formattedValue;
- (PKCurrencyAmount)currencyValue;
- (PKPaymentBalance)initWithCoder:(id)coder;
- (PKPaymentBalance)initWithComponentBalances:(id)balances identifiers:(id)identifiers expiredBalances:(id)expiredBalances;
- (PKPaymentBalance)initWithDictionary:(id)dictionary;
- (PKPaymentBalance)initWithIdentifier:(id)identifier forCurrencyAmount:(id)amount;
- (PKPaymentBalance)initWithIdentifier:(id)identifier forValue:(id)value roundingToExponent:(int64_t)exponent;
- (PKPaymentBalance)initWithIdentifiers:(id)identifiers forCurrencyAmount:(id)amount;
- (PKPaymentBalance)initWithIdentifiers:(id)identifiers forValue:(id)value roundingToExponent:(int64_t)exponent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_setValueWithRounding:(id)rounding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentBalance

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentBalance allocWithZone:](PKPaymentBalance init];
  v6 = [(NSDecimalNumber *)self->_value copyWithZone:zone];
  value = v5->_value;
  v5->_value = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v8;

  v5->_exponent = self->_exponent;
  v10 = [(NSString *)self->_localizedTitle copyWithZone:zone];
  localizedTitle = v5->_localizedTitle;
  v5->_localizedTitle = v10;

  v12 = [(NSString *)self->_localizedDescription copyWithZone:zone];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v12;

  v5->_isPrimary = self->_isPrimary;
  v14 = [(NSDate *)self->_lastUpdateDate copyWithZone:zone];
  lastUpdateDate = v5->_lastUpdateDate;
  v5->_lastUpdateDate = v14;

  v16 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v16;

  v18 = [(NSString *)self->_preformattedString copyWithZone:zone];
  preformattedString = v5->_preformattedString;
  v5->_preformattedString = v18;

  v20 = [(NSArray *)self->_componentBalances copyWithZone:zone];
  componentBalances = v5->_componentBalances;
  v5->_componentBalances = v20;

  v22 = [(NSSet *)self->_identifiers copyWithZone:zone];
  identifiers = v5->_identifiers;
  v5->_identifiers = v22;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeInteger:self->_exponent forKey:@"exponent"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeBool:self->_isPrimary forKey:@"isPrimaryBalance"];
  [coderCopy encodeObject:self->_lastUpdateDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_preformattedString forKey:@"preformattedString"];
  [coderCopy encodeObject:self->_componentBalances forKey:@"componentBalances"];
  [coderCopy encodeObject:self->_identifiers forKey:@"identifiers"];
}

- (PKPaymentBalance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = PKPaymentBalance;
  v5 = [(PKPaymentBalance *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v5->_exponent = [coderCopy decodeIntegerForKey:@"exponent"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v5->_isPrimary = [coderCopy decodeBoolForKey:@"isPrimaryBalance"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preformattedString"];
    preformattedString = v5->_preformattedString;
    v5->_preformattedString = v18;

    v20 = objc_alloc(MEMORY[0x1E695DFD8]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"componentBalances"];
    componentBalances = v5->_componentBalances;
    v5->_componentBalances = v23;

    v25 = objc_alloc(MEMORY[0x1E695DFD8]);
    v26 = objc_opt_class();
    v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v28;

    if (!v5->_identifiers)
    {
      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      if (v30)
      {
        v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v30, 0}];
        v32 = v5->_identifiers;
        v5->_identifiers = v31;
      }
    }
  }

  return v5;
}

- (PKPaymentBalance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PKPaymentBalance;
  v5 = [(PKPaymentBalance *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKArrayForKey:@"identifiers"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
      identifiers = v5->_identifiers;
      v5->_identifiers = v7;
    }

    else
    {
      identifiers = [dictionaryCopy PKStringForKey:@"identifier"];
      if (identifiers)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{identifiers, 0}];
        v10 = v5->_identifiers;
        v5->_identifiers = v9;
      }
    }

    v11 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v11;

    v5->_exponent = [dictionaryCopy PKIntegerForKey:@"exponent"];
    v13 = [dictionaryCopy PKDecimalNumberForKey:@"value"];
    [(PKPaymentBalance *)v5 _setValueWithRounding:v13];

    v14 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v14;

    v16 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v16;

    v5->_isPrimary = [dictionaryCopy PKBoolForKey:@"isPrimaryBalance"];
    v18 = [dictionaryCopy PKDateForKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v18;

    v20 = [dictionaryCopy PKDateForKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v20;

    v22 = [dictionaryCopy PKStringForKey:@"preformattedString"];
    preformattedString = v5->_preformattedString;
    v5->_preformattedString = v22;
  }

  return v5;
}

- (PKPaymentBalance)initWithIdentifier:(id)identifier forCurrencyAmount:(id)amount
{
  amountCopy = amount;
  if (identifier)
  {
    v7 = MEMORY[0x1E695DFD8];
    identifierCopy = identifier;
    identifier = [[v7 alloc] initWithObjects:{identifierCopy, 0}];
  }

  v9 = [(PKPaymentBalance *)self initWithIdentifiers:identifier forCurrencyAmount:amountCopy];

  return v9;
}

- (PKPaymentBalance)initWithIdentifiers:(id)identifiers forCurrencyAmount:(id)amount
{
  identifiersCopy = identifiers;
  amountCopy = amount;
  v17.receiver = self;
  v17.super_class = PKPaymentBalance;
  v8 = [(PKPaymentBalance *)&v17 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v9;

    currency = [amountCopy currency];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = currency;

    v8->_exponent = [amountCopy exponent];
    preformattedString = [amountCopy preformattedString];
    preformattedString = v8->_preformattedString;
    v8->_preformattedString = preformattedString;

    amount = [amountCopy amount];
    [(PKPaymentBalance *)v8 _setValueWithRounding:amount];
  }

  return v8;
}

- (PKPaymentBalance)initWithIdentifier:(id)identifier forValue:(id)value roundingToExponent:(int64_t)exponent
{
  valueCopy = value;
  if (identifier)
  {
    v9 = MEMORY[0x1E695DFD8];
    identifierCopy = identifier;
    identifier = [[v9 alloc] initWithObjects:{identifierCopy, 0}];
  }

  v11 = [(PKPaymentBalance *)self initWithIdentifiers:identifier forValue:valueCopy roundingToExponent:exponent];

  return v11;
}

- (PKPaymentBalance)initWithIdentifiers:(id)identifiers forValue:(id)value roundingToExponent:(int64_t)exponent
{
  identifiersCopy = identifiers;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = PKPaymentBalance;
  v10 = [(PKPaymentBalance *)&v14 init];
  if (v10)
  {
    v11 = [identifiersCopy copy];
    identifiers = v10->_identifiers;
    v10->_identifiers = v11;

    v10->_exponent = exponent;
    objc_storeStrong(&v10->_currencyCode, @"XXX");
    [(PKPaymentBalance *)v10 _setValueWithRounding:valueCopy];
  }

  return v10;
}

- (PKPaymentBalance)initWithComponentBalances:(id)balances identifiers:(id)identifiers expiredBalances:(id)expiredBalances
{
  v69 = *MEMORY[0x1E69E9840];
  balancesCopy = balances;
  identifiersCopy = identifiers;
  expiredBalancesCopy = expiredBalances;
  if ([balancesCopy count] || objc_msgSend(expiredBalancesCopy, "count"))
  {
    selfCopy = self;
    v11 = [balancesCopy count];
    if (v11)
    {
      v12 = balancesCopy;
    }

    else
    {
      v12 = expiredBalancesCopy;
    }

    v13 = v12;
    firstObject = [v13 firstObject];
    currencyCode = [firstObject currencyCode];
    exponent = [firstObject exponent];
    zero = [MEMORY[0x1E696AB90] zero];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v13;
    v16 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v61;
      v53 = identifiersCopy;
      v54 = balancesCopy;
      v51 = firstObject;
      v52 = expiredBalancesCopy;
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v60 + 1) + 8 * v20);
        currencyCode2 = [v21 currencyCode];
        v23 = currencyCode;
        v24 = currencyCode2;
        v25 = v24;
        if (v23 == v24)
        {
        }

        else
        {
          if (!currencyCode || !v24)
          {

LABEL_37:
            v45 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              currencyCode3 = [v21 currencyCode];
              *buf = 138412546;
              v65 = v23;
              v66 = 2112;
              v67 = currencyCode3;
              _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "Cannot create a combined balance with multiple currency codes (%@, %@)", buf, 0x16u);
            }

LABEL_39:
            identifiersCopy = v53;
            balancesCopy = v54;
            firstObject = v51;
            expiredBalancesCopy = v52;
            v32 = obj;
            v35 = zero;

            v48 = 0;
            goto LABEL_44;
          }

          v26 = [v23 isEqualToString:v24];

          if ((v26 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        if (exponent != [v21 exponent])
        {
          v45 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            exponent2 = [v21 exponent];
            *buf = 134218240;
            v65 = exponent;
            v66 = 2048;
            v67 = exponent2;
            _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "Cannot create a combined balance with multiple exponents (%ld, %ld)", buf, 0x16u);
          }

          goto LABEL_39;
        }

        if (v11)
        {
          value = [v21 value];
          if (value)
          {
            v28 = [zero decimalNumberByAdding:value];

            zero = v28;
          }
        }

        lastUpdateDate = [v21 lastUpdateDate];
        v30 = lastUpdateDate;
        if (v18 || !lastUpdateDate)
        {
          if ([v18 compare:lastUpdateDate] == -1)
          {
            v31 = v30;

            v18 = v31;
          }
        }

        else
        {
          v18 = lastUpdateDate;
        }

        if (v17 == ++v20)
        {
          v17 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
          identifiersCopy = v53;
          balancesCopy = v54;
          firstObject = v51;
          expiredBalancesCopy = v52;
          if (v17)
          {
            goto LABEL_8;
          }

          goto LABEL_31;
        }
      }
    }

    v18 = 0;
LABEL_31:
    v32 = obj;

    v59.receiver = selfCopy;
    v59.super_class = PKPaymentBalance;
    v33 = [(PKPaymentBalance *)&v59 init];
    v34 = v33;
    v35 = zero;
    if (v33)
    {
      objc_storeStrong(&v33->_currencyCode, currencyCode);
      objc_storeStrong(&v34->_value, zero);
      v34->_exponent = exponent;
      firstObject2 = [obj firstObject];
      localizedTitle = [firstObject2 localizedTitle];
      localizedTitle = v34->_localizedTitle;
      v34->_localizedTitle = localizedTitle;

      firstObject3 = [obj firstObject];
      localizedDescription = [firstObject3 localizedDescription];
      localizedDescription = v34->_localizedDescription;
      v34->_localizedDescription = localizedDescription;

      objc_storeStrong(&v34->_lastUpdateDate, v18);
      v42 = [balancesCopy copy];
      componentBalances = v34->_componentBalances;
      v34->_componentBalances = v42;

      if (identifiersCopy)
      {
        v44 = [identifiersCopy copy];
      }

      else
      {
        v44 = [objc_opt_class() identifiersFromComponentBalances:v34->_componentBalances];
      }

      identifiers = v34->_identifiers;
      v34->_identifiers = v44;
    }

    v48 = v34;
    selfCopy = v48;
LABEL_44:

    self = selfCopy;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (NSSet)identifiers
{
  identifiers = self->_identifiers;
  if (identifiers)
  {
    v3 = identifiers;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ApplicationStoredValueBalanceDefault", 0}];
  }

  return v3;
}

- (BOOL)isExpired
{
  if (!self->_expirationDate)
  {
    return 0;
  }

  date = [MEMORY[0x1E695DF00] date];
  v4 = [date compare:self->_expirationDate] == 1;

  return v4;
}

- (void)_setValueWithRounding:(id)rounding
{
  roundingCopy = rounding;
  if (roundingCopy)
  {
    if ([(PKPaymentBalance *)self isCurrency])
    {
      v4 = PKCurrencyDecimalAmountRound(roundingCopy);
      value = self->_value;
      self->_value = v4;
    }

    else
    {
      value = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:SLOWORD(self->_exponent) raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
      v6 = [roundingCopy decimalNumberByRoundingAccordingToBehavior:value];
      v7 = self->_value;
      self->_value = v6;
    }
  }

  else
  {
    value = self->_value;
    self->_value = 0;
  }
}

- (BOOL)isCurrency
{
  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    LOBYTE(currencyCode) = ![(NSString *)currencyCode isEqualToString:@"XXX"];
  }

  return currencyCode;
}

- (PKCurrencyAmount)currencyValue
{
  preformattedString = [(PKPaymentBalance *)self preformattedString];

  if (preformattedString)
  {
    v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_value exponent:self->_exponent preformattedString:self->_preformattedString];
  }

  else if ([(PKPaymentBalance *)self isCurrency])
  {
    v4 = PKCurrencyAmountCreate(self->_value, self->_currencyCode, self->_exponent);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)formattedValue
{
  currencyValue = [(PKPaymentBalance *)self currencyValue];
  v4 = currencyValue;
  if (currencyValue)
  {
    [currencyValue formattedStringValue];
  }

  else
  {
    PKFormattedStringMinimalFractionDigitsFromNumber(self->_value, self->_exponent);
  }
  v5 = ;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  allObjects = [(NSSet *)self->_identifiers allObjects];
  v5 = [allObjects componentsJoinedByString:{@", "}];
  if (self->_isPrimary)
  {
    v6 = " (Primary)";
  }

  else
  {
    v6 = "";
  }

  formattedValue = [(PKPaymentBalance *)self formattedValue];
  v8 = [v3 stringWithFormat:@"{%@}%s: %@", v5, v6, formattedValue];

  return v8;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_value];
  if (self->_currencyCode)
  {
    currencyCode = self->_currencyCode;
  }

  else
  {
    currencyCode = @"XXX";
  }

  [array safelyAddObject:currencyCode];
  [array safelyAddObject:self->_localizedTitle];
  [array safelyAddObject:self->_localizedDescription];
  [array safelyAddObject:self->_lastUpdateDate];
  [array safelyAddObject:self->_componentBalances];
  [array safelyAddObject:self->_identifiers];
  v5 = PKCombinedHash(17, array);
  v6 = self->_exponent - v5 + 32 * v5;
  v7 = self->_isPrimary - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  value = self->_value;
  value = [equalCopy value];
  v7 = value;
  if (value)
  {
    v8 = value == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (value == value)
    {
LABEL_9:
      if (self->_currencyCode)
      {
        currencyCode = self->_currencyCode;
      }

      else
      {
        currencyCode = @"XXX";
      }

      currencyCode = [equalCopy currencyCode];
      v13 = currencyCode;
      if (currencyCode)
      {
        v14 = currencyCode;
      }

      else
      {
        v14 = @"XXX";
      }

      if (!-[__CFString isEqualToString:](currencyCode, "isEqualToString:", v14) || (exponent = self->_exponent, exponent != [equalCopy exponent]))
      {
        v9 = 0;
LABEL_49:

        goto LABEL_50;
      }

      localizedTitle = self->_localizedTitle;
      localizedTitle = [equalCopy localizedTitle];
      v18 = localizedTitle;
      if (localizedTitle && localizedTitle)
      {
        if (([(NSString *)localizedTitle isEqual:localizedTitle]& 1) != 0)
        {
LABEL_20:
          localizedDescription = self->_localizedDescription;
          localizedDescription = [equalCopy localizedDescription];
          v21 = localizedDescription;
          if (localizedDescription && localizedDescription)
          {
            if (([(NSString *)localizedDescription isEqual:localizedDescription]& 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else if (localizedDescription != localizedDescription)
          {
            goto LABEL_38;
          }

          isPrimary = self->_isPrimary;
          if (isPrimary == [equalCopy isPrimary])
          {
            lastUpdateDate = self->_lastUpdateDate;
            lastUpdateDate = [equalCopy lastUpdateDate];
            v25 = lastUpdateDate;
            if (lastUpdateDate && lastUpdateDate)
            {
              if (([(NSDate *)lastUpdateDate isEqual:lastUpdateDate]& 1) != 0)
              {
LABEL_32:
                componentBalances = self->_componentBalances;
                componentBalances = [equalCopy componentBalances];
                v28 = componentBalances;
                if (componentBalances && componentBalances)
                {
                  if (([(NSArray *)componentBalances isEqual:componentBalances]& 1) != 0)
                  {
                    goto LABEL_35;
                  }
                }

                else if (componentBalances == componentBalances)
                {
LABEL_35:
                  identifiers = self->_identifiers;
                  identifiers = [equalCopy identifiers];
                  v31 = identifiers;
                  if (identifiers && identifiers)
                  {
                    v9 = [(NSSet *)identifiers isEqual:identifiers];
                  }

                  else
                  {
                    v9 = identifiers == identifiers;
                  }

                  goto LABEL_45;
                }

                v9 = 0;
LABEL_45:

                goto LABEL_46;
              }
            }

            else if (lastUpdateDate == lastUpdateDate)
            {
              goto LABEL_32;
            }

            v9 = 0;
LABEL_46:

            goto LABEL_47;
          }

LABEL_38:
          v9 = 0;
LABEL_47:

          goto LABEL_48;
        }
      }

      else if (localizedTitle == localizedTitle)
      {
        goto LABEL_20;
      }

      v9 = 0;
LABEL_48:

      goto LABEL_49;
    }
  }

  else
  {
    v10 = [(NSDecimalNumber *)value isEqual:value];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_50:

  return v9;
}

+ (id)identifiersFromComponentBalances:(id)balances
{
  v18 = *MEMORY[0x1E69E9840];
  balancesCopy = balances;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(balancesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = balancesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        identifiers = [*(*(&v13 + 1) + 8 * i) identifiers];
        [v4 unionSet:identifiers];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end