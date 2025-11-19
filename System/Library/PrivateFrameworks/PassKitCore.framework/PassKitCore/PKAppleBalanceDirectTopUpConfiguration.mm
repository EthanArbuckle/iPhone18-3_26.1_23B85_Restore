@interface PKAppleBalanceDirectTopUpConfiguration
- (BOOL)isEqual:(id)a3;
- (PKAppleBalanceDirectTopUpConfiguration)initWithAMSResponseDictionary:(id)a3;
- (PKAppleBalanceDirectTopUpConfiguration)initWithCoder:(id)a3;
- (PKAppleBalanceDirectTopUpConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayableDenominations;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDenominations:(id)a3;
@end

@implementation PKAppleBalanceDirectTopUpConfiguration

- (PKAppleBalanceDirectTopUpConfiguration)initWithDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKAppleBalanceDirectTopUpConfiguration;
  v5 = [(PKAppleBalanceDirectTopUpConfiguration *)&v29 init];
  if (!v5)
  {
LABEL_11:
    v21 = v5;
    goto LABEL_15;
  }

  if (v4)
  {
    v6 = [v4 PKDecimalNumberForKey:@"minAmount"];
    minAmount = v5->_minAmount;
    v5->_minAmount = v6;

    v8 = [v4 PKDecimalNumberForKey:@"maxAmount"];
    maxAmount = v5->_maxAmount;
    v5->_maxAmount = v8;

    v10 = [v4 PKDecimalNumberForKey:@"maxBalance"];
    maxBalance = v5->_maxBalance;
    v5->_maxBalance = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = [v4 PKArrayForKey:@"denominations"];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[PKAppleBalanceDirectTopUpConfigurationDenomination alloc] initWithDictionary:*(*(&v24 + 1) + 8 * v17)];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v15);
    }

    [(PKAppleBalanceDirectTopUpConfiguration *)v5 setDenominations:v12];
    v19 = [v4 PKURLForKey:@"termsURL"];
    termsURL = v5->_termsURL;
    v5->_termsURL = v19;

    goto LABEL_11;
  }

  v22 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Error: dtu configuration dictionary missing", buf, 2u);
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (PKAppleBalanceDirectTopUpConfiguration)initWithAMSResponseDictionary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PKAppleBalanceDirectTopUpConfiguration;
  v5 = [(PKAppleBalanceDirectTopUpConfiguration *)&v40 init];
  if (!v5)
  {
LABEL_11:
    v28 = v5;
    goto LABEL_15;
  }

  if (v4)
  {
    v6 = [v4 PKDictionaryForKey:@"amount-limit"];
    v7 = [v6 PKDecimalNumberForKey:@"max"];
    maxAmount = v5->_maxAmount;
    v5->_maxAmount = v7;

    v9 = [v6 PKDecimalNumberForKey:@"min"];
    minAmount = v5->_minAmount;
    v5->_minAmount = v9;

    v31 = v6;
    v11 = [v6 PKDecimalNumberForKey:@"max-balance"];
    maxBalance = v5->_maxBalance;
    v32 = v5;
    v5->_maxBalance = v11;

    v13 = [v4 PKStringForKey:@"currency-code-iso3a"];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = v4;
    [v4 PKArrayForKey:@"amounts"];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v15 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        v18 = 0;
        do
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v35 + 1) + 8 * v18) PKDecimalNumberForKey:@"amount"];
          v20 = [objc_alloc(MEMORY[0x1E696AB90]) initWithInt:1000];
          v21 = [v19 decimalNumberByDividingBy:v20];

          v22 = [PKAppleBalanceDirectTopUpConfigurationDenomination alloc];
          v41[0] = @"amount";
          v41[1] = @"currencyCode";
          v42[0] = v21;
          v42[1] = v13;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
          v24 = [(PKAppleBalanceDirectTopUpConfigurationDenomination *)v22 initWithDictionary:v23];

          [v14 addObject:v24];
          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v16);
    }

    v5 = v32;
    [(PKAppleBalanceDirectTopUpConfiguration *)v32 setDenominations:v14];
    v4 = v33;
    v25 = [v33 PKStringForKey:@"link-terms-conditions"];
    v26 = [MEMORY[0x1E695DFF8] URLWithString:v25];
    termsURL = v32->_termsURL;
    v32->_termsURL = v26;

    goto LABEL_11;
  }

  v29 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Error: ams response dictionary missing", buf, 2u);
  }

  v28 = 0;
LABEL_15:

  return v28;
}

- (void)setDenominations:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_126];
  denominations = self->_denominations;
  self->_denominations = v4;
}

BOOL __59__PKAppleBalanceDirectTopUpConfiguration_setDenominations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 amount];
  v6 = [v4 amount];

  v7 = [v5 compare:v6] == 1;
  return v7;
}

- (id)displayableDenominations
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_denominations copy];
  if ([v3 count] >= 4)
  {
    denominations = self->_denominations;
    [(NSArray *)denominations count];
    v5 = [(NSArray *)self->_denominations count]- 3;
    if ([(NSArray *)self->_denominations count]<= 3)
    {
      v6 = [(NSArray *)self->_denominations count];
    }

    else
    {
      v6 = 3;
    }

    v7 = [(NSArray *)denominations subarrayWithRange:v5, v6];

    v3 = v7;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 amount];
        v16 = [v14 currencyCode];
        v17 = [PKNumericSuggestion suggestionWithValue:v15 currencyCode:v16];

        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = [v8 copy];

  return v18;
}

- (PKAppleBalanceDirectTopUpConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppleBalanceDirectTopUpConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minAmount"];
    minAmount = v5->_minAmount;
    v5->_minAmount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxAmount"];
    maxAmount = v5->_maxAmount;
    v5->_maxAmount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxBalance"];
    maxBalance = v5->_maxBalance;
    v5->_maxBalance = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"denominations"];

    [(PKAppleBalanceDirectTopUpConfiguration *)v5 setDenominations:v15];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsURL"];
    termsURL = v5->_termsURL;
    v5->_termsURL = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minAmount = self->_minAmount;
  v5 = a3;
  [v5 encodeObject:minAmount forKey:@"minAmount"];
  [v5 encodeObject:self->_maxAmount forKey:@"maxAmount"];
  [v5 encodeObject:self->_maxBalance forKey:@"maxBalance"];
  [v5 encodeObject:self->_denominations forKey:@"denominations"];
  [v5 encodeObject:self->_termsURL forKey:@"termsURL"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  minAmount = self->_minAmount;
  v6 = v4[1];
  if (minAmount && v6)
  {
    if (([(NSDecimalNumber *)minAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (minAmount != v6)
  {
    goto LABEL_24;
  }

  maxAmount = self->_maxAmount;
  v8 = v4[2];
  if (maxAmount && v8)
  {
    if (([(NSDecimalNumber *)maxAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (maxAmount != v8)
  {
    goto LABEL_24;
  }

  maxBalance = self->_maxBalance;
  v10 = v4[3];
  if (maxBalance && v10)
  {
    if (([(NSDecimalNumber *)maxBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (maxBalance != v10)
  {
    goto LABEL_24;
  }

  denominations = self->_denominations;
  v12 = v4[4];
  if (!denominations || !v12)
  {
    if (denominations == v12)
    {
      goto LABEL_20;
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  if (([(NSArray *)denominations isEqual:?]& 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  termsURL = self->_termsURL;
  v14 = v4[5];
  if (termsURL && v14)
  {
    v15 = [(NSURL *)termsURL isEqual:?];
  }

  else
  {
    v15 = termsURL == v14;
  }

LABEL_25:

  return v15;
}

- (unint64_t)hash
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = [(NSDecimalNumber *)self->_minAmount hash];
  v16 = [(NSDecimalNumber *)self->_maxAmount hash];
  v17 = [(NSDecimalNumber *)self->_maxBalance hash];
  v18 = [(NSURL *)self->_termsURL hash];
  v19 = 0;
  v3 = SipHash();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_denominations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v20 = v3;
        v21 = 0;
        v21 = [v9 hash];
        v3 = SipHash();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDecimalNumber *)self->_minAmount description];
  [v3 appendFormat:@"minAmount: '%@'; ", v4];

  v5 = [(NSDecimalNumber *)self->_maxAmount description];
  [v3 appendFormat:@"maxAmount: '%@'; ", v5];

  v6 = [(NSDecimalNumber *)self->_maxBalance description];
  [v3 appendFormat:@"maxBalance: '%@'; ", v6];

  v7 = [(NSArray *)self->_denominations description];
  [v3 appendFormat:@"denominations: '%@'; ", v7];

  v8 = [(NSURL *)self->_termsURL description];
  [v3 appendFormat:@"termsURL: '%@'; ", v8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAppleBalanceDirectTopUpConfiguration allocWithZone:](PKAppleBalanceDirectTopUpConfiguration init];
  v6 = [(NSDecimalNumber *)self->_minAmount copyWithZone:a3];
  minAmount = v5->_minAmount;
  v5->_minAmount = v6;

  v8 = [(NSDecimalNumber *)self->_maxAmount copyWithZone:a3];
  maxAmount = v5->_maxAmount;
  v5->_maxAmount = v8;

  v10 = [(NSDecimalNumber *)self->_maxBalance copyWithZone:a3];
  maxBalance = v5->_maxBalance;
  v5->_maxBalance = v10;

  v12 = [(NSArray *)self->_denominations copyWithZone:a3];
  denominations = v5->_denominations;
  v5->_denominations = v12;

  v14 = [(NSURL *)self->_termsURL copyWithZone:a3];
  termsURL = v5->_termsURL;
  v5->_termsURL = v14;

  return v5;
}

@end