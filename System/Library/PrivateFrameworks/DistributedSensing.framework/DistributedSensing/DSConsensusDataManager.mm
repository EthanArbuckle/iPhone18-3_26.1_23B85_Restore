@interface DSConsensusDataManager
- (DSConsensusDataManager)initWithWindowOfInterest:(double)interest;
- (void)_addDatumToFrequencyTable:(id)table;
- (void)_addDatumtoDataArrayMap:(id)map;
- (void)_evictOldestDatum;
- (void)_removeDatumFromDataArrayMap:(id)map;
- (void)_removeDatumFromFrequencyTable:(id)table;
- (void)addDatum:(id)datum;
- (void)printConsensusData;
- (void)printConsensusDataFromWindowStart:(double)start ToWindowEnd:(double)end;
@end

@implementation DSConsensusDataManager

- (DSConsensusDataManager)initWithWindowOfInterest:(double)interest
{
  v8.receiver = self;
  v8.super_class = DSConsensusDataManager;
  v4 = [(DSConsensusDataManager *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_windowOfInterest = interest;
    v6 = v4;
  }

  return v5;
}

- (void)_evictOldestDatum
{
  if ([(NSMutableArray *)self->_consensusDataArray count])
  {
    while (1)
    {
      v9 = [(NSMutableArray *)self->_consensusDataArray objectAtIndexedSubscript:0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v5 = v4;
      time = [v9 time];
      [time timeIntervalSince1970];
      v8 = v5 - v7;

      if (v8 <= self->_windowOfInterest)
      {
        break;
      }

      [(NSMutableArray *)self->_consensusDataArray removeObjectAtIndex:0];
      [(DSConsensusDataManager *)self _removeDatumFromFrequencyTable:v9];
      [(DSConsensusDataManager *)self _removeDatumFromDataArrayMap:v9];

      if (![(NSMutableArray *)self->_consensusDataArray count])
      {
        return;
      }
    }
  }
}

- (void)addDatum:(id)datum
{
  v15 = *MEMORY[0x277D85DE8];
  datumCopy = datum;
  [(DSConsensusDataManager *)self _evictOldestDatum];
  if ([(NSMutableArray *)self->_consensusDataArray count]< 0x64)
  {
    identifier = [datumCopy identifier];

    if (identifier)
    {
      consensusDataArray = self->_consensusDataArray;
      if (!consensusDataArray)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v11 = self->_consensusDataArray;
        self->_consensusDataArray = v10;

        consensusDataArray = self->_consensusDataArray;
      }

      [(NSMutableArray *)consensusDataArray addObject:datumCopy];
      [(DSConsensusDataManager *)self _addDatumToFrequencyTable:datumCopy];
      [(DSConsensusDataManager *)self _addDatumtoDataArrayMap:datumCopy];
    }
  }

  else
  {
    if (onceTokenDSConsensus_0 != -1)
    {
      [DSConsensusDataManager addDatum:];
    }

    v5 = logObjDSConsensus_0;
    if (os_log_type_enabled(logObjDSConsensus_0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_consensusDataArray;
      v7 = v5;
      v13 = 134217984;
      v14 = [(NSMutableArray *)v6 count];
      _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "consensus data array at its maximum capacity: %lu", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_addDatumtoDataArrayMap:(id)map
{
  mapCopy = map;
  consensusDataArrayMap = self->_consensusDataArrayMap;
  v16 = mapCopy;
  if (!consensusDataArrayMap)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_consensusDataArrayMap;
    self->_consensusDataArrayMap = v6;

    mapCopy = v16;
    consensusDataArrayMap = self->_consensusDataArrayMap;
  }

  identifier = [mapCopy identifier];
  v9 = [(NSMutableDictionary *)consensusDataArrayMap objectForKeyedSubscript:identifier];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_consensusDataArrayMap;
    identifier2 = [v16 identifier];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:identifier2];
  }

  v13 = self->_consensusDataArrayMap;
  identifier3 = [v16 identifier];
  v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:identifier3];
  [v15 addObject:v16];
}

- (void)_removeDatumFromDataArrayMap:(id)map
{
  mapCopy = map;
  identifier = [mapCopy identifier];
  v5 = [(NSMutableDictionary *)self->_consensusDataArrayMap objectForKeyedSubscript:identifier];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_consensusDataArrayMap objectForKeyedSubscript:identifier];
    [v6 removeObject:mapCopy];

    v7 = [(NSMutableDictionary *)self->_consensusDataArrayMap objectForKeyedSubscript:identifier];
    v8 = [v7 count];

    if (!v8)
    {
      [(NSMutableDictionary *)self->_consensusDataArrayMap setObject:0 forKeyedSubscript:identifier];
    }
  }
}

- (void)_addDatumToFrequencyTable:(id)table
{
  tableCopy = table;
  if (!self->_consensusFrequencyTable)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    consensusFrequencyTable = self->_consensusFrequencyTable;
    self->_consensusFrequencyTable = v4;
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  confidence = [tableCopy confidence];
  if (confidence <= 6)
  {
    if (!confidence)
    {
      v8 = "lowest";
      goto LABEL_15;
    }

    if (confidence == 4)
    {
      v8 = "low-medium";
      goto LABEL_15;
    }
  }

  else
  {
    switch(confidence)
    {
      case 7:
        v8 = "medium";
        goto LABEL_15;
      case 11:
        v8 = "medium-high";
        goto LABEL_15;
      case 15:
        v8 = "highest";
        goto LABEL_15;
    }
  }

  v8 = "?";
LABEL_15:
  v9 = [v6 initWithUTF8String:v8];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_consensusFrequencyTable objectForKeyedSubscript:v9];

    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_consensusFrequencyTable setObject:v11 forKeyedSubscript:v9];
    }

    v12 = [(NSMutableDictionary *)self->_consensusFrequencyTable objectForKeyedSubscript:v9];
    [v12 addObject:tableCopy];
  }
}

- (void)_removeDatumFromFrequencyTable:(id)table
{
  tableCopy = table;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  confidence = [tableCopy confidence];
  if (confidence <= 6)
  {
    if (!confidence)
    {
      v6 = "lowest";
      goto LABEL_13;
    }

    if (confidence == 4)
    {
      v6 = "low-medium";
      goto LABEL_13;
    }

LABEL_12:
    v6 = "?";
    goto LABEL_13;
  }

  if (confidence == 7)
  {
    v6 = "medium";
    goto LABEL_13;
  }

  if (confidence == 11)
  {
    v6 = "medium-high";
    goto LABEL_13;
  }

  if (confidence != 15)
  {
    goto LABEL_12;
  }

  v6 = "highest";
LABEL_13:
  v7 = [v4 initWithUTF8String:v6];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_consensusFrequencyTable objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_consensusFrequencyTable objectForKeyedSubscript:v7];
      [v9 removeObject:tableCopy];

      v10 = [(NSMutableDictionary *)self->_consensusFrequencyTable objectForKeyedSubscript:v7];
      v11 = [v10 count];

      if (!v11)
      {
        [(NSMutableDictionary *)self->_consensusFrequencyTable setObject:0 forKeyedSubscript:v7];
      }
    }
  }
}

- (void)printConsensusData
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_consensusDataArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) printInfo];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)printConsensusDataFromWindowStart:(double)start ToWindowEnd:(double)end
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = end - start;
  if (v7 > 0.0 && v7 <= self->_windowOfInterest)
  {
    if (onceTokenDSConsensus_0 != -1)
    {
      [DSConsensusDataManager addDatum:];
    }

    v10 = logObjDSConsensus_0;
    if (os_log_type_enabled(logObjDSConsensus_0, OS_LOG_TYPE_ERROR))
    {
      windowOfInterest = self->_windowOfInterest;
      *buf = 134218496;
      startCopy2 = start;
      v32 = 2048;
      endCopy2 = end;
      v34 = 2048;
      v35 = windowOfInterest;
      _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_ERROR, "window start: %f and end: %f. Configured window of interest: %f", buf, 0x20u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = self->_consensusDataArray;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSince1970];
          v20 = v19;
          time = [v17 time];
          [time timeIntervalSince1970];
          v23 = v20 - v22;

          if (v23 >= start)
          {
            if (v23 > end)
            {
              goto LABEL_21;
            }

            [v17 printInfo];
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

LABEL_21:
  }

  else
  {
    if (onceTokenDSConsensus_0 != -1)
    {
      [DSConsensusDataManager addDatum:];
    }

    v8 = logObjDSConsensus_0;
    if (os_log_type_enabled(logObjDSConsensus_0, OS_LOG_TYPE_ERROR))
    {
      v9 = self->_windowOfInterest;
      *buf = 134218496;
      startCopy2 = start;
      v32 = 2048;
      endCopy2 = end;
      v34 = 2048;
      v35 = v9;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_ERROR, "Invalid window start: %f and end: %f. Configured window of interest: %f", buf, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end