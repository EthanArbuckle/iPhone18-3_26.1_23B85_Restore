@interface CADInMemoryChangeTimestamp
+ (BOOL)doesTimestamp:(id)a3 includeAllChangesVisibleToTimestamp:(id)a4;
+ (id)timestampForNow;
- (CADInMemoryChangeTimestamp)initWithCoder:(id)a3;
- (CADInMemoryChangeTimestamp)initWithTimestamps:(id)a3;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADInMemoryChangeTimestamp

+ (id)timestampForNow
{
  v2 = objc_alloc_init(CADInMemoryChangeTimestamp);
  v3 = objc_alloc_init(MEMORY[0x277CF7538]);
  universalTimestamp = v2->_universalTimestamp;
  v2->_universalTimestamp = v3;

  return v2;
}

- (CADInMemoryChangeTimestamp)initWithTimestamps:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CADInMemoryChangeTimestamp;
  v5 = [(CADInMemoryChangeTimestamp *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    timestamps = v5->_timestamps;
    v5->_timestamps = v6;
  }

  return v5;
}

- (CADInMemoryChangeTimestamp)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CADInMemoryChangeTimestamp;
  v5 = [(CADInMemoryChangeTimestamp *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"timestamps"];
    timestamps = v5->_timestamps;
    v5->_timestamps = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"universalTimestamp"];
    universalTimestamp = v5->_universalTimestamp;
    v5->_universalTimestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  universalTimestamp = self->_universalTimestamp;
  v5 = a3;
  [v5 encodeObject:universalTimestamp forKey:@"universalTimestamp"];
  [v5 encodeObject:self->_timestamps forKey:@"timestamps"];
}

- (id)redactedDescription
{
  v19 = *MEMORY[0x277D85DE8];
  universalTimestamp = self->_universalTimestamp;
  if (universalTimestamp)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[all={.self=%llu, .others=%llu}]", -[CalSingleDatabaseInMemoryChangeTimestamp myself](universalTimestamp, "myself"), -[CalSingleDatabaseInMemoryChangeTimestamp others](self->_universalTimestamp, "others")];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_timestamps;
    v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v4 length] >= 2)
          {
            [v4 appendString:{@", "}];
          }

          v11 = [(NSDictionary *)self->_timestamps objectForKeyedSubscript:v10];
          [v4 appendFormat:@"%@={.self=%llu, .others=%llu}", v10, objc_msgSend(v11, "myself"), objc_msgSend(v11, "others")];
        }

        v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)doesTimestamp:(id)a3 includeAllChangesVisibleToTimestamp:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 timestamps];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v5 timestamps];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [v6 timestamps];
        v16 = [v15 objectForKeyedSubscript:v12];

        v17 = [v14 others];
        v18 = [v16 myself];

        if (v17 < v18)
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end