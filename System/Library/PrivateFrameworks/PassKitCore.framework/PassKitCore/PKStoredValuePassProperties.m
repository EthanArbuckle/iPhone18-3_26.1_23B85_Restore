@interface PKStoredValuePassProperties
+ (PKStoredValuePassProperties)passPropertiesForPass:(PKPass *)pass;
- (BOOL)isEqual:(id)a3;
- (NSDecimalNumber)balance;
- (NSString)currencyCode;
- (NSString)displayableBalance;
- (PKStoredValuePassProperties)initWithCoder:(id)a3;
- (PKStoredValuePassProperties)initWithTransitAppletState:(id)a3 paymentApplication:(id)a4 fieldCollection:(id)a5;
- (id)balanceWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decimalBalance;
- (id)primaryCashBalance;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKStoredValuePassProperties

- (PKStoredValuePassProperties)initWithTransitAppletState:(id)a3 paymentApplication:(id)a4 fieldCollection:(id)a5
{
  v79 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v74.receiver = self;
  v74.super_class = PKStoredValuePassProperties;
  v11 = [(PKStoredValuePassProperties *)&v74 init];
  if (v11)
  {
    v12 = [v9 appletDataFormat];
    v13 = [v12 copy];
    appletFormat = v11->_appletFormat;
    v11->_appletFormat = v13;

    v15 = [v8 balance];
    v16 = [v8 balances];
    v17 = [v8 currency];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v9 appletCurrencyCode];
    }

    v20 = v19;

    if (v15 && v20)
    {
      v21 = PKCurrencyAmountCreate(v15, v20, 0);
      balanceAmount = v11->_balanceAmount;
      v11->_balanceAmount = v21;
    }

    if ([v16 count])
    {
      v54 = v20;
      v55 = v15;
      v57 = v11;
      v58 = v9;
      v59 = v8;
      v56 = v10;
      v23 = [v10 balanceFields];
      v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v23;
      v63 = [(PKStoredValuePassBalance *)obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v63)
      {
        v61 = *v71;
        v62 = v16;
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
            v26 = v16;
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
                  v32 = [v25 foreignReferenceIdentifiers];
                  v33 = [v31 identifier];
                  v34 = [v32 containsObject:v33];

                  if (v34)
                  {
                    v35 = [[PKStoredValuePassBalance alloc] initWithTransitAppletBalance:v31 balanceField:v25];
                    v36 = [(PKStoredValuePassBalance *)v35 balanceType];
                    v37 = [v36 isEqualToString:@"com.apple.wallet.storedvaluepassbalancetype.unknown"];

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
            v16 = v62;
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
        v9 = v58;
        v8 = v59;
        v15 = v55;
        v10 = v56;
        v20 = v54;
      }

      else
      {
        v9 = v58;
        v8 = v59;
        v15 = v55;
        v10 = v56;
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

    v11->_blocked = [v8 isBlacklisted];
    v47 = [v8 expirationDate];
    v48 = [v47 copy];
    expirationDate = v11->_expirationDate;
    v11->_expirationDate = v48;

    v50 = [v8 enrouteTransitTypes];
    v51 = [v50 copy];
    enrouteTransitTypes = v11->_enrouteTransitTypes;
    v11->_enrouteTransitTypes = v51;
  }

  return v11;
}

+ (PKStoredValuePassProperties)passPropertiesForPass:(PKPass *)pass
{
  v3 = [(PKPass *)pass paymentPass];
  v4 = [v3 transitProperties];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_expirationDate];
  [v3 safelyAddObject:self->_appletFormat];
  [v3 safelyAddObject:self->_balanceAmount];
  [v3 safelyAddObject:self->_enrouteTransitTypes];
  [v3 safelyAddObject:self->_balances];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_blocked - v4 + 32 * v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appletFormat copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(PKCurrencyAmount *)self->_balanceAmount copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  *(v5 + 8) = self->_blocked;
  v12 = [(NSArray *)self->_enrouteTransitTypes copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSArray *)self->_balances copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  return v5;
}

- (PKStoredValuePassProperties)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKStoredValuePassProperties;
  v5 = [(PKStoredValuePassProperties *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletFormat"];
    appletFormat = v5->_appletFormat;
    v5->_appletFormat = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balanceAmount = v5->_balanceAmount;
    v5->_balanceAmount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v5->_blocked = [v4 decodeBoolForKey:@"blocked"];
    v12 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"enrouteTransitTypes"];
    enrouteTransitTypes = v5->_enrouteTransitTypes;
    v5->_enrouteTransitTypes = v15;

    v17 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"storedBalances"];
    balances = v5->_balances;
    v5->_balances = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  appletFormat = self->_appletFormat;
  v5 = a3;
  [v5 encodeObject:appletFormat forKey:@"appletFormat"];
  [v5 encodeObject:self->_balanceAmount forKey:@"balance"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeBool:self->_blocked forKey:@"blocked"];
  [v5 encodeObject:self->_enrouteTransitTypes forKey:@"enrouteTransitTypes"];
  [v5 encodeObject:self->_balances forKey:@"storedBalances"];
}

- (NSDecimalNumber)balance
{
  v2 = [(PKStoredValuePassProperties *)self balanceAmount];
  v3 = [v2 amount];

  return v3;
}

- (NSString)currencyCode
{
  v2 = [(PKStoredValuePassProperties *)self balanceAmount];
  v3 = [v2 currency];

  return v3;
}

- (NSString)displayableBalance
{
  v3 = [(PKStoredValuePassProperties *)self balanceAmount];

  if (v3)
  {
    v4 = [(PKStoredValuePassProperties *)self balanceAmount];
    v5 = [v4 formattedStringValue];
  }

  else
  {
    v6 = [(PKStoredValuePassProperties *)self primaryCashBalance];
    v4 = v6;
    if (v6)
    {
      v7 = [v6 amount];
      v8 = [v4 currencyCode];
      v9 = PKCurrencyAmountCreate(v7, v8, 0);

      v5 = [v9 formattedStringValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)decimalBalance
{
  v2 = [(PKStoredValuePassProperties *)self balanceAmount];
  v3 = [v2 amount];

  return v3;
}

- (id)balanceWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:v4];

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
  v2 = [(PKStoredValuePassProperties *)self balances];
  v3 = [v2 pk_firstObjectPassingTest:&__block_literal_global_175];

  return v3;
}

@end