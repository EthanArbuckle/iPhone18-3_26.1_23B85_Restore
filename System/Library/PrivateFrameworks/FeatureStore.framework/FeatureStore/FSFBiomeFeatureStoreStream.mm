@interface FSFBiomeFeatureStoreStream
- (BOOL)deleteCurrentStream;
- (BOOL)insert:(id)insert withInteractionId:(id)id atTime:(double)time;
- (FSFBiomeFeatureStoreStream)initWithConfig:(id)config streamId:(id)id;
- (id)retrieve:(id)retrieve;
- (id)retrieveEvents:(id)events startDate:(id)date endDate:(id)endDate;
@end

@implementation FSFBiomeFeatureStoreStream

- (FSFBiomeFeatureStoreStream)initWithConfig:(id)config streamId:(id)id
{
  configCopy = config;
  idCopy = id;
  +[FSFErrorHandler assertThatUserIsSupported];
  if (+[FSFUtils isSupportedPlatform])
  {
    v14.receiver = self;
    v14.super_class = FSFBiomeFeatureStoreStream;
    v8 = [(FSFBiomeFeatureStoreStream *)&v14 init];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:idCopy permission:1 config:configCopy];
      [(FSFBiomeFeatureStoreStream *)v8 setWriteStore:v9];

      v10 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:idCopy permission:0 config:configCopy];
      [(FSFBiomeFeatureStoreStream *)v8 setReadStore:v10];

      v11 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:idCopy permission:2 config:configCopy];
      [(FSFBiomeFeatureStoreStream *)v8 setPruneStore:v11];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for non-iOS  platforms"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)insert:(id)insert withInteractionId:(id)id atTime:(double)time
{
  insertCopy = insert;
  if (+[FSFUtils isUnderLegalRestriction])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_223066000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Does not insert into FeatureStore: under privacy restriction", v11, 2u);
    }

    v8 = 0;
  }

  else
  {
    writeStore = [(FSFBiomeFeatureStoreStream *)self writeStore];
    v8 = [writeStore writeEventWithEventBody:insertCopy timestamp:time];
  }

  return v8;
}

- (id)retrieve:(id)retrieve
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  Current = CFAbsoluteTimeGetCurrent();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  readStore = [(FSFBiomeFeatureStoreStream *)self readStore];
  v7 = [readStore fetchEventsFrom:0.0 to:Current + 2.5];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        eventBody = [*(*(&v18 + 1) + 8 * i) eventBody];
        v13 = eventBody;
        if (eventBody)
        {
          serialize = [eventBody serialize];
          if (serialize)
          {
            v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:serialize encoding:4];
            [v4 addObject:v15];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)retrieveEvents:(id)events startDate:(id)date endDate:(id)endDate
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setDay:1];
  [v9 setMonth:1];
  [v9 setYear:2001];
  v10 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v9 setTimeZone:v10];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [currentCalendar dateFromComponents:v9];

  v13 = 0.0;
  if (dateCopy && v12)
  {
    [dateCopy timeIntervalSinceDate:v12];
    v13 = v14;
  }

  v15 = CFAbsoluteTimeGetCurrent() + 2.5;
  if (endDateCopy && v12)
  {
    [endDateCopy timeIntervalSinceDate:{v12, v15}];
  }

  v16 = v15 + 1.0;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v13 <= v16)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    readStore = [(FSFBiomeFeatureStoreStream *)self readStore];
    v19 = [readStore fetchEventsFrom:v13 to:v16];

    v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v17 addObject:*(*(&v26 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v21);
    }
  }

  else
  {
    NSLog(&cfstr_StarttimeIsNew.isa, *&v13, *&v16);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)deleteCurrentStream
{
  pruneStore = [(FSFBiomeFeatureStoreStream *)self pruneStore];
  [pruneStore removeEventsFrom:0 to:0 reason:&__block_literal_global pruneFutureEvents:0.0 usingBlock:CFAbsoluteTimeGetCurrent()];

  readStore = [(FSFBiomeFeatureStoreStream *)self readStore];
  v5 = [readStore fetchEventsFrom:0.0 to:CFAbsoluteTimeGetCurrent()];
  v6 = [v5 count] == 0;

  return v6;
}

@end