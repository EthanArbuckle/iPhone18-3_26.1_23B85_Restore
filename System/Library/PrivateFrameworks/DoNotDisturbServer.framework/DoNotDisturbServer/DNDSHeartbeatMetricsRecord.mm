@interface DNDSHeartbeatMetricsRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithEnabled:(BOOL)enabled manuallyEnabled:(BOOL)manuallyEnabled numberOfSessions:(id)sessions numberOfManualSessions:(id)manualSessions enabledFromControlCenterPhone:(BOOL)phone enabledFromControlCenterWatch:(BOOL)watch enabledForOneHour:(BOOL)hour enabledUntilEvening:(BOOL)self0 enabledUntilMorning:(BOOL)self1 enabledAtLocation:(BOOL)self2 enabledDuringEvent:(BOOL)self3 enabledDrivingMode:(BOOL)self4 enabledSleepMode:(BOOL)self5;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSHeartbeatMetricsRecord

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

  BYTE6(v15) = enabledSleepMode;
  BYTE5(v15) = enabledDrivingMode;
  BYTE4(v15) = enabledDuringEvent;
  BYTE3(v15) = enabledAtLocation;
  BYTE2(v15) = enabledUntilMorning;
  BYTE1(v15) = enabledUntilEvening;
  LOBYTE(v15) = enabledForOneHour;
  v13 = [DNDSHeartbeatMetricsRecord _initWithEnabled:"_initWithEnabled:manuallyEnabled:numberOfSessions:numberOfManualSessions:enabledFromControlCenterPhone:enabledFromControlCenterWatch:enabledForOneHour:enabledUntilEvening:enabledUntilMorning:enabledAtLocation:enabledDuringEvent:enabledDrivingMode:enabledSleepMode:" manuallyEnabled:enabled numberOfSessions:manuallyEnabled numberOfManualSessions:numberOfSessions enabledFromControlCenterPhone:numberOfManualSessions enabledFromControlCenterWatch:enabledFromControlCenterPhone enabledForOneHour:enabledFromControlCenterWatch enabledUntilEvening:v15 enabledUntilMorning:? enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:?];

  return v13;
}

- (id)_initWithEnabled:(BOOL)enabled manuallyEnabled:(BOOL)manuallyEnabled numberOfSessions:(id)sessions numberOfManualSessions:(id)manualSessions enabledFromControlCenterPhone:(BOOL)phone enabledFromControlCenterWatch:(BOOL)watch enabledForOneHour:(BOOL)hour enabledUntilEvening:(BOOL)self0 enabledUntilMorning:(BOOL)self1 enabledAtLocation:(BOOL)self2 enabledDuringEvent:(BOOL)self3 enabledDrivingMode:(BOOL)self4 enabledSleepMode:(BOOL)self5
{
  sessionsCopy = sessions;
  manualSessionsCopy = manualSessions;
  v32.receiver = self;
  v32.super_class = DNDSHeartbeatMetricsRecord;
  v23 = [(DNDSHeartbeatMetricsRecord *)&v32 init];
  v24 = v23;
  if (v23)
  {
    v23->_enabled = enabled;
    v23->_manuallyEnabled = manuallyEnabled;
    v25 = [sessionsCopy copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &unk_285C53568;
    }

    objc_storeStrong(&v24->_numberOfSessions, v27);

    v28 = [manualSessionsCopy copy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &unk_285C53568;
    }

    objc_storeStrong(&v24->_numberOfManualSessions, v30);

    v24->_enabledFromControlCenterPhone = phone;
    v24->_enabledFromControlCenterWatch = watch;
    v24->_enabledForOneHour = hour;
    v24->_enabledUntilEvening = evening;
    v24->_enabledUntilMorning = morning;
    v24->_enabledAtLocation = location;
    v24->_enabledDuringEvent = event;
    v24->_enabledDrivingMode = mode;
    v24->_enabledSleepMode = sleepMode;
  }

  return v24;
}

- (unint64_t)hash
{
  enabled = [(DNDSHeartbeatMetricsRecord *)self enabled];
  v4 = enabled ^ [(DNDSHeartbeatMetricsRecord *)self manuallyEnabled];
  numberOfSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
  v6 = [numberOfSessions hash];
  numberOfManualSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
  v8 = v6 ^ [numberOfManualSessions hash];
  v9 = v8 ^ [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterPhone]^ v4;
  enabledFromControlCenterWatch = [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterWatch];
  v11 = enabledFromControlCenterWatch ^ [(DNDSHeartbeatMetricsRecord *)self enabledForOneHour];
  v12 = v9 ^ v11 ^ [(DNDSHeartbeatMetricsRecord *)self enabledUntilEvening];
  enabledUntilMorning = [(DNDSHeartbeatMetricsRecord *)self enabledUntilMorning];
  v14 = enabledUntilMorning ^ [(DNDSHeartbeatMetricsRecord *)self enabledAtLocation];
  v15 = v14 ^ [(DNDSHeartbeatMetricsRecord *)self enabledDuringEvent];
  v16 = v12 ^ v15 ^ [(DNDSHeartbeatMetricsRecord *)self enabledDrivingMode];
  enabledSleepMode = [(DNDSHeartbeatMetricsRecord *)self enabledSleepMode];

  return v16 ^ enabledSleepMode;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      enabled = [(DNDSHeartbeatMetricsRecord *)self enabled];
      if (enabled != [(DNDSHeartbeatMetricsRecord *)v7 enabled]|| (v9 = [(DNDSHeartbeatMetricsRecord *)self manuallyEnabled], v9 != [(DNDSHeartbeatMetricsRecord *)v7 manuallyEnabled]))
      {
        LOBYTE(v10) = 0;
LABEL_42:

        goto LABEL_43;
      }

      numberOfSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
      numberOfSessions2 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfSessions];
      if (numberOfSessions != numberOfSessions2)
      {
        numberOfSessions3 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
        if (!numberOfSessions3)
        {
          LOBYTE(v10) = 0;
          goto LABEL_41;
        }

        v3 = numberOfSessions3;
        numberOfSessions4 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfSessions];
        if (!numberOfSessions4)
        {
          LOBYTE(v10) = 0;
LABEL_40:

          goto LABEL_41;
        }

        v15 = numberOfSessions4;
        numberOfSessions5 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
        numberOfSessions6 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfSessions];
        if (![numberOfSessions5 isEqual:numberOfSessions6])
        {
          LOBYTE(v10) = 0;
LABEL_39:

          goto LABEL_40;
        }

        v38 = numberOfSessions6;
        v39 = numberOfSessions5;
        v40 = v15;
      }

      numberOfManualSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
      numberOfManualSessions2 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfManualSessions];
      if (numberOfManualSessions != numberOfManualSessions2)
      {
        numberOfManualSessions3 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
        if (!numberOfManualSessions3)
        {
LABEL_29:

          LOBYTE(v10) = 0;
          goto LABEL_38;
        }

        numberOfSessions6 = numberOfManualSessions3;
        numberOfManualSessions4 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfManualSessions];
        if (!numberOfManualSessions4)
        {
          LOBYTE(v10) = 0;
LABEL_36:

          goto LABEL_37;
        }

        v21 = numberOfManualSessions4;
        v35 = v3;
        v22 = numberOfSessions6;
        numberOfManualSessions5 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
        numberOfManualSessions6 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfManualSessions];
        v37 = numberOfManualSessions5;
        if (![numberOfManualSessions5 isEqual:?])
        {
          LOBYTE(v10) = 0;
          numberOfSessions6 = v22;
          v3 = v35;
LABEL_35:

          goto LABEL_36;
        }

        v34 = v21;
        numberOfSessions6 = v22;
        v3 = v35;
      }

      enabledFromControlCenterPhone = [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterPhone];
      if (enabledFromControlCenterPhone != [(DNDSHeartbeatMetricsRecord *)v7 enabledFromControlCenterPhone]|| (v25 = [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterWatch], v25 != [(DNDSHeartbeatMetricsRecord *)v7 enabledFromControlCenterWatch]) || (v26 = [(DNDSHeartbeatMetricsRecord *)self enabledForOneHour], v26 != [(DNDSHeartbeatMetricsRecord *)v7 enabledForOneHour]) || (v27 = [(DNDSHeartbeatMetricsRecord *)self enabledUntilEvening], v27 != [(DNDSHeartbeatMetricsRecord *)v7 enabledUntilEvening]) || (v28 = [(DNDSHeartbeatMetricsRecord *)self enabledUntilMorning], v28 != [(DNDSHeartbeatMetricsRecord *)v7 enabledUntilMorning]) || (v29 = [(DNDSHeartbeatMetricsRecord *)self enabledAtLocation], v29 != [(DNDSHeartbeatMetricsRecord *)v7 enabledAtLocation]) || (v30 = [(DNDSHeartbeatMetricsRecord *)self enabledDuringEvent], v30 != [(DNDSHeartbeatMetricsRecord *)v7 enabledDuringEvent]) || (v31 = [(DNDSHeartbeatMetricsRecord *)self enabledDrivingMode], v31 != [(DNDSHeartbeatMetricsRecord *)v7 enabledDrivingMode]))
      {
        if (numberOfManualSessions != numberOfManualSessions2)
        {

          goto LABEL_29;
        }

        LOBYTE(v10) = 0;
LABEL_37:

LABEL_38:
        numberOfSessions5 = v39;
        v15 = v40;
        numberOfSessions6 = v38;
        if (numberOfSessions != numberOfSessions2)
        {
          goto LABEL_39;
        }

LABEL_41:

        goto LABEL_42;
      }

      enabledSleepMode = [(DNDSHeartbeatMetricsRecord *)self enabledSleepMode];
      v10 = enabledSleepMode ^ [(DNDSHeartbeatMetricsRecord *)v7 enabledSleepMode]^ 1;
      v21 = v34;
      if (numberOfManualSessions == numberOfManualSessions2)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    LOBYTE(v10) = 0;
  }

LABEL_43:

  return v10;
}

- (NSString)description
{
  v23 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  if ([(DNDSHeartbeatMetricsRecord *)self enabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v21 = v3;
  if ([(DNDSHeartbeatMetricsRecord *)self manuallyEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v20 = v4;
  numberOfSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
  numberOfManualSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
  if ([(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterPhone])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v18 = v6;
  if ([(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterWatch])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v17 = v7;
  if ([(DNDSHeartbeatMetricsRecord *)self enabledForOneHour])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(DNDSHeartbeatMetricsRecord *)self enabledUntilEvening])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(DNDSHeartbeatMetricsRecord *)self enabledUntilMorning])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(DNDSHeartbeatMetricsRecord *)self enabledAtLocation])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(DNDSHeartbeatMetricsRecord *)self enabledDuringEvent])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if ([(DNDSHeartbeatMetricsRecord *)self enabledDrivingMode])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(DNDSHeartbeatMetricsRecord *)self enabledSleepMode])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v23 stringWithFormat:@"<%@: %p enabled: %@; manuallyEnabled: %@; numberOfSessions: %@; numberOfManualSessions: %@; enabledFromControlCenterPhone: %@; enabledFromControlCenterWatch: %@; enabledForOneHour: %@; enabledUntilEvening: %@; enabledUntilMorning: %@; enabledAtLocation: %@; enabledDuringEvent: %@; enabledDrivingMode: %@; enabledSleepMode: %@>", v22, self, v21, v20, numberOfSessions, numberOfManualSessions, v18, v17, v8, v9, v10, v11, v12, v13, v14];;

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableHeartbeatMetricsRecord alloc];

  return [(DNDSHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v21 = [representationCopy bs_BOOLForKey:@"enabled"];
  v19 = [representationCopy bs_BOOLForKey:@"manuallyEnabled"];
  v5 = [representationCopy bs_safeObjectForKey:@"numOfSessions" ofType:objc_opt_class()];
  v6 = [representationCopy bs_safeObjectForKey:@"numOfManualSessions" ofType:objc_opt_class()];
  v18 = [representationCopy bs_BOOLForKey:@"enabledFromControlCenterPhone"];
  v17 = [representationCopy bs_BOOLForKey:@"enabledFromControlCenterWatch"];
  v7 = [representationCopy bs_BOOLForKey:@"enabledForOneHour"];
  v8 = [representationCopy bs_BOOLForKey:@"enabledUntilEvening"];
  v9 = [representationCopy bs_BOOLForKey:@"enabledUntilMorning"];
  v10 = [representationCopy bs_BOOLForKey:@"enabledAtLocation"];
  v11 = [representationCopy bs_BOOLForKey:@"enabledDuringEvent"];
  v12 = [representationCopy bs_BOOLForKey:@"enabledDrivingMode"];
  v13 = [representationCopy bs_BOOLForKey:@"enabledSleepMode"];

  BYTE6(v16) = v13;
  BYTE5(v16) = v12;
  BYTE4(v16) = v11;
  BYTE3(v16) = v10;
  BYTE2(v16) = v9;
  BYTE1(v16) = v8;
  LOBYTE(v16) = v7;
  v14 = [[self alloc] _initWithEnabled:v21 manuallyEnabled:v19 numberOfSessions:v5 numberOfManualSessions:v6 enabledFromControlCenterPhone:v18 enabledFromControlCenterWatch:v17 enabledForOneHour:v16 enabledUntilEvening:? enabledUntilMorning:? enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:?];

  return v14;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabled](self, "enabled")}];
  [dictionary setObject:v5 forKey:@"enabled"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord manuallyEnabled](self, "manuallyEnabled")}];
  [dictionary setObject:v6 forKey:@"manuallyEnabled"];

  numberOfSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
  [dictionary setObject:numberOfSessions forKey:@"numOfSessions"];

  numberOfManualSessions = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
  [dictionary setObject:numberOfManualSessions forKey:@"numOfManualSessions"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledFromControlCenterPhone](self, "enabledFromControlCenterPhone")}];
  [dictionary setObject:v9 forKey:@"enabledFromControlCenterPhone"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledFromControlCenterWatch](self, "enabledFromControlCenterWatch")}];
  [dictionary setObject:v10 forKey:@"enabledFromControlCenterWatch"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledForOneHour](self, "enabledForOneHour")}];
  [dictionary setObject:v11 forKey:@"enabledForOneHour"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledUntilEvening](self, "enabledUntilEvening")}];
  [dictionary setObject:v12 forKey:@"enabledUntilEvening"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledUntilMorning](self, "enabledUntilMorning")}];
  [dictionary setObject:v13 forKey:@"enabledUntilMorning"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledAtLocation](self, "enabledAtLocation")}];
  [dictionary setObject:v14 forKey:@"enabledAtLocation"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledDuringEvent](self, "enabledDuringEvent")}];
  [dictionary setObject:v15 forKey:@"enabledDuringEvent"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledDrivingMode](self, "enabledDrivingMode")}];
  [dictionary setObject:v16 forKey:@"enabledDrivingMode"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledSleepMode](self, "enabledSleepMode")}];
  [dictionary setObject:v17 forKey:@"enabledSleepMode"];

  return dictionary;
}

@end