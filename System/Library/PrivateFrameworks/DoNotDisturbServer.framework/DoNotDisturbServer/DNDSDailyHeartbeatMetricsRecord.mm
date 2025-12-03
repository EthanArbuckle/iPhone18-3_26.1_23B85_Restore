@interface DNDSDailyHeartbeatMetricsRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)_initWithRecord:(id)record;
- (id)description;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSDailyHeartbeatMetricsRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  enabled = [recordCopy enabled];
  manuallyEnabled = [recordCopy manuallyEnabled];
  numberOfSessions = [recordCopy numberOfSessions];
  numberOfManualSessions = [recordCopy numberOfManualSessions];
  enabledFromControlCenterPhone = [recordCopy enabledFromControlCenterPhone];
  enabledFromControlCenterWatch = [recordCopy enabledFromControlCenterWatch];
  enabledForOneHour = [recordCopy enabledForOneHour];
  enabledUntilEvening = [recordCopy enabledUntilEvening];
  enabledUntilMorning = [recordCopy enabledUntilMorning];
  enabledAtLocation = [recordCopy enabledAtLocation];
  enabledDuringEvent = [recordCopy enabledDuringEvent];
  enabledDrivingMode = [recordCopy enabledDrivingMode];
  enabledSleepMode = [recordCopy enabledSleepMode];
  dayOfWeek = [recordCopy dayOfWeek];

  BYTE6(v15) = enabledSleepMode;
  BYTE5(v15) = enabledDrivingMode;
  BYTE4(v15) = enabledDuringEvent;
  BYTE3(v15) = enabledAtLocation;
  BYTE2(v15) = enabledUntilMorning;
  BYTE1(v15) = enabledUntilEvening;
  LOBYTE(v15) = enabledForOneHour;
  v13 = [DNDSDailyHeartbeatMetricsRecord _initWithEnabled:"_initWithEnabled:manuallyEnabled:numberOfSessions:numberOfManualSessions:enabledFromControlCenterPhone:enabledFromControlCenterWatch:enabledForOneHour:enabledUntilEvening:enabledUntilMorning:enabledAtLocation:enabledDuringEvent:enabledDrivingMode:enabledSleepMode:dayOfWeek:" manuallyEnabled:enabled numberOfSessions:manuallyEnabled numberOfManualSessions:numberOfSessions enabledFromControlCenterPhone:numberOfManualSessions enabledFromControlCenterWatch:enabledFromControlCenterPhone enabledForOneHour:enabledFromControlCenterWatch enabledUntilEvening:v15 enabledUntilMorning:dayOfWeek enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:? dayOfWeek:?];

  return v13;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = DNDSDailyHeartbeatMetricsRecord;
  v3 = [(DNDSHeartbeatMetricsRecord *)&v7 hash];
  dayOfWeek = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
  v5 = [dayOfWeek hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v14.receiver = self;
      v14.super_class = DNDSDailyHeartbeatMetricsRecord;
      if ([(DNDSHeartbeatMetricsRecord *)&v14 isEqual:v5])
      {
        dayOfWeek = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
        dayOfWeek2 = [(DNDSDailyHeartbeatMetricsRecord *)v5 dayOfWeek];
        if (dayOfWeek == dayOfWeek2)
        {
          v12 = 1;
        }

        else
        {
          dayOfWeek3 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
          if (dayOfWeek3)
          {
            dayOfWeek4 = [(DNDSDailyHeartbeatMetricsRecord *)v5 dayOfWeek];
            if (dayOfWeek4)
            {
              dayOfWeek5 = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
              dayOfWeek6 = [(DNDSDailyHeartbeatMetricsRecord *)v5 dayOfWeek];
              v12 = [dayOfWeek5 isEqual:dayOfWeek6];
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
  dayOfWeek = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
  v7 = [v3 stringWithFormat:@"<%@: %p %@; dayOfWeek: %@>", v4, self, v5, dayOfWeek];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableDailyHeartbeatMetricsRecord alloc];

  return [(DNDSDailyHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v7 = [DNDSHeartbeatMetricsRecord newWithDictionaryRepresentation:representationCopy context:context];
  v8 = [representationCopy bs_safeObjectForKey:@"dayOfWeek" ofType:objc_opt_class()];

  v23 = [self alloc];
  enabled = [v7 enabled];
  manuallyEnabled = [v7 manuallyEnabled];
  numberOfSessions = [v7 numberOfSessions];
  numberOfManualSessions = [v7 numberOfManualSessions];
  enabledFromControlCenterPhone = [v7 enabledFromControlCenterPhone];
  enabledFromControlCenterWatch = [v7 enabledFromControlCenterWatch];
  enabledForOneHour = [v7 enabledForOneHour];
  LOBYTE(representationCopy) = [v7 enabledUntilEvening];
  enabledUntilMorning = [v7 enabledUntilMorning];
  enabledAtLocation = [v7 enabledAtLocation];
  enabledDuringEvent = [v7 enabledDuringEvent];
  enabledDrivingMode = [v7 enabledDrivingMode];
  BYTE6(v18) = [v7 enabledSleepMode];
  BYTE5(v18) = enabledDrivingMode;
  BYTE4(v18) = enabledDuringEvent;
  BYTE3(v18) = enabledAtLocation;
  BYTE2(v18) = enabledUntilMorning;
  BYTE1(v18) = representationCopy;
  LOBYTE(v18) = enabledForOneHour;
  v16 = [v23 _initWithEnabled:enabled manuallyEnabled:manuallyEnabled numberOfSessions:numberOfSessions numberOfManualSessions:numberOfManualSessions enabledFromControlCenterPhone:enabledFromControlCenterPhone enabledFromControlCenterWatch:enabledFromControlCenterWatch enabledForOneHour:v18 enabledUntilEvening:v8 enabledUntilMorning:? enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:? dayOfWeek:?];

  return v16;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = DNDSDailyHeartbeatMetricsRecord;
  v4 = [(DNDSHeartbeatMetricsRecord *)&v8 dictionaryRepresentationWithContext:context];
  v5 = [v4 mutableCopy];

  dayOfWeek = [(DNDSDailyHeartbeatMetricsRecord *)self dayOfWeek];
  [v5 setObject:dayOfWeek forKey:@"dayOfWeek"];

  return v5;
}

@end