@interface NWStatsSnapshot
+ (double)_intervalWithContinuousTime:(unint64_t)a3;
+ (double)_referenceIntervalWithContinuousTime:(unint64_t)a3;
+ (void)initialize;
- (BOOL)attributedEntityIsBundleName;
- (BOOL)attributedEntityIsProcessName;
- (BOOL)isADaemon;
- (NSString)attributionReasonString;
- (NSString)delegateAttributionReasonString;
- (NSString)snapshotReasonString;
- (id)_createNSUUIDForBytes:(unsigned __int8)a3[16];
- (id)extensionDictionaries;
@end

@implementation NWStatsSnapshot

- (BOOL)isADaemon
{
  if ([(NWStatsSnapshot *)self delegateAttributionReason])
  {
    return 1;
  }

  else
  {
    return attributionReasonImpliesBundleName([(NWStatsSnapshot *)self attributionReason]) ^ 1;
  }
}

- (NSString)snapshotReasonString
{
  v2 = self->_snapshotReason - 1;
  if (v2 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_27996E270 + v2);
  }
}

- (id)_createNSUUIDForBytes:(unsigned __int8)a3[16]
{
  if (uuid_is_null(a3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  }

  return v4;
}

- (NSString)attributionReasonString
{
  v2 = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonString(v2);
}

- (NSString)delegateAttributionReasonString
{
  v2 = [(NWStatsSnapshot *)self delegateAttributionReason];

  return attributionReasonString(v2);
}

- (BOOL)attributedEntityIsBundleName
{
  v2 = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesBundleName(v2);
}

- (BOOL)attributedEntityIsProcessName
{
  v2 = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesProcessName(v2);
}

+ (double)_intervalWithContinuousTime:(unint64_t)a3
{
  LODWORD(v3) = timebase_info_1;
  LODWORD(v4) = *algn_280C54FDC;
  return a3 * v3 / v4 / 1000000000.0;
}

+ (double)_referenceIntervalWithContinuousTime:(unint64_t)a3
{
  v5 = 9;
  do
  {
    v6 = mach_continuous_time();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = mach_continuous_time() - v6;
    [a1 _intervalWithContinuousTime:v9];
  }

  while (v10 * 1000000.0 >= 50.0 && v5-- != 0);
  v12 = v6 + (v9 >> 1);
  if (v12 <= a3)
  {
    [a1 _intervalWithContinuousTime:a3 - v12];
    return v8 + v15;
  }

  else
  {
    [a1 _intervalWithContinuousTime:v12 - a3];
    return v8 - v13;
  }
}

+ (void)initialize
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = mach_timebase_info(&timebase_info_1);
  if (v2)
  {
    v3 = v2;
    v4 = NStatGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_25BA3A000, v4, OS_LOG_TYPE_ERROR, "mach_timebase_info failed %d", v6, 8u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)extensionDictionaries
{
  v21 = *MEMORY[0x277D85DE8];
  extensionDictionaries = self->_extensionDictionaries;
  if (!extensionDictionaries)
  {
    if (self->_extensions)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = [(NWStatsSnapshot *)self extensions];
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * v9);
            v11 = [(NWStatsSnapshot *)self extensions];
            v12 = [v11 objectForKeyedSubscript:v10];
            [(NSDictionary *)v4 setObject:v12 forKeyedSubscript:v10];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }

      v13 = self->_extensionDictionaries;
      self->_extensionDictionaries = v4;

      extensionDictionaries = self->_extensionDictionaries;
    }

    else
    {
      extensionDictionaries = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return extensionDictionaries;
}

@end