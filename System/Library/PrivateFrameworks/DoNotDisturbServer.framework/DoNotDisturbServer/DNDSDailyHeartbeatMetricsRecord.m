@interface DNDSDailyHeartbeatMetricsRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithRecord:(id)a3;
- (id)description;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSDailyHeartbeatMetricsRecord

- (id)_initWithRecord:(id)a3
{
  v3 = a3;
  v20 = [v3 enabled];
  v19 = [v3 manuallyEnabled];
  v18 = [v3 numberOfSessions];
  v4 = [v3 numberOfManualSessions];
  v17 = [v3 enabledFromControlCenterPhone];
  v16 = [v3 enabledFromControlCenterWatch];
  v5 = [v3 enabledForOneHour];
  v6 = [v3 enabledUntilEvening];
  v7 = [v3 enabledUntilMorning];
  v8 = [v3 enabledAtLocation];
  v9 = [v3 enabledDuringEvent];
  v10 = [v3 enabledDrivingMode];
  v11 = [v3 enabledSleepMode];
  v12 = [v3 dayOfWeek];

  BYTE6(v15) = v11;
  BYTE5(v15) = v10;
  BYTE4(v15) = v9;
  BYTE3(v15) = v8;
  BYTE2(v15) = v7;
  BYTE1(v15) = v6;
  LOBYTE(v15) = v5;
  v13 = [DNDSDailyHeartbeatMetricsRecord _initWithEnabled:"_initWithEnabled:manuallyEnabled:numberOfSessions:numberOfManualSessions:enabledFromControlCenterPhone:enabledFromControlCenterWatch:enabledForOneHour:enabledUntilEvening:enabledUntilMorning:enabledAtLocation:enabledDuringEvent:enabledDrivingMode:enabledSleepMode:dayOfWeek:" manuallyEnabled:v20 numberOfSessions:v19 numberOfManualSessions:v18 enabledFromControlCenterPhone:v4 enabledFromControlCenterWatch:v17 enabledForOneHour:v16 enabledUntilEvening:v15 enabledUntilMorning:v12 enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:? dayOfWeek:?];

  return v13;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = DNDSDailyHeartbeatMetricsRecord;
  v3 = [(DNDSHeartbeatMetricsRecord *)&v7 hash];
  v4 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v14.receiver = self;
      v14.super_class = DNDSDailyHeartbeatMetricsRecord;
      if ([(DNDSHeartbeatMetricsRecord *)&v14 isEqual:v5])
      {
        v6 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
        v7 = [(DNDSDailyHeartbeatMetricsRecord *)v5 dayOfWeek];
        if (v6 == v7)
        {
          v12 = 1;
        }

        else
        {
          v8 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
          if (v8)
          {
            v9 = [(DNDSDailyHeartbeatMetricsRecord *)v5 dayOfWeek];
            if (v9)
            {
              v10 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
              v11 = [(DNDSDailyHeartbeatMetricsRecord *)v5 dayOfWeek];
              v12 = [v10 isEqual:v11];
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9.receiver = self;
  v9.super_class = DNDSDailyHeartbeatMetricsRecord;
  v5 = [(DNDSHeartbeatMetricsRecord *)&v9 description];
  v6 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
  v7 = [v3 stringWithFormat:@"<%@: %p %@; dayOfWeek: %@>", v4, self, v5, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableDailyHeartbeatMetricsRecord alloc];

  return [(DNDSDailyHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [DNDSHeartbeatMetricsRecord newWithDictionaryRepresentation:v6 context:a4];
  v8 = [v6 bs_safeObjectForKey:@"dayOfWeek" ofType:objc_opt_class()];

  v23 = [a1 alloc];
  v22 = [v7 enabled];
  v21 = [v7 manuallyEnabled];
  v9 = [v7 numberOfSessions];
  v10 = [v7 numberOfManualSessions];
  v20 = [v7 enabledFromControlCenterPhone];
  v19 = [v7 enabledFromControlCenterWatch];
  v11 = [v7 enabledForOneHour];
  LOBYTE(v6) = [v7 enabledUntilEvening];
  v12 = [v7 enabledUntilMorning];
  v13 = [v7 enabledAtLocation];
  v14 = [v7 enabledDuringEvent];
  v15 = [v7 enabledDrivingMode];
  BYTE6(v18) = [v7 enabledSleepMode];
  BYTE5(v18) = v15;
  BYTE4(v18) = v14;
  BYTE3(v18) = v13;
  BYTE2(v18) = v12;
  BYTE1(v18) = v6;
  LOBYTE(v18) = v11;
  v16 = [v23 _initWithEnabled:v22 manuallyEnabled:v21 numberOfSessions:v9 numberOfManualSessions:v10 enabledFromControlCenterPhone:v20 enabledFromControlCenterWatch:v19 enabledForOneHour:v18 enabledUntilEvening:v8 enabledUntilMorning:? enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:? dayOfWeek:?];

  return v16;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = DNDSDailyHeartbeatMetricsRecord;
  v4 = [(DNDSHeartbeatMetricsRecord *)&v8 dictionaryRepresentationWithContext:a3];
  v5 = [v4 mutableCopy];

  v6 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
  [v5 setObject:v6 forKey:@"dayOfWeek"];

  return v5;
}

@end