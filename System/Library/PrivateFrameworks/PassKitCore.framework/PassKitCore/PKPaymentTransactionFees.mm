@interface PKPaymentTransactionFees
+ (id)_feesSetFromJsonString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFees:(id)a3;
- (PKPaymentTransactionFees)initWithCloudStoreCoder:(id)a3;
- (PKPaymentTransactionFees)initWithCoder:(id)a3;
- (PKPaymentTransactionFees)initWithFeeItems:(id)a3;
- (PKPaymentTransactionFees)initWithJsonString:(id)a3;
- (id)_feeItemsFromRecord:(id)a3;
- (id)description;
- (id)jsonArrayRepresentation;
- (id)jsonString;
- (unint64_t)hash;
- (void)_encodeServerDataWithCloudStoreCoder:(id)a3;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
@end

@implementation PKPaymentTransactionFees

- (PKPaymentTransactionFees)initWithFeeItems:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v11.receiver = self;
    v11.super_class = PKPaymentTransactionFees;
    v7 = [(PKPaymentTransactionFees *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_fees, a3);
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKPaymentTransactionFees)initWithJsonString:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _feesSetFromJsonString:v4];

  if (v5 && [v5 count])
  {
    v10.receiver = self;
    v10.super_class = PKPaymentTransactionFees;
    v6 = [(PKPaymentTransactionFees *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_fees, v5);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonArrayRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_fees;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionaryRepresentation];
        [v3 safelyAddObject:v9];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)jsonString
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentTransactionFees *)self jsonArrayRepresentation];
  if ([v2 count])
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:2 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error forming fees array for CloudKit with error: %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PKPaymentTransactionFees)initWithCloudStoreCoder:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"Transaction"];
  v5 = [v4 firstObject];

  v6 = [(PKPaymentTransactionFees *)self _feeItemsFromRecord:v5];
  v7 = [(PKPaymentTransactionFees *)self initWithFeeItems:v6];

  return v7;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"Transaction"];
  v8 = [v4 firstObject];

  v5 = v8;
  if (v8)
  {
    v6 = [(PKPaymentTransactionFees *)self _feeItemsFromRecord:v8];
    fees = self->_fees;
    self->_fees = v6;

    v5 = v8;
  }
}

- (id)_feeItemsFromRecord:(id)a3
{
  v3 = [a3 pk_encryptedStringForKey:@"fees"];
  v4 = [objc_opt_class() _feesSetFromJsonString:v3];

  return v4;
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  if (a4 - 1 <= 1)
  {
    [(PKPaymentTransactionFees *)self _encodeServerDataWithCloudStoreCoder:a3];
  }
}

- (void)_encodeServerDataWithCloudStoreCoder:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"Transaction"];
  v7 = [v4 firstObject];

  v5 = [v7 encryptedValues];
  v6 = [(PKPaymentTransactionFees *)self jsonString];
  [v5 setObject:v6 forKey:@"fees"];
}

- (PKPaymentTransactionFees)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentTransactionFees;
  v5 = [(PKPaymentTransactionFees *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"fees"];
    fees = v5->_fees;
    v5->_fees = v9;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_fees];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionFees *)self isEqualToFees:v5];
  }

  return v6;
}

- (BOOL)isEqualToFees:(id)a3
{
  fees = self->_fees;
  v4 = *(a3 + 1);
  if (fees)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return fees == v4;
  }

  else
  {
    return [(NSSet *)fees isEqual:?];
  }
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendString:@"\n"];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_fees;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) description];
        [v3 appendString:v9];

        [v3 appendString:@"\n"];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@">"];

  return v3;
}

+ (id)_feesSetFromJsonString:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a3 dataUsingEncoding:4];
  if (!v3)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v22 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v22];
  v5 = v22;
  if (v5)
  {
    v6 = v5;
    v7 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Cannot decode PKPaymentTransactionFees json string with error: %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Decoded PKPaymentTransactionFees json string is not of type array", buf, 2u);
    }

    v6 = 0;
    goto LABEL_21;
  }

  v9 = v4;
  v7 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v9;
  v10 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [PKPaymentTransactionFeeItem alloc];
        v16 = [(PKPaymentTransactionFeeItem *)v15 initWithFeeDictionary:v14, v18];
        if (v16)
        {
          [v7 addObject:v16];
        }
      }

      v11 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  if (![v7 count])
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  v8 = [v7 copy];
LABEL_22:

LABEL_23:

  return v8;
}

@end