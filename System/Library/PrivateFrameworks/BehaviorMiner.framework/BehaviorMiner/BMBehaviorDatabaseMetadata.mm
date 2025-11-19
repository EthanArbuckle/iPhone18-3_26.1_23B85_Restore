@interface BMBehaviorDatabaseMetadata
- (BMBehaviorDatabaseMetadata)initWithDictionary:(id)a3;
- (BMBehaviorDatabaseMetadata)initWithMiningDate:(id)a3 eventInterval:(id)a4 minimumAbsoluteSupport:(unint64_t)a5 minimumConfidence:(double)a6 samplingInterval:(double)a7 itemTypeIdentifiers:(id)a8 targetTypeIdentifiers:(id)a9 numberOfBaskets:(unint64_t)a10;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)dictionaryRepresntation;
- (unint64_t)hash;
@end

@implementation BMBehaviorDatabaseMetadata

- (BMBehaviorDatabaseMetadata)initWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"BMBehaviorDatabaseMetadata"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"miningDate"];
    v7 = objc_alloc(MEMORY[0x277CCA970]);
    v23 = [v5 objectForKeyedSubscript:@"eventIntervalStart"];
    v22 = [v5 objectForKeyedSubscript:@"eventIntervalEnd"];
    v20 = [v7 initWithStartDate:v23 endDate:v22];
    v21 = [v5 objectForKeyedSubscript:@"minimumAbsoluteSupport"];
    v8 = [v21 unsignedIntegerValue];
    v9 = [v5 objectForKeyedSubscript:@"minimumConfidence"];
    [v9 doubleValue];
    v11 = v10;
    v12 = [v5 objectForKeyedSubscript:@"samplingInterval"];
    [v12 doubleValue];
    v14 = v13;
    v15 = [v5 objectForKeyedSubscript:@"itemTypeIdentifiers"];
    v16 = [v5 objectForKeyedSubscript:@"targetTypeIdentifiers"];
    v17 = [v5 objectForKeyedSubscript:@"numberOfBaskets"];
    self = -[BMBehaviorDatabaseMetadata initWithMiningDate:eventInterval:minimumAbsoluteSupport:minimumConfidence:samplingInterval:itemTypeIdentifiers:targetTypeIdentifiers:numberOfBaskets:](self, "initWithMiningDate:eventInterval:minimumAbsoluteSupport:minimumConfidence:samplingInterval:itemTypeIdentifiers:targetTypeIdentifiers:numberOfBaskets:", v6, v20, v8, v15, v16, [v17 unsignedIntegerValue], v11, v14);

    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BMBehaviorDatabaseMetadata)initWithMiningDate:(id)a3 eventInterval:(id)a4 minimumAbsoluteSupport:(unint64_t)a5 minimumConfidence:(double)a6 samplingInterval:(double)a7 itemTypeIdentifiers:(id)a8 targetTypeIdentifiers:(id)a9 numberOfBaskets:(unint64_t)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a8;
  v21 = a9;
  v28.receiver = self;
  v28.super_class = BMBehaviorDatabaseMetadata;
  v22 = [(BMBehaviorDatabaseMetadata *)&v28 init];
  if (v22)
  {
    if (v18)
    {
      v23 = [v18 copy];
    }

    else
    {
      v23 = [MEMORY[0x277CBEAA8] distantPast];
    }

    miningDate = v22->_miningDate;
    v22->_miningDate = v23;

    v25 = [v19 copy];
    eventInterval = v22->_eventInterval;
    v22->_eventInterval = v25;

    v22->_minimumAbsoluteSupport = a5;
    v22->_minimumConfidence = a6;
    v22->_samplingInterval = a7;
    objc_storeStrong(&v22->_itemTypeIdentifiers, a8);
    objc_storeStrong(&v22->_targetTypeIdentifiers, a9);
    v22->_numberOfBaskets = a10;
  }

  return v22;
}

- (id)dictionaryRepresntation
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22 = @"BMBehaviorDatabaseMetadata";
  v20[0] = @"miningDate";
  v19 = [(BMBehaviorDatabaseMetadata *)self miningDate];
  v21[0] = v19;
  v20[1] = @"eventIntervalStart";
  v18 = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  v17 = [v18 startDate];
  v21[1] = v17;
  v20[2] = @"eventIntervalEnd";
  v3 = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  v4 = [v3 endDate];
  v21[2] = v4;
  v20[3] = @"minimumAbsoluteSupport";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMBehaviorDatabaseMetadata minimumAbsoluteSupport](self, "minimumAbsoluteSupport")}];
  v21[3] = v5;
  v20[4] = @"minimumConfidence";
  v6 = MEMORY[0x277CCABB0];
  [(BMBehaviorDatabaseMetadata *)self minimumConfidence];
  v7 = [v6 numberWithDouble:?];
  v21[4] = v7;
  v20[5] = @"samplingInterval";
  v8 = MEMORY[0x277CCABB0];
  [(BMBehaviorDatabaseMetadata *)self samplingInterval];
  v9 = [v8 numberWithDouble:?];
  v21[5] = v9;
  v20[6] = @"itemTypeIdentifiers";
  v10 = [(BMBehaviorDatabaseMetadata *)self itemTypeIdentifiers];
  v21[6] = v10;
  v20[7] = @"targetTypeIdentifiers";
  v11 = [(BMBehaviorDatabaseMetadata *)self targetTypeIdentifiers];
  v21[7] = v11;
  v20[8] = @"numberOfBaskets";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMBehaviorDatabaseMetadata numberOfBaskets](self, "numberOfBaskets")}];
  v21[8] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:9];
  v23[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (unint64_t)hash
{
  v3 = [(BMBehaviorDatabaseMetadata *)self miningDate];
  v4 = [v3 hash];
  v5 = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(BMBehaviorDatabaseMetadata *)self minimumAbsoluteSupport];
  [(BMBehaviorDatabaseMetadata *)self minimumConfidence];
  v9 = v7 ^ (v8 * 1000.0);
  [(BMBehaviorDatabaseMetadata *)self samplingInterval];
  v11 = (v10 * 1000.0);
  v12 = [(BMBehaviorDatabaseMetadata *)self itemTypeIdentifiers];
  v13 = v9 ^ v11 ^ [v12 hash];
  v14 = [(BMBehaviorDatabaseMetadata *)self targetTypeIdentifiers];
  v15 = [v14 hash];
  v16 = v15 ^ [(BMBehaviorDatabaseMetadata *)self numberOfBaskets];

  return v13 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(BMBehaviorDatabaseMetadata *)self dictionaryRepresntation];
    v8 = [(BMBehaviorDatabaseMetadata *)v6 dictionaryRepresntation];

    v9 = [v7 isEqualToDictionary:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(BMBehaviorDatabaseMetadata *)self miningDate];
  v5 = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMBehaviorDatabaseMetadata minimumAbsoluteSupport](self, "minimumAbsoluteSupport")}];
  v7 = MEMORY[0x277CCABB0];
  [(BMBehaviorDatabaseMetadata *)self minimumConfidence];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x277CCABB0];
  [(BMBehaviorDatabaseMetadata *)self samplingInterval];
  v10 = [v9 numberWithDouble:?];
  v11 = [(BMBehaviorDatabaseMetadata *)self itemTypeIdentifiers];
  v12 = [(BMBehaviorDatabaseMetadata *)self targetTypeIdentifiers];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMBehaviorDatabaseMetadata numberOfBaskets](self, "numberOfBaskets")}];
  v14 = [v16 stringWithFormat:@"<%@ %p> miningDate: %@, eventInterval: %@, minimumAbsoluteSupport: %@, minimumConfidence: %@, samplingInterval: %@s, itemTypeIdentifiers: %@, targetTypeIdentifiers: %@, numberOfBaskets: %@", v3, self, v4, v5, v6, v8, v10, v11, v12, v13];

  return v14;
}

@end