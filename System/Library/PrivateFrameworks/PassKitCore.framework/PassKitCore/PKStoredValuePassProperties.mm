@interface PKStoredValuePassProperties
+ (PKStoredValuePassProperties)passPropertiesForPass:(PKPass *)pass;
- (BOOL)isEqual:(id)equal;
- (NSDecimalNumber)balance;
- (NSString)currencyCode;
- (NSString)displayableBalance;
- (PKStoredValuePassProperties)initWithCoder:(id)coder;
- (PKStoredValuePassProperties)initWithTransitAppletState:(id)state paymentApplication:(id)application fieldCollection:(id)collection;
- (id)balanceWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decimalBalance;
- (id)primaryCashBalance;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStoredValuePassProperties

- (PKStoredValuePassProperties)initWithTransitAppletState:(id)state paymentApplication:(id)application fieldCollection:(id)collection
{
  v79 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  applicationCopy = application;
  collectionCopy = collection;
  v74.receiver = self;
  v74.super_class = PKStoredValuePassProperties;
  v11 = [(PKStoredValuePassProperties *)&v74 init];
  if (v11)
  {
    appletDataFormat = [applicationCopy appletDataFormat];
    v13 = [appletDataFormat copy];
    appletFormat = v11->_appletFormat;
    v11->_appletFormat = v13;

    balance = [stateCopy balance];
    balances = [stateCopy balances];
    currency = [stateCopy currency];
    v18 = currency;
    if (currency)
    {
      appletCurrencyCode = currency;
    }

    else
    {
      appletCurrencyCode = [applicationCopy appletCurrencyCode];
    }

    v20 = appletCurrencyCode;

    if (balance && v20)
    {
      v21 = PKCurrencyAmountCreate(balance, v20, 0);
      balanceAmount = v11->_balanceAmount;
      v11->_balanceAmount = v21;
    }

    if ([balances count])
    {
      v54 = v20;
      v55 = balance;
      v57 = v11;
      v58 = applicationCopy;
      v59 = stateCopy;
      v56 = collectionCopy;
      balanceFields = [collectionCopy balanceFields];
      v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(balances, "count")}];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = balanceFields;
      v63 = [(PKStoredValuePassBalance *)obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v63)
      {
        v61 = *v71;
        v62 = balances;
        do
        {
          v24 = 0;
          do
          {
            if (*v71 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v64 = v24;
            v25 = *(*(&v70 + 1) + 8 * v24);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v26 = balances;
            v27 = [v26 countByEnumeratingWithState:&v66 objects:v77 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v67;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v67 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v66 + 1) + 8 * i);
                  foreignReferenceIdentifiers = [v25 foreignReferenceIdentifiers];
                  identifier = [v31 identifier];
                  v34 = [foreignReferenceIdentifiers containsObject:identifier];

                  if (v34)
                  {
                    v35 = [[PKStoredValuePassBalance alloc] initWithTransitAppletBalance:v31 balanceField:v25];
                    balanceType = [(PKStoredValuePassBalance *)v35 balanceType];
                    v37 = [balanceType isEqualToString:@"com.apple.wallet.storedvaluepassbalancetype.unknown"];

                    if ((v37 & 1) == 0)
                    {
                      [(NSArray *)v65 safelyAddObject:v35];
                    }
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v66 objects:v77 count:16];
              }

              while (v28);
            }

            v24 = v64 + 1;
            balances = v62;
          }

          while (v64 + 1 != v63);
          v63 = [(PKStoredValuePassBalance *)obj countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v63);
      }

      v38 = obj;

      v39 = v65;
      v40 = [(NSArray *)v65 copy];
      v11 = v57;
      balances = v57->_balances;
      v57->_balances = v40;

      if ([(NSArray *)v57->_balances count])
      {
        applicationCopy = v58;
        stateCopy = v59;
        balance = v55;
        collectionCopy = v56;
        v20 = v54;
      }

      else
      {
        applicationCopy = v58;
        stateCopy = v59;
        balance = v55;
        collectionCopy = v56;
        v20 = v54;
        if (v57->_balanceAmount)
        {
          v44 = [[PKStoredValuePassBalance alloc] initWithCurrencyAmount:v57->_balanceAmount];
          v76 = v44;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
          v46 = v57->_balances;
          v57->_balances = v45;
        }
      }
    }

    else
    {
      v42 = [[PKStoredValuePassBalance alloc] initWithCurrencyAmount:v11->_balanceAmount];
      v38 = v42;
      if (v42)
      {
        v75 = v42;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      }

      else
      {
        v43 = MEMORY[0x1E695E0F0];
      }

      v39 = v11->_balances;
      v11->_balances = v43;
    }

    v11->_blocked = [stateCopy isBlacklisted];
    expirationDate = [stateCopy expirationDate];
    v48 = [expirationDate copy];
    expirationDate = v11->_expirationDate;
    v11->_expirationDate = v48;

    enrouteTransitTypes = [stateCopy enrouteTransitTypes];
    v51 = [enrouteTransitTypes copy];
    enrouteTransitTypes = v11->_enrouteTransitTypes;
    v11->_enrouteTransitTypes = v51;
  }

  return v11;
}

+ (PKStoredValuePassProperties)passPropertiesForPass:(PKPass *)pass
{
  paymentPass = [(PKPass *)pass paymentPass];
  transitProperties = [paymentPass transitProperties];

  return transitProperties;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
    {
      [objc_opt_class() equalityClass];
      if (objc_opt_isKindOfClass())
      {
        [objc_opt_class() equalityClass];
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          if (self->_blocked == v6->_blocked)
          {
            expirationDate = self->_expirationDate;
            v8 = v6->_expirationDate;
            if (expirationDate && v8)
            {
              if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else if (expirationDate != v8)
            {
              goto LABEL_30;
            }

            appletFormat = self->_appletFormat;
            v11 = v6->_appletFormat;
            if (appletFormat && v11)
            {
              if (([(NSString *)appletFormat isEqual:?]& 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else if (appletFormat != v11)
            {
              goto LABEL_30;
            }

            balanceAmount = self->_balanceAmount;
            v13 = v6->_balanceAmount;
            if (balanceAmount && v13)
            {
              if (![(PKCurrencyAmount *)balanceAmount isEqual:?])
              {
                goto LABEL_30;
              }
            }

            else if (balanceAmount != v13)
            {
              goto LABEL_30;
            }

            enrouteTransitTypes = self->_enrouteTransitTypes;
            v15 = v6->_enrouteTransitTypes;
            if (enrouteTransitTypes && v15)
            {
              if (([(NSArray *)enrouteTransitTypes isEqual:?]& 1) != 0)
              {
LABEL_26:
                balances = self->_balances;
                v17 = v6->_balances;
                if (balances && v17)
                {
                  v9 = [(NSArray *)balances isEqual:?];
                }

                else
                {
                  v9 = balances == v17;
                }

                goto LABEL_31;
              }
            }

            else if (enrouteTransitTypes == v15)
            {
              goto LABEL_26;
            }
          }

LABEL_30:
          v9 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }
    }

    v9 = 0;
  }

LABEL_32:

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_expirationDate];
  [array safelyAddObject:self->_appletFormat];
  [array safelyAddObject:self->_balanceAmount];
  [array safelyAddObject:self->_enrouteTransitTypes];
  [array safelyAddObject:self->_balances];
  v4 = PKCombinedHash(17, array);
  v5 = self->_blocked - v4 + 32 * v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appletFormat copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(PKCurrencyAmount *)self->_balanceAmount copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  *(v5 + 8) = self->_blocked;
  v12 = [(NSArray *)self->_enrouteTransitTypes copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSArray *)self->_balances copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  return v5;
}

- (PKStoredValuePassProperties)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKStoredValuePassProperties;
  v5 = [(PKStoredValuePassProperties *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletFormat"];
    appletFormat = v5->_appletFormat;
    v5->_appletFormat = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balanceAmount = v5->_balanceAmount;
    v5->_balanceAmount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v5->_blocked = [coderCopy decodeBoolForKey:@"blocked"];
    v12 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"enrouteTransitTypes"];
    enrouteTransitTypes = v5->_enrouteTransitTypes;
    v5->_enrouteTransitTypes = v15;

    v17 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"storedBalances"];
    balances = v5->_balances;
    v5->_balances = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appletFormat = self->_appletFormat;
  coderCopy = coder;
  [coderCopy encodeObject:appletFormat forKey:@"appletFormat"];
  [coderCopy encodeObject:self->_balanceAmount forKey:@"balance"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_blocked forKey:@"blocked"];
  [coderCopy encodeObject:self->_enrouteTransitTypes forKey:@"enrouteTransitTypes"];
  [coderCopy encodeObject:self->_balances forKey:@"storedBalances"];
}

- (NSDecimalNumber)balance
{
  balanceAmount = [(PKStoredValuePassProperties *)self balanceAmount];
  amount = [balanceAmount amount];

  return amount;
}

- (NSString)currencyCode
{
  balanceAmount = [(PKStoredValuePassProperties *)self balanceAmount];
  currency = [balanceAmount currency];

  return currency;
}

- (NSString)displayableBalance
{
  balanceAmount = [(PKStoredValuePassProperties *)self balanceAmount];

  if (balanceAmount)
  {
    balanceAmount2 = [(PKStoredValuePassProperties *)self balanceAmount];
    formattedStringValue = [balanceAmount2 formattedStringValue];
  }

  else
  {
    primaryCashBalance = [(PKStoredValuePassProperties *)self primaryCashBalance];
    balanceAmount2 = primaryCashBalance;
    if (primaryCashBalance)
    {
      amount = [primaryCashBalance amount];
      currencyCode = [balanceAmount2 currencyCode];
      v9 = PKCurrencyAmountCreate(amount, currencyCode, 0);

      formattedStringValue = [v9 formattedStringValue];
    }

    else
    {
      formattedStringValue = 0;
    }
  }

  return formattedStringValue;
}

- (id)decimalBalance
{
  balanceAmount = [(PKStoredValuePassProperties *)self balanceAmount];
  amount = [balanceAmount amount];

  return amount;
}

- (id)balanceWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_balances;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:identifierCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)primaryCashBalance
{
  balances = [(PKStoredValuePassProperties *)self balances];
  v3 = [balances pk_firstObjectPassingTest:&__block_literal_global_175];

  return v3;
}

@end