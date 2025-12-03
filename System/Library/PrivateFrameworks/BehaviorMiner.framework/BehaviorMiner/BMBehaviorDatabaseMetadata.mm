@interface BMBehaviorDatabaseMetadata
- (BMBehaviorDatabaseMetadata)initWithDictionary:(id)dictionary;
- (BMBehaviorDatabaseMetadata)initWithMiningDate:(id)date eventInterval:(id)interval minimumAbsoluteSupport:(unint64_t)support minimumConfidence:(double)confidence samplingInterval:(double)samplingInterval itemTypeIdentifiers:(id)identifiers targetTypeIdentifiers:(id)typeIdentifiers numberOfBaskets:(unint64_t)self0;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)dictionaryRepresntation;
- (unint64_t)hash;
@end

@implementation BMBehaviorDatabaseMetadata

- (BMBehaviorDatabaseMetadata)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"BMBehaviorDatabaseMetadata"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"miningDate"];
    v7 = objc_alloc(MEMORY[0x277CCA970]);
    v23 = [v5 objectForKeyedSubscript:@"eventIntervalStart"];
    v22 = [v5 objectForKeyedSubscript:@"eventIntervalEnd"];
    v20 = [v7 initWithStartDate:v23 endDate:v22];
    v21 = [v5 objectForKeyedSubscript:@"minimumAbsoluteSupport"];
    unsignedIntegerValue = [v21 unsignedIntegerValue];
    v9 = [v5 objectForKeyedSubscript:@"minimumConfidence"];
    [v9 doubleValue];
    v11 = v10;
    v12 = [v5 objectForKeyedSubscript:@"samplingInterval"];
    [v12 doubleValue];
    v14 = v13;
    v15 = [v5 objectForKeyedSubscript:@"itemTypeIdentifiers"];
    v16 = [v5 objectForKeyedSubscript:@"targetTypeIdentifiers"];
    v17 = [v5 objectForKeyedSubscript:@"numberOfBaskets"];
    self = -[BMBehaviorDatabaseMetadata initWithMiningDate:eventInterval:minimumAbsoluteSupport:minimumConfidence:samplingInterval:itemTypeIdentifiers:targetTypeIdentifiers:numberOfBaskets:](self, "initWithMiningDate:eventInterval:minimumAbsoluteSupport:minimumConfidence:samplingInterval:itemTypeIdentifiers:targetTypeIdentifiers:numberOfBaskets:", v6, v20, unsignedIntegerValue, v15, v16, [v17 unsignedIntegerValue], v11, v14);

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMBehaviorDatabaseMetadata)initWithMiningDate:(id)date eventInterval:(id)interval minimumAbsoluteSupport:(unint64_t)support minimumConfidence:(double)confidence samplingInterval:(double)samplingInterval itemTypeIdentifiers:(id)identifiers targetTypeIdentifiers:(id)typeIdentifiers numberOfBaskets:(unint64_t)self0
{
  dateCopy = date;
  intervalCopy = interval;
  identifiersCopy = identifiers;
  typeIdentifiersCopy = typeIdentifiers;
  v28.receiver = self;
  v28.super_class = BMBehaviorDatabaseMetadata;
  v22 = [(BMBehaviorDatabaseMetadata *)&v28 init];
  if (v22)
  {
    if (dateCopy)
    {
      distantPast = [dateCopy copy];
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    miningDate = v22->_miningDate;
    v22->_miningDate = distantPast;

    v25 = [intervalCopy copy];
    eventInterval = v22->_eventInterval;
    v22->_eventInterval = v25;

    v22->_minimumAbsoluteSupport = support;
    v22->_minimumConfidence = confidence;
    v22->_samplingInterval = samplingInterval;
    objc_storeStrong(&v22->_itemTypeIdentifiers, identifiers);
    objc_storeStrong(&v22->_targetTypeIdentifiers, typeIdentifiers);
    v22->_numberOfBaskets = baskets;
  }

  return v22;
}

- (id)dictionaryRepresntation
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22 = @"BMBehaviorDatabaseMetadata";
  v20[0] = @"miningDate";
  miningDate = [(BMBehaviorDatabaseMetadata *)self miningDate];
  v21[0] = miningDate;
  v20[1] = @"eventIntervalStart";
  eventInterval = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  startDate = [eventInterval startDate];
  v21[1] = startDate;
  v20[2] = @"eventIntervalEnd";
  eventInterval2 = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  endDate = [eventInterval2 endDate];
  v21[2] = endDate;
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
  itemTypeIdentifiers = [(BMBehaviorDatabaseMetadata *)self itemTypeIdentifiers];
  v21[6] = itemTypeIdentifiers;
  v20[7] = @"targetTypeIdentifiers";
  targetTypeIdentifiers = [(BMBehaviorDatabaseMetadata *)self targetTypeIdentifiers];
  v21[7] = targetTypeIdentifiers;
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
  miningDate = [(BMBehaviorDatabaseMetadata *)self miningDate];
  v4 = [miningDate hash];
  eventInterval = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  v6 = [eventInterval hash] ^ v4;
  v7 = v6 ^ [(BMBehaviorDatabaseMetadata *)self minimumAbsoluteSupport];
  [(BMBehaviorDatabaseMetadata *)self minimumConfidence];
  v9 = v7 ^ (v8 * 1000.0);
  [(BMBehaviorDatabaseMetadata *)self samplingInterval];
  v11 = (v10 * 1000.0);
  itemTypeIdentifiers = [(BMBehaviorDatabaseMetadata *)self itemTypeIdentifiers];
  v13 = v9 ^ v11 ^ [itemTypeIdentifiers hash];
  targetTypeIdentifiers = [(BMBehaviorDatabaseMetadata *)self targetTypeIdentifiers];
  v15 = [targetTypeIdentifiers hash];
  v16 = v15 ^ [(BMBehaviorDatabaseMetadata *)self numberOfBaskets];

  return v13 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    dictionaryRepresntation = [(BMBehaviorDatabaseMetadata *)self dictionaryRepresntation];
    dictionaryRepresntation2 = [(BMBehaviorDatabaseMetadata *)v6 dictionaryRepresntation];

    v9 = [dictionaryRepresntation isEqualToDictionary:dictionaryRepresntation2];
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
  miningDate = [(BMBehaviorDatabaseMetadata *)self miningDate];
  eventInterval = [(BMBehaviorDatabaseMetadata *)self eventInterval];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMBehaviorDatabaseMetadata minimumAbsoluteSupport](self, "minimumAbsoluteSupport")}];
  v7 = MEMORY[0x277CCABB0];
  [(BMBehaviorDatabaseMetadata *)self minimumConfidence];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x277CCABB0];
  [(BMBehaviorDatabaseMetadata *)self samplingInterval];
  v10 = [v9 numberWithDouble:?];
  itemTypeIdentifiers = [(BMBehaviorDatabaseMetadata *)self itemTypeIdentifiers];
  targetTypeIdentifiers = [(BMBehaviorDatabaseMetadata *)self targetTypeIdentifiers];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BMBehaviorDatabaseMetadata numberOfBaskets](self, "numberOfBaskets")}];
  v14 = [v16 stringWithFormat:@"<%@ %p> miningDate: %@, eventInterval: %@, minimumAbsoluteSupport: %@, minimumConfidence: %@, samplingInterval: %@s, itemTypeIdentifiers: %@, targetTypeIdentifiers: %@, numberOfBaskets: %@", v3, self, miningDate, eventInterval, v6, v8, v10, itemTypeIdentifiers, targetTypeIdentifiers, v13];

  return v14;
}

@end