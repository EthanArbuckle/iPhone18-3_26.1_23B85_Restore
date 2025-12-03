@interface FUBaseStopInfo
- (BOOL)isEqual:(id)equal;
- (FUBaseStopInfo)initWithAirport:(id)airport gate:(id)gate terminal:(id)terminal displayTime:(id)time scheduledGateTime:(id)gateTime currentGateTime:(id)currentGateTime scheduledRunwayTime:(id)runwayTime currentRunwayTime:(id)self0 gateBufferMinutes:(id)self1 runwayBufferMinutes:(id)self2;
- (FUBaseStopInfo)initWithCoder:(id)coder;
- (NSDate)displayTime;
- (id)delayFromSchedule;
- (id)description;
- (int64_t)_deltaGateMinutes;
- (unint64_t)flightTimeStatus;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FUBaseStopInfo

- (FUBaseStopInfo)initWithAirport:(id)airport gate:(id)gate terminal:(id)terminal displayTime:(id)time scheduledGateTime:(id)gateTime currentGateTime:(id)currentGateTime scheduledRunwayTime:(id)runwayTime currentRunwayTime:(id)self0 gateBufferMinutes:(id)self1 runwayBufferMinutes:(id)self2
{
  airportCopy = airport;
  gateCopy = gate;
  terminalCopy = terminal;
  timeCopy = time;
  gateTimeCopy = gateTime;
  currentGateTimeCopy = currentGateTime;
  runwayTimeCopy = runwayTime;
  currentRunwayTimeCopy = currentRunwayTime;
  minutesCopy = minutes;
  bufferMinutesCopy = bufferMinutes;
  v50.receiver = self;
  v50.super_class = FUBaseStopInfo;
  v26 = [(FUBaseStopInfo *)&v50 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_airport, airport);
    v28 = [gateCopy copy];
    gate = v27->_gate;
    v27->_gate = v28;

    v30 = [terminalCopy copy];
    terminal = v27->_terminal;
    v27->_terminal = v30;

    v32 = [timeCopy copy];
    displayTime = v27->_displayTime;
    v27->_displayTime = v32;

    v34 = [gateTimeCopy copy];
    scheduledGateTime = v27->_scheduledGateTime;
    v27->_scheduledGateTime = v34;

    v36 = [currentGateTimeCopy copy];
    currentGateTime = v27->_currentGateTime;
    v27->_currentGateTime = v36;

    v38 = [runwayTimeCopy copy];
    scheduledRunwayTime = v27->_scheduledRunwayTime;
    v27->_scheduledRunwayTime = v38;

    v40 = [currentRunwayTimeCopy copy];
    currentRunwayTime = v27->_currentRunwayTime;
    v27->_currentRunwayTime = v40;

    v42 = [minutesCopy copy];
    gateBufferMinutes = v27->_gateBufferMinutes;
    v27->_gateBufferMinutes = v42;

    v44 = [bufferMinutesCopy copy];
    runwayBufferMinutes = v27->_runwayBufferMinutes;
    v27->_runwayBufferMinutes = v44;
  }

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      airport = [(FUBaseStopInfo *)self airport];
      airport2 = [(FUBaseStopInfo *)equalCopy airport];
      if (airport != airport2)
      {
        airport3 = [(FUBaseStopInfo *)self airport];
        airport4 = [(FUBaseStopInfo *)equalCopy airport];
        v81 = airport3;
        if (![airport3 isEqual:?])
        {
          v8 = 0;
          goto LABEL_57;
        }
      }

      gate = [(FUBaseStopInfo *)self gate];
      gate2 = [(FUBaseStopInfo *)equalCopy gate];
      if (gate != gate2)
      {
        gate3 = [(FUBaseStopInfo *)self gate];
        gate4 = [(FUBaseStopInfo *)equalCopy gate];
        if (![gate3 isEqual:gate4])
        {
          v8 = 0;
LABEL_55:

LABEL_56:
          if (airport == airport2)
          {
LABEL_58:

            goto LABEL_59;
          }

LABEL_57:

          goto LABEL_58;
        }

        v76 = gate4;
        v77 = gate3;
      }

      terminal = [(FUBaseStopInfo *)self terminal];
      terminal2 = [(FUBaseStopInfo *)equalCopy terminal];
      v79 = terminal;
      if (terminal != terminal2)
      {
        terminal3 = [(FUBaseStopInfo *)self terminal];
        terminal4 = [(FUBaseStopInfo *)equalCopy terminal];
        v74 = terminal3;
        if (![terminal3 isEqual:?])
        {
          v8 = 0;
LABEL_53:

LABEL_54:
          gate4 = v76;
          gate3 = v77;
          if (gate == gate2)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }
      }

      displayTime = [(FUBaseStopInfo *)self displayTime];
      displayTime2 = [(FUBaseStopInfo *)equalCopy displayTime];
      v75 = displayTime;
      v17 = displayTime == displayTime2;
      v18 = displayTime2;
      if (!v17)
      {
        displayTime3 = [(FUBaseStopInfo *)self displayTime];
        displayTime4 = [(FUBaseStopInfo *)equalCopy displayTime];
        v71 = displayTime3;
        if (![displayTime3 isEqual:?])
        {
          v8 = 0;
          v20 = v18;
          v21 = v75;
LABEL_51:

LABEL_52:
          if (v79 == terminal2)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      scheduledGateTime = [(FUBaseStopInfo *)self scheduledGateTime];
      scheduledGateTime2 = [(FUBaseStopInfo *)equalCopy scheduledGateTime];
      v72 = scheduledGateTime;
      v17 = scheduledGateTime == scheduledGateTime2;
      v24 = scheduledGateTime2;
      if (!v17)
      {
        scheduledGateTime3 = [(FUBaseStopInfo *)self scheduledGateTime];
        scheduledGateTime4 = [(FUBaseStopInfo *)equalCopy scheduledGateTime];
        v67 = scheduledGateTime3;
        if (![scheduledGateTime3 isEqual:?])
        {
          v20 = v18;
          v8 = 0;
          v26 = v72;
LABEL_49:

LABEL_50:
          v21 = v75;
          if (v75 == v20)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }
      }

      currentGateTime = [(FUBaseStopInfo *)self currentGateTime];
      currentGateTime2 = [(FUBaseStopInfo *)equalCopy currentGateTime];
      v68 = currentGateTime;
      v69 = v24;
      v17 = currentGateTime == currentGateTime2;
      v29 = currentGateTime2;
      if (v17)
      {
        v63 = currentGateTime2;
        v31 = v18;
      }

      else
      {
        currentGateTime3 = [(FUBaseStopInfo *)self currentGateTime];
        currentGateTime4 = [(FUBaseStopInfo *)equalCopy currentGateTime];
        v62 = currentGateTime3;
        if (![currentGateTime3 isEqual:?])
        {
          v8 = 0;
          v34 = v68;
          goto LABEL_46;
        }

        v63 = v29;
        v31 = v18;
      }

      scheduledRunwayTime = [(FUBaseStopInfo *)self scheduledRunwayTime];
      [(FUBaseStopInfo *)equalCopy scheduledRunwayTime];
      v65 = v64 = v31;
      if (scheduledRunwayTime == v65)
      {
        v59 = scheduledRunwayTime;
      }

      else
      {
        scheduledRunwayTime2 = [(FUBaseStopInfo *)self scheduledRunwayTime];
        scheduledRunwayTime3 = [(FUBaseStopInfo *)equalCopy scheduledRunwayTime];
        v58 = scheduledRunwayTime2;
        if (![scheduledRunwayTime2 isEqual:?])
        {
          v8 = 0;
          v39 = v65;
          v29 = v63;
LABEL_44:

LABEL_45:
          v34 = v68;
          v18 = v64;
          if (v68 == v29)
          {
            v20 = v64;
LABEL_48:

            v26 = v72;
            v24 = v69;
            if (v72 == v69)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

LABEL_46:
          v20 = v18;

          goto LABEL_48;
        }

        v59 = scheduledRunwayTime;
      }

      currentRunwayTime = [(FUBaseStopInfo *)self currentRunwayTime];
      [(FUBaseStopInfo *)equalCopy currentRunwayTime];
      v36 = v60 = currentRunwayTime;
      if (currentRunwayTime != v36)
      {
        currentRunwayTime2 = [(FUBaseStopInfo *)self currentRunwayTime];
        currentRunwayTime3 = [(FUBaseStopInfo *)equalCopy currentRunwayTime];
        v55 = currentRunwayTime2;
        if (![currentRunwayTime2 isEqual:?])
        {
          v8 = 0;
          v29 = v63;
          v38 = currentRunwayTime;
LABEL_42:

LABEL_43:
          v39 = v65;
          scheduledRunwayTime = v59;
          if (v59 == v65)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
      gateBufferMinutes2 = [(FUBaseStopInfo *)equalCopy gateBufferMinutes];
      if (gateBufferMinutes == gateBufferMinutes2 || (-[FUBaseStopInfo gateBufferMinutes](self, "gateBufferMinutes"), v41 = objc_claimAutoreleasedReturnValue(), -[FUBaseStopInfo gateBufferMinutes](equalCopy, "gateBufferMinutes"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v41, [v41 isEqual:?]))
      {
        runwayBufferMinutes = [(FUBaseStopInfo *)self runwayBufferMinutes];
        runwayBufferMinutes2 = [(FUBaseStopInfo *)equalCopy runwayBufferMinutes];
        if (runwayBufferMinutes == runwayBufferMinutes2)
        {

          v8 = 1;
          v42 = gateBufferMinutes2;
          if (gateBufferMinutes == gateBufferMinutes2)
          {
LABEL_41:

            v38 = v60;
            v29 = v63;
            if (v60 == v36)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v51 = runwayBufferMinutes2;
          runwayBufferMinutes3 = [(FUBaseStopInfo *)self runwayBufferMinutes];
          [(FUBaseStopInfo *)equalCopy runwayBufferMinutes];
          v50 = v36;
          v46 = runwayBufferMinutes3;
          v48 = v47 = gateBufferMinutes;
          v8 = [runwayBufferMinutes3 isEqual:?];

          gateBufferMinutes = v47;
          v36 = v50;

          v42 = gateBufferMinutes2;
          if (v47 == gateBufferMinutes2)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v8 = 0;
        v42 = gateBufferMinutes2;
      }

      goto LABEL_41;
    }

    v8 = 0;
  }

LABEL_59:

  return v8;
}

- (NSDate)displayTime
{
  displayTime = self->_displayTime;
  if (displayTime)
  {
    return displayTime;
  }

  displayTime = self->_currentGateTime;
  if (displayTime)
  {
    return displayTime;
  }

  else
  {
    return self->_scheduledGateTime;
  }
}

- (int64_t)_deltaGateMinutes
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  currentGateTime = [(FUBaseStopInfo *)self currentGateTime];
  scheduledGateTime = [(FUBaseStopInfo *)self scheduledGateTime];
  v6 = [currentCalendar components:64 fromDate:currentGateTime toDate:scheduledGateTime options:0];

  minute = [v6 minute];
  return minute;
}

- (unint64_t)flightTimeStatus
{
  _deltaGateMinutes = [(FUBaseStopInfo *)self _deltaGateMinutes];
  gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
  integerValue = [gateBufferMinutes integerValue];

  if (_deltaGateMinutes >= 0)
  {
    v6 = _deltaGateMinutes;
  }

  else
  {
    v6 = -_deltaGateMinutes;
  }

  v7 = 4;
  if (_deltaGateMinutes > 0)
  {
    v7 = 2;
  }

  if (v6 <= integerValue)
  {
    return 3;
  }

  else
  {
    return v7;
  }
}

- (id)delayFromSchedule
{
  _deltaGateMinutes = [(FUBaseStopInfo *)self _deltaGateMinutes];
  v4 = _deltaGateMinutes;
  if (_deltaGateMinutes >= 0)
  {
    v5 = _deltaGateMinutes;
  }

  else
  {
    v5 = -_deltaGateMinutes;
  }

  gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
  integerValue = [gateBufferMinutes integerValue];

  if (v5 <= integerValue)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:60 * v4];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  airport = [(FUBaseStopInfo *)self airport];
  [coderCopy encodeObject:airport forKey:@"airport"];

  gate = [(FUBaseStopInfo *)self gate];
  [coderCopy encodeObject:gate forKey:@"gate"];

  terminal = [(FUBaseStopInfo *)self terminal];
  [coderCopy encodeObject:terminal forKey:@"terminal"];

  displayTime = [(FUBaseStopInfo *)self displayTime];
  [coderCopy encodeObject:displayTime forKey:@"displayTime"];

  scheduledGateTime = [(FUBaseStopInfo *)self scheduledGateTime];
  [coderCopy encodeObject:scheduledGateTime forKey:@"scheduledGateTime"];

  currentGateTime = [(FUBaseStopInfo *)self currentGateTime];
  [coderCopy encodeObject:currentGateTime forKey:@"currentGateTime"];

  scheduledRunwayTime = [(FUBaseStopInfo *)self scheduledRunwayTime];
  [coderCopy encodeObject:scheduledRunwayTime forKey:@"scheduledRunwayTime"];

  currentRunwayTime = [(FUBaseStopInfo *)self currentRunwayTime];
  [coderCopy encodeObject:currentRunwayTime forKey:@"currentRunwayTime"];

  gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
  [coderCopy encodeObject:gateBufferMinutes forKey:@"gateBufferMinutes"];

  runwayBufferMinutes = [(FUBaseStopInfo *)self runwayBufferMinutes];
  [coderCopy encodeObject:runwayBufferMinutes forKey:@"runwayBufferMinutes"];
}

- (FUBaseStopInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = FUBaseStopInfo;
  v5 = [(FUBaseStopInfo *)&v27 init];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayTime"];
    displayTime = v5->_displayTime;
    v5->_displayTime = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledGateTime"];
    scheduledGateTime = v5->_scheduledGateTime;
    v5->_scheduledGateTime = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentGateTime"];
    currentGateTime = v5->_currentGateTime;
    v5->_currentGateTime = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledRunwayTime"];
    scheduledRunwayTime = v5->_scheduledRunwayTime;
    v5->_scheduledRunwayTime = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentRunwayTime"];
    currentRunwayTime = v5->_currentRunwayTime;
    v5->_currentRunwayTime = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gateBufferMinutes"];
    gateBufferMinutes = v5->_gateBufferMinutes;
    v5->_gateBufferMinutes = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runwayBufferMinutes"];
    runwayBufferMinutes = v5->_runwayBufferMinutes;
    v5->_runwayBufferMinutes = v24;
  }

  return v5;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  airport = [(FUBaseStopInfo *)self airport];
  gate = [(FUBaseStopInfo *)self gate];
  terminal = [(FUBaseStopInfo *)self terminal];
  displayTime = [(FUBaseStopInfo *)self displayTime];
  scheduledGateTime = [(FUBaseStopInfo *)self scheduledGateTime];
  currentGateTime = [(FUBaseStopInfo *)self currentGateTime];
  scheduledRunwayTime = [(FUBaseStopInfo *)self scheduledRunwayTime];
  currentRunwayTime = [(FUBaseStopInfo *)self currentRunwayTime];
  gateBufferMinutes = [(FUBaseStopInfo *)self gateBufferMinutes];
  runwayBufferMinutes = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v12 = [v16 stringWithFormat:@"<%@: %p> {airport: %@, gate: %@, terminal: %@, displayTime: %@, scheduledGateTime: %@, currentGateTime: %@, scheduledRunwayTime: %@, currentRunwayTime: %@, gateBufferMinutes: %@, runwayBufferMinutes: %@}", v15, self, airport, gate, terminal, displayTime, scheduledGateTime, currentGateTime, scheduledRunwayTime, currentRunwayTime, gateBufferMinutes, runwayBufferMinutes];

  return v12;
}

@end