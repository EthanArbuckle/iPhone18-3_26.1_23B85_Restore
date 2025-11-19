@interface HDMCDeviceInfo
+ (id)deviceInfoFromStorageGroup:(id)a3;
+ (id)localDeviceInfoWithSettingsManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDMCDeviceInfo)initWithDayStreamProcessorAlgorithmVersion:(int64_t)a3 menstruationNotificationsEnabled:(BOOL)a4 fertileWindowNotificationsEnabled:(BOOL)a5;
- (id)description;
@end

@implementation HDMCDeviceInfo

+ (id)localDeviceInfoWithSettingsManager:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 dayStreamProcessorAlgorithmVersion];
  v7 = [v4 menstruationNotificationsEnabled];
  v8 = [v4 fertileWindowNotificationsEnabled];

  v9 = [v5 initWithDayStreamProcessorAlgorithmVersion:v6 menstruationNotificationsEnabled:v7 fertileWindowNotificationsEnabled:v8];

  return v9;
}

+ (id)deviceInfoFromStorageGroup:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = a3;
  v3 = [v25 storageEntries];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v26 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v26 = 0;
  v8 = *v28;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      v11 = [v10 key];
      v12 = [v11 isEqualToString:@"DayStreamProcessorAlgorithmVersion"];

      if (v12)
      {
        v13 = [v10 numberValue:0];
        v14 = v6;
        v6 = v13;
      }

      else
      {
        v15 = [v10 key];
        v16 = [v15 isEqualToString:@"MenstruationNotificationsEnabled"];

        if (v16)
        {
          v17 = [v10 numberValue:0];
          v14 = v7;
          v7 = v17;
        }

        else
        {
          v18 = [v10 key];
          v19 = [v18 isEqualToString:@"FertileWindowNotificationsEnabled"];

          if (!v19)
          {
            continue;
          }

          v20 = [v10 numberValue:0];
          v14 = v26;
          v26 = v20;
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v5);
LABEL_17:

  v21 = 0;
  if (v6)
  {
    v22 = v26;
    if (v7 && v26)
    {
      v21 = -[HDMCDeviceInfo initWithDayStreamProcessorAlgorithmVersion:menstruationNotificationsEnabled:fertileWindowNotificationsEnabled:]([HDMCDeviceInfo alloc], "initWithDayStreamProcessorAlgorithmVersion:menstruationNotificationsEnabled:fertileWindowNotificationsEnabled:", [v6 integerValue], objc_msgSend(v7, "BOOLValue"), objc_msgSend(v26, "BOOLValue"));
    }
  }

  else
  {
    v22 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (HDMCDeviceInfo)initWithDayStreamProcessorAlgorithmVersion:(int64_t)a3 menstruationNotificationsEnabled:(BOOL)a4 fertileWindowNotificationsEnabled:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = HDMCDeviceInfo;
  result = [(HDMCDeviceInfo *)&v9 init];
  if (result)
  {
    result->_dayStreamProcessorAlgorithmVersion = a3;
    result->_menstruationNotificationsEnabled = a4;
    result->_fertileWindowNotificationsEnabled = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_dayStreamProcessorAlgorithmVersion == v5->_dayStreamProcessorAlgorithmVersion && self->_menstruationNotificationsEnabled == v5->_menstruationNotificationsEnabled && self->_fertileWindowNotificationsEnabled == v5->_fertileWindowNotificationsEnabled;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dayStreamProcessorAlgorithmVersion];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_menstruationNotificationsEnabled];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_fertileWindowNotificationsEnabled];
  v8 = [v3 stringWithFormat:@"<%@ alg:%@ periodNotifications:%@ fertileWindowNotifications:%@", v4, v5, v6, v7];

  return v8;
}

@end