@interface PKPaymentOfferInstallmentFeeDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferInstallmentFeeDetails)initWithCoder:(id)a3;
- (PKPaymentOfferInstallmentFeeDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferInstallmentFeeDetails

- (PKPaymentOfferInstallmentFeeDetails)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKPaymentOfferInstallmentFeeDetails;
  v5 = [(PKPaymentOfferInstallmentFeeDetails *)&v25 init];
  if (v5)
  {
    v6 = [v4 PKCurrencyAmountForKey:@"totalFeeAmount"];
    totalFeeAmount = v5->_totalFeeAmount;
    v5->_totalFeeAmount = v6;

    v8 = [v4 PKArrayContaining:objc_opt_class() forKey:@"fees"];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = [PKPaymentOfferInstallmentFeeDetailItem alloc];
          v17 = [(PKPaymentOfferInstallmentFeeDetailItem *)v16 initWithDictionary:v15, v21];
          [v9 safelyAddObject:v17];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v18 = [v9 count];
    if (v18)
    {
      v18 = [v9 copy];
    }

    feeItems = v5->_feeItems;
    v5->_feeItems = v18;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKCurrencyAmount *)self->_totalFeeAmount dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"totalFeeAmount"];

  v5 = [(NSArray *)self->_feeItems pk_createArrayBySafelyApplyingBlock:&__block_literal_global_65];
  [v3 setObject:v5 forKeyedSubscript:@"fees"];

  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        totalFeeAmount = self->_totalFeeAmount;
        v8 = v6->_totalFeeAmount;
        if (totalFeeAmount && v8)
        {
          if ([(PKCurrencyAmount *)totalFeeAmount isEqual:?])
          {
LABEL_7:
            feeItems = self->_feeItems;
            v10 = v6->_feeItems;
            if (feeItems && v10)
            {
              v11 = [(NSArray *)feeItems isEqual:?];
            }

            else
            {
              v11 = feeItems == v10;
            }

            goto LABEL_15;
          }
        }

        else if (totalFeeAmount == v8)
        {
          goto LABEL_7;
        }

        v11 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_totalFeeAmount];
  [v3 safelyAddObject:self->_feeItems];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"totalFeeAmount: '%@'; ", self->_totalFeeAmount];
  [v3 appendFormat:@"feeItems: '%@'; ", self->_feeItems];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentFeeDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentOfferInstallmentFeeDetails;
  v5 = [(PKPaymentOfferInstallmentFeeDetails *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalFeeAmount"];
    totalFeeAmount = v5->_totalFeeAmount;
    v5->_totalFeeAmount = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"fees"];
    feeItems = v5->_feeItems;
    v5->_feeItems = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  totalFeeAmount = self->_totalFeeAmount;
  v5 = a3;
  [v5 encodeObject:totalFeeAmount forKey:@"totalFeeAmount"];
  [v5 encodeObject:self->_feeItems forKey:@"fees"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferInstallmentFeeDetails allocWithZone:](PKPaymentOfferInstallmentFeeDetails init];
  v6 = [(PKCurrencyAmount *)self->_totalFeeAmount copyWithZone:a3];
  totalFeeAmount = v5->_totalFeeAmount;
  v5->_totalFeeAmount = v6;

  v8 = [(NSArray *)self->_feeItems copyWithZone:a3];
  feeItems = v5->_feeItems;
  v5->_feeItems = v8;

  return v5;
}

@end