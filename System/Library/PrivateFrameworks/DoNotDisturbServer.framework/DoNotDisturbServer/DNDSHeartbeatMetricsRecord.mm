@interface DNDSHeartbeatMetricsRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithEnabled:(BOOL)a3 manuallyEnabled:(BOOL)a4 numberOfSessions:(id)a5 numberOfManualSessions:(id)a6 enabledFromControlCenterPhone:(BOOL)a7 enabledFromControlCenterWatch:(BOOL)a8 enabledForOneHour:(BOOL)a9 enabledUntilEvening:(BOOL)a10 enabledUntilMorning:(BOOL)a11 enabledAtLocation:(BOOL)a12 enabledDuringEvent:(BOOL)a13 enabledDrivingMode:(BOOL)a14 enabledSleepMode:(BOOL)a15;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSHeartbeatMetricsRecord

- (id)_initWithRecord:(id)a3
{
  v3 = a3;
  v19 = [v3 enabled];
  v18 = [v3 manuallyEnabled];
  v4 = [v3 numberOfSessions];
  v5 = [v3 numberOfManualSessions];
  v17 = [v3 enabledFromControlCenterPhone];
  v16 = [v3 enabledFromControlCenterWatch];
  v6 = [v3 enabledForOneHour];
  v7 = [v3 enabledUntilEvening];
  v8 = [v3 enabledUntilMorning];
  v9 = [v3 enabledAtLocation];
  v10 = [v3 enabledDuringEvent];
  v11 = [v3 enabledDrivingMode];
  v12 = [v3 enabledSleepMode];

  BYTE6(v15) = v12;
  BYTE5(v15) = v11;
  BYTE4(v15) = v10;
  BYTE3(v15) = v9;
  BYTE2(v15) = v8;
  BYTE1(v15) = v7;
  LOBYTE(v15) = v6;
  v13 = [DNDSHeartbeatMetricsRecord _initWithEnabled:"_initWithEnabled:manuallyEnabled:numberOfSessions:numberOfManualSessions:enabledFromControlCenterPhone:enabledFromControlCenterWatch:enabledForOneHour:enabledUntilEvening:enabledUntilMorning:enabledAtLocation:enabledDuringEvent:enabledDrivingMode:enabledSleepMode:" manuallyEnabled:v19 numberOfSessions:v18 numberOfManualSessions:v4 enabledFromControlCenterPhone:v5 enabledFromControlCenterWatch:v17 enabledForOneHour:v16 enabledUntilEvening:v15 enabledUntilMorning:? enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:?];

  return v13;
}

- (id)_initWithEnabled:(BOOL)a3 manuallyEnabled:(BOOL)a4 numberOfSessions:(id)a5 numberOfManualSessions:(id)a6 enabledFromControlCenterPhone:(BOOL)a7 enabledFromControlCenterWatch:(BOOL)a8 enabledForOneHour:(BOOL)a9 enabledUntilEvening:(BOOL)a10 enabledUntilMorning:(BOOL)a11 enabledAtLocation:(BOOL)a12 enabledDuringEvent:(BOOL)a13 enabledDrivingMode:(BOOL)a14 enabledSleepMode:(BOOL)a15
{
  v21 = a5;
  v22 = a6;
  v32.receiver = self;
  v32.super_class = DNDSHeartbeatMetricsRecord;
  v23 = [(DNDSHeartbeatMetricsRecord *)&v32 init];
  v24 = v23;
  if (v23)
  {
    v23->_enabled = a3;
    v23->_manuallyEnabled = a4;
    v25 = [v21 copy];
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

    v28 = [v22 copy];
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

    v24->_enabledFromControlCenterPhone = a7;
    v24->_enabledFromControlCenterWatch = a8;
    v24->_enabledForOneHour = a9;
    v24->_enabledUntilEvening = a10;
    v24->_enabledUntilMorning = a11;
    v24->_enabledAtLocation = a12;
    v24->_enabledDuringEvent = a13;
    v24->_enabledDrivingMode = a14;
    v24->_enabledSleepMode = a15;
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(DNDSHeartbeatMetricsRecord *)self enabled];
  v4 = v3 ^ [(DNDSHeartbeatMetricsRecord *)self manuallyEnabled];
  v5 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
  v6 = [v5 hash];
  v7 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
  v8 = v6 ^ [v7 hash];
  v9 = v8 ^ [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterPhone]^ v4;
  v10 = [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterWatch];
  v11 = v10 ^ [(DNDSHeartbeatMetricsRecord *)self enabledForOneHour];
  v12 = v9 ^ v11 ^ [(DNDSHeartbeatMetricsRecord *)self enabledUntilEvening];
  v13 = [(DNDSHeartbeatMetricsRecord *)self enabledUntilMorning];
  v14 = v13 ^ [(DNDSHeartbeatMetricsRecord *)self enabledAtLocation];
  v15 = v14 ^ [(DNDSHeartbeatMetricsRecord *)self enabledDuringEvent];
  v16 = v12 ^ v15 ^ [(DNDSHeartbeatMetricsRecord *)self enabledDrivingMode];
  v17 = [(DNDSHeartbeatMetricsRecord *)self enabledSleepMode];

  return v16 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(DNDSHeartbeatMetricsRecord *)self enabled];
      if (v8 != [(DNDSHeartbeatMetricsRecord *)v7 enabled]|| (v9 = [(DNDSHeartbeatMetricsRecord *)self manuallyEnabled], v9 != [(DNDSHeartbeatMetricsRecord *)v7 manuallyEnabled]))
      {
        LOBYTE(v10) = 0;
LABEL_42:

        goto LABEL_43;
      }

      v11 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
      v12 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfSessions];
      if (v11 != v12)
      {
        v13 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
        if (!v13)
        {
          LOBYTE(v10) = 0;
          goto LABEL_41;
        }

        v3 = v13;
        v14 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfSessions];
        if (!v14)
        {
          LOBYTE(v10) = 0;
LABEL_40:

          goto LABEL_41;
        }

        v15 = v14;
        v16 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
        v4 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfSessions];
        if (![v16 isEqual:v4])
        {
          LOBYTE(v10) = 0;
LABEL_39:

          goto LABEL_40;
        }

        v38 = v4;
        v39 = v16;
        v40 = v15;
      }

      v17 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
      v18 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfManualSessions];
      if (v17 != v18)
      {
        v19 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
        if (!v19)
        {
LABEL_29:

          LOBYTE(v10) = 0;
          goto LABEL_38;
        }

        v4 = v19;
        v20 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfManualSessions];
        if (!v20)
        {
          LOBYTE(v10) = 0;
LABEL_36:

          goto LABEL_37;
        }

        v21 = v20;
        v35 = v3;
        v22 = v4;
        v23 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
        v36 = [(DNDSHeartbeatMetricsRecord *)v7 numberOfManualSessions];
        v37 = v23;
        if (![v23 isEqual:?])
        {
          LOBYTE(v10) = 0;
          v4 = v22;
          v3 = v35;
LABEL_35:

          goto LABEL_36;
        }

        v34 = v21;
        v4 = v22;
        v3 = v35;
      }

      v24 = [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterPhone];
      if (v24 != [(DNDSHeartbeatMetricsRecord *)v7 enabledFromControlCenterPhone]|| (v25 = [(DNDSHeartbeatMetricsRecord *)self enabledFromControlCenterWatch], v25 != [(DNDSHeartbeatMetricsRecord *)v7 enabledFromControlCenterWatch]) || (v26 = [(DNDSHeartbeatMetricsRecord *)self enabledForOneHour], v26 != [(DNDSHeartbeatMetricsRecord *)v7 enabledForOneHour]) || (v27 = [(DNDSHeartbeatMetricsRecord *)self enabledUntilEvening], v27 != [(DNDSHeartbeatMetricsRecord *)v7 enabledUntilEvening]) || (v28 = [(DNDSHeartbeatMetricsRecord *)self enabledUntilMorning], v28 != [(DNDSHeartbeatMetricsRecord *)v7 enabledUntilMorning]) || (v29 = [(DNDSHeartbeatMetricsRecord *)self enabledAtLocation], v29 != [(DNDSHeartbeatMetricsRecord *)v7 enabledAtLocation]) || (v30 = [(DNDSHeartbeatMetricsRecord *)self enabledDuringEvent], v30 != [(DNDSHeartbeatMetricsRecord *)v7 enabledDuringEvent]) || (v31 = [(DNDSHeartbeatMetricsRecord *)self enabledDrivingMode], v31 != [(DNDSHeartbeatMetricsRecord *)v7 enabledDrivingMode]))
      {
        if (v17 != v18)
        {

          goto LABEL_29;
        }

        LOBYTE(v10) = 0;
LABEL_37:

LABEL_38:
        v16 = v39;
        v15 = v40;
        v4 = v38;
        if (v11 != v12)
        {
          goto LABEL_39;
        }

LABEL_41:

        goto LABEL_42;
      }

      v33 = [(DNDSHeartbeatMetricsRecord *)self enabledSleepMode];
      v10 = v33 ^ [(DNDSHeartbeatMetricsRecord *)v7 enabledSleepMode]^ 1;
      v21 = v34;
      if (v17 == v18)
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
  v19 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
  v5 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
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

  v15 = [v23 stringWithFormat:@"<%@: %p enabled: %@; manuallyEnabled: %@; numberOfSessions: %@; numberOfManualSessions: %@; enabledFromControlCenterPhone: %@; enabledFromControlCenterWatch: %@; enabledForOneHour: %@; enabledUntilEvening: %@; enabledUntilMorning: %@; enabledAtLocation: %@; enabledDuringEvent: %@; enabledDrivingMode: %@; enabledSleepMode: %@>", v22, self, v21, v20, v19, v5, v18, v17, v8, v9, v10, v11, v12, v13, v14];;

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableHeartbeatMetricsRecord alloc];

  return [(DNDSHeartbeatMetricsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v4 = a3;
  v21 = [v4 bs_BOOLForKey:@"enabled"];
  v19 = [v4 bs_BOOLForKey:@"manuallyEnabled"];
  v5 = [v4 bs_safeObjectForKey:@"numOfSessions" ofType:objc_opt_class()];
  v6 = [v4 bs_safeObjectForKey:@"numOfManualSessions" ofType:objc_opt_class()];
  v18 = [v4 bs_BOOLForKey:@"enabledFromControlCenterPhone"];
  v17 = [v4 bs_BOOLForKey:@"enabledFromControlCenterWatch"];
  v7 = [v4 bs_BOOLForKey:@"enabledForOneHour"];
  v8 = [v4 bs_BOOLForKey:@"enabledUntilEvening"];
  v9 = [v4 bs_BOOLForKey:@"enabledUntilMorning"];
  v10 = [v4 bs_BOOLForKey:@"enabledAtLocation"];
  v11 = [v4 bs_BOOLForKey:@"enabledDuringEvent"];
  v12 = [v4 bs_BOOLForKey:@"enabledDrivingMode"];
  v13 = [v4 bs_BOOLForKey:@"enabledSleepMode"];

  BYTE6(v16) = v13;
  BYTE5(v16) = v12;
  BYTE4(v16) = v11;
  BYTE3(v16) = v10;
  BYTE2(v16) = v9;
  BYTE1(v16) = v8;
  LOBYTE(v16) = v7;
  v14 = [[a1 alloc] _initWithEnabled:v21 manuallyEnabled:v19 numberOfSessions:v5 numberOfManualSessions:v6 enabledFromControlCenterPhone:v18 enabledFromControlCenterWatch:v17 enabledForOneHour:v16 enabledUntilEvening:? enabledUntilMorning:? enabledAtLocation:? enabledDuringEvent:? enabledDrivingMode:? enabledSleepMode:?];

  return v14;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabled](self, "enabled")}];
  [v4 setObject:v5 forKey:@"enabled"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord manuallyEnabled](self, "manuallyEnabled")}];
  [v4 setObject:v6 forKey:@"manuallyEnabled"];

  v7 = [(DNDSHeartbeatMetricsRecord *)self numberOfSessions];
  [v4 setObject:v7 forKey:@"numOfSessions"];

  v8 = [(DNDSHeartbeatMetricsRecord *)self numberOfManualSessions];
  [v4 setObject:v8 forKey:@"numOfManualSessions"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledFromControlCenterPhone](self, "enabledFromControlCenterPhone")}];
  [v4 setObject:v9 forKey:@"enabledFromControlCenterPhone"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledFromControlCenterWatch](self, "enabledFromControlCenterWatch")}];
  [v4 setObject:v10 forKey:@"enabledFromControlCenterWatch"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledForOneHour](self, "enabledForOneHour")}];
  [v4 setObject:v11 forKey:@"enabledForOneHour"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledUntilEvening](self, "enabledUntilEvening")}];
  [v4 setObject:v12 forKey:@"enabledUntilEvening"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledUntilMorning](self, "enabledUntilMorning")}];
  [v4 setObject:v13 forKey:@"enabledUntilMorning"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledAtLocation](self, "enabledAtLocation")}];
  [v4 setObject:v14 forKey:@"enabledAtLocation"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledDuringEvent](self, "enabledDuringEvent")}];
  [v4 setObject:v15 forKey:@"enabledDuringEvent"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledDrivingMode](self, "enabledDrivingMode")}];
  [v4 setObject:v16 forKey:@"enabledDrivingMode"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSHeartbeatMetricsRecord enabledSleepMode](self, "enabledSleepMode")}];
  [v4 setObject:v17 forKey:@"enabledSleepMode"];

  return v4;
}

@end