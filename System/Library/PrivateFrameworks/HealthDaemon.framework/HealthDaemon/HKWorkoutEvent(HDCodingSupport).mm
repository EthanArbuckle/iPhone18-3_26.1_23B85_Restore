@interface HKWorkoutEvent(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableWorkoutEvent)codableRepresentationForSync;
@end

@implementation HKWorkoutEvent(HDCodingSupport)

- (HDCodableWorkoutEvent)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableWorkoutEvent);
  -[HDCodableWorkoutEvent setType:](v2, "setType:", [self type]);
  dateInterval = [self dateInterval];
  startDate = [dateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(HDCodableWorkoutEvent *)v2 setDate:?];

  dateInterval2 = [self dateInterval];
  [dateInterval2 duration];
  [(HDCodableWorkoutEvent *)v2 setDuration:?];

  metadata = [self metadata];
  hk_codableMetadata = [metadata hk_codableMetadata];
  [(HDCodableWorkoutEvent *)v2 setMetadataDictionary:hk_codableMetadata];

  metadata2 = [self metadata];
  v9 = [metadata2 objectForKey:*MEMORY[0x277CCC518]];

  if (v9)
  {
    -[HDCodableWorkoutEvent setSwimmingStrokeStyle:](v2, "setSwimmingStrokeStyle:", [v9 longLongValue]);
  }

  return v2;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 hasType])
    {
      v6 = MEMORY[0x277CBEB38];
      metadataDictionary = [v5 metadataDictionary];
      v8 = [v6 hk_dictionaryWithCodableMetadata:metadataDictionary];

      v9 = 0.0;
      if ([v5 hasDuration])
      {
        [v5 duration];
        v9 = v10;
      }

      if ([v5 hasSwimmingStrokeStyle])
      {
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "swimmingStrokeStyle")}];
        [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCC518]];
      }

      type = [v5 type];
      v13 = objc_alloc(MEMORY[0x277CCA970]);
      decodedDateIntervalStartDate = [v5 decodedDateIntervalStartDate];
      v15 = [v13 initWithStartDate:decodedDateIntervalStartDate duration:v9];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
      v17 = [self _unvalidatedWorkoutEventWithType:type dateInterval:v15 metadata:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end