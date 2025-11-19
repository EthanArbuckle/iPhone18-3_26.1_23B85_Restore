@interface PKPaymentTransactionRewards
+ (id)_cloudRecordKeyForRewardsProperty:(unint64_t)a3;
+ (id)_rewardsItemsSetFromJsonString:(id)a3;
- (BOOL)containsItemOfType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRewards:(id)a3;
- (PKPaymentTransactionRewards)initWithCloudStoreCoder:(id)a3;
- (PKPaymentTransactionRewards)initWithCloudStoreCoder:(id)a3 property:(unint64_t)a4;
- (PKPaymentTransactionRewards)initWithCoder:(id)a3;
- (PKPaymentTransactionRewards)initWithJsonString:(id)a3;
- (PKPaymentTransactionRewards)initWithRewardsItems:(id)a3;
- (id)_rewardItemsFromRecord:(id)a3 property:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)enhancedMerchantRewardsItems;
- (id)jsonArrayRepresentation;
- (id)jsonString;
- (id)promotionalRewardsItems;
- (id)totalAmountForUnit:(unint64_t)a3;
- (id)totalEligibleValueForUnit:(unint64_t)a3;
- (unint64_t)hash;
- (void)_encodeServerDataWithCloudStoreCoder:(id)a3 property:(unint64_t)a4;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3 property:(unint64_t)a4;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4 property:(unint64_t)a5;
@end

@implementation PKPaymentTransactionRewards

- (PKPaymentTransactionRewards)initWithRewardsItems:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v11.receiver = self;
    v11.super_class = PKPaymentTransactionRewards;
    v7 = [(PKPaymentTransactionRewards *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_rewardsItems, a3);
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

- (PKPaymentTransactionRewards)initWithJsonString:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _rewardsItemsSetFromJsonString:v4];

  if (v5 && [v5 count])
  {
    v10.receiver = self;
    v10.super_class = PKPaymentTransactionRewards;
    v6 = [(PKPaymentTransactionRewards *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_rewardsItems, v5);
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
  v4 = self->_rewardsItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)jsonString
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentTransactionRewards *)self jsonArrayRepresentation];
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
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error forming rewards array for CloudKit with error: %@", buf, 0xCu);
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

- (BOOL)containsItemOfType:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_rewardsItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) type] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)promotionalRewardsItems
{
  v3 = [(NSArray *)self->_rewardsItems pk_objectsPassingTest:&__block_literal_global_27];
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [v4 initWithArray:v5];
  v7 = [(PKPaymentTransactionRewards *)self enhancedMerchantRewardsItems];
  [v6 minusSet:v7];
  v8 = [v6 copy];

  return v8;
}

uint64_t __54__PKPaymentTransactionRewards_promotionalRewardsItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  v4 = [v2 state];

  if ((v3 - 5) < 2)
  {
    return (v4 < 5) & (6u >> v4);
  }

  else
  {
    return 0;
  }
}

- (id)enhancedMerchantRewardsItems
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_rewardsItems pk_objectsPassingTest:&__block_literal_global_212];
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [v4 initWithArray:v5];
  v7 = [MEMORY[0x1E696AB90] one];
  v8 = [objc_alloc(MEMORY[0x1E696AB90]) initWithMantissa:2 exponent:0 isNegative:0];
  rewardsItems = self->_rewardsItems;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__PKPaymentTransactionRewards_enhancedMerchantRewardsItems__block_invoke_3;
  v21[3] = &unk_1E79C9F20;
  v23 = &__block_literal_global_210_0;
  v10 = v8;
  v22 = v10;
  v11 = [(NSArray *)rewardsItems pk_firstObjectPassingTest:v21];
  if (v11)
  {
    v12 = self->_rewardsItems;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__PKPaymentTransactionRewards_enhancedMerchantRewardsItems__block_invoke_4;
    v18[3] = &unk_1E79C9F20;
    v20 = &__block_literal_global_210_0;
    v19 = v7;
    v13 = [(NSArray *)v12 pk_firstObjectPassingTest:v18];
    v14 = v13;
    if (v13)
    {
      v24[0] = v11;
      v24[1] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      [v6 addObjectsFromArray:v15];
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = [v6 copy];

  return v16;
}

uint64_t __59__PKPaymentTransactionRewards_enhancedMerchantRewardsItems__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (([v6 state] - 1) <= 1 && objc_msgSend(v6, "type") == a3 && objc_msgSend(v6, "eligibleValueUnit") == 1)
  {
    v8 = [v6 eligibleValue];
    v9 = [v8 isEqualToNumber:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __59__PKPaymentTransactionRewards_enhancedMerchantRewardsItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 promotionIdentifier];
  v5 = [v4 length];

  v6 = [v3 programIdentifier];
  v7 = [v6 length];

  v8 = (*(*(a1 + 40) + 16))() ^ 1;
  if (v5)
  {
    v8 = 1;
  }

  v9 = v8 ^ 1u;
  if ((v8 & 1) == 0 && v7)
  {
    v9 = [v3 hasEnhancedMerchantProgramIdentifier];
  }

  return v9;
}

- (PKPaymentTransactionRewards)initWithCloudStoreCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Not supported. Use initWithCloudStoreCoder:property:"];

  return [(PKPaymentTransactionRewards *)self init];
}

- (PKPaymentTransactionRewards)initWithCloudStoreCoder:(id)a3 property:(unint64_t)a4
{
  v6 = [a3 recordsWithRecordType:@"Transaction"];
  v7 = [v6 firstObject];

  v8 = [(PKPaymentTransactionRewards *)self _rewardItemsFromRecord:v7 property:a4];
  v9 = [(PKPaymentTransactionRewards *)self initWithRewardsItems:v8];

  return v9;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)a3 property:(unint64_t)a4
{
  v6 = [a3 recordsWithRecordType:@"Transaction"];
  v10 = [v6 firstObject];

  v7 = v10;
  if (v10)
  {
    v8 = [(PKPaymentTransactionRewards *)self _rewardItemsFromRecord:v10 property:a4];
    rewardsItems = self->_rewardsItems;
    self->_rewardsItems = v8;

    v7 = v10;
  }
}

- (id)_rewardItemsFromRecord:(id)a3 property:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() _cloudRecordKeyForRewardsProperty:a4];
  v7 = [v5 pk_encryptedStringForKey:v6];

  v8 = [objc_opt_class() _rewardsItemsSetFromJsonString:v7];

  return v8;
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4 property:(unint64_t)a5
{
  if (a4 - 1 <= 1)
  {
    [(PKPaymentTransactionRewards *)self _encodeServerDataWithCloudStoreCoder:a3 property:a5];
  }
}

- (void)_encodeServerDataWithCloudStoreCoder:(id)a3 property:(unint64_t)a4
{
  v6 = [a3 recordsWithRecordType:@"Transaction"];
  v10 = [v6 firstObject];

  v7 = [v10 encryptedValues];
  v8 = [(PKPaymentTransactionRewards *)self jsonString];
  v9 = [objc_opt_class() _cloudRecordKeyForRewardsProperty:a4];
  [v7 setObject:v8 forKey:v9];
}

+ (id)_cloudRecordKeyForRewardsProperty:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"rewardsInProgress";
  }

  else
  {
    return @"rewards";
  }
}

- (PKPaymentTransactionRewards)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentTransactionRewards;
  v5 = [(PKPaymentTransactionRewards *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rewards"];
    rewardsItems = v5->_rewardsItems;
    v5->_rewardsItems = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_rewardsItems;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) copyWithZone:{a3, v16}];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  v14 = v5[1];
  v5[1] = v13;

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_rewardsItems];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionRewards *)self isEqualToRewards:v5];
  }

  return v6;
}

- (BOOL)isEqualToRewards:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  rewardsItems = self->_rewardsItems;
  v5 = a3;
  v6 = [v3 setWithArray:rewardsItems];
  v7 = MEMORY[0x1E695DFD8];
  v8 = v5[1];

  v9 = [v7 setWithArray:v8];
  v10 = v9;
  if (v6)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = v6 == v9;
  }

  else
  {
    v12 = [v6 isEqual:v9];
  }

  return v12;
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
  v4 = self->_rewardsItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (id)totalEligibleValueForUnit:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AB90] zero];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_rewardsItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 state] - 5) <= 0xFFFFFFFFFFFFFFFDLL && objc_msgSend(v11, "eligibleValueUnit") == a3)
        {
          v12 = [v11 eligibleValue];
          v13 = [v5 decimalNumberByAdding:v12];

          v5 = v13;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)totalAmountForUnit:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)self->_rewardsItems firstObject];
  v6 = [v5 currencyAmount];
  v7 = [v6 currency];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AB90] zero];
    v9 = PKCurrencyAmountCreate(v8, v7, 0);

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_rewardsItems;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (([v15 state] - 5) <= 0xFFFFFFFFFFFFFFFDLL && objc_msgSend(v15, "eligibleValueUnit") == a3)
          {
            v16 = [v15 currencyAmount];
            if (v16)
            {
              v17 = [v15 currencyAmount];
              v18 = [v9 currencyAmountByAddingCurrencyAmount:v17];

              v9 = v18;
            }
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_rewardsItemsSetFromJsonString:(id)a3
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
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Cannot decode PKPaymentTransactionRewards json string with error: %@", buf, 0xCu);
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
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Decoded PKPaymentTransactionRewards json string is not of type array", buf, 2u);
    }

    v6 = 0;
    goto LABEL_21;
  }

  v9 = v4;
  v7 = [MEMORY[0x1E695DF70] array];
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
        v15 = [PKPaymentTransactionRewardsItem alloc];
        v16 = [(PKPaymentTransactionRewardsItem *)v15 initWithDictionary:v14, v18];
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