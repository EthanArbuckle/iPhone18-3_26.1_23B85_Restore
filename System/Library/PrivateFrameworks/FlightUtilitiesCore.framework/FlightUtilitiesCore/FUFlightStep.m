@interface FUFlightStep
- (BOOL)isEqual:(id)a3;
- (BOOL)taxiing;
- (FUFlightStep)initWithAirport:(id)a3 gate:(id)a4 terminal:(id)a5 legStatus:(int64_t)a6 delayFromSchedule:(id)a7 scheduledTime:(id)a8 estimatedTime:(id)a9 actualTime:(id)a10 runwayTime:(id)a11 departure:(BOOL)a12;
- (FUFlightStep)initWithCoder:(id)a3;
- (FUStepTime)time;
- (NSNumber)delayFromSchedule;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)status;
- (void)encodeWithCoder:(id)a3;
- (void)setDelayFromSchedule:(id)a3;
@end

@implementation FUFlightStep

- (FUFlightStep)initWithAirport:(id)a3 gate:(id)a4 terminal:(id)a5 legStatus:(int64_t)a6 delayFromSchedule:(id)a7 scheduledTime:(id)a8 estimatedTime:(id)a9 actualTime:(id)a10 runwayTime:(id)a11 departure:(BOOL)a12
{
  v33 = a3;
  v35 = a4;
  v34 = a5;
  v18 = a7;
  v32 = a8;
  v31 = a9;
  v19 = a10;
  v20 = a11;
  v36.receiver = self;
  v36.super_class = FUFlightStep;
  v21 = [(FUFlightStep *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_airport, a3);
    v23 = [v35 copy];
    gate = v22->_gate;
    v22->_gate = v23;

    v25 = [v34 copy];
    terminal = v22->_terminal;
    v22->_terminal = v25;

    v22->_legStatus = a6;
    v27 = [v18 copy];
    delayFromSchedule = v22->_delayFromSchedule;
    v22->_delayFromSchedule = v27;

    objc_storeStrong(&v22->_scheduledTime, a8);
    objc_storeStrong(&v22->_estimatedTime, a9);
    objc_storeStrong(&v22->_actualTime, a10);
    objc_storeStrong(&v22->_runwayTime, a11);
    v22->_departure = a12;
  }

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(FUFlightStep *)self airport];
    v7 = [v5 airport];
    if (v6 != v7)
    {
      v8 = [(FUFlightStep *)self airport];
      v3 = [v5 airport];
      if (![v8 isEqual:v3])
      {
        LOBYTE(v9) = 0;
        goto LABEL_50;
      }

      v61 = v8;
    }

    v10 = [(FUFlightStep *)self gate];
    v11 = [v5 gate];
    if (v10 != v11)
    {
      v12 = [(FUFlightStep *)self gate];
      v13 = [v5 gate];
      if (![v12 isEqual:v13])
      {
        LOBYTE(v9) = 0;
LABEL_48:

LABEL_49:
        v8 = v61;
        if (v6 == v7)
        {
LABEL_51:

          goto LABEL_52;
        }

LABEL_50:

        goto LABEL_51;
      }

      v59 = v13;
      v60 = v12;
    }

    v14 = [(FUFlightStep *)self terminal];
    v62 = [v5 terminal];
    if (v14 != v62)
    {
      v15 = [(FUFlightStep *)self terminal];
      v58 = [v5 terminal];
      if (![v15 isEqual:?])
      {
        LOBYTE(v9) = 0;
        goto LABEL_46;
      }

      v57 = v15;
    }

    v16 = [(FUFlightStep *)self legStatus];
    if (v16 == [v5 legStatus])
    {
      v17 = [(FUFlightStep *)self delayFromSchedule];
      [v5 delayFromSchedule];
      v54 = v56 = v17;
      v18 = v17 == v54;
      v15 = v57;
      v55 = v3;
      v53 = v14;
      if (!v18)
      {
        v19 = [(FUFlightStep *)self delayFromSchedule];
        v49 = [v5 delayFromSchedule];
        v50 = v19;
        if (![v19 isEqual:?])
        {
          LOBYTE(v9) = 0;
          v23 = v56;
          v24 = v54;
LABEL_44:

LABEL_45:
          v14 = v53;
          v3 = v55;
          if (v53 == v62)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }
      }

      v20 = [(FUFlightStep *)self actualTime];
      [v5 actualTime];
      v52 = v51 = v20;
      if (v20 != v52)
      {
        v21 = [(FUFlightStep *)self actualTime];
        v44 = [v5 actualTime];
        v45 = v21;
        if (![v21 isEqual:v44])
        {
          LOBYTE(v9) = 0;
          v22 = v51;
LABEL_42:

LABEL_43:
          v23 = v56;
          v24 = v54;
          if (v56 == v54)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      v25 = [(FUFlightStep *)self scheduledTime];
      v46 = [v5 scheduledTime];
      v48 = v25;
      if (v25 != v46)
      {
        v26 = [(FUFlightStep *)self scheduledTime];
        v41 = [v5 scheduledTime];
        v42 = v26;
        if (![v26 isEqual:?])
        {
          LOBYTE(v9) = 0;
          v27 = v46;
LABEL_40:

LABEL_41:
          v22 = v51;
          if (v51 == v52)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }
      }

      v28 = [(FUFlightStep *)self runwayTime];
      v43 = [v5 runwayTime];
      v47 = v28;
      if (v28 != v43)
      {
        v29 = [(FUFlightStep *)self runwayTime];
        v37 = [v5 runwayTime];
        v38 = v29;
        if (![v29 isEqual:?])
        {
          LOBYTE(v9) = 0;
          v30 = v43;
          goto LABEL_38;
        }
      }

      v31 = [(FUFlightStep *)self estimatedTime];
      v39 = [v5 estimatedTime];
      v40 = v31;
      if (v31 != v39)
      {
        v32 = [(FUFlightStep *)self estimatedTime];
        v36 = [v5 estimatedTime];
        if (![v32 isEqual:?])
        {
          LOBYTE(v9) = 0;
          goto LABEL_37;
        }

        v35 = v32;
      }

      v33 = [(FUFlightStep *)self departure];
      v9 = v33 ^ [v5 departure] ^ 1;
      if (v40 == v39)
      {

        v30 = v43;
        v15 = v57;
        if (v47 == v43)
        {
LABEL_39:

          v27 = v46;
          if (v48 == v46)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_38:

        goto LABEL_39;
      }

      v15 = v57;
      v32 = v35;
LABEL_37:

      v30 = v43;
      if (v47 == v43)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    LOBYTE(v9) = 0;
    v15 = v57;
    if (v14 == v62)
    {
LABEL_47:

      v13 = v59;
      v12 = v60;
      if (v10 == v11)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_46:

    goto LABEL_47;
  }

  LOBYTE(v9) = 0;
LABEL_52:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDeparture:{-[FUFlightStep departure](self, "departure")}];
  v5 = [(FUFlightStep *)self airport];
  v6 = [v5 copy];
  [v4 setAirport:v6];

  v7 = [(FUFlightStep *)self gate];
  v8 = [v7 copy];
  [v4 setGate:v8];

  v9 = [(FUFlightStep *)self terminal];
  v10 = [v9 copy];
  [v4 setTerminal:v10];

  [v4 setLegStatus:{-[FUFlightStep legStatus](self, "legStatus")}];
  v11 = [(FUFlightStep *)self actualTime];
  v12 = [v11 copy];
  [v4 setActualTime:v12];

  v13 = [(FUFlightStep *)self scheduledTime];
  v14 = [v13 copy];
  [v4 setScheduledTime:v14];

  v15 = [(FUFlightStep *)self plannedTime];
  v16 = [v15 copy];
  [v4 setPlannedTime:v16];

  v17 = [(FUFlightStep *)self estimatedTime];
  v18 = [v17 copy];
  [v4 setEstimatedTime:v18];

  v19 = [(FUFlightStep *)self runwayTime];
  v20 = [v19 copy];
  [v4 setRunwayTime:v20];

  return v4;
}

- (BOOL)taxiing
{
  if (self->_departure)
  {
    if (self->_actualTime)
    {
      v2 = 80;
      return *(&self->super.isa + v2) == 0;
    }
  }

  else if (self->_runwayTime)
  {
    v2 = 72;
    return *(&self->super.isa + v2) == 0;
  }

  return 0;
}

- (FUStepTime)time
{
  actualTime = self->_actualTime;
  if (actualTime)
  {
    goto LABEL_2;
  }

  estimatedTime = self->_estimatedTime;
  if (!estimatedTime)
  {
    actualTime = self->_scheduledTime;
    goto LABEL_2;
  }

  if (!self->_departure)
  {
LABEL_14:
    v3 = estimatedTime;
    goto LABEL_3;
  }

  v8 = [(FUStepTime *)estimatedTime date];
  [v8 timeIntervalSinceNow];
  v10 = v9;

  if (v10 >= 0.0)
  {
    estimatedTime = self->_estimatedTime;
    goto LABEL_14;
  }

  actualTime = self->_runwayTime;
  if (actualTime)
  {
LABEL_2:
    v3 = actualTime;
LABEL_3:
    v4 = v3;
    goto LABEL_4;
  }

  v11 = [FUStepTime alloc];
  v12 = [MEMORY[0x277CBEAA8] date];
  v4 = [(FUStepTime *)v11 initWithType:3 date:v12];

LABEL_4:

  return v4;
}

- (void)setDelayFromSchedule:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 && ([v4 doubleValue], v4 = v8, fabs(v5) < 900.0))
  {
    delayFromSchedule = self->_delayFromSchedule;
    self->_delayFromSchedule = &unk_285EAE5E8;
  }

  else
  {
    v7 = v4;
    delayFromSchedule = self->_delayFromSchedule;
    self->_delayFromSchedule = v7;
  }
}

- (NSNumber)delayFromSchedule
{
  if (self->_scheduledTime && !self->_delayFromSchedule && (self->_actualTime || self->_estimatedTime))
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [(FUFlightStep *)self time];
    v5 = [v4 date];
    v6 = [(FUStepTime *)self->_scheduledTime date];
    [v5 timeIntervalSinceDate:v6];
    v7 = [v3 numberWithDouble:?];
    [(FUFlightStep *)self setDelayFromSchedule:v7];
  }

  delayFromSchedule = self->_delayFromSchedule;

  return delayFromSchedule;
}

- (unint64_t)status
{
  v2 = [(FUFlightStep *)self delayFromSchedule];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    v5 = 3;
    if (v4)
    {
      v5 = 4;
    }

    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FUFlightStep *)self gate];
  v5 = [(FUFlightStep *)self terminal];
  v6 = [v3 stringWithFormat:@"FlightEvent: gate:%@, airportTerminal:%@", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  v4 = [(FUFlightStep *)self airport];

  if (v4)
  {
    v5 = [(FUFlightStep *)self airport];
    [v22 encodeObject:v5 forKey:@"airport"];
  }

  v6 = [(FUFlightStep *)self gate];

  if (v6)
  {
    v7 = [(FUFlightStep *)self gate];
    [v22 encodeObject:v7 forKey:@"gate"];
  }

  v8 = [(FUFlightStep *)self terminal];

  if (v8)
  {
    v9 = [(FUFlightStep *)self terminal];
    [v22 encodeObject:v9 forKey:@"terminal"];
  }

  [v22 encodeInteger:-[FUFlightStep legStatus](self forKey:{"legStatus"), @"legStatus"}];
  v10 = [(FUFlightStep *)self delayFromSchedule];

  if (v10)
  {
    v11 = [(FUFlightStep *)self delayFromSchedule];
    [v22 encodeObject:v11 forKey:@"delayFromSchedule"];
  }

  v12 = [(FUFlightStep *)self actualTime];

  if (v12)
  {
    v13 = [(FUFlightStep *)self actualTime];
    [v22 encodeObject:v13 forKey:@"actualTime"];
  }

  v14 = [(FUFlightStep *)self scheduledTime];

  if (v14)
  {
    v15 = [(FUFlightStep *)self scheduledTime];
    [v22 encodeObject:v15 forKey:@"scheduledTime"];
  }

  v16 = [(FUFlightStep *)self plannedTime];

  if (v16)
  {
    v17 = [(FUFlightStep *)self plannedTime];
    [v22 encodeObject:v17 forKey:@"plannedTime"];
  }

  v18 = [(FUFlightStep *)self estimatedTime];

  if (v18)
  {
    v19 = [(FUFlightStep *)self estimatedTime];
    [v22 encodeObject:v19 forKey:@"estimatedTime"];
  }

  v20 = [(FUFlightStep *)self runwayTime];

  if (v20)
  {
    v21 = [(FUFlightStep *)self runwayTime];
    [v22 encodeObject:v21 forKey:@"runwayTime"];
  }

  [v22 encodeBool:-[FUFlightStep departure](self forKey:{"departure"), @"departure"}];
}

- (FUFlightStep)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = FUFlightStep;
  v5 = [(FUFlightStep *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airport"];
    airport = v5->_airport;
    v5->_airport = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gate"];
    gate = v5->_gate;
    v5->_gate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v10;

    v5->_legStatus = [v4 decodeIntegerForKey:@"legStatus"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delayFromSchedule"];
    delayFromSchedule = v5->_delayFromSchedule;
    v5->_delayFromSchedule = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actualTime"];
    actualTime = v5->_actualTime;
    v5->_actualTime = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledTime"];
    scheduledTime = v5->_scheduledTime;
    v5->_scheduledTime = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"plannedTime"];
    plannedTime = v5->_plannedTime;
    v5->_plannedTime = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTime"];
    estimatedTime = v5->_estimatedTime;
    v5->_estimatedTime = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runwayTime"];
    runwayTime = v5->_runwayTime;
    v5->_runwayTime = v22;

    v5->_departure = [v4 decodeBoolForKey:@"departure"];
    v24 = v5;
  }

  return v5;
}

@end