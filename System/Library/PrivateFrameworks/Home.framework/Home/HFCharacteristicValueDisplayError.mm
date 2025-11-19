@interface HFCharacteristicValueDisplayError
+ (id)errorWithCategory:(unint64_t)a3;
+ (id)errorWithUnderlyingError:(id)a3 readTraits:(id)a4 contextProvider:(id)a5;
+ (id)errorWithUnderlyingSymptom:(id)a3 isFixingCurrently:(BOOL)a4 contextProvider:(id)a5;
+ (id)mostEgregiousError:(id)a3;
- (BOOL)isControllableError;
- (BOOL)isHomePodNetworkDiagnosticsError;
- (BOOL)isPersistentError;
- (id)description;
@end

@implementation HFCharacteristicValueDisplayError

+ (id)errorWithUnderlyingError:(id)a3 readTraits:(id)a4 contextProvider:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 domain];
  v11 = *MEMORY[0x277CCFD28];
  v12 = [v10 isEqualToString:*MEMORY[0x277CCFD28]];

  if (v12)
  {
    v13 = [v7 userInfo];
    v14 = [v13 valueForKey:*MEMORY[0x277CCA7E8]];

    v15 = [v7 code];
    if (v15 > 77)
    {
      if (v15 > 87)
      {
        if (v15 == 88)
        {
          v16 = 2;
          goto LABEL_6;
        }

        v16 = 0;
        if (v15 != 103)
        {
LABEL_6:

LABEL_39:
          v24 = objc_alloc_init(HFCharacteristicValueDisplayError);
          [(HFCharacteristicValueDisplayError *)v24 setCategory:v16];
          [(HFCharacteristicValueDisplayError *)v24 setContextProvider:v9];
          v14 = [v7 copy];
          [(HFCharacteristicValueDisplayError *)v24 setUnderlyingError:v14];
          goto LABEL_40;
        }

LABEL_33:
        v24 = 0;
LABEL_40:

        goto LABEL_41;
      }

      if (v15 != 78)
      {
        if (v15 == 87)
        {
          v16 = 7;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (v15 > 0x3B)
      {
        v16 = 0;
        goto LABEL_6;
      }

      if (((1 << v15) & 0x840000000004300) != 0)
      {
        goto LABEL_5;
      }

      v16 = 0;
      if (v15 != 4)
      {
        goto LABEL_6;
      }

      v25 = [v14 domain];
      if ([v25 isEqualToString:v11])
      {
        if ([v14 code] == 2400)
        {

          goto LABEL_33;
        }

        v27 = [v14 code];

        if (v27 == 2401)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

LABEL_5:
    v16 = 1;
    goto LABEL_6;
  }

  v17 = [v7 domain];
  v18 = [v17 isEqualToString:@"HFErrorDomain"];

  if (!v18)
  {
    v16 = 0;
    goto LABEL_39;
  }

  v19 = [v7 code];
  if (v19 > 57)
  {
    v20 = 12;
    v21 = 13;
    if (v19 != 72)
    {
      v21 = 0;
    }

    if (v19 != 71)
    {
      v20 = v21;
    }

    v22 = 10;
    v23 = 11;
    if (v19 != 70)
    {
      v23 = 0;
    }

    if (v19 != 58)
    {
      v22 = v23;
    }

    if (v19 <= 70)
    {
      v16 = v22;
    }

    else
    {
      v16 = v20;
    }

    goto LABEL_39;
  }

  if ((v19 - 34) < 2)
  {
    v16 = 1;
    goto LABEL_39;
  }

  if (v19 != 4)
  {
    if (v19 == 56)
    {
      v16 = 9;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_39;
  }

  if ([v8 containsObject:@"DoesNotSupportNotifications"])
  {
    v16 = 6;
    goto LABEL_39;
  }

  if (([v8 containsObject:@"InvalidOrMissingAuthorizationData"] & 1) != 0 || objc_msgSend(v8, "containsObject:", @"AdditionalSetupRequired"))
  {
    v16 = 7;
    goto LABEL_39;
  }

  v24 = 0;
LABEL_41:

  return v24;
}

+ (id)errorWithUnderlyingSymptom:(id)a3 isFixingCurrently:(BOOL)a4 contextProvider:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = objc_alloc_init(HFCharacteristicValueDisplayError);
  [(HFCharacteristicValueDisplayError *)v8 setCategory:8];
  [(HFCharacteristicValueDisplayError *)v8 setContextProvider:v6];

  [(HFCharacteristicValueDisplayError *)v8 setUnderlyingSymptom:v7];

  return v8;
}

+ (id)mostEgregiousError:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] > 1)
  {
    v5 = [v3 na_firstObjectPassingTest:&__block_literal_global_23_1];
    v6 = [v3 na_filter:&__block_literal_global_25_2];
    v7 = v6;
    if (v5)
    {
      v8 = [v3 na_firstObjectPassingTest:&__block_literal_global_27_3];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }

      v4 = v10;
    }

    else if ([v6 count] == 1)
    {
      v4 = [v7 anyObject];
    }

    else if ([v7 count] < 2)
    {
      v30 = v7;
      v13 = [v3 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_34_2];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = *MEMORY[0x277CCFD28];
      v35[0] = @"HFErrorDomain";
      v35[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
      v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v32;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = v13;
            v21 = [v13 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
            v22 = [v21 allObjects];
            v23 = [v22 sortedArrayUsingComparator:&__block_literal_global_40_0];

            if ([v23 count])
            {
              v13 = v20;
              goto LABEL_22;
            }

            v13 = v20;
          }

          v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v24 = [v13 allKeys];
      v15 = [v24 sortedArrayUsingSelector:sel_compare_];

      v25 = [v15 firstObject];
      v26 = [v13 objectForKey:v25];
      v27 = [v26 allObjects];
      v23 = [v27 sortedArrayUsingComparator:&__block_literal_global_40_0];

LABEL_22:
      v4 = [v23 firstObject];

      v7 = v30;
    }

    else
    {
      v11 = [v7 allObjects];
      v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_30_4];

      v4 = [v12 firstObject];
    }
  }

  else
  {
    v4 = [v3 anyObject];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __56__HFCharacteristicValueDisplayError_mostEgregiousError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 underlyingError];
  v3 = [v2 hf_isHomeKitUnreachableError];

  return v3;
}

BOOL __56__HFCharacteristicValueDisplayError_mostEgregiousError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 underlyingSymptom];
  v3 = v2 != 0;

  return v3;
}

BOOL __56__HFCharacteristicValueDisplayError_mostEgregiousError___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 underlyingSymptom];
  if ([v3 type] == 11)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 underlyingSymptom];
    if ([v5 type] == 19)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v2 underlyingSymptom];
      if ([v6 type] == 1)
      {
        v4 = 1;
      }

      else
      {
        v7 = [v2 underlyingSymptom];
        if ([v7 type] == 20)
        {
          v4 = 1;
        }

        else
        {
          v8 = [v2 underlyingSymptom];
          v4 = [v8 type] == 2;
        }
      }
    }
  }

  return v4;
}

uint64_t __56__HFCharacteristicValueDisplayError_mostEgregiousError___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 underlyingSymptom];
  v6 = [v4 underlyingSymptom];

  v7 = [MEMORY[0x277CD1E88] hf_symptomArraySortComparator];
  v8 = (v7)[2](v7, v5, v6);

  return v8;
}

id __56__HFCharacteristicValueDisplayError_mostEgregiousError___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 underlyingError];
  v4 = [v3 domain];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

uint64_t __56__HFCharacteristicValueDisplayError_mostEgregiousError___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 underlyingError];
  v7 = [v6 domain];
  v8 = [v5 underlyingError];
  v9 = [v8 domain];
  v10 = [v7 compare:v9];

  if (!v10)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [v4 underlyingError];
    v13 = [v11 numberWithInteger:{objc_msgSend(v12, "code")}];
    v14 = MEMORY[0x277CCABB0];
    v15 = [v5 underlyingError];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "code")}];
    v10 = [v13 compare:v16];
  }

  return v10;
}

- (BOOL)isControllableError
{
  if ([(HFCharacteristicValueDisplayError *)self category]== 1 || [(HFCharacteristicValueDisplayError *)self category]== 2 || [(HFCharacteristicValueDisplayError *)self isThreadNetworkError])
  {
    return 1;
  }

  return [(HFCharacteristicValueDisplayError *)self isHomePodNetworkDiagnosticsError];
}

- (BOOL)isHomePodNetworkDiagnosticsError
{
  v3 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
  if ([v3 type] == 112)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
    if ([v5 type] == 115)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
      if ([v6 type] == 113)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
        if ([v7 type] == 102)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
          if ([v8 type] == 101)
          {
            v4 = 1;
          }

          else
          {
            v9 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
            if ([v9 type] == 103)
            {
              v4 = 1;
            }

            else
            {
              v10 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
              v4 = [v10 type] == 100;
            }
          }
        }
      }
    }
  }

  return v4;
}

+ (id)errorWithCategory:(unint64_t)a3
{
  v4 = objc_alloc_init(HFCharacteristicValueDisplayError);
  [(HFCharacteristicValueDisplayError *)v4 setCategory:a3];

  return v4;
}

- (BOOL)isPersistentError
{
  v3 = [(HFCharacteristicValueDisplayError *)self contextProvider];
  v4 = [v3 hf_remoteAccessState];

  return [(HFCharacteristicValueDisplayError *)self category]- 6 < 8 || (v4 - 1) < 2;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCharacteristicValueDisplayError category](self, "category")}];
  v5 = [v3 appendObject:v4 withName:@"category"];

  v6 = [(HFCharacteristicValueDisplayError *)self underlyingError];
  v7 = [v3 appendObject:v6 withName:@"error" skipIfNil:1];

  v8 = [(HFCharacteristicValueDisplayError *)self underlyingSymptom];
  v9 = [v3 appendObject:v8 withName:@"symptom" skipIfNil:1];

  v10 = [v3 build];

  return v10;
}

@end