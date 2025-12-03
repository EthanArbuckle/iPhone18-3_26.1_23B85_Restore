@interface HDQuantitySampleStatisticsEntity
+ (BOOL)setDiscreteQuantitySampleStatistics:(id)statistics persistentID:(id)d database:(id)database error:(id *)error;
+ (id)foreignKeys;
@end

@implementation HDQuantitySampleStatisticsEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"owner_id";
  v2 = +[(HDDataEntity *)HDQuantitySampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)setDiscreteQuantitySampleStatistics:(id)statistics persistentID:(id)d database:(id)database error:(id *)error
{
  v23[6] = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  dCopy = d;
  v23[0] = @"owner_id";
  v23[1] = @"min";
  v23[2] = @"max";
  v23[3] = @"most_recent";
  v23[4] = @"most_recent_date";
  v23[5] = @"most_recent_duration";
  v12 = MEMORY[0x277CBEA60];
  databaseCopy = database;
  v14 = [v12 arrayWithObjects:v23 count:6];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__HDQuantitySampleStatisticsEntity_setDiscreteQuantitySampleStatistics_persistentID_database_error___block_invoke;
  v20[3] = &unk_278613DE8;
  v21 = dCopy;
  v22 = statisticsCopy;
  v15 = statisticsCopy;
  v16 = dCopy;
  v17 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v14 error:error bindingHandler:v20];

  v18 = *MEMORY[0x277D85DE8];
  return v17 != 0;
}

void __100__HDQuantitySampleStatisticsEntity_setDiscreteQuantitySampleStatistics_persistentID_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"owner_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) quantityType];
  v15 = [v4 canonicalUnit];

  if ([*(a1 + 40) _hasMinimumQuantity])
  {
    v5 = [*(a1 + 40) minimumQuantity];
    [v5 doubleValueForUnit:v15];
    MEMORY[0x22AAC6B60](a2, @"min");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"min");
  }

  if ([*(a1 + 40) _hasMaximumQuantity])
  {
    v6 = [*(a1 + 40) maximumQuantity];
    [v6 doubleValueForUnit:v15];
    MEMORY[0x22AAC6B60](a2, @"max");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"max");
  }

  if ([*(a1 + 40) _hasMostRecentQuantity])
  {
    v7 = [*(a1 + 40) mostRecentQuantity];
    [v7 doubleValueForUnit:v15];
    MEMORY[0x22AAC6B60](a2, @"most_recent");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"most_recent");
  }

  if ([*(a1 + 40) _hasMostRecentQuantityDateInterval])
  {
    v8 = [*(a1 + 40) mostRecentQuantityDateInterval];
    v9 = [v8 startDate];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    MEMORY[0x22AAC6B60](a2, @"most_recent_date", v11);
    v12 = [*(a1 + 40) mostRecentQuantityDateInterval];
    [v12 duration];
    v14 = v13;

    if (v14 == 0.0)
    {
      MEMORY[0x22AAC6B90](a2, @"most_recent_duration", 0);
    }

    else
    {
      MEMORY[0x22AAC6B60](a2, @"most_recent_duration", v14);
    }
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"most_recent_date");
    MEMORY[0x22AAC6BA0](a2, @"most_recent_duration");
  }
}

@end