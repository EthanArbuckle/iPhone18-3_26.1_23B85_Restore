@interface FedStatsDataEncoder
+ (id)createWithDataTypeContent:(id)a3 possibleError:(id *)a4;
+ (id)defaultDataPointForDataTypeContent:(id)a3;
+ (id)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 baseKey:(id)a5 errorOut:(id *)a6;
+ (id)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7;
+ (id)encodeDataArray:(id)a3 dataTypeContent:(id)a4 resultType:(unint64_t *)a5 errorOut:(id *)a6;
+ (id)encodeDataArrayAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7;
+ (id)extractAssetNamesFrom:(id)a3 usingFieldValues:(id)a4;
+ (id)extractRequiredFieldsFrom:(id)a3;
+ (id)mutateDataTypeContent:(id)a3 usingFieldValues:(id)a4 assetURLs:(id)a5 requiredFields:(id *)a6 assetNames:(id *)a7 error:(id *)a8;
- (BOOL)isVectorDimensionAllowed;
- (FedStatsDataEncoder)initWithDataTypes:(id)a3 combinationTypes:(id)a4;
- (FedStatsDataEncoder)initWithHistogramType:(id)a3 typeName:(id)a4;
- (id)decodeFromBitVector:(id)a3 possibleError:(id *)a4;
- (id)decodeFromBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5;
- (id)encodeDataArray:(id)a3 error:(id *)a4;
- (id)encodeToBitVector:(id)a3 possibleError:(id *)a4;
- (id)encodeToBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5;
- (id)encodeToHistogramVector:(id)a3 error:(id *)a4;
- (id)encodeToIndex:(id)a3 error:(id *)a4;
- (id)encodeToIndex:(id)a3 withType:(id)a4 error:(id *)a5;
@end

@implementation FedStatsDataEncoder

- (FedStatsDataEncoder)initWithDataTypes:(id)a3 combinationTypes:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v46.receiver = self;
  v46.super_class = FedStatsDataEncoder;
  v9 = [(FedStatsDataEncoder *)&v46 init];
  v10 = v9;
  if (v9)
  {
    v35 = v9;
    objc_storeStrong(&v9->_dataTypes, a3);
    v11 = [v8 allKeys];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_3];

    v13 = MEMORY[0x277CBEB58];
    v36 = v7;
    v14 = [v7 allKeys];
    v15 = [v13 setWithArray:v14];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v43;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v42 + 1) + 8 * i);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v21 = [v8 objectForKey:v20];
          v22 = [v21 typesInCombination];

          v23 = [v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v39;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v39 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [v15 removeObject:*(*(&v38 + 1) + 8 * j)];
              }

              v24 = [v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v24);
          }

          [v15 removeObject:v20];
        }

        v17 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v17);
    }

    v27 = [v15 allObjects];
    v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_3];
    v29 = [obj arrayByAddingObjectsFromArray:v28];
    v10 = v35;
    typeConfiguration = v35->_typeConfiguration;
    v35->_typeConfiguration = v29;

    v31 = [(NSArray *)v35->_typeConfiguration count];
    v32 = 1;
    if (v31 != 1)
    {
      v32 = 2;
    }

    v35->_resultType = v32;

    v7 = v36;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

- (FedStatsDataEncoder)initWithHistogramType:(id)a3 typeName:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = FedStatsDataEncoder;
  v8 = [(FedStatsDataEncoder *)&v15 init];
  if (v8)
  {
    v17 = v7;
    v18[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    dataTypes = v8->_dataTypes;
    v8->_dataTypes = v9;

    v16 = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    typeConfiguration = v8->_typeConfiguration;
    v8->_typeConfiguration = v11;

    v8->_resultType = 3;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)createWithDataTypeContent:(id)a3 possibleError:(id *)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    if (a4)
    {
      [FedStatsError errorWithCode:100 description:@"Missing data type content"];
      *a4 = v27 = 0;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_63;
  }

  v53 = a1;
  v54 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v59 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v55 = v7;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v67 objects:v74 count:16];
  v56 = v8;
  v58 = v9;
  if (!v10)
  {

LABEL_29:
    v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v8;
    v29 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v62;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v62 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v61 + 1) + 8 * i);
          v34 = MEMORY[0x277CBEB38];
          v35 = [v58 objectForKey:v33];
          v16 = [v34 dictionaryWithDictionary:v35];

          v71 = kFedStatsCombinationTypeAvailableTypes;
          v72 = v59;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          [v16 addEntriesFromDictionary:v36];

          v60 = 0;
          v37 = [FedStatsCombinationType createFromDict:v16 possibleError:&v60];
          v38 = v60;
          if (!v37)
          {
            if (v54)
            {
              v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create data type %@", v33];
              *v54 = [FedStatsError errorWithCode:302 underlyingError:v38 description:v44];
            }

            v27 = 0;
            v7 = v55;
            v24 = v59;
            v12 = v28;
            v9 = obj;
            goto LABEL_62;
          }

          [v28 setValue:v37 forKey:v33];
          [v59 setValue:v37 forKey:v33];
        }

        v30 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v39 = [v53 alloc];
    v24 = v59;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v59];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v28];
    v41 = v39;
    v12 = v28;
    v9 = v40;
    v27 = [v41 initWithDataTypes:v40 combinationTypes:v16];
    v7 = v55;
    goto LABEL_62;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v68;
  while (2)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*v68 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v67 + 1) + 8 * j);
      v16 = [v9 objectForKey:v15];
      v17 = [v16 objectForKey:@"dataType"];
      if (!v17)
      {
        v42 = v54;
        if (v54)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing data type specifier key %@", @"dataType"];
          v43 = 100;
LABEL_54:
          *v42 = [FedStatsError errorWithCode:v43 description:v21];
LABEL_55:
          v7 = v55;
          v24 = v59;
LABEL_56:

LABEL_61:
          v27 = 0;
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v18 = [FedStatsDataTypeFactory dataTypeFromString:v17];
      switch(v18)
      {
        case 5:
          if (v12)
          {
            v42 = v54;
            if (!v54)
            {
              goto LABEL_60;
            }

            v45 = v12;
            v46 = MEMORY[0x277CCACA8];
            v47 = @"The data type content can have at most one histogram type";
            goto LABEL_52;
          }

          if ([v8 count])
          {
            if (v54)
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type content cannot have one histogram type and combination types"];
              [FedStatsError errorWithCode:101 description:v21];
              *v54 = v12 = 0;
              goto LABEL_55;
            }

            v12 = 0;
            goto LABEL_60;
          }

          v12 = [v15 copy];
          break;
        case 99:
          if (v12)
          {
            v42 = v54;
            if (!v54)
            {
              goto LABEL_60;
            }

            v45 = v12;
            v46 = MEMORY[0x277CCACA8];
            v47 = @"The data type content cannot have one histogram type and combination types";
LABEL_52:
            [v46 stringWithFormat:v47, v52];
            goto LABEL_53;
          }

          [v8 addObject:v15];
          break;
        case -1:
          v42 = v54;
          if (v54)
          {
            v45 = v12;
            [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not supported", v17];
            v21 = LABEL_53:;
            v12 = v45;
            v43 = 101;
            goto LABEL_54;
          }

LABEL_60:
          v24 = v59;
          goto LABEL_61;
        default:
          v19 = v12;
          v66 = 0;
          v20 = [FedStatsDataTypeFactory createFedStatsDataType:v17 dataTypeParams:v16 possibleError:&v66];
          v21 = v66;
          if (v20)
          {
            [v59 setValue:v20 forKey:v15];

            v8 = v56;
            v12 = v19;
            v9 = v58;
            break;
          }

          if (v54)
          {
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create data type %@", v15];
            *v54 = [FedStatsError errorWithCode:302 underlyingError:v21 description:v48];
          }

          v12 = v19;
          v9 = v58;
          v24 = v59;
          goto LABEL_56;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  if (!v12)
  {
    goto LABEL_29;
  }

  [v9 objectForKey:v12];
  v23 = v22 = v12;
  v16 = [v23 mutableCopy];

  v24 = v59;
  [v16 setObject:v59 forKey:kFedStatsCombinationTypeAvailableTypes];
  v65 = 0;
  v25 = [FedStatsHistogramType createFromDict:v16 possibleError:&v65];
  v26 = v65;
  if (v25)
  {
    v27 = [[FedStatsDataEncoder alloc] initWithHistogramType:v25 typeName:v22];
    goto LABEL_24;
  }

  if (v54)
  {
    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create histogram type %@", v22];
    v12 = v22;
    v9 = v26;
    *v54 = [FedStatsError errorWithCode:302 underlyingError:v26 description:v51];

    v27 = 0;
  }

  else
  {
    v27 = 0;
LABEL_24:
    v12 = v22;
    v9 = v26;
  }

LABEL_62:
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)encodeToIndex:(id)a3 withType:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [v10 objectForKey:v9];

    if (!v11)
    {
      if (a5)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", v9];
        *a5 = [FedStatsError errorWithCode:200 description:v26];
      }

      v25 = 0;
      goto LABEL_24;
    }

    if ([v11 dataType] == 99)
    {
      v31 = a5;
      v30 = v11;
      v12 = [v30 typesInCombination];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v35;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = [v8 objectForKey:v19];
            [v13 setValue:v20 forKey:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v16);
      }

      v21 = [v13 copy];
      v33 = 0;
      v22 = v30;
      v23 = [v30 encodeToIndex:v21 possibleError:&v33];
      v24 = v33;

      a5 = v31;
    }

    else
    {
      v22 = [v8 objectForKey:v9];
      v32 = 0;
      v23 = [v11 encodeToIndex:v22 possibleError:&v32];
      v24 = v32;
    }

    if (v23)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v11, "classCount")}];
      v25 = [FedStatsDataEncoderDimensionalResult resultWithIndex:v23 dimensionality:v27];
    }

    else
    {
      if (!a5)
      {
        v25 = 0;
        goto LABEL_23;
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot encode data to %@", v9];
      [FedStatsError errorWithCode:401 underlyingError:v24 description:v27];
      *a5 = v25 = 0;
    }

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  if (a5)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *a5 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)encodeToBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      if ([v11 dataType] == 99)
      {
        v28 = a5;
        v27 = v11;
        v12 = [v27 typesInCombination];
        v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * i);
              v20 = [v8 objectForKey:v19];
              [v13 setValue:v20 forKey:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v16);
        }

        v21 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
        v22 = [v27 encodeToOneHotVector:v21 possibleError:v28];
      }

      else
      {
        v24 = [v8 objectForKey:v9];
        v22 = [v11 encodeToOneHotVector:v24 possibleError:a5];
      }
    }

    else
    {
      if (a5)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", v9];
        *a5 = [FedStatsError errorWithCode:200 description:v23];
      }

      v22 = 0;
    }
  }

  else if (a5)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *a5 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)decodeFromBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      v12 = [v11 decodeFromOneHotVector:v8 possibleError:a5];
    }

    else
    {
      if (a5)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", v9];
        *a5 = [FedStatsError errorWithCode:200 description:v13];
      }

      v12 = 0;
    }
  }

  else if (a5)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isVectorDimensionAllowed
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(FedStatsDataEncoder *)self typeConfiguration];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(FedStatsDataEncoder *)self dataTypes];
        v11 = [v10 objectForKey:v9];
        v6 += [v11 classCount];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
    v12 = v6 < 0x186A1;
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)encodeToBitVector:(id)a3 possibleError:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    if (a4)
    {
      [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
      *a4 = v17 = 0;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (![(FedStatsDataEncoder *)self isVectorDimensionAllowed])
  {
    if (a4)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resulting vector dimension is larger than max dimension %lu", 100000];
      *a4 = [FedStatsError errorWithCode:900 description:v18];
    }

LABEL_17:
    v17 = 0;
    goto LABEL_22;
  }

  v7 = [MEMORY[0x277CBEB28] data];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(FedStatsDataEncoder *)self typeConfiguration];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v22 = a4;
    obj = v8;
    v11 = 0;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * v13);
        v24 = 0;
        v11 = [(FedStatsDataEncoder *)self encodeToBitVector:v6 withType:v15 possibleError:&v24];
        v16 = v24;

        if (!v11)
        {
          if (v22)
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error encoding %@ type", v15];
            *v22 = [FedStatsError errorWithCode:401 underlyingError:v16 description:v19];
          }

          v17 = 0;
          goto LABEL_21;
        }

        [v7 appendData:v11];

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
LABEL_21:

LABEL_22:
  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)encodeToIndex:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(FedStatsDataEncoder *)self typeConfiguration];
  v8 = [v7 count];

  if (v8 != 1)
  {
    if (a4)
    {
      v23 = @"This API is only available for single type in encoding schema";
      v24 = 900;
LABEL_19:
      [FedStatsError errorWithCode:v24 description:v23];
      *a4 = v20 = 0;
      goto LABEL_27;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_27;
  }

  if (!v6)
  {
    if (a4)
    {
      v23 = @"Provided data is empty";
      v24 = 401;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v32 = a4;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [(FedStatsDataEncoder *)self dataTypes];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [(FedStatsDataEncoder *)self dataTypes];
        v16 = [v15 objectForKey:v14];
        if ([v16 dataType] == 99)
        {
        }

        else
        {
          v17 = [v6 objectForKey:v14];

          if (!v17)
          {
            if (v32)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Provided data does not contain a value for %@", v14];
              *v32 = [FedStatsError errorWithCode:200 description:v25];
            }

            goto LABEL_23;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(FedStatsDataEncoder *)self typeConfiguration];
  v19 = [v18 firstObject];
  v33 = 0;
  v20 = [(FedStatsDataEncoder *)self encodeToIndex:v6 withType:v19 error:&v33];
  v21 = v33;

  if (v20)
  {
    v22 = v20;
  }

  else if (v32)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [(FedStatsDataEncoder *)self typeConfiguration];
    v28 = [v27 firstObject];
    v29 = [v26 stringWithFormat:@"Cannot encode data to %@", v28];
    *v32 = [FedStatsError errorWithCode:401 underlyingError:v21 description:v29];
  }

LABEL_27:
  v30 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)encodeToHistogramVector:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    if (a4)
    {
      v14 = @"Provided data is empty";
      v15 = 401;
LABEL_10:
      [FedStatsError errorWithCode:v15 description:v14];
      *a4 = v11 = 0;
      goto LABEL_17;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_17;
  }

  if ([(FedStatsDataEncoder *)self resultType]!= 3)
  {
    if (a4)
    {
      v14 = @"This API is only available for single histogram type in encoding schema";
      v15 = 900;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (![(FedStatsDataEncoder *)self isVectorDimensionAllowed])
  {
    if (a4)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resulting vector dimension is larger than max dimension %lu", 100000];
      *a4 = [FedStatsError errorWithCode:900 description:v16];
    }

    goto LABEL_13;
  }

  v7 = [(FedStatsDataEncoder *)self dataTypes];
  v8 = [(FedStatsDataEncoder *)self typeConfiguration];
  v9 = [v8 firstObject];
  v10 = [v7 objectForKey:v9];

  v18 = 0;
  v11 = [v10 encodeToHistogramVector:v6 possibleError:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = v11;
  }

  else if (a4)
  {
    *a4 = [FedStatsError errorWithCode:401 underlyingError:v12 description:@"Cannot encode data to histogram"];
  }

LABEL_17:

  return v11;
}

- (id)decodeFromBitVector:(id)a3 possibleError:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = [(FedStatsDataEncoder *)self typeConfiguration];
  v24 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(FedStatsDataEncoder *)self typeConfiguration];
  v26 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v26)
  {
    v8 = 0;
    v25 = *v30;
LABEL_3:
    v9 = 0;
    while (1)
    {
      v10 = a4;
      if (*v30 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v9);
      v12 = [(FedStatsDataEncoder *)self dataTypes];
      v13 = [v12 objectForKey:v11];

      v14 = [v13 classCount];
      v15 = [v27 subdataWithRange:{v8, v14}];
      v28 = 0;
      v16 = [(FedStatsDataEncoder *)self decodeFromBitVector:v15 withType:v11 possibleError:&v28];
      v17 = v28;
      if (v16)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_13;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"The decoder for %@ failed", v11];
      a4 = v10;
      *v10 = [FedStatsError errorWithCode:500 underlyingError:v17 description:v18];

LABEL_14:
      if (!v16)
      {

        v20 = 0;
        v19 = v24;
        goto LABEL_19;
      }

      if (v26 == ++v9)
      {
        v26 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v26)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 addEntriesFromDictionary:v16];
    }

    else
    {
      [v24 setValue:v16 forKey:v11];
    }

    v8 += v14;
LABEL_13:
    a4 = v10;
    goto LABEL_14;
  }

LABEL_17:

  v19 = v24;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v24];
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)encodeDataArray:(id)a3 dataTypeContent:(id)a4 resultType:(unint64_t *)a5 errorOut:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    if (v9)
    {
      v16 = 0;
      v11 = [FedStatsDataEncoder createWithDataTypeContent:v10 possibleError:&v16];
      v12 = v16;
      if (v11)
      {
        *a5 = [v11 resultType];
        v13 = [v11 encodeDataArray:v9 error:a6];
      }

      else if (a6)
      {
        [FedStatsError errorWithCode:302 underlyingError:v12 description:@"encodeDataArray encoder construction failed"];
        *a6 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_15;
    }

    if (a6)
    {
      v14 = @"encodeDataArray missing data array";
      goto LABEL_9;
    }
  }

  else if (a6)
  {
    v14 = @"encodeDataArray missing data type content";
LABEL_9:
    [FedStatsError errorWithCode:400 description:v14];
    *a6 = v13 = 0;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)encodeDataArray:(id)a3 error:(id *)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [FedStatsDataSampler samplerWithCount:20];
  v8 = [(FedStatsDataEncoder *)self resultType];
  v54 = v7;
  switch(v8)
  {
    case 3uLL:
      v31 = [(FedStatsDataEncoder *)self dataTypes];
      v32 = [v31 allValues];
      v33 = [v32 firstObject];

      obj = v33;
      v34 = [v33 classCount];
      v35 = [MEMORY[0x277CBEA60] arrayWithObject:&unk_285E12DD0 repeated:v34];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v51 = v6;
      v36 = v6;
      v37 = [v36 countByEnumeratingWithState:&v59 objects:v81 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = self;
        v40 = *v60;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v60 != v40)
            {
              objc_enumerationMutation(v36);
            }

            v42 = *(*(&v59 + 1) + 8 * i);
            v58 = 0;
            v43 = [(FedStatsDataEncoder *)v39 encodeToHistogramVector:v42 error:&v58, v51];
            v44 = v58;
            if (v43)
            {
              v45 = [MEMORY[0x277CBEA60] arrayWithData:v43];
              v46 = [v35 arrayByElementwiseAdd:v45];

              v35 = v46;
            }

            else
            {
              v45 = +[FedStatsLog logger];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                [FedStatsDataEncoder encodeDataArray:buf error:&buf[1]];
              }
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v59 objects:v81 count:16];
        }

        while (v38);
      }

      v47 = [obj scaleAndShift:v35];
      v7 = v54;
      [v54 addItem:v47];

      goto LABEL_55;
    case 2uLL:
      v67 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      obj = v6;
      v24 = [obj countByEnumeratingWithState:&v64 objects:v82 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v65;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v65 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v64 + 1) + 8 * j);
            v63 = 0;
            v29 = [(FedStatsDataEncoder *)self encodeToBitVector:v28 possibleError:&v63];
            if (v29)
            {
              [v7 addItem:v29];
            }

            else
            {
              v30 = +[FedStatsLog logger];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                [FedStatsDataEncoder encodeDataArray:buf error:&buf[1]];
              }
            }
          }

          v25 = [obj countByEnumeratingWithState:&v64 objects:v82 count:16];
        }

        while (v25);
      }

      goto LABEL_56;
    case 1uLL:
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v6;
      v9 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
      if (!v9)
      {
LABEL_56:

        v48 = [v7 getResults];
        goto LABEL_57;
      }

      v10 = v9;
      v51 = v6;
      v11 = *v78;
      v52 = *v78;
      v53 = self;
      do
      {
        v12 = 0;
        v55 = v10;
        do
        {
          if (*v78 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v77 + 1) + 8 * v12);
          if (v13)
          {
            v74 = 0;
            v14 = [(FedStatsDataEncoder *)self encodeToIndex:v13 error:&v74];
            v15 = v74;
            if (v14)
            {
              [v7 addItem:v14];
            }

            else
            {
              v16 = +[FedStatsLog logger];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                [FedStatsDataEncoder encodeDataArray:v73 error:?];
              }

              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v56 = v15;
              v17 = [v15 describe];
              v18 = [v17 countByEnumeratingWithState:&v68 objects:v85 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v69;
                do
                {
                  for (k = 0; k != v19; ++k)
                  {
                    if (*v69 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v68 + 1) + 8 * k);
                    v23 = +[FedStatsLog logger];
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v84 = v22;
                      _os_log_debug_impl(&dword_24AAFE000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v68 objects:v85 count:16];
                }

                while (v19);
              }

              self = v53;
              v7 = v54;
              v11 = v52;
              v10 = v55;
              v14 = 0;
              v15 = v56;
            }
          }

          else
          {
            v15 = +[FedStatsLog logger];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [FedStatsDataEncoder encodeDataArray:v76 error:?];
            }
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v10);
LABEL_55:
      v6 = v51;
      goto LABEL_56;
  }

  if (a4)
  {
    [FedStatsError errorWithCode:900 description:@"Result type not supported"];
    *a4 = v48 = 0;
  }

  else
  {
    v48 = 0;
  }

LABEL_57:

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)encodeDataArrayAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7
{
  v152[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 length];
    if (v16 >= [@"fedstats:" length] && (objc_msgSend(v15, "substringToIndex:", objc_msgSend(@"fedstats:", "length")), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"fedstats:"), v17, (v18 & 1) != 0))
    {
      v19 = v15;
    }

    else
    {
      v19 = [@"fedstats:" stringByAppendingString:v15];
    }

    v20 = v19;
    v21 = +[FedStatsLog logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
    }

    v138 = 0;
    v22 = [FedStatsDataEncoder createWithDataTypeContent:v12 possibleError:&v138];
    v23 = v138;
    if (!v22)
    {
      if (a7)
      {
        [FedStatsError errorWithCode:101 underlyingError:v23 description:@"encodeDataArrayAndRecord failed at constructor"];
        *a7 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_113;
    }

    v137 = 0;
    v24 = [v22 encodeDataArray:v11 error:&v137];
    v25 = v137;
    v121 = v25;
    v122 = v24;
    if (!v24)
    {
      if (a7)
      {
        [FedStatsError errorWithCode:401 underlyingError:v25 description:@"encodeDataArrayAndRecord failed at encoding"];
        *a7 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_112;
    }

    v26 = +[FedStatsLog logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsDataEncoder encodeDataArrayAndRecord:v122 dataTypeContent:v26 metadata:? baseKey:? errorOut:?];
    }

    v119 = v23;

    v27 = +[FedStatsLog logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsDataEncoder encodeDataArrayAndRecord:v27 dataTypeContent:? metadata:? baseKey:? errorOut:?];
    }

    v127 = [objc_alloc(MEMORY[0x277D052E8]) initWithKey:v20];
    if (!v127)
    {
      if (a7)
      {
        [FedStatsError errorWithCode:600 description:@"encodeDataArrayAndRecord failed at recorder allocation"];
        *a7 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_111;
    }

    if ([v13 count])
    {
      v28 = v13;
    }

    else
    {
      v151 = *MEMORY[0x277D05410];
      v152[0] = &stru_285E0CF98;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:&v151 count:1];
    }

    v126 = v28;
    if ([v122 count])
    {
      v30 = [v22 resultType];
      if (v30 == 1)
      {
        v116 = v22;
        v118 = v15;
        v120 = v20;
        v112 = v11;
        v114 = v13;
        v110 = v12;
        v69 = [MEMORY[0x277CBEB38] dictionary];
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v70 = v122;
        v71 = [v70 countByEnumeratingWithState:&v133 objects:v150 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v134;
          do
          {
            for (i = 0; i != v72; ++i)
            {
              if (*v134 != v73)
              {
                objc_enumerationMutation(v70);
              }

              v75 = *(*(&v133 + 1) + 8 * i);
              v76 = [v75 dimensionality];
              v77 = [v69 objectForKey:v76];

              if (v77)
              {
                v78 = [v75 index];
                [v77 arrayByAddingObject:v78];
              }

              else
              {
                v79 = MEMORY[0x277CBEA60];
                v78 = [v75 index];
                [v79 arrayWithObject:v78];
              }
              v80 = ;
              v81 = [v75 dimensionality];
              [v69 setObject:v80 forKey:v81];
            }

            v72 = [v70 countByEnumeratingWithState:&v133 objects:v150 count:16];
          }

          while (v72);
        }

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v82 = v69;
        v83 = [v82 countByEnumeratingWithState:&v129 objects:v149 count:16];
        if (v83)
        {
          v84 = v83;
          v125 = 0;
          v85 = *v130;
          v86 = *MEMORY[0x277D05328];
          v87 = *MEMORY[0x277D05330];
          v33 = 0x278FF5000uLL;
          do
          {
            for (j = 0; j != v84; ++j)
            {
              if (*v130 != v85)
              {
                objc_enumerationMutation(v82);
              }

              v89 = *(*(&v129 + 1) + 8 * j);
              v90 = [*(v33 + 3704) logger];
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v148 = v89;
                _os_log_debug_impl(&dword_24AAFE000, v90, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord recording with dimension = %@", buf, 0xCu);
              }

              v91 = [v126 mutableCopy];
              v145 = v86;
              v146 = v89;
              v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
              [v91 setObject:v92 forKey:v87];

              v93 = [*(v33 + 3704) logger];
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v148 = v91;
                _os_log_debug_impl(&dword_24AAFE000, v93, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord one-hot recorder metadata = %@", buf, 0xCu);
              }

              v94 = [v82 objectForKey:v89];
              v95 = [v127 record:v94 metadata:v91];

              if (v95)
              {
                v96 = [v82 objectForKey:v89];
                v125 += [v96 count];
                v33 = 0x278FF5000;
              }

              else
              {
                v33 = 0x278FF5000uLL;
                v96 = +[FedStatsLog logger];
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v148 = v120;
                  _os_log_debug_impl(&dword_24AAFE000, v96, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord failed to record numbers for key '%@'", buf, 0xCu);
                }
              }
            }

            v84 = [v82 countByEnumeratingWithState:&v129 objects:v149 count:16];
          }

          while (v84);
        }

        else
        {
          v125 = 0;
          v33 = 0x278FF5000;
        }

        v12 = v110;
        v11 = v112;
        v13 = v114;
        v22 = v116;
        v15 = v118;
        v23 = v119;
        v20 = v120;
        v32 = v125;
        goto LABEL_107;
      }

      if (v30 == 3)
      {
        v115 = v22;
        v117 = v15;
        v34 = [v22 dataTypes];
        v35 = [v34 allValues];
        v36 = [v35 firstObject];

        v37 = [v122 firstObject];
        v38 = [v36 clippingBound];
        [v38 floatValue];
        *&v40 = 1.0 / v39;
        v41 = [v37 arrayByScalingWith:v40];

        v123 = v41;
        v42 = [MEMORY[0x277CBEA90] dataWithArray:v41];
        v43 = [objc_alloc(MEMORY[0x277D052F8]) initWithKey:v20];
        v44 = [v126 mutableCopy];
        v106 = *MEMORY[0x277D05410];
        [v44 removeObjectForKey:?];
        [v44 setObject:@"2.0" forKey:*MEMORY[0x277D053F0]];
        v45 = +[FedStatsLog logger];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
        }

        v111 = v42;
        v144 = v42;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
        v109 = v43;
        v47 = [v43 recordFloatVectors:v46 metadata:v44];

        v48 = +[FedStatsLog logger];
        v49 = v48;
        v124 = v36;
        v108 = v44;
        if (v47)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            [FedStatsDataEncoder encodeDataArrayAndRecord:v49 dataTypeContent:? metadata:? baseKey:? errorOut:?];
          }

          v50 = [FedStatsDataEncoder mutateCollectionKeyForHistogramType:v20];
          v51 = [v36 normType];

          v107 = v50;
          if (v51)
          {
            v113 = v13;
            v52 = [v36 normType];
            v53 = [v122 firstObject];
            v54 = [FedStatsUtils normL2:v53];
            v128 = 0;
            v55 = [v52 encodeToIndex:v54 possibleError:&v128];
            v105 = v128;

            v104 = v55;
            if (v55)
            {
              v56 = [objc_alloc(MEMORY[0x277D052E8]) initWithKey:v50];
              if (v56)
              {
                v143[0] = &stru_285E0CF98;
                v57 = *MEMORY[0x277D05390];
                v142[0] = v106;
                v142[1] = v57;
                v58 = [v124 normDediscoTypeConfig];
                v143[1] = v58;
                v142[2] = *MEMORY[0x277D05330];
                v140 = *MEMORY[0x277D05328];
                v59 = MEMORY[0x277CCABB0];
                v60 = [v124 normType];
                v61 = [v59 numberWithUnsignedLong:{objc_msgSend(v60, "classCount")}];
                v141 = v61;
                v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
                v143[2] = v62;
                v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:3];

                v64 = +[FedStatsLog logger];
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                {
                  +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
                }

                v139 = v104;
                v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
                v66 = [v56 record:v65 metadata:v63];

                v67 = +[FedStatsLog logger];
                v68 = v67;
                if (v66)
                {
                  v32 = 2;
                  v23 = v119;
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                  {
                    +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
                    v32 = 2;
                  }
                }

                else
                {
                  v23 = v119;
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
                  }

                  v32 = 1;
                }

                v15 = v117;
                v99 = v123;

                v22 = v115;
              }

              else
              {
                v63 = +[FedStatsLog logger];
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
                }

                v32 = 1;
                v22 = v115;
                v15 = v117;
                v99 = v123;
              }

              v33 = 0x278FF5000uLL;
            }

            else
            {
              v33 = 0x278FF5000uLL;
              v56 = +[FedStatsLog logger];
              v22 = v115;
              v15 = v117;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
              }

              v32 = 1;
              v99 = v123;
            }

            v13 = v113;
          }

          else
          {
            v33 = 0x278FF5000uLL;
            v105 = +[FedStatsLog logger];
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
            }

            v32 = 1;
            v22 = v115;
            v15 = v117;
            v99 = v123;
          }
        }

        else
        {
          v22 = v115;
          v15 = v117;
          v107 = v48;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
          }

          v32 = 0;
          v33 = 0x278FF5000;
          v99 = v123;
        }

        goto LABEL_107;
      }

      if (v30 != 2)
      {
        if (a7)
        {
          v97 = v22;
          v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported result type %lu in data encoder", objc_msgSend(v22, "resultType")];
          *a7 = [FedStatsError errorWithCode:900 description:v98];

          v22 = v97;
        }

        v29 = 0;
        goto LABEL_110;
      }

      v31 = +[FedStatsLog logger];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
      }

      if ([v127 recordBitVectors:v122 metadata:v126])
      {
        v32 = [v122 count];
      }

      else
      {
        v100 = +[FedStatsLog logger];
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
        }

        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = 0x278FF5000;
LABEL_107:
    v101 = [*(v33 + 3704) logger];
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsDataEncoder encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:];
    }

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
LABEL_110:

LABEL_111:
LABEL_112:

LABEL_113:
    goto LABEL_114;
  }

  if (a7)
  {
    [FedStatsError errorWithCode:400 description:@"encodeDataArrayAndRecord missing collection ID key"];
    *a7 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_114:

  v102 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v11 = MEMORY[0x277CBEA60];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v11 arrayWithObjects:&v20 count:1];
  v17 = [FedStatsDataEncoder encodeDataArrayAndRecord:v16 dataTypeContent:v14 metadata:v13 baseKey:v12 errorOut:a7, v20, v21];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 baseKey:(id)a5 errorOut:(id *)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v9 = MEMORY[0x277CBEA60];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 arrayWithObjects:&v17 count:1];
  v14 = [FedStatsDataEncoder encodeDataArrayAndRecord:v13 dataTypeContent:v11 baseKey:v10 errorOut:a6, v17, v18];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)mutateDataTypeContent:(id)a3 usingFieldValues:(id)a4 assetURLs:(id)a5 requiredFields:(id *)a6 assetNames:(id *)a7 error:(id *)a8
{
  v125 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v101 = a5;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v117 objects:v124 count:16];
  if (!v14)
  {
LABEL_153:

    v84 = v12;
    v85 = v12;
    v86 = v84;
    goto LABEL_155;
  }

  v15 = v14;
  v97 = *v118;
  v89 = v13;
  v90 = v12;
  while (2)
  {
    v16 = 0;
    v91 = v15;
LABEL_4:
    if (*v118 != v97)
    {
      objc_enumerationMutation(v13);
    }

    v17 = *(*(&v117 + 1) + 8 * v16);
    v18 = [v13 objectForKey:v17];
    v19 = [v18 mutableCopy];

    v20 = [v19 objectForKey:@"dataType"];
    v21 = [FedStatsDataTypeFactory dataTypeFromString:v20];

    v102 = v16;
    if (v21 != 3)
    {
      v39 = [v13 objectForKey:v17];
      [v12 setObject:v39 forKey:v17];

      goto LABEL_124;
    }

    v105 = v17;
    v22 = [v19 objectForKey:@"categoryFile"];
    v23 = v19;
    v98 = v22;
    if (v22)
    {
      v24 = v22;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v116 = 0;
        v40 = [FedStatsCategoricalTypeAssetSpecifier assetSpecifierWithKey:v24 requiredForCollectionKey:0 error:&v116];
        v41 = v116;
        v25 = v41;
        v99 = v40;
        if (!v40)
        {
          if (a8)
          {
            v104 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v98];
            *a8 = [FedStatsError errorWithCode:400 underlyingError:v25 description:?];
            v45 = 1;
          }

          else
          {
            v45 = 1;
          }

          goto LABEL_122;
        }

        if (v11)
        {
          v115 = v41;
          v42 = [v40 assetSpecifierValueForDataPoint:v11 error:&v115];
          v95 = v115;

          v103 = v42;
          if (v42)
          {
            if (v101)
            {
              v43 = [v101 objectForKey:v42];
              if (v43)
              {
                [v23 setObject:v43 forKey:@"categoryFile"];
                v92 = v23;
                v44 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v23];
                v12 = v90;
                [v90 setObject:v44 forKey:v105];
                v45 = 3;
              }

              else
              {
                v12 = v90;
                if (!a8)
                {
                  v45 = 1;
                  goto LABEL_42;
                }

                v92 = v23;
                v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"No URL found for asset name '%@'", v42];
                *a8 = [FedStatsError errorWithCode:400 description:v44];
                v45 = 1;
              }

              v23 = v92;
LABEL_42:

LABEL_151:
              v25 = v95;
              goto LABEL_121;
            }

            if (a7)
            {
              *a7 = [*a7 arrayByAddingObject:v42];
            }

            v45 = 3;
LABEL_44:
            v12 = v90;
            goto LABEL_151;
          }

          if (!a8)
          {
            v45 = 1;
            goto LABEL_44;
          }

          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v98];
          v25 = v95;
          *a8 = [FedStatsError errorWithCode:400 underlyingError:v95 description:v47];

          v45 = 1;
        }

        else
        {
          if (!a6)
          {
            v45 = 3;
            v12 = v90;
            goto LABEL_122;
          }

          v46 = *a6;
          v103 = [v40 parameters];
          *a6 = [v46 arrayByAddingObjectsFromArray:?];
          v45 = 3;
        }

        v12 = v90;
        goto LABEL_121;
      }
    }

    v25 = [v19 objectForKey:@"prefixSize"];
    v26 = v101;
    v95 = v25;
    v27 = v17;
    if (!v25)
    {
      goto LABEL_60;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v25 unsignedIntegerValue])
    {
      goto LABEL_60;
    }

    v28 = [v23 objectForKey:@"prefixTreeParameters"];
    v29 = [v28 mutableCopy];

    v99 = v29;
    v30 = [v29 objectForKey:@"fileName"];
    if (v30)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v114 = 0;
        v31 = [FedStatsCategoricalTypeAssetSpecifier assetSpecifierWithKey:v30 requiredForCollectionKey:0 error:&v114];
        v32 = v114;
        v33 = v32;
        v103 = v30;
        if (v31)
        {
          if (!v11)
          {
            if (!a6)
            {
              v12 = v90;
              goto LABEL_58;
            }

            v34 = v23;
            v48 = *a6;
            v35 = [v31 parameters];
            *a6 = [v48 arrayByAddingObjectsFromArray:v35];
            goto LABEL_55;
          }

          v34 = v23;
          v113 = v32;
          v35 = [v31 assetSpecifierValueForDataPoint:v11 error:&v113];
          v36 = v113;

          if (v35)
          {
            if (v101)
            {
              v37 = [v101 objectForKey:v35];
              if (v37)
              {
                v38 = v37;
                [v99 setObject:v37 forKey:@"fileName"];
                [v34 setObject:v99 forKey:@"prefixTreeParameters"];

                v33 = v36;
LABEL_56:

                v23 = v34;
                v30 = v103;
                v27 = v17;
LABEL_58:

                goto LABEL_59;
              }

              if (!a8)
              {
                goto LABEL_149;
              }

              v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"No URL found for asset name '%@'", v35];
              v50 = [FedStatsError errorWithCode:400 description:v49];
              goto LABEL_148;
            }

            if (a7)
            {
              *a7 = [*a7 arrayByAddingObject:v35];
            }

            v33 = v36;
LABEL_55:
            v12 = v90;
            goto LABEL_56;
          }

          if (a8)
          {
            v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v103];
            v50 = [FedStatsError errorWithCode:400 underlyingError:v36 description:v49];
LABEL_148:
            *a8 = v50;
          }
        }

        else
        {
          if (!a8)
          {
LABEL_150:

            v45 = 1;
            v13 = v89;
            v15 = v91;
            goto LABEL_151;
          }

          v34 = v23;
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot process asset specifier '%@'", v30];
          *a8 = [FedStatsError errorWithCode:400 underlyingError:v33 description:v35];
          v36 = v33;
        }

LABEL_149:

        v33 = v36;
        v23 = v34;
        goto LABEL_150;
      }
    }

LABEL_59:

    v25 = v95;
LABEL_60:
    v99 = [v23 objectForKey:@"filters"];
    if (!v99)
    {
      goto LABEL_83;
    }

    v93 = v23;
    v103 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v99, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v51 = v99;
    v52 = [v51 countByEnumeratingWithState:&v109 objects:v123 count:16];
    if (!v52)
    {
      goto LABEL_82;
    }

    v53 = v52;
    v54 = *v110;
    while (2)
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v110 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v109 + 1) + 8 * i);
        v57 = [v56 objectForKey:@"filterParameters"];
        v58 = [v56 objectForKey:@"filterVariant"];
        if (v58)
        {
          v59 = v57 == 0;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          if (v11)
          {
            if (v26)
            {
              v108 = 0;
              v60 = v11;
              v61 = [FedStatsCategoricalTypeFilterFactory forVariant:v58 mutateParameters:v57 usingFieldValues:v11 assetURLs:v26 error:&v108];
              v62 = v108;
              if (v61)
              {
                v121[0] = @"filterVariant";
                v121[1] = @"filterParameters";
                v122[0] = v58;
                v122[1] = v61;
                v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
                [v103 addObject:v63];

                v26 = v101;
                v11 = v60;
LABEL_79:

                v27 = v105;
                goto LABEL_80;
              }

              if (a8)
              {
                *a8 = [FedStatsError errorWithCode:900 underlyingError:v62 description:@"Cannot modify specifiers with field values in filter variant"];
              }

              v11 = v60;
              v12 = v90;
              v25 = v95;
LABEL_99:

              v45 = 1;
              v23 = v93;
              goto LABEL_120;
            }

            v66 = [FedStatsCategoricalTypeFilterFactory forVariant:v58 assetNamesInParameters:v57 usingFieldValues:v11];
            if (v66)
            {
              v62 = v66;
              v65 = a7;
              goto LABEL_78;
            }

            v12 = v90;
            v25 = v95;
            if (!a8)
            {
              goto LABEL_99;
            }

            v70 = @"Cannot extract asset names using field values from filter parameters";
          }

          else
          {
            v64 = [FedStatsCategoricalTypeFilterFactory forVariant:v58 requiredFieldsInParameters:v57];
            if (v64)
            {
              v62 = v64;
              v65 = a6;
LABEL_78:
              *v65 = [*v65 arrayByAddingObjectsFromArray:v62];
              goto LABEL_79;
            }

            v12 = v90;
            v25 = v95;
            if (!a8)
            {
              goto LABEL_99;
            }

            v70 = @"Cannot extract required fields from filter parameters";
          }

          *a8 = [FedStatsError errorWithCode:900 description:v70];
          goto LABEL_99;
        }

LABEL_80:
      }

      v53 = [v51 countByEnumeratingWithState:&v109 objects:v123 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }

LABEL_82:

    v23 = v93;
    [v93 setObject:v103 forKey:@"filters"];

    v12 = v90;
    v25 = v95;
LABEL_83:
    v103 = [v23 objectForKey:@"tokenizerVariant"];
    if (!v103)
    {
      goto LABEL_105;
    }

    v51 = [v23 objectForKey:@"tokenizerParameters"];
    if (!v51)
    {
      goto LABEL_104;
    }

    if (!v11)
    {
      v71 = [FedStatsCategoricalTypeTokenizerFactory forVariant:v103 requiredFieldsInParameters:v51];
      if (v71)
      {
        v69 = v71;
        v72 = a6;
LABEL_102:
        *v72 = [*v72 arrayByAddingObjectsFromArray:v69];
        v12 = v90;
LABEL_103:

        v25 = v95;
LABEL_104:

LABEL_105:
        v51 = [v23 objectForKey:@"preEncodingVariant"];
        if (v51)
        {
          v74 = [v23 objectForKey:@"preEncodingParameters"];
          if (v74)
          {
            if (v11)
            {
              if (v26)
              {
                v75 = v23;
                v106 = 0;
                v76 = [FedStatsCategoricalTypePreEncoderFactory forVariant:v51 mutateParameters:v74 usingFieldValues:v11 assetURLs:v26 error:&v106];
                v77 = v106;
                if (v76)
                {
                  [v75 setObject:v76 forKey:@"preEncodingParameters"];

                  v23 = v75;
                  goto LABEL_116;
                }

                if (a8)
                {
                  *a8 = [FedStatsError errorWithCode:900 underlyingError:v77 description:@"Cannot modify specifiers with field values in pre-encoder variant"];
                }

                v45 = 1;
                v23 = v75;
LABEL_145:
                v25 = v95;
LABEL_119:

                goto LABEL_120;
              }

              v80 = [FedStatsCategoricalTypePreEncoderFactory forVariant:v51 assetNamesInParameters:v74 usingFieldValues:v11];
              if (v80)
              {
                v77 = v80;
                v79 = a7;
                goto LABEL_115;
              }

              if (a8)
              {
                v82 = @"Cannot extract asset names using field values from pre-encoding parameters";
LABEL_143:
                *a8 = [FedStatsError errorWithCode:900 description:v82];
              }

              goto LABEL_144;
            }

            v78 = [FedStatsCategoricalTypePreEncoderFactory forVariant:v51 requiredFieldsInParameters:v74];
            if (!v78)
            {
              if (a8)
              {
                v82 = @"Cannot extract required fields from pre-encoding parameters";
                goto LABEL_143;
              }

LABEL_144:
              v45 = 1;
              goto LABEL_145;
            }

            v77 = v78;
            v79 = a6;
LABEL_115:
            *v79 = [*v79 arrayByAddingObjectsFromArray:v77];
            v12 = v90;
LABEL_116:

            v25 = v95;
          }
        }

        v74 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v23];
        [v12 setObject:v74 forKey:v27];
        v45 = 0;
        goto LABEL_119;
      }

      if (a8)
      {
        v81 = @"Cannot extract required fields from tokenizer parameters";
        goto LABEL_138;
      }

LABEL_139:
      v45 = 1;
      goto LABEL_140;
    }

    if (!v26)
    {
      v73 = [FedStatsCategoricalTypeTokenizerFactory forVariant:v103 assetNamesInParameters:v51 usingFieldValues:v11];
      if (v73)
      {
        v69 = v73;
        v72 = a7;
        goto LABEL_102;
      }

      if (a8)
      {
        v81 = @"Cannot extract asset names using field values from tokenizer parameters";
LABEL_138:
        *a8 = [FedStatsError errorWithCode:900 description:v81];
      }

      goto LABEL_139;
    }

    v67 = v23;
    v107 = 0;
    v68 = [FedStatsCategoricalTypeTokenizerFactory forVariant:v103 mutateParameters:v51 usingFieldValues:v11 assetURLs:v26 error:&v107];
    v69 = v107;
    if (v68)
    {
      [v67 setObject:v68 forKey:@"tokenizerParameters"];

      v23 = v67;
      goto LABEL_103;
    }

    if (a8)
    {
      *a8 = [FedStatsError errorWithCode:900 underlyingError:v69 description:@"Cannot modify specifiers with field values in tokenizer variant"];
    }

    v45 = 1;
    v23 = v67;
LABEL_140:
    v25 = v95;
LABEL_120:

    v13 = v89;
    v15 = v91;
LABEL_121:

LABEL_122:
    if (v45 == 3 || !v45)
    {
LABEL_124:
      v16 = v102 + 1;
      if (v102 + 1 == v15)
      {
        v83 = [v13 countByEnumeratingWithState:&v117 objects:v124 count:16];
        v15 = v83;
        if (!v83)
        {
          goto LABEL_153;
        }

        continue;
      }

      goto LABEL_4;
    }

    break;
  }

  v85 = v12;
  v86 = 0;
LABEL_155:

  v87 = *MEMORY[0x277D85DE8];

  return v86;
}

+ (id)extractAssetNamesFrom:(id)a3 usingFieldValues:(id)a4
{
  v10 = MEMORY[0x277CBEBF8];
  v4 = [FedStatsDataEncoder mutateDataTypeContent:a3 usingFieldValues:a4 assetURLs:0 requiredFields:0 assetNames:&v10 error:0];
  v5 = v10;
  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingSelector:sel_localizedCompare_];

  return v8;
}

+ (id)extractRequiredFieldsFrom:(id)a3
{
  v9 = MEMORY[0x277CBEBF8];
  v3 = [FedStatsDataEncoder mutateDataTypeContent:a3 usingFieldValues:0 assetURLs:0 requiredFields:&v9 assetNames:0 error:0];
  v4 = v9;
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingSelector:sel_localizedCompare_];

  return v7;
}

+ (id)defaultDataPointForDataTypeContent:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [v10 objectForKey:@"dataType"];
        v12 = [FedStatsDataTypeFactory dataTypeFromString:v11];

        if (v12 != 99)
        {
          v13 = [MEMORY[0x277CBEB68] null];
          [v16 setObject:v13 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord with baseKey = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:(void *)a1 dataTypeContent:(NSObject *)a2 metadata:baseKey:errorOut:.cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_24AAFE000, a2, OS_LOG_TYPE_DEBUG, "Encoded %lu data", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord float recorder metadata = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord failed to record vector for key '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord norm recorder metadata = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord fail to record histogram norm for key '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord norm recorded successfully for key '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord cannot create norm recorder for key '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_24AAFE000, v1, OS_LOG_TYPE_ERROR, "encodeDataArrayAndRecord cannot record histogram norm for key '%@'. Error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord skipping to record histogram norm for key '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.13()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord multi-hot recorder metadata = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.14()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24AAFE000, v0, v1, "encodeDataArrayAndRecord failed to record bit vectors for key '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:dataTypeContent:metadata:baseKey:errorOut:.cold.15()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24AAFE000, v0, v1, "Recorded %lu data", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end