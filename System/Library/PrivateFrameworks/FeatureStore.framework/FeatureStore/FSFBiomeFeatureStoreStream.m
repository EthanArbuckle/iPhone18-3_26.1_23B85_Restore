@interface FSFBiomeFeatureStoreStream
- (BOOL)deleteCurrentStream;
- (BOOL)insert:(id)a3 withInteractionId:(id)a4 atTime:(double)a5;
- (FSFBiomeFeatureStoreStream)initWithConfig:(id)a3 streamId:(id)a4;
- (id)retrieve:(id)a3;
- (id)retrieveEvents:(id)a3 startDate:(id)a4 endDate:(id)a5;
@end

@implementation FSFBiomeFeatureStoreStream

- (FSFBiomeFeatureStoreStream)initWithConfig:(id)a3 streamId:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[FSFErrorHandler assertThatUserIsSupported];
  if (+[FSFUtils isSupportedPlatform])
  {
    v14.receiver = self;
    v14.super_class = FSFBiomeFeatureStoreStream;
    v8 = [(FSFBiomeFeatureStoreStream *)&v14 init];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:v7 permission:1 config:v6];
      [(FSFBiomeFeatureStoreStream *)v8 setWriteStore:v9];

      v10 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:v7 permission:0 config:v6];
      [(FSFBiomeFeatureStoreStream *)v8 setReadStore:v10];

      v11 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:v7 permission:2 config:v6];
      [(FSFBiomeFeatureStoreStream *)v8 setPruneStore:v11];
    }

    self = v8;
    v12 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for non-iOS  platforms"];
    v12 = 0;
  }

  return v12;
}

- (BOOL)insert:(id)a3 withInteractionId:(id)a4 atTime:(double)a5
{
  v7 = a3;
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
    v9 = [(FSFBiomeFeatureStoreStream *)self writeStore];
    v8 = [v9 writeEventWithEventBody:v7 timestamp:a5];
  }

  return v8;
}

- (id)retrieve:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  Current = CFAbsoluteTimeGetCurrent();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(FSFBiomeFeatureStoreStream *)self readStore];
  v7 = [v6 fetchEventsFrom:0.0 to:Current + 2.5];

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

        v12 = [*(*(&v18 + 1) + 8 * i) eventBody];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 serialize];
          if (v14)
          {
            v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
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

- (id)retrieveEvents:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setDay:1];
  [v9 setMonth:1];
  [v9 setYear:2001];
  v10 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v9 setTimeZone:v10];

  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [v11 dateFromComponents:v9];

  v13 = 0.0;
  if (v7 && v12)
  {
    [v7 timeIntervalSinceDate:v12];
    v13 = v14;
  }

  v15 = CFAbsoluteTimeGetCurrent() + 2.5;
  if (v8 && v12)
  {
    [v8 timeIntervalSinceDate:{v12, v15}];
  }

  v16 = v15 + 1.0;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v13 <= v16)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [(FSFBiomeFeatureStoreStream *)self readStore];
    v19 = [v18 fetchEventsFrom:v13 to:v16];

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
  v3 = [(FSFBiomeFeatureStoreStream *)self pruneStore];
  [v3 removeEventsFrom:0 to:0 reason:&__block_literal_global pruneFutureEvents:0.0 usingBlock:CFAbsoluteTimeGetCurrent()];

  v4 = [(FSFBiomeFeatureStoreStream *)self readStore];
  v5 = [v4 fetchEventsFrom:0.0 to:CFAbsoluteTimeGetCurrent()];
  v6 = [v5 count] == 0;

  return v6;
}

@end