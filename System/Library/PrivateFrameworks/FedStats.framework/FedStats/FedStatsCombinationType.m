@interface FedStatsCombinationType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsCombinationType)initWithCombinationSpec:(id)a3;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)sampleForIndex:(unint64_t)a3;
@end

@implementation FedStatsCombinationType

- (FedStatsCombinationType)initWithCombinationSpec:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v41.receiver = self;
  v41.super_class = FedStatsCombinationType;
  v6 = [(FedStatsCombinationType *)&v41 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_combinationSpec, a3);
    v8 = [v5 allKeys];
    v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_2];
    orderedKeys = v7->_orderedKeys;
    v7->_orderedKeys = v9;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = [(FedStatsCombinationType *)v7 orderedKeys];
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [v5 objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
          v15 *= [v17 classCount];
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 1;
    }

    v36.receiver = v7;
    v36.super_class = FedStatsCombinationType;
    [(FedStatsBoundedULongType *)&v36 setBound:v15 - 1];
    v7->_classCount = v15;
    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v7;
    v19 = [(FedStatsCombinationType *)v7 orderedKeys];
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = [v5 objectForKeyedSubscript:v24];
          v15 /= [v25 classCount];

          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
          [v18 setObject:v26 forKeyedSubscript:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v21);
    }

    v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];
    v7 = v31;
    strides = v31->_strides;
    v31->_strides = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKey:kFedStatsCombinationTypeStructure];
  if (!v7)
  {
    if (a4)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key %@", kFedStatsCombinationTypeStructure];
      v9 = 300;
LABEL_11:
      *a4 = [FedStatsError errorWithCode:v9 description:v8];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must be an array", kFedStatsCombinationTypeStructure];
      goto LABEL_10;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if ([v7 count] <= 1)
  {
    if (a4)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must have at least 2 elements", kFedStatsCombinationTypeStructure];
      v8 = LABEL_10:;
      v9 = 302;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v38 = a1;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Every entry in the value of the key %@must be a string", kFedStatsCombinationTypeStructure];
            *a4 = [FedStatsError errorWithCode:302 description:v33];
          }

          goto LABEL_12;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v6 objectForKey:kFedStatsCombinationTypeAvailableTypes];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = [v19 allValues];
      v21 = [v20 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v44;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v20);
            }

            if (([*(*(&v43 + 1) + 8 * j) conformsToProtocol:&unk_285E13BF8] & 1) == 0)
            {
              v32 = v19;
              if (a4)
              {
                v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Every value in the %@ dictionary must be a class conforming to FedStatsDataTypeProtocol", kFedStatsCombinationTypeAvailableTypes];
                *a4 = [FedStatsError errorWithCode:302 description:v35];
              }

LABEL_57:
              v10 = 0;
              goto LABEL_58;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v13;
      v25 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        while (2)
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v39 + 1) + 8 * k);
            v30 = [v19 objectForKey:v29];
            if (!v30)
            {
              v32 = v19;
              if (a4)
              {
                v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no type defined for %@", v29];
                *a4 = [FedStatsError errorWithCode:302 description:v36];
              }

              goto LABEL_57;
            }

            v31 = v30;
            [v20 setObject:v30 forKey:v29];
          }

          v26 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v32 = v19;

      v10 = [[v38 alloc] initWithCombinationSpec:v20];
      goto LABEL_58;
    }

    v32 = v19;
    if (a4)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must be a dictionary", kFedStatsCombinationTypeAvailableTypes];
      v34 = 302;
      goto LABEL_50;
    }
  }

  else
  {
    v32 = 0;
    if (a4)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key %@", kFedStatsCombinationTypeAvailableTypes];
      v34 = 300;
LABEL_50:
      [FedStatsError errorWithCode:v34 description:v20];
      *a4 = v10 = 0;
LABEL_58:

      goto LABEL_59;
    }
  }

  v10 = 0;
LABEL_59:

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [(FedStatsCombinationType *)self orderedKeys];
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];

          if (!v13)
          {
            if (a4)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The combination type requires the key %@ to be in the value dictionary", v12];
              *a4 = [FedStatsError errorWithCode:401 description:v26];
            }

            goto LABEL_27;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(FedStatsCombinationType *)self orderedKeys];
    v34 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v34)
    {
      v31 = a4;
      v14 = 0;
      v33 = *v37;
      while (2)
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * j);
          v17 = [(FedStatsCombinationType *)self combinationSpec];
          v18 = [v17 objectForKey:v16];

          v19 = [v6 objectForKeyedSubscript:v16];
          v35 = 0;
          v20 = [v18 encodeToIndex:v19 possibleError:&v35];
          v21 = v35;

          if (!v20)
          {
            if (v31)
            {
              v27 = [*v31 code];
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error with %@ value in the encoder.", v16];
              *v31 = [FedStatsError errorWithCode:v27 underlyingError:v21 description:v28];
            }

            goto LABEL_27;
          }

          v22 = [(FedStatsCombinationType *)self strides];
          v23 = [v22 objectForKey:v16];
          v24 = [v23 unsignedLongValue];
          v14 += [v20 unsignedLongValue] * v24;
        }

        v34 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:401 description:@"The combination type encoder requires a dictionary to process."];
    *a4 = v25 = 0;
  }

  else
  {
LABEL_27:
    v25 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (a4)
    {
      v24 = @"The decoder can only work with a valid number type";
LABEL_16:
      [FedStatsError errorWithCode:500 description:v24];
      *a4 = v23 = 0;
      goto LABEL_22;
    }

LABEL_17:
    v23 = 0;
    goto LABEL_22;
  }

  v8 = [v6 unsignedLongValue];
  if (v8 >= [(FedStatsCombinationType *)self classCount])
  {
    if (a4)
    {
      v24 = @"The decoder requires a number less than the class count";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v28 = a4;
  v29 = v7;
  v9 = [v7 unsignedLongValue];
  v10 = MEMORY[0x277CBEB38];
  v11 = [(FedStatsCombinationType *)self orderedKeys];
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v34 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v34)
  {
    v32 = v12;
    v33 = *v37;
    v31 = self;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [(FedStatsCombinationType *)self strides];
        v16 = [v15 objectForKey:v14];
        v17 = [v16 unsignedLongValue];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9 / v17];
        v19 = [(FedStatsCombinationType *)self combinationSpec];
        v20 = [v19 objectForKey:v14];
        v35 = 0;
        v21 = [v20 decodeFromIndex:v18 possibleError:&v35];
        v22 = v35;

        if (!v21)
        {
          if (v28)
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not decode %@ value in the combination", v14];
            *v28 = [FedStatsError errorWithCode:500 underlyingError:v22 description:v25];
          }

          v23 = 0;
          v12 = v32;
          goto LABEL_21;
        }

        v12 = v32;
        [v32 setValue:v21 forKey:v14];
        v9 %= v17;

        self = v31;
      }

      v34 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v23 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v12];
LABEL_21:

  v7 = v29;
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)sampleForIndex:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  v6 = [(FedStatsCombinationType *)self orderedKeys];
  v21 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(FedStatsCombinationType *)self strides];
        v12 = [v11 objectForKey:v10];
        v13 = [v12 unsignedLongValue];

        v14 = [(FedStatsCombinationType *)self combinationSpec];
        v15 = [v14 objectForKey:v10];
        v16 = [v15 sampleForIndex:a3 / v13];
        [v21 setObject:v16 forKey:v10];

        a3 %= v13;
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v21;
}

@end