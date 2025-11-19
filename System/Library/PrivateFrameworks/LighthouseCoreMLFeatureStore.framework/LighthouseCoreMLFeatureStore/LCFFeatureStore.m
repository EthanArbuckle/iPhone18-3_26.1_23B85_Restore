@interface LCFFeatureStore
- (BOOL)pruneFrom:(id)a3 endDate:(id)a4 option:(unint64_t)a5;
- (BOOL)updateFeatureSet:(id)a3;
- (BOOL)updateFeatureSet:(id)a3 featureVestion:(id)a4 featureValues:(id)a5;
- (id)featureProviderFromfeatureSet:(id)a3 featureNames:(id)a4;
- (id)getFeatureSets:(id)a3 startDate:(id)a4 endDate:(id)a5 option:(unint64_t)a6;
- (id)getFeatureVector:(id)a3 atTime:(id)a4 option:(unint64_t)a5;
- (id)getFeatureVectorWithStoreEvents:(id)a3 storeEventsInReversedOrder:(id)a4 option:(unint64_t)a5;
- (id)getFeatureVectors:(id)a3 startDate:(id)a4 endDate:(id)a5 option:(unint64_t)a6;
- (id)getMultiArrayFeatureVectors:(id)a3 vectorName:(id)a4 srcLabelName:(id)a5 destLabelName:(id)a6 startDate:(id)a7 endDate:(id)a8 option:(unint64_t)a9;
- (id)init:(id)a3 url:(id)a4 useSqlite:(BOOL)a5;
@end

@implementation LCFFeatureStore

- (id)init:(id)a3 url:(id)a4 useSqlite:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = LCFFeatureStore;
  v11 = [(LCFFeatureStore *)&v21 init];
  if (v11)
  {
    LCFLoggingUtilsInit();
    objc_storeStrong(&v11->_featureStoreKey, a3);
    v11->_useSqlite = v5;
    if (v5)
    {
      v12 = [[LCFDatabaseConnection alloc] init:v10 databaseName:v9 tableName:@"featureStore"];
      dbFeatureStore = v11->_dbFeatureStore;
      v11->_dbFeatureStore = v12;
    }

    else
    {
      v14 = [LCFBiomeManager alloc];
      dbFeatureStore = BiomeLibrary();
      v15 = [dbFeatureStore MLSE];
      v16 = [v15 ShareSheet];
      v17 = [v16 LabeledDataStore];
      v18 = [(LCFBiomeManager *)v14 init:v17];
      biomeManagerLabeledDataStore = v11->_biomeManagerLabeledDataStore;
      v11->_biomeManagerLabeledDataStore = v18;
    }
  }

  return v11;
}

- (BOOL)updateFeatureSet:(id)a3
{
  if (self->_useSqlite)
  {
    dbFeatureStore = self->_dbFeatureStore;

    return [(LCFDatabaseConnection *)dbFeatureStore writeFeatures:a3];
  }

  else
  {
    biomeManagerLabeledDataStore = self->_biomeManagerLabeledDataStore;
    v7 = [LCFFeatureConverter fromFeatureSetToLabeledData:a3];
    LOBYTE(biomeManagerLabeledDataStore) = [(LCFBiomeManager *)biomeManagerLabeledDataStore writeData:v7];

    return biomeManagerLabeledDataStore;
  }
}

- (BOOL)updateFeatureSet:(id)a3 featureVestion:(id)a4 featureValues:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [LCFFeatureSet alloc];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [(LCFFeatureSet *)v11 initWithIdentifier:v10 featureVersion:v9 timestamp:v12 featureValues:v8];

  LOBYTE(v9) = [(LCFFeatureStore *)self updateFeatureSet:v13];
  return v9;
}

- (id)getFeatureVector:(id)a3 atTime:(id)a4 option:(unint64_t)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (self->_useSqlite)
  {
    v10 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:a4 endDate:0 reversed:1];
    v11 = [(LCFFeatureStore *)self getFeatureVectorWithStoreEvents:v9 storeEventsInReversedOrder:v10 option:a5];
  }

  else
  {
    v28 = v8;
    v27 = self;
    v12 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:a4 endDate:0 reversed:1];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
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
          v20 = [v19 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v22 = [v19 objectAtIndexedSubscript:1];
            v23 = [v19 objectAtIndexedSubscript:0];
            v24 = [LCFFeatureConverter fromLabeledDataBiomeFeatureStore:v22 timestamp:v23];
            [v13 addObject:v24];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v9 = v28;
    v11 = [(LCFFeatureStore *)v27 getFeatureVectorWithStoreEvents:v28 storeEventsInReversedOrder:v13 option:a5];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getFeatureVectorWithStoreEvents:(id)a3 storeEventsInReversedOrder:(id)a4 option:(unint64_t)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v61 = v6;
  v8 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v6];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v7;
  v64 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v64)
  {
    v63 = *v80;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v80 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v65 = v10;
      v11 = *(*(&v79 + 1) + 8 * v10);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v12 = [v11 featureValues];
      v13 = [v12 allKeys];

      v14 = [v13 countByEnumeratingWithState:&v75 objects:v87 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v76;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v76 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v75 + 1) + 8 * i);
            v19 = [v11 featureValues];
            v20 = [v19 objectForKeyedSubscript:v18];

            if (v18)
            {
              if ([v8 containsObject:v18])
              {
                v21 = [v9 valueForKey:v18];

                if (!v21)
                {
                  [v9 setObject:v20 forKeyedSubscript:v18];
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v75 objects:v87 count:16];
        }

        while (v15);
      }

      v22 = objc_alloc(MEMORY[0x277CCA940]);
      v23 = [v9 allKeys];
      v24 = [v22 initWithArray:v23];
      v25 = [v8 isEqual:v24];

      if (v25)
      {
        break;
      }

      v10 = v65 + 1;
      if (v65 + 1 == v64)
      {
        v64 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
        if (!v64)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }
    }

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v34 = v9;
    v35 = [v34 countByEnumeratingWithState:&v67 objects:v83 count:16];
    if (v35)
    {
      v36 = v35;
      v66 = *v68;
LABEL_35:
      v37 = 0;
      while (1)
      {
        if (*v68 != v66)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v67 + 1) + 8 * v37);
        v39 = [v34 objectForKeyedSubscript:v38];
        v40 = [v39 intValue];

        if (v40)
        {
          v41 = MEMORY[0x277CBFEF8];
          v42 = [v39 intValue];
        }

        else
        {
          v43 = [v39 BOOLValue];

          if (v43)
          {
            v41 = MEMORY[0x277CBFEF8];
            v42 = [v39 BOOLValue];
          }

          else
          {
            v47 = [v39 doubleValue];

            if (v47)
            {
              v48 = MEMORY[0x277CBFEF8];
              v44 = [v39 doubleValue];
              [v44 doubleValue];
              v45 = [v48 featureValueWithDouble:?];
              goto LABEL_43;
            }

            v49 = [v39 timeBucketValue];

            if (!v49)
            {
              v50 = [v39 doubleArray];

              if (v50)
              {
                v51 = MEMORY[0x277CBFF48];
                v52 = [v39 doubleArray];
                v44 = [v51 doubleVectorWithValues:v52];

                v45 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v44];
              }

              else
              {
                v53 = [v39 stringValue];

                if (!v53)
                {
LABEL_56:
                  if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
                  {
                    [LCFFeatureStore getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:];
                  }

                  v27 = 0;
                  goto LABEL_59;
                }

                v54 = MEMORY[0x277CBFEF8];
                v44 = [v39 stringValue];
                v45 = [v54 featureValueWithString:v44];
              }

              goto LABEL_43;
            }

            v41 = MEMORY[0x277CBFEF8];
            v42 = [v39 timeBucketValue];
          }
        }

        v44 = v42;
        v45 = [v41 featureValueWithInt64:{objc_msgSend(v42, "longValue")}];
LABEL_43:
        v46 = v45;

        if (!v46)
        {
          goto LABEL_56;
        }

        [v26 setObject:v46 forKeyedSubscript:v38];

        if (v36 == ++v37)
        {
          v55 = [v34 countByEnumeratingWithState:&v67 objects:v83 count:16];
          v36 = v55;
          if (v55)
          {
            goto LABEL_35;
          }

          break;
        }
      }
    }

    v56 = [LCFCoreMLFeatureProvider alloc];
    featureStoreKey = self->_featureStoreKey;
    v34 = [obj objectAtIndexedSubscript:0];
    v39 = [v34 timestamp];
    v27 = [(LCFCoreMLFeatureProvider *)v56 init:featureStoreKey timestamp:v39 featureValues:v26];
LABEL_59:
  }

  else
  {
LABEL_20:

    if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
    {
      [LCFFeatureStore getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:];
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v26 = v61;
    v27 = [v26 countByEnumeratingWithState:&v71 objects:v86 count:16];
    if (v27)
    {
      v28 = *v72;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v72 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v71 + 1) + 8 * j);
          v31 = [v9 allKeys];
          v32 = [v31 containsObject:v30];

          if ((v32 & 1) == 0)
          {
            v33 = LCFLogFeatureStore;
            if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v30;
              _os_log_error_impl(&dword_255F22000, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v71 objects:v86 count:16];
      }

      while (v27);
    }
  }

  v58 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)getFeatureSets:(id)a3 startDate:(id)a4 endDate:(id)a5 option:(unint64_t)a6
{
  v6 = a6;
  v70 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = v11;
  v43 = v10;
  if (self->_useSqlite)
  {
    v13 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:v10 endDate:v11 reversed:0];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v63;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 addObject:*(*(&v62 + 1) + 8 * i)];
        }

        v15 = [v13 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v13 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:v10 endDate:v11 reversed:0];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v18 = [v13 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v18)
    {
      v19 = v18;
      v48 = v6;
      v20 = *v59;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v58 + 1) + 8 * j);
          v23 = [v22 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v25 = [v22 objectAtIndexedSubscript:1];
            v26 = [v22 objectAtIndexedSubscript:0];
            v27 = [LCFFeatureConverter fromLabeledDataBiomeFeatureStore:v25 timestamp:v26];
            [v12 addObject:v27];
          }
        }

        v19 = [v13 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v19);
      v6 = v48;
    }
  }

  if ((v6 & 4) != 0)
  {
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v44];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v12;
    v28 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v28)
    {
      v29 = v28;
      v47 = *v55;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v55 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v54 + 1) + 8 * k);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v32 = v49;
          v33 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v51;
            while (2)
            {
              for (m = 0; m != v34; ++m)
              {
                if (*v51 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v50 + 1) + 8 * m);
                v38 = [v31 featureValues];
                v39 = [v38 allKeys];
                LODWORD(v37) = [v39 containsObject:v37];

                if (!v37)
                {

                  goto LABEL_36;
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
              if (v34)
              {
                continue;
              }

              break;
            }
          }

          [v45 addObject:v31];
LABEL_36:
          ;
        }

        v29 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v29);
    }

    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v45];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)featureProviderFromfeatureSet:(id)a3 featureNames:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v39 + 1) + 8 * v12);
      v14 = [v5 featureValues];
      v15 = [v14 objectForKeyedSubscript:v13];

      v16 = [v15 intValue];

      if (v16)
      {
        v17 = MEMORY[0x277CBFEF8];
        v18 = [v15 intValue];
      }

      else
      {
        v19 = [v15 BOOLValue];

        if (v19)
        {
          v17 = MEMORY[0x277CBFEF8];
          v18 = [v15 BOOLValue];
        }

        else
        {
          v23 = [v15 doubleValue];

          if (v23)
          {
            v24 = MEMORY[0x277CBFEF8];
            v20 = [v15 doubleValue];
            [v20 doubleValue];
            v21 = [v24 featureValueWithDouble:?];
            goto LABEL_11;
          }

          v25 = [v15 timeBucketValue];

          if (!v25)
          {
            v26 = [v15 doubleArray];

            if (v26)
            {
              v27 = MEMORY[0x277CBFF48];
              v28 = [v15 doubleArray];
              v20 = [v27 doubleVectorWithValues:v28];

              v21 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v20];
            }

            else
            {
              v29 = [v15 stringValue];

              if (!v29)
              {
LABEL_24:
                if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
                {
                  [LCFFeatureStore getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:];
                }

                v35 = 0;
                v34 = v8;
                goto LABEL_27;
              }

              v30 = MEMORY[0x277CBFEF8];
              v20 = [v15 stringValue];
              v21 = [v30 featureValueWithString:v20];
            }

            goto LABEL_11;
          }

          v17 = MEMORY[0x277CBFEF8];
          v18 = [v15 timeBucketValue];
        }
      }

      v20 = v18;
      v21 = [v17 featureValueWithInt64:{objc_msgSend(v18, "longValue")}];
LABEL_11:
      v22 = v21;

      if (!v22)
      {
        goto LABEL_24;
      }

      [v7 setObject:v22 forKeyedSubscript:v13];

      if (v10 == ++v12)
      {
        v31 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
        v10 = v31;
        if (v31)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v32 = [LCFCoreMLFeatureProvider alloc];
  featureStoreKey = self->_featureStoreKey;
  v34 = [v5 timestamp];
  v35 = [(LCFCoreMLFeatureProvider *)v32 init:featureStoreKey timestamp:v34 featureValues:v7];
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)getFeatureVectors:(id)a3 startDate:(id)a4 endDate:(id)a5 option:(unint64_t)a6
{
  v109 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = v11;
  v71 = v10;
  v78 = self;
  if (self->_useSqlite)
  {
    v12 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:v10 endDate:v11 reversed:0];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v100 objects:v108 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = v9;
      v16 = *v101;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v101 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v100 + 1) + 8 * i);
          v19 = MEMORY[0x277CCABB0];
          v20 = [v18 timestamp];
          [v20 timeIntervalSinceReferenceDate];
          v21 = [v19 numberWithDouble:?];
          v22 = [v21 stringValue];
          [v81 setValue:v18 forKey:v22];
        }

        v14 = [v12 countByEnumeratingWithState:&v100 objects:v108 count:16];
      }

      while (v14);
      v9 = v15;
    }
  }

  else
  {
    v72 = v9;
    v12 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:v10 endDate:v11 reversed:0];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v23 = [v12 countByEnumeratingWithState:&v96 objects:v107 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v97;
      v26 = 0x277CF1000uLL;
      do
      {
        v27 = 0;
        obj = v24;
        do
        {
          if (*v97 != v25)
          {
            objc_enumerationMutation(v12);
          }

          v28 = *(*(&v96 + 1) + 8 * v27);
          v29 = [v28 objectAtIndexedSubscript:1];
          v30 = *(v26 + 736);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v32 = [v28 objectAtIndexedSubscript:1];
            v33 = [v28 objectAtIndexedSubscript:0];
            v34 = [LCFFeatureConverter fromLabeledDataBiomeFeatureStore:v32 timestamp:v33];
            v35 = v12;
            v36 = v26;
            v37 = MEMORY[0x277CCABB0];
            v38 = [v28 objectAtIndexedSubscript:0];
            [v38 timeIntervalSinceReferenceDate];
            v39 = [v37 numberWithDouble:?];
            v40 = [v39 stringValue];
            [v81 setValue:v34 forKey:v40];

            v26 = v36;
            v12 = v35;
            v24 = obj;
          }

          ++v27;
        }

        while (v24 != v27);
        v24 = [v12 countByEnumeratingWithState:&v96 objects:v107 count:16];
      }

      while (v24);
    }

    v9 = v72;
  }

  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((a6 & 4) != 0)
  {
    v43 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v9];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obja = [v81 allValues];
    v77 = [obja countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v77)
    {
      v73 = v9;
      v75 = *v93;
      do
      {
        v53 = 0;
        do
        {
          if (*v93 != v75)
          {
            objc_enumerationMutation(obja);
          }

          v54 = *(*(&v92 + 1) + 8 * v53);
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v55 = v43;
          v56 = v43;
          v57 = [v56 countByEnumeratingWithState:&v88 objects:v105 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v89;
            while (2)
            {
              for (j = 0; j != v58; ++j)
              {
                if (*v89 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v88 + 1) + 8 * j);
                v62 = [v54 featureValues];
                v63 = [v62 allKeys];
                LODWORD(v61) = [v63 containsObject:v61];

                if (!v61)
                {
                  v64 = v56;
                  goto LABEL_47;
                }
              }

              v58 = [v56 countByEnumeratingWithState:&v88 objects:v105 count:16];
              if (v58)
              {
                continue;
              }

              break;
            }
          }

          v64 = [(LCFFeatureStore *)v78 featureProviderFromfeatureSet:v54 featureNames:v73];
          if (v64)
          {
            [v74 addObject:v64];
          }

          else
          {
            v65 = LCFLogFeatureStore;
            if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
            {
              [LCFFeatureStore getFeatureVectors:v87 startDate:v65 endDate:? option:?];
            }
          }

LABEL_47:
          v43 = v55;

          ++v53;
        }

        while (v53 != v77);
        v66 = [obja countByEnumeratingWithState:&v92 objects:v106 count:16];
        v77 = v66;
      }

      while (v66);
      v43 = v56;
      v9 = v73;
    }
  }

  else
  {
    v41 = [v81 allKeys];
    v42 = [v41 sortedArrayUsingFunction:doubleSort context:0];

    obja = objc_alloc_init(MEMORY[0x277CBEB18]);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v43 = v42;
    v44 = [v43 countByEnumeratingWithState:&v82 objects:v104 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v83;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v83 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [v81 objectForKeyedSubscript:*(*(&v82 + 1) + 8 * k)];
          [obja addObject:v48];

          v49 = [obja reverseObjectEnumerator];
          v50 = [v49 allObjects];

          v51 = [(LCFFeatureStore *)v78 getFeatureVectorWithStoreEvents:v9 storeEventsInReversedOrder:v50 option:a6];
          if (v51)
          {
            v52 = [LCFCoreMLFeatureProvider fromMLProvider:v51];
            [v74 addObject:v52];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v82 objects:v104 count:16];
      }

      while (v45);
    }
  }

  v67 = [[LCFCoreMLBatchProvider alloc] init:v78->_featureStoreKey featureProviders:v74];
  v68 = *MEMORY[0x277D85DE8];

  return v67;
}

- (id)getMultiArrayFeatureVectors:(id)a3 vectorName:(id)a4 srcLabelName:(id)a5 destLabelName:(id)a6 startDate:(id)a7 endDate:(id)a8 option:(unint64_t)a9
{
  v30 = *MEMORY[0x277D85DE8];
  v29 = a5;
  v15 = MEMORY[0x277CBEA60];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v15 arrayWithObjects:&v29 count:1];
  v23 = [v21 arrayByAddingObjectsFromArray:{v22, v29, v30}];

  v24 = [(LCFFeatureStore *)self getFeatureVectors:v23 startDate:v17 endDate:v16 option:a9];

  v25 = [LCFCoreMLBatchProvider fromMLProvider:v24];
  v26 = [LCFCoreMLFeatureProviderUtils toMultiArrayTypeBatchProvider:v25 srcFeatureNames:v21 srcLabelName:v19 destFeatureName:v20 destLabelName:v18];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)pruneFrom:(id)a3 endDate:(id)a4 option:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (self->_useSqlite)
  {
    v9 = [(LCFDatabaseConnection *)self->_dbFeatureStore pruneFrom:v7 endDate:v8];
  }

  else
  {
    if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
    {
      [LCFFeatureStore pruneFrom:endDate:option:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getFeatureVectors:(os_log_t)log startDate:endDate:option:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_255F22000, log, OS_LOG_TYPE_ERROR, "featureProvider could not be construcd", buf, 2u);
}

@end