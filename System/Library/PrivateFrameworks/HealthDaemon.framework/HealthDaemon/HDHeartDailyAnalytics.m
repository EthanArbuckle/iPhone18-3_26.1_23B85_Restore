@interface HDHeartDailyAnalytics
- (HDHeartDailyAnalytics)init;
- (NSDictionary)payload;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateAgeInYears:(id)a3;
- (void)updateCountAnalyzedTachogramsPast24Hours:(int64_t)a3;
- (void)updateCountMobileAssetsDownloadedPast24Hours:(int64_t)a3;
- (void)updateCountRecordedTachogramsPast24Hours:(int64_t)a3;
- (void)updateElectrocardiogramClassificationCount:(int64_t)a3;
- (void)updateIrregularRhythmNotificationClassificationCount:(int64_t)a3;
- (void)updateSex:(int64_t)a3;
- (void)updateWithElectrocardiogramClassifications:(id)a3 isWithin24HoursPostIRN:(BOOL)a4;
@end

@implementation HDHeartDailyAnalytics

- (HDHeartDailyAnalytics)init
{
  v6.receiver = self;
  v6.super_class = HDHeartDailyAnalytics;
  v2 = [(HDHeartDailyAnalytics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    payload = v2->_payload;
    v2->_payload = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableDictionary *)self->_payload copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (NSDictionary)payload
{
  v2 = [(NSMutableDictionary *)self->_payload copy];

  return v2;
}

- (void)updateElectrocardiogramClassificationCount:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"ecgCount"];
}

- (void)updateIrregularRhythmNotificationClassificationCount:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"irregularRhythmNotificationCount"];
}

- (void)updateWithElectrocardiogramClassifications:(id)a3 isWithin24HoursPostIRN:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) unsignedIntegerValue];
        if (!v4)
        {
          if (self)
          {
            v12 = off_27862D970;
            v13 = @"ecgClassificationCountWithin24HoursUnknown";
            if (v11 > 0xA)
            {
              goto LABEL_13;
            }

LABEL_12:
            v13 = v12[v11];
            goto LABEL_13;
          }

LABEL_18:
          v13 = 0;
          goto LABEL_13;
        }

        if (!self)
        {
          goto LABEL_18;
        }

        v12 = off_27862D918;
        v13 = @"ecgClassificationCountWithin24HoursPostIRNUnknown";
        if (v11 < 0xB)
        {
          goto LABEL_12;
        }

LABEL_13:
        v14 = v13;
        v15 = [(NSMutableDictionary *)self->_payload objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "integerValue") + 1}];
          [(NSMutableDictionary *)self->_payload setObject:v17 forKeyedSubscript:v14];
        }

        else
        {
          [(NSMutableDictionary *)self->_payload setObject:&unk_283CB3FA8 forKeyedSubscript:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v18 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateCountRecordedTachogramsPast24Hours:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"countRecordedTachogramsPast24Hours"];
}

- (void)updateCountAnalyzedTachogramsPast24Hours:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"countAnalyzedTachogramsPast24Hours"];
}

- (void)updateCountMobileAssetsDownloadedPast24Hours:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"countMobileAssetsDownloadedPast24Hours"];
}

- (void)updateAgeInYears:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = v4;
  v9 = v6;
  if (v6)
  {
    if ([v6 integerValue] >= 22)
    {
      if ([v9 integerValue] >= 30)
      {
        if ([v9 integerValue] > 99)
        {
          v7 = 100;
        }

        else
        {
          v7 = 10 * ([v9 integerValue] / 10);
        }
      }

      else
      {
        v7 = 22;
      }
    }

    else
    {
      v7 = 21;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = [v5 numberWithInteger:v7];
  [(NSMutableDictionary *)self->_payload setObject:v8 forKeyedSubscript:@"age"];
}

- (void)updateSex:(int64_t)a3
{
  if (a3 > 3)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_27862D9C8[a3];
  }

  [(NSMutableDictionary *)self->_payload setObject:v3 forKeyedSubscript:@"sex"];
}

@end