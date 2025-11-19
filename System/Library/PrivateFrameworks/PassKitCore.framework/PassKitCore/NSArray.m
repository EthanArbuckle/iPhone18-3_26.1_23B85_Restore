@interface NSArray
@end

@implementation NSArray

uint64_t __56__NSArray_PKArrayAdditions__pk_countObjectsPassingTest___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

uint64_t __58__NSArray_PKArrayAdditions__pk_containsObjectPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void __68__NSArray_PKError__pk_FilteredBillingErrorsForContactFields_errors___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:@"PKPaymentErrorDomain"])
  {
LABEL_15:

    goto LABEL_16;
  }

  v5 = [v3 code];

  if (v5 == 2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = a1;
    v4 = *(a1 + 32);
    v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v3 userInfo];
          v12 = [v11 objectForKey:@"PKPaymentErrorContactField"];
          if ([v12 isEqualToString:v10])
          {

LABEL_14:
            [*(v16 + 40) addObject:v3];
            goto LABEL_15;
          }

          v13 = [v3 userInfo];
          v14 = [v13 objectForKey:@"PKPaymentErrorPostalAddress"];
          v15 = [v14 isEqualToString:v10];

          if (v15)
          {
            goto LABEL_14;
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

void __90__NSArray_PKError__pk_FilteredShippingErrorsForContactFields_errors_contactFieldOptional___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"PKPaymentErrorDomain"];

  if (!v5)
  {
    v12 = [v3 domain];
    v13 = [v12 isEqualToString:@"PKDisbursementErrorDomain"];

    if (!v13 || [v3 code] != 2)
    {
      goto LABEL_41;
    }

    v14 = [v3 userInfo];
    v7 = [v14 objectForKey:@"PKDisbursementErrorContactField"];

    if (*(a1 + 48) == 1 && !v7)
    {
      goto LABEL_28;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = *(a1 + 32);
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
LABEL_19:
      v19 = 0;
      while (1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if ([v7 isEqualToString:{*(*(&v25 + 1) + 8 * v19), v25}])
        {
          goto LABEL_38;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v17)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  v6 = [v3 code];
  if (v6 == 1)
  {
    v20 = [v3 userInfo];
    v7 = [v20 objectForKey:@"PKPaymentErrorContactField"];

    if (*(a1 + 48) == 1 && !v7)
    {
      goto LABEL_28;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = *(a1 + 32);
    v21 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
LABEL_31:
      v24 = 0;
      while (1)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v15);
        }

        if ([v7 isEqualToString:*(*(&v29 + 1) + 8 * v24)])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v22)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }
      }

LABEL_38:
      [*(a1 + 40) addObject:v3];
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (v6 == 3)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (!v8)
    {
LABEL_40:

      goto LABEL_41;
    }

    v9 = v8;
    v10 = *v34;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if ([*(*(&v33 + 1) + 8 * v11) isEqualToString:@"post"])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_40;
      }
    }

LABEL_28:
    [*(a1 + 40) addObject:v3];
    goto LABEL_40;
  }

LABEL_41:
}

void __42__NSArray_PKError__pk_FilteredCardErrors___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 domain];
  v4 = [v3 isEqualToString:@"PKPaymentErrorDomain"];

  if (v4 && [v5 code] == -1001)
  {
    [*(a1 + 32) addObject:v5];
  }
}

id __57__NSArray_PKEnhancedMerchantAdditions__deepCopyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

id __73__NSArray_PKEnhancedMerchantAdditions__nonZeroUnsignedLongLongArrayValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 nonZeroUnsignedLongLongNSNumberValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
      if ([v4 unsignedLongLongValue])
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void *__56__NSArray_PKEnhancedMerchantAdditions__stringArrayValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end