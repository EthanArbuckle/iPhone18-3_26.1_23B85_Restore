@interface PKPaymentOfferInstallmentInterestDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferInstallmentInterestDetails)initWithCoder:(id)a3;
- (PKPaymentOfferInstallmentInterestDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferInstallmentInterestDetails

- (PKPaymentOfferInstallmentInterestDetails)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKPaymentOfferInstallmentInterestDetails;
  v5 = [(PKPaymentOfferInstallmentInterestDetails *)&v25 init];
  if (v5)
  {
    v6 = [v4 PKCurrencyAmountForKey:@"totalInterestAmount"];
    totalInterestAmount = v5->_totalInterestAmount;
    v5->_totalInterestAmount = v6;

    v8 = [v4 PKArrayContaining:objc_opt_class() forKey:@"interest"];
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
          v16 = [PKPaymentOfferInstallmentInterestDetailItem alloc];
          v17 = [(PKPaymentOfferInstallmentInterestDetailItem *)v16 initWithDictionary:v15, v21];
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

    interestItems = v5->_interestItems;
    v5->_interestItems = v18;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKCurrencyAmount *)self->_totalInterestAmount dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"totalInterestAmount"];

  v5 = [(NSArray *)self->_interestItems pk_createArrayBySafelyApplyingBlock:&__block_literal_global_26];
  [v3 setObject:v5 forKeyedSubscript:@"interest"];

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
        totalInterestAmount = self->_totalInterestAmount;
        v8 = v6->_totalInterestAmount;
        if (totalInterestAmount && v8)
        {
          if ([(PKCurrencyAmount *)totalInterestAmount isEqual:?])
          {
LABEL_7:
            interestItems = self->_interestItems;
            v10 = v6->_interestItems;
            if (interestItems && v10)
            {
              v11 = [(NSArray *)interestItems isEqual:?];
            }

            else
            {
              v11 = interestItems == v10;
            }

            goto LABEL_15;
          }
        }

        else if (totalInterestAmount == v8)
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
  [v3 safelyAddObject:self->_totalInterestAmount];
  [v3 safelyAddObject:self->_interestItems];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"totalInterestAmount: '%@'; ", self->_totalInterestAmount];
  [v3 appendFormat:@"interestItems: '%@'; ", self->_interestItems];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentInterestDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentOfferInstallmentInterestDetails;
  v5 = [(PKPaymentOfferInstallmentInterestDetails *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalInterestAmount"];
    totalInterestAmount = v5->_totalInterestAmount;
    v5->_totalInterestAmount = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"interest"];
    interestItems = v5->_interestItems;
    v5->_interestItems = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  totalInterestAmount = self->_totalInterestAmount;
  v5 = a3;
  [v5 encodeObject:totalInterestAmount forKey:@"totalInterestAmount"];
  [v5 encodeObject:self->_interestItems forKey:@"interest"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferInstallmentInterestDetails allocWithZone:](PKPaymentOfferInstallmentInterestDetails init];
  v6 = [(PKCurrencyAmount *)self->_totalInterestAmount copyWithZone:a3];
  totalInterestAmount = v5->_totalInterestAmount;
  v5->_totalInterestAmount = v6;

  v8 = [(NSArray *)self->_interestItems copyWithZone:a3];
  interestItems = v5->_interestItems;
  v5->_interestItems = v8;

  return v5;
}

@end