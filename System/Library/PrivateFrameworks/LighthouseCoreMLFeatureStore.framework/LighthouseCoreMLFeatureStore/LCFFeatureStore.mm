@interface LCFFeatureStore
- (BOOL)pruneFrom:(id)from endDate:(id)date option:(unint64_t)option;
- (BOOL)updateFeatureSet:(id)set;
- (BOOL)updateFeatureSet:(id)set featureVestion:(id)vestion featureValues:(id)values;
- (id)featureProviderFromfeatureSet:(id)set featureNames:(id)names;
- (id)getFeatureSets:(id)sets startDate:(id)date endDate:(id)endDate option:(unint64_t)option;
- (id)getFeatureVector:(id)vector atTime:(id)time option:(unint64_t)option;
- (id)getFeatureVectorWithStoreEvents:(id)events storeEventsInReversedOrder:(id)order option:(unint64_t)option;
- (id)getFeatureVectors:(id)vectors startDate:(id)date endDate:(id)endDate option:(unint64_t)option;
- (id)getMultiArrayFeatureVectors:(id)vectors vectorName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate option:(unint64_t)option;
- (id)init:(id)init url:(id)url useSqlite:(BOOL)sqlite;
@end

@implementation LCFFeatureStore

- (id)init:(id)init url:(id)url useSqlite:(BOOL)sqlite
{
  sqliteCopy = sqlite;
  initCopy = init;
  urlCopy = url;
  v21.receiver = self;
  v21.super_class = LCFFeatureStore;
  v11 = [(LCFFeatureStore *)&v21 init];
  if (v11)
  {
    LCFLoggingUtilsInit();
    objc_storeStrong(&v11->_featureStoreKey, init);
    v11->_useSqlite = sqliteCopy;
    if (sqliteCopy)
    {
      v12 = [[LCFDatabaseConnection alloc] init:urlCopy databaseName:initCopy tableName:@"featureStore"];
      dbFeatureStore = v11->_dbFeatureStore;
      v11->_dbFeatureStore = v12;
    }

    else
    {
      v14 = [LCFBiomeManager alloc];
      dbFeatureStore = BiomeLibrary();
      mLSE = [dbFeatureStore MLSE];
      shareSheet = [mLSE ShareSheet];
      labeledDataStore = [shareSheet LabeledDataStore];
      v18 = [(LCFBiomeManager *)v14 init:labeledDataStore];
      biomeManagerLabeledDataStore = v11->_biomeManagerLabeledDataStore;
      v11->_biomeManagerLabeledDataStore = v18;
    }
  }

  return v11;
}

- (BOOL)updateFeatureSet:(id)set
{
  if (self->_useSqlite)
  {
    dbFeatureStore = self->_dbFeatureStore;

    return [(LCFDatabaseConnection *)dbFeatureStore writeFeatures:set];
  }

  else
  {
    biomeManagerLabeledDataStore = self->_biomeManagerLabeledDataStore;
    v7 = [LCFFeatureConverter fromFeatureSetToLabeledData:set];
    LOBYTE(biomeManagerLabeledDataStore) = [(LCFBiomeManager *)biomeManagerLabeledDataStore writeData:v7];

    return biomeManagerLabeledDataStore;
  }
}

- (BOOL)updateFeatureSet:(id)set featureVestion:(id)vestion featureValues:(id)values
{
  valuesCopy = values;
  vestionCopy = vestion;
  setCopy = set;
  v11 = [LCFFeatureSet alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [(LCFFeatureSet *)v11 initWithIdentifier:setCopy featureVersion:vestionCopy timestamp:date featureValues:valuesCopy];

  LOBYTE(vestionCopy) = [(LCFFeatureStore *)self updateFeatureSet:v13];
  return vestionCopy;
}

- (id)getFeatureVector:(id)vector atTime:(id)time option:(unint64_t)option
{
  v34 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v9 = vectorCopy;
  if (self->_useSqlite)
  {
    v10 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:time endDate:0 reversed:1];
    v11 = [(LCFFeatureStore *)self getFeatureVectorWithStoreEvents:v9 storeEventsInReversedOrder:v10 option:option];
  }

  else
  {
    v28 = vectorCopy;
    selfCopy = self;
    v12 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:time endDate:0 reversed:1];
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
    v11 = [(LCFFeatureStore *)selfCopy getFeatureVectorWithStoreEvents:v28 storeEventsInReversedOrder:v13 option:option];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getFeatureVectorWithStoreEvents:(id)events storeEventsInReversedOrder:(id)order option:(unint64_t)option
{
  v89 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  orderCopy = order;
  v61 = eventsCopy;
  v8 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:eventsCopy];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = orderCopy;
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
      featureValues = [v11 featureValues];
      allKeys = [featureValues allKeys];

      v14 = [allKeys countByEnumeratingWithState:&v75 objects:v87 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v18 = *(*(&v75 + 1) + 8 * i);
            featureValues2 = [v11 featureValues];
            v20 = [featureValues2 objectForKeyedSubscript:v18];

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

          v15 = [allKeys countByEnumeratingWithState:&v75 objects:v87 count:16];
        }

        while (v15);
      }

      v22 = objc_alloc(MEMORY[0x277CCA940]);
      allKeys2 = [v9 allKeys];
      v24 = [v22 initWithArray:allKeys2];
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
        timestamp = [v34 objectForKeyedSubscript:v38];
        intValue = [timestamp intValue];

        if (intValue)
        {
          v41 = MEMORY[0x277CBFEF8];
          intValue2 = [timestamp intValue];
        }

        else
        {
          bOOLValue = [timestamp BOOLValue];

          if (bOOLValue)
          {
            v41 = MEMORY[0x277CBFEF8];
            intValue2 = [timestamp BOOLValue];
          }

          else
          {
            doubleValue = [timestamp doubleValue];

            if (doubleValue)
            {
              v48 = MEMORY[0x277CBFEF8];
              doubleValue2 = [timestamp doubleValue];
              [doubleValue2 doubleValue];
              v45 = [v48 featureValueWithDouble:?];
              goto LABEL_43;
            }

            timeBucketValue = [timestamp timeBucketValue];

            if (!timeBucketValue)
            {
              doubleArray = [timestamp doubleArray];

              if (doubleArray)
              {
                v51 = MEMORY[0x277CBFF48];
                doubleArray2 = [timestamp doubleArray];
                doubleValue2 = [v51 doubleVectorWithValues:doubleArray2];

                v45 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:doubleValue2];
              }

              else
              {
                stringValue = [timestamp stringValue];

                if (!stringValue)
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
                doubleValue2 = [timestamp stringValue];
                v45 = [v54 featureValueWithString:doubleValue2];
              }

              goto LABEL_43;
            }

            v41 = MEMORY[0x277CBFEF8];
            intValue2 = [timestamp timeBucketValue];
          }
        }

        doubleValue2 = intValue2;
        v45 = [v41 featureValueWithInt64:{objc_msgSend(intValue2, "longValue")}];
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
    timestamp = [v34 timestamp];
    v27 = [(LCFCoreMLFeatureProvider *)v56 init:featureStoreKey timestamp:timestamp featureValues:v26];
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
          allKeys3 = [v9 allKeys];
          v32 = [allKeys3 containsObject:v30];

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

- (id)getFeatureSets:(id)sets startDate:(id)date endDate:(id)endDate option:(unint64_t)option
{
  optionCopy = option;
  v70 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  dateCopy = date;
  endDateCopy = endDate;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = endDateCopy;
  v43 = dateCopy;
  if (self->_useSqlite)
  {
    v13 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:dateCopy endDate:endDateCopy reversed:0];
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
    v13 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:dateCopy endDate:endDateCopy reversed:0];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v18 = [v13 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v18)
    {
      v19 = v18;
      v48 = optionCopy;
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
      optionCopy = v48;
    }
  }

  if ((optionCopy & 4) != 0)
  {
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:setsCopy];
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
                featureValues = [v31 featureValues];
                allKeys = [featureValues allKeys];
                LODWORD(v37) = [allKeys containsObject:v37];

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

- (id)featureProviderFromfeatureSet:(id)set featureNames:(id)names
{
  v44 = *MEMORY[0x277D85DE8];
  setCopy = set;
  namesCopy = names;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = namesCopy;
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
      featureValues = [setCopy featureValues];
      v15 = [featureValues objectForKeyedSubscript:v13];

      intValue = [v15 intValue];

      if (intValue)
      {
        v17 = MEMORY[0x277CBFEF8];
        intValue2 = [v15 intValue];
      }

      else
      {
        bOOLValue = [v15 BOOLValue];

        if (bOOLValue)
        {
          v17 = MEMORY[0x277CBFEF8];
          intValue2 = [v15 BOOLValue];
        }

        else
        {
          doubleValue = [v15 doubleValue];

          if (doubleValue)
          {
            v24 = MEMORY[0x277CBFEF8];
            doubleValue2 = [v15 doubleValue];
            [doubleValue2 doubleValue];
            v21 = [v24 featureValueWithDouble:?];
            goto LABEL_11;
          }

          timeBucketValue = [v15 timeBucketValue];

          if (!timeBucketValue)
          {
            doubleArray = [v15 doubleArray];

            if (doubleArray)
            {
              v27 = MEMORY[0x277CBFF48];
              doubleArray2 = [v15 doubleArray];
              doubleValue2 = [v27 doubleVectorWithValues:doubleArray2];

              v21 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:doubleValue2];
            }

            else
            {
              stringValue = [v15 stringValue];

              if (!stringValue)
              {
LABEL_24:
                if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
                {
                  [LCFFeatureStore getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:];
                }

                v35 = 0;
                timestamp = v8;
                goto LABEL_27;
              }

              v30 = MEMORY[0x277CBFEF8];
              doubleValue2 = [v15 stringValue];
              v21 = [v30 featureValueWithString:doubleValue2];
            }

            goto LABEL_11;
          }

          v17 = MEMORY[0x277CBFEF8];
          intValue2 = [v15 timeBucketValue];
        }
      }

      doubleValue2 = intValue2;
      v21 = [v17 featureValueWithInt64:{objc_msgSend(intValue2, "longValue")}];
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
  timestamp = [setCopy timestamp];
  v35 = [(LCFCoreMLFeatureProvider *)v32 init:featureStoreKey timestamp:timestamp featureValues:v7];
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)getFeatureVectors:(id)vectors startDate:(id)date endDate:(id)endDate option:(unint64_t)option
{
  v109 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  dateCopy = date;
  endDateCopy = endDate;
  v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = endDateCopy;
  v71 = dateCopy;
  selfCopy = self;
  if (self->_useSqlite)
  {
    v12 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:dateCopy endDate:endDateCopy reversed:0];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v100 objects:v108 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = vectorsCopy;
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
          timestamp = [v18 timestamp];
          [timestamp timeIntervalSinceReferenceDate];
          v21 = [v19 numberWithDouble:?];
          stringValue = [v21 stringValue];
          [v81 setValue:v18 forKey:stringValue];
        }

        v14 = [v12 countByEnumeratingWithState:&v100 objects:v108 count:16];
      }

      while (v14);
      vectorsCopy = v15;
    }
  }

  else
  {
    v72 = vectorsCopy;
    v12 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:dateCopy endDate:endDateCopy reversed:0];
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
            stringValue2 = [v39 stringValue];
            [v81 setValue:v34 forKey:stringValue2];

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

    vectorsCopy = v72;
  }

  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((option & 4) != 0)
  {
    v43 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:vectorsCopy];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obja = [v81 allValues];
    v77 = [obja countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v77)
    {
      v73 = vectorsCopy;
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
                featureValues = [v54 featureValues];
                allKeys = [featureValues allKeys];
                LODWORD(v61) = [allKeys containsObject:v61];

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

          v64 = [(LCFFeatureStore *)selfCopy featureProviderFromfeatureSet:v54 featureNames:v73];
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
      vectorsCopy = v73;
    }
  }

  else
  {
    allKeys2 = [v81 allKeys];
    v42 = [allKeys2 sortedArrayUsingFunction:doubleSort context:0];

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

          reverseObjectEnumerator = [obja reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          v51 = [(LCFFeatureStore *)selfCopy getFeatureVectorWithStoreEvents:vectorsCopy storeEventsInReversedOrder:allObjects option:option];
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

  v67 = [[LCFCoreMLBatchProvider alloc] init:selfCopy->_featureStoreKey featureProviders:v74];
  v68 = *MEMORY[0x277D85DE8];

  return v67;
}

- (id)getMultiArrayFeatureVectors:(id)vectors vectorName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate option:(unint64_t)option
{
  v30 = *MEMORY[0x277D85DE8];
  labelNameCopy = labelName;
  v15 = MEMORY[0x277CBEA60];
  endDateCopy = endDate;
  dateCopy = date;
  destLabelNameCopy = destLabelName;
  labelNameCopy2 = labelName;
  nameCopy = name;
  vectorsCopy = vectors;
  v22 = [v15 arrayWithObjects:&labelNameCopy count:1];
  v23 = [vectorsCopy arrayByAddingObjectsFromArray:{v22, labelNameCopy, v30}];

  v24 = [(LCFFeatureStore *)self getFeatureVectors:v23 startDate:dateCopy endDate:endDateCopy option:option];

  v25 = [LCFCoreMLBatchProvider fromMLProvider:v24];
  v26 = [LCFCoreMLFeatureProviderUtils toMultiArrayTypeBatchProvider:v25 srcFeatureNames:vectorsCopy srcLabelName:labelNameCopy2 destFeatureName:nameCopy destLabelName:destLabelNameCopy];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)pruneFrom:(id)from endDate:(id)date option:(unint64_t)option
{
  fromCopy = from;
  dateCopy = date;
  if (self->_useSqlite)
  {
    v9 = [(LCFDatabaseConnection *)self->_dbFeatureStore pruneFrom:fromCopy endDate:dateCopy];
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