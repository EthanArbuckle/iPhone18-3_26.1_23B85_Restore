@interface FUFlightStep
- (BOOL)isEqual:(id)equal;
- (BOOL)taxiing;
- (FUFlightStep)initWithAirport:(id)airport gate:(id)gate terminal:(id)terminal legStatus:(int64_t)status delayFromSchedule:(id)schedule scheduledTime:(id)time estimatedTime:(id)estimatedTime actualTime:(id)self0 runwayTime:(id)self1 departure:(BOOL)self2;
- (FUFlightStep)initWithCoder:(id)coder;
- (FUStepTime)time;
- (NSNumber)delayFromSchedule;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)status;
- (void)encodeWithCoder:(id)coder;
- (void)setDelayFromSchedule:(id)schedule;
@end

@implementation FUFlightStep

- (FUFlightStep)initWithAirport:(id)airport gate:(id)gate terminal:(id)terminal legStatus:(int64_t)status delayFromSchedule:(id)schedule scheduledTime:(id)time estimatedTime:(id)estimatedTime actualTime:(id)self0 runwayTime:(id)self1 departure:(BOOL)self2
{
  airportCopy = airport;
  gateCopy = gate;
  terminalCopy = terminal;
  scheduleCopy = schedule;
  timeCopy = time;
  estimatedTimeCopy = estimatedTime;
  actualTimeCopy = actualTime;
  runwayTimeCopy = runwayTime;
  v36.receiver = self;
  v36.super_class = FUFlightStep;
  v21 = [(FUFlightStep *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_airport, airport);
    v23 = [gateCopy copy];
    gate = v22->_gate;
    v22->_gate = v23;

    v25 = [terminalCopy copy];
    terminal = v22->_terminal;
    v22->_terminal = v25;

    v22->_legStatus = status;
    v27 = [scheduleCopy copy];
    delayFromSchedule = v22->_delayFromSchedule;
    v22->_delayFromSchedule = v27;

    objc_storeStrong(&v22->_scheduledTime, time);
    objc_storeStrong(&v22->_estimatedTime, estimatedTime);
    objc_storeStrong(&v22->_actualTime, actualTime);
    objc_storeStrong(&v22->_runwayTime, runwayTime);
    v22->_departure = departure;
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    airport = [(FUFlightStep *)self airport];
    airport2 = [equalCopy airport];
    if (airport != airport2)
    {
      airport3 = [(FUFlightStep *)self airport];
      airport4 = [equalCopy airport];
      if (![airport3 isEqual:airport4])
      {
        LOBYTE(v9) = 0;
        goto LABEL_50;
      }

      v61 = airport3;
    }

    gate = [(FUFlightStep *)self gate];
    gate2 = [equalCopy gate];
    if (gate != gate2)
    {
      gate3 = [(FUFlightStep *)self gate];
      gate4 = [equalCopy gate];
      if (![gate3 isEqual:gate4])
      {
        LOBYTE(v9) = 0;
LABEL_48:

LABEL_49:
        airport3 = v61;
        if (airport == airport2)
        {
LABEL_51:

          goto LABEL_52;
        }

LABEL_50:

        goto LABEL_51;
      }

      v59 = gate4;
      v60 = gate3;
    }

    terminal = [(FUFlightStep *)self terminal];
    terminal2 = [equalCopy terminal];
    if (terminal != terminal2)
    {
      terminal3 = [(FUFlightStep *)self terminal];
      terminal4 = [equalCopy terminal];
      if (![terminal3 isEqual:?])
      {
        LOBYTE(v9) = 0;
        goto LABEL_46;
      }

      v57 = terminal3;
    }

    legStatus = [(FUFlightStep *)self legStatus];
    if (legStatus == [equalCopy legStatus])
    {
      delayFromSchedule = [(FUFlightStep *)self delayFromSchedule];
      [equalCopy delayFromSchedule];
      v54 = v56 = delayFromSchedule;
      v18 = delayFromSchedule == v54;
      terminal3 = v57;
      v55 = airport4;
      v53 = terminal;
      if (!v18)
      {
        delayFromSchedule2 = [(FUFlightStep *)self delayFromSchedule];
        delayFromSchedule3 = [equalCopy delayFromSchedule];
        v50 = delayFromSchedule2;
        if (![delayFromSchedule2 isEqual:?])
        {
          LOBYTE(v9) = 0;
          v23 = v56;
          v24 = v54;
LABEL_44:

LABEL_45:
          terminal = v53;
          airport4 = v55;
          if (v53 == terminal2)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }
      }

      actualTime = [(FUFlightStep *)self actualTime];
      [equalCopy actualTime];
      v52 = v51 = actualTime;
      if (actualTime != v52)
      {
        actualTime2 = [(FUFlightStep *)self actualTime];
        actualTime3 = [equalCopy actualTime];
        v45 = actualTime2;
        if (![actualTime2 isEqual:actualTime3])
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

      scheduledTime = [(FUFlightStep *)self scheduledTime];
      scheduledTime2 = [equalCopy scheduledTime];
      v48 = scheduledTime;
      if (scheduledTime != scheduledTime2)
      {
        scheduledTime3 = [(FUFlightStep *)self scheduledTime];
        scheduledTime4 = [equalCopy scheduledTime];
        v42 = scheduledTime3;
        if (![scheduledTime3 isEqual:?])
        {
          LOBYTE(v9) = 0;
          v27 = scheduledTime2;
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

      runwayTime = [(FUFlightStep *)self runwayTime];
      runwayTime2 = [equalCopy runwayTime];
      v47 = runwayTime;
      if (runwayTime != runwayTime2)
      {
        runwayTime3 = [(FUFlightStep *)self runwayTime];
        runwayTime4 = [equalCopy runwayTime];
        v38 = runwayTime3;
        if (![runwayTime3 isEqual:?])
        {
          LOBYTE(v9) = 0;
          v30 = runwayTime2;
          goto LABEL_38;
        }
      }

      estimatedTime = [(FUFlightStep *)self estimatedTime];
      estimatedTime2 = [equalCopy estimatedTime];
      v40 = estimatedTime;
      if (estimatedTime != estimatedTime2)
      {
        estimatedTime3 = [(FUFlightStep *)self estimatedTime];
        estimatedTime4 = [equalCopy estimatedTime];
        if (![estimatedTime3 isEqual:?])
        {
          LOBYTE(v9) = 0;
          goto LABEL_37;
        }

        v35 = estimatedTime3;
      }

      departure = [(FUFlightStep *)self departure];
      v9 = departure ^ [equalCopy departure] ^ 1;
      if (v40 == estimatedTime2)
      {

        v30 = runwayTime2;
        terminal3 = v57;
        if (v47 == runwayTime2)
        {
LABEL_39:

          v27 = scheduledTime2;
          if (v48 == scheduledTime2)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_38:

        goto LABEL_39;
      }

      terminal3 = v57;
      estimatedTime3 = v35;
LABEL_37:

      v30 = runwayTime2;
      if (v47 == runwayTime2)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    LOBYTE(v9) = 0;
    terminal3 = v57;
    if (terminal == terminal2)
    {
LABEL_47:

      gate4 = v59;
      gate3 = v60;
      if (gate == gate2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDeparture:{-[FUFlightStep departure](self, "departure")}];
  airport = [(FUFlightStep *)self airport];
  v6 = [airport copy];
  [v4 setAirport:v6];

  gate = [(FUFlightStep *)self gate];
  v8 = [gate copy];
  [v4 setGate:v8];

  terminal = [(FUFlightStep *)self terminal];
  v10 = [terminal copy];
  [v4 setTerminal:v10];

  [v4 setLegStatus:{-[FUFlightStep legStatus](self, "legStatus")}];
  actualTime = [(FUFlightStep *)self actualTime];
  v12 = [actualTime copy];
  [v4 setActualTime:v12];

  scheduledTime = [(FUFlightStep *)self scheduledTime];
  v14 = [scheduledTime copy];
  [v4 setScheduledTime:v14];

  plannedTime = [(FUFlightStep *)self plannedTime];
  v16 = [plannedTime copy];
  [v4 setPlannedTime:v16];

  estimatedTime = [(FUFlightStep *)self estimatedTime];
  v18 = [estimatedTime copy];
  [v4 setEstimatedTime:v18];

  runwayTime = [(FUFlightStep *)self runwayTime];
  v20 = [runwayTime copy];
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

  date = [(FUStepTime *)estimatedTime date];
  [date timeIntervalSinceNow];
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
  date2 = [MEMORY[0x277CBEAA8] date];
  v4 = [(FUStepTime *)v11 initWithType:3 date:date2];

LABEL_4:

  return v4;
}

- (void)setDelayFromSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v8 = scheduleCopy;
  if (scheduleCopy && ([scheduleCopy doubleValue], scheduleCopy = v8, fabs(v5) < 900.0))
  {
    delayFromSchedule = self->_delayFromSchedule;
    self->_delayFromSchedule = &unk_285EAE5E8;
  }

  else
  {
    v7 = scheduleCopy;
    delayFromSchedule = self->_delayFromSchedule;
    self->_delayFromSchedule = v7;
  }
}

- (NSNumber)delayFromSchedule
{
  if (self->_scheduledTime && !self->_delayFromSchedule && (self->_actualTime || self->_estimatedTime))
  {
    v3 = MEMORY[0x277CCABB0];
    time = [(FUFlightStep *)self time];
    date = [time date];
    date2 = [(FUStepTime *)self->_scheduledTime date];
    [date timeIntervalSinceDate:date2];
    v7 = [v3 numberWithDouble:?];
    [(FUFlightStep *)self setDelayFromSchedule:v7];
  }

  delayFromSchedule = self->_delayFromSchedule;

  return delayFromSchedule;
}

- (unint64_t)status
{
  delayFromSchedule = [(FUFlightStep *)self delayFromSchedule];
  v3 = delayFromSchedule;
  if (delayFromSchedule)
  {
    integerValue = [delayFromSchedule integerValue];
    v5 = 3;
    if (integerValue)
    {
      v5 = 4;
    }

    if (integerValue >= 0)
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
  gate = [(FUFlightStep *)self gate];
  terminal = [(FUFlightStep *)self terminal];
  v6 = [v3 stringWithFormat:@"FlightEvent: gate:%@, airportTerminal:%@", gate, terminal];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  airport = [(FUFlightStep *)self airport];

  if (airport)
  {
    airport2 = [(FUFlightStep *)self airport];
    [coderCopy encodeObject:airport2 forKey:@"airport"];
  }

  gate = [(FUFlightStep *)self gate];

  if (gate)
  {
    gate2 = [(FUFlightStep *)self gate];
    [coderCopy encodeObject:gate2 forKey:@"gate"];
  }

  terminal = [(FUFlightStep *)self terminal];

  if (terminal)
  {
    terminal2 = [(FUFlightStep *)self terminal];
    [coderCopy encodeObject:terminal2 forKey:@"terminal"];
  }

  [coderCopy encodeInteger:-[FUFlightStep legStatus](self forKey:{"legStatus"), @"legStatus"}];
  delayFromSchedule = [(FUFlightStep *)self delayFromSchedule];

  if (delayFromSchedule)
  {
    delayFromSchedule2 = [(FUFlightStep *)self delayFromSchedule];
    [coderCopy encodeObject:delayFromSchedule2 forKey:@"delayFromSchedule"];
  }

  actualTime = [(FUFlightStep *)self actualTime];

  if (actualTime)
  {
    actualTime2 = [(FUFlightStep *)self actualTime];
    [coderCopy encodeObject:actualTime2 forKey:@"actualTime"];
  }

  scheduledTime = [(FUFlightStep *)self scheduledTime];

  if (scheduledTime)
  {
    scheduledTime2 = [(FUFlightStep *)self scheduledTime];
    [coderCopy encodeObject:scheduledTime2 forKey:@"scheduledTime"];
  }

  plannedTime = [(FUFlightStep *)self plannedTime];

  if (plannedTime)
  {
    plannedTime2 = [(FUFlightStep *)self plannedTime];
    [coderCopy encodeObject:plannedTime2 forKey:@"plannedTime"];
  }

  estimatedTime = [(FUFlightStep *)self estimatedTime];

  if (estimatedTime)
  {
    estimatedTime2 = [(FUFlightStep *)self estimatedTime];
    [coderCopy encodeObject:estimatedTime2 forKey:@"estimatedTime"];
  }

  runwayTime = [(FUFlightStep *)self runwayTime];

  if (runwayTime)
  {
    runwayTime2 = [(FUFlightStep *)self runwayTime];
    [coderCopy encodeObject:runwayTime2 forKey:@"runwayTime"];
  }

  [coderCopy encodeBool:-[FUFlightStep departure](self forKey:{"departure"), @"departure"}];
}

- (FUFlightStep)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = FUFlightStep;
  v5 = [(FUFlightStep *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airport"];
    airport = v5->_airport;
    v5->_airport = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gate"];
    gate = v5->_gate;
    v5->_gate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v10;

    v5->_legStatus = [coderCopy decodeIntegerForKey:@"legStatus"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delayFromSchedule"];
    delayFromSchedule = v5->_delayFromSchedule;
    v5->_delayFromSchedule = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actualTime"];
    actualTime = v5->_actualTime;
    v5->_actualTime = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledTime"];
    scheduledTime = v5->_scheduledTime;
    v5->_scheduledTime = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plannedTime"];
    plannedTime = v5->_plannedTime;
    v5->_plannedTime = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTime"];
    estimatedTime = v5->_estimatedTime;
    v5->_estimatedTime = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runwayTime"];
    runwayTime = v5->_runwayTime;
    v5->_runwayTime = v22;

    v5->_departure = [coderCopy decodeBoolForKey:@"departure"];
    v24 = v5;
  }

  return v5;
}

@end