@interface DSConsensusDataManager
- (DSConsensusDataManager)initWithWindowOfInterest:(double)a3;
- (void)_addDatumToFrequencyTable:(id)a3;
- (void)_addDatumtoDataArrayMap:(id)a3;
- (void)_evictOldestDatum;
- (void)_removeDatumFromDataArrayMap:(id)a3;
- (void)_removeDatumFromFrequencyTable:(id)a3;
- (void)addDatum:(id)a3;
- (void)printConsensusData;
- (void)printConsensusDataFromWindowStart:(double)a3 ToWindowEnd:(double)a4;
@end

@implementation DSConsensusDataManager

- (DSConsensusDataManager)initWithWindowOfInterest:(double)a3
{
  v8.receiver = self;
  v8.super_class = DSConsensusDataManager;
  v4 = [(DSConsensusDataManager *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_windowOfInterest = a3;
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
      v3 = [MEMORY[0x277CBEAA8] date];
      [v3 timeIntervalSince1970];
      v5 = v4;
      v6 = [v9 time];
      [v6 timeIntervalSince1970];
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

- (void)addDatum:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DSConsensusDataManager *)self _evictOldestDatum];
  if ([(NSMutableArray *)self->_consensusDataArray count]< 0x64)
  {
    v8 = [v4 identifier];

    if (v8)
    {
      consensusDataArray = self->_consensusDataArray;
      if (!consensusDataArray)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v11 = self->_consensusDataArray;
        self->_consensusDataArray = v10;

        consensusDataArray = self->_consensusDataArray;
      }

      [(NSMutableArray *)consensusDataArray addObject:v4];
      [(DSConsensusDataManager *)self _addDatumToFrequencyTable:v4];
      [(DSConsensusDataManager *)self _addDatumtoDataArrayMap:v4];
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

- (void)_addDatumtoDataArrayMap:(id)a3
{
  v4 = a3;
  consensusDataArrayMap = self->_consensusDataArrayMap;
  v16 = v4;
  if (!consensusDataArrayMap)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_consensusDataArrayMap;
    self->_consensusDataArrayMap = v6;

    v4 = v16;
    consensusDataArrayMap = self->_consensusDataArrayMap;
  }

  v8 = [v4 identifier];
  v9 = [(NSMutableDictionary *)consensusDataArrayMap objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_consensusDataArrayMap;
    v12 = [v16 identifier];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = self->_consensusDataArrayMap;
  v14 = [v16 identifier];
  v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];
  [v15 addObject:v16];
}

- (void)_removeDatumFromDataArrayMap:(id)a3
{
  v9 = a3;
  v4 = [v9 identifier];
  v5 = [(NSMutableDictionary *)self->_consensusDataArrayMap objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_consensusDataArrayMap objectForKeyedSubscript:v4];
    [v6 removeObject:v9];

    v7 = [(NSMutableDictionary *)self->_consensusDataArrayMap objectForKeyedSubscript:v4];
    v8 = [v7 count];

    if (!v8)
    {
      [(NSMutableDictionary *)self->_consensusDataArrayMap setObject:0 forKeyedSubscript:v4];
    }
  }
}

- (void)_addDatumToFrequencyTable:(id)a3
{
  v13 = a3;
  if (!self->_consensusFrequencyTable)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    consensusFrequencyTable = self->_consensusFrequencyTable;
    self->_consensusFrequencyTable = v4;
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v13 confidence];
  if (v7 <= 6)
  {
    if (!v7)
    {
      v8 = "lowest";
      goto LABEL_15;
    }

    if (v7 == 4)
    {
      v8 = "low-medium";
      goto LABEL_15;
    }
  }

  else
  {
    switch(v7)
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
    [v12 addObject:v13];
  }
}

- (void)_removeDatumFromFrequencyTable:(id)a3
{
  v12 = a3;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v12 confidence];
  if (v5 <= 6)
  {
    if (!v5)
    {
      v6 = "lowest";
      goto LABEL_13;
    }

    if (v5 == 4)
    {
      v6 = "low-medium";
      goto LABEL_13;
    }

LABEL_12:
    v6 = "?";
    goto LABEL_13;
  }

  if (v5 == 7)
  {
    v6 = "medium";
    goto LABEL_13;
  }

  if (v5 == 11)
  {
    v6 = "medium-high";
    goto LABEL_13;
  }

  if (v5 != 15)
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
      [v9 removeObject:v12];

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

- (void)printConsensusDataFromWindowStart:(double)a3 ToWindowEnd:(double)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4 - a3;
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
      v31 = a3;
      v32 = 2048;
      v33 = a4;
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
          v18 = [MEMORY[0x277CBEAA8] date];
          [v18 timeIntervalSince1970];
          v20 = v19;
          v21 = [v17 time];
          [v21 timeIntervalSince1970];
          v23 = v20 - v22;

          if (v23 >= a3)
          {
            if (v23 > a4)
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
      v31 = a3;
      v32 = 2048;
      v33 = a4;
      v34 = 2048;
      v35 = v9;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_ERROR, "Invalid window start: %f and end: %f. Configured window of interest: %f", buf, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end