@interface PKPaymentBalance
+ (id)identifiersFromComponentBalances:(id)a3;
- (BOOL)isCurrency;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (NSSet)identifiers;
- (NSString)formattedValue;
- (PKCurrencyAmount)currencyValue;
- (PKPaymentBalance)initWithCoder:(id)a3;
- (PKPaymentBalance)initWithComponentBalances:(id)a3 identifiers:(id)a4 expiredBalances:(id)a5;
- (PKPaymentBalance)initWithDictionary:(id)a3;
- (PKPaymentBalance)initWithIdentifier:(id)a3 forCurrencyAmount:(id)a4;
- (PKPaymentBalance)initWithIdentifier:(id)a3 forValue:(id)a4 roundingToExponent:(int64_t)a5;
- (PKPaymentBalance)initWithIdentifiers:(id)a3 forCurrencyAmount:(id)a4;
- (PKPaymentBalance)initWithIdentifiers:(id)a3 forValue:(id)a4 roundingToExponent:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setValueWithRounding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentBalance

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentBalance allocWithZone:](PKPaymentBalance init];
  v6 = [(NSDecimalNumber *)self->_value copyWithZone:a3];
  value = v5->_value;
  v5->_value = v6;

  v8 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v8;

  v5->_exponent = self->_exponent;
  v10 = [(NSString *)self->_localizedTitle copyWithZone:a3];
  localizedTitle = v5->_localizedTitle;
  v5->_localizedTitle = v10;

  v12 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v12;

  v5->_isPrimary = self->_isPrimary;
  v14 = [(NSDate *)self->_lastUpdateDate copyWithZone:a3];
  lastUpdateDate = v5->_lastUpdateDate;
  v5->_lastUpdateDate = v14;

  v16 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v16;

  v18 = [(NSString *)self->_preformattedString copyWithZone:a3];
  preformattedString = v5->_preformattedString;
  v5->_preformattedString = v18;

  v20 = [(NSArray *)self->_componentBalances copyWithZone:a3];
  componentBalances = v5->_componentBalances;
  v5->_componentBalances = v20;

  v22 = [(NSSet *)self->_identifiers copyWithZone:a3];
  identifiers = v5->_identifiers;
  v5->_identifiers = v22;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeInteger:self->_exponent forKey:@"exponent"];
  [v5 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [v5 encodeBool:self->_isPrimary forKey:@"isPrimaryBalance"];
  [v5 encodeObject:self->_lastUpdateDate forKey:@"lastUpdatedDate"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeObject:self->_preformattedString forKey:@"preformattedString"];
  [v5 encodeObject:self->_componentBalances forKey:@"componentBalances"];
  [v5 encodeObject:self->_identifiers forKey:@"identifiers"];
}

- (PKPaymentBalance)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKPaymentBalance;
  v5 = [(PKPaymentBalance *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v5->_exponent = [v4 decodeIntegerForKey:@"exponent"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v5->_isPrimary = [v4 decodeBoolForKey:@"isPrimaryBalance"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preformattedString"];
    preformattedString = v5->_preformattedString;
    v5->_preformattedString = v18;

    v20 = objc_alloc(MEMORY[0x1E695DFD8]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"componentBalances"];
    componentBalances = v5->_componentBalances;
    v5->_componentBalances = v23;

    v25 = objc_alloc(MEMORY[0x1E695DFD8]);
    v26 = objc_opt_class();
    v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v28;

    if (!v5->_identifiers)
    {
      v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
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

- (PKPaymentBalance)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKPaymentBalance;
  v5 = [(PKPaymentBalance *)&v25 init];
  if (v5)
  {
    v6 = [v4 PKArrayForKey:@"identifiers"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
      identifiers = v5->_identifiers;
      v5->_identifiers = v7;
    }

    else
    {
      identifiers = [v4 PKStringForKey:@"identifier"];
      if (identifiers)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{identifiers, 0}];
        v10 = v5->_identifiers;
        v5->_identifiers = v9;
      }
    }

    v11 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v11;

    v5->_exponent = [v4 PKIntegerForKey:@"exponent"];
    v13 = [v4 PKDecimalNumberForKey:@"value"];
    [(PKPaymentBalance *)v5 _setValueWithRounding:v13];

    v14 = [v4 PKStringForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v14;

    v16 = [v4 PKStringForKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v16;

    v5->_isPrimary = [v4 PKBoolForKey:@"isPrimaryBalance"];
    v18 = [v4 PKDateForKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v18;

    v20 = [v4 PKDateForKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v20;

    v22 = [v4 PKStringForKey:@"preformattedString"];
    preformattedString = v5->_preformattedString;
    v5->_preformattedString = v22;
  }

  return v5;
}

- (PKPaymentBalance)initWithIdentifier:(id)a3 forCurrencyAmount:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = a3;
    a3 = [[v7 alloc] initWithObjects:{v8, 0}];
  }

  v9 = [(PKPaymentBalance *)self initWithIdentifiers:a3 forCurrencyAmount:v6];

  return v9;
}

- (PKPaymentBalance)initWithIdentifiers:(id)a3 forCurrencyAmount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PKPaymentBalance;
  v8 = [(PKPaymentBalance *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v9;

    v11 = [v7 currency];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v11;

    v8->_exponent = [v7 exponent];
    v13 = [v7 preformattedString];
    preformattedString = v8->_preformattedString;
    v8->_preformattedString = v13;

    v15 = [v7 amount];
    [(PKPaymentBalance *)v8 _setValueWithRounding:v15];
  }

  return v8;
}

- (PKPaymentBalance)initWithIdentifier:(id)a3 forValue:(id)a4 roundingToExponent:(int64_t)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = a3;
    a3 = [[v9 alloc] initWithObjects:{v10, 0}];
  }

  v11 = [(PKPaymentBalance *)self initWithIdentifiers:a3 forValue:v8 roundingToExponent:a5];

  return v11;
}

- (PKPaymentBalance)initWithIdentifiers:(id)a3 forValue:(id)a4 roundingToExponent:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentBalance;
  v10 = [(PKPaymentBalance *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifiers = v10->_identifiers;
    v10->_identifiers = v11;

    v10->_exponent = a5;
    objc_storeStrong(&v10->_currencyCode, @"XXX");
    [(PKPaymentBalance *)v10 _setValueWithRounding:v9];
  }

  return v10;
}

- (PKPaymentBalance)initWithComponentBalances:(id)a3 identifiers:(id)a4 expiredBalances:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] || objc_msgSend(v10, "count"))
  {
    v55 = self;
    v11 = [v8 count];
    if (v11)
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    v14 = [v13 firstObject];
    v15 = [v14 currencyCode];
    v58 = [v14 exponent];
    v57 = [MEMORY[0x1E696AB90] zero];
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
      v53 = v9;
      v54 = v8;
      v51 = v14;
      v52 = v10;
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v60 + 1) + 8 * v20);
        v22 = [v21 currencyCode];
        v23 = v15;
        v24 = v22;
        v25 = v24;
        if (v23 == v24)
        {
        }

        else
        {
          if (!v15 || !v24)
          {

LABEL_37:
            v45 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v47 = [v21 currencyCode];
              *buf = 138412546;
              v65 = v23;
              v66 = 2112;
              v67 = v47;
              _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "Cannot create a combined balance with multiple currency codes (%@, %@)", buf, 0x16u);
            }

LABEL_39:
            v9 = v53;
            v8 = v54;
            v14 = v51;
            v10 = v52;
            v32 = obj;
            v35 = v57;

            v48 = 0;
            goto LABEL_44;
          }

          v26 = [v23 isEqualToString:v24];

          if ((v26 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        if (v58 != [v21 exponent])
        {
          v45 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [v21 exponent];
            *buf = 134218240;
            v65 = v58;
            v66 = 2048;
            v67 = v46;
            _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "Cannot create a combined balance with multiple exponents (%ld, %ld)", buf, 0x16u);
          }

          goto LABEL_39;
        }

        if (v11)
        {
          v27 = [v21 value];
          if (v27)
          {
            v28 = [v57 decimalNumberByAdding:v27];

            v57 = v28;
          }
        }

        v29 = [v21 lastUpdateDate];
        v30 = v29;
        if (v18 || !v29)
        {
          if ([v18 compare:v29] == -1)
          {
            v31 = v30;

            v18 = v31;
          }
        }

        else
        {
          v18 = v29;
        }

        if (v17 == ++v20)
        {
          v17 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
          v9 = v53;
          v8 = v54;
          v14 = v51;
          v10 = v52;
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

    v59.receiver = v55;
    v59.super_class = PKPaymentBalance;
    v33 = [(PKPaymentBalance *)&v59 init];
    v34 = v33;
    v35 = v57;
    if (v33)
    {
      objc_storeStrong(&v33->_currencyCode, v15);
      objc_storeStrong(&v34->_value, v57);
      v34->_exponent = v58;
      v36 = [obj firstObject];
      v37 = [v36 localizedTitle];
      localizedTitle = v34->_localizedTitle;
      v34->_localizedTitle = v37;

      v39 = [obj firstObject];
      v40 = [v39 localizedDescription];
      localizedDescription = v34->_localizedDescription;
      v34->_localizedDescription = v40;

      objc_storeStrong(&v34->_lastUpdateDate, v18);
      v42 = [v8 copy];
      componentBalances = v34->_componentBalances;
      v34->_componentBalances = v42;

      if (v9)
      {
        v44 = [v9 copy];
      }

      else
      {
        v44 = [objc_opt_class() identifiersFromComponentBalances:v34->_componentBalances];
      }

      identifiers = v34->_identifiers;
      v34->_identifiers = v44;
    }

    v48 = v34;
    v55 = v48;
LABEL_44:

    self = v55;
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

  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 compare:self->_expirationDate] == 1;

  return v4;
}

- (void)_setValueWithRounding:(id)a3
{
  v8 = a3;
  if (v8)
  {
    if ([(PKPaymentBalance *)self isCurrency])
    {
      v4 = PKCurrencyDecimalAmountRound(v8);
      value = self->_value;
      self->_value = v4;
    }

    else
    {
      value = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:SLOWORD(self->_exponent) raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
      v6 = [v8 decimalNumberByRoundingAccordingToBehavior:value];
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
  v3 = [(PKPaymentBalance *)self preformattedString];

  if (v3)
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
  v3 = [(PKPaymentBalance *)self currencyValue];
  v4 = v3;
  if (v3)
  {
    [v3 formattedStringValue];
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
  v4 = [(NSSet *)self->_identifiers allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  if (self->_isPrimary)
  {
    v6 = " (Primary)";
  }

  else
  {
    v6 = "";
  }

  v7 = [(PKPaymentBalance *)self formattedValue];
  v8 = [v3 stringWithFormat:@"{%@}%s: %@", v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_value];
  if (self->_currencyCode)
  {
    currencyCode = self->_currencyCode;
  }

  else
  {
    currencyCode = @"XXX";
  }

  [v3 safelyAddObject:currencyCode];
  [v3 safelyAddObject:self->_localizedTitle];
  [v3 safelyAddObject:self->_localizedDescription];
  [v3 safelyAddObject:self->_lastUpdateDate];
  [v3 safelyAddObject:self->_componentBalances];
  [v3 safelyAddObject:self->_identifiers];
  v5 = PKCombinedHash(17, v3);
  v6 = self->_exponent - v5 + 32 * v5;
  v7 = self->_isPrimary - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = [v4 value];
  v7 = v6;
  if (value)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (value == v6)
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

      v12 = [v4 currencyCode];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = @"XXX";
      }

      if (!-[__CFString isEqualToString:](currencyCode, "isEqualToString:", v14) || (exponent = self->_exponent, exponent != [v4 exponent]))
      {
        v9 = 0;
LABEL_49:

        goto LABEL_50;
      }

      localizedTitle = self->_localizedTitle;
      v17 = [v4 localizedTitle];
      v18 = v17;
      if (localizedTitle && v17)
      {
        if (([(NSString *)localizedTitle isEqual:v17]& 1) != 0)
        {
LABEL_20:
          localizedDescription = self->_localizedDescription;
          v20 = [v4 localizedDescription];
          v21 = v20;
          if (localizedDescription && v20)
          {
            if (([(NSString *)localizedDescription isEqual:v20]& 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else if (localizedDescription != v20)
          {
            goto LABEL_38;
          }

          isPrimary = self->_isPrimary;
          if (isPrimary == [v4 isPrimary])
          {
            lastUpdateDate = self->_lastUpdateDate;
            v24 = [v4 lastUpdateDate];
            v25 = v24;
            if (lastUpdateDate && v24)
            {
              if (([(NSDate *)lastUpdateDate isEqual:v24]& 1) != 0)
              {
LABEL_32:
                componentBalances = self->_componentBalances;
                v27 = [v4 componentBalances];
                v28 = v27;
                if (componentBalances && v27)
                {
                  if (([(NSArray *)componentBalances isEqual:v27]& 1) != 0)
                  {
                    goto LABEL_35;
                  }
                }

                else if (componentBalances == v27)
                {
LABEL_35:
                  identifiers = self->_identifiers;
                  v30 = [v4 identifiers];
                  v31 = v30;
                  if (identifiers && v30)
                  {
                    v9 = [(NSSet *)identifiers isEqual:v30];
                  }

                  else
                  {
                    v9 = identifiers == v30;
                  }

                  goto LABEL_45;
                }

                v9 = 0;
LABEL_45:

                goto LABEL_46;
              }
            }

            else if (lastUpdateDate == v24)
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

      else if (localizedTitle == v17)
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
    v10 = [(NSDecimalNumber *)value isEqual:v6];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_50:

  return v9;
}

+ (id)identifiersFromComponentBalances:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) identifiers];
        [v4 unionSet:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end