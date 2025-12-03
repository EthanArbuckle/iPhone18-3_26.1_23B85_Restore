@interface PKFlightStep
- (BOOL)isEqual:(id)equal;
- (PKFlightStep)initWithAirport:(id)airport terminal:(id)terminal gate:(id)gate baggageClaim:(id)claim status:(unint64_t)status scheduledGateTime:(id)time currentGateTime:(id)gateTime scheduledRunwayTime:(id)self0 currentRunwayTime:(id)self1 gateBufferMinutes:(id)self2 runwayBufferMinutes:(id)self3;
- (PKFlightStep)initWithCoder:(id)coder;
- (PKFlightStep)initWithMockFlightStepDictionary:(id)dictionary;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFlightStep

- (PKFlightStep)initWithAirport:(id)airport terminal:(id)terminal gate:(id)gate baggageClaim:(id)claim status:(unint64_t)status scheduledGateTime:(id)time currentGateTime:(id)gateTime scheduledRunwayTime:(id)self0 currentRunwayTime:(id)self1 gateBufferMinutes:(id)self2 runwayBufferMinutes:(id)self3
{
  airportCopy = airport;
  obj = terminal;
  terminalCopy = terminal;
  gateCopy = gate;
  claimCopy = claim;
  timeCopy = time;
  gateTimeCopy = gateTime;
  runwayTimeCopy = runwayTime;
  currentRunwayTimeCopy = currentRunwayTime;
  minutesCopy = minutes;
  bufferMinutesCopy = bufferMinutes;
  v34.receiver = self;
  v34.super_class = PKFlightStep;
  v20 = [(PKFlightStep *)&v34 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_airport, airport);
    objc_storeStrong(&v21->_terminal, obj);
    objc_storeStrong(&v21->_gate, gate);
    objc_storeStrong(&v21->_baggageClaim, claim);
    v21->_status = status;
    objc_storeStrong(&v21->_scheduledGateTime, time);
    objc_storeStrong(&v21->_currentGateTime, gateTime);
    objc_storeStrong(&v21->_scheduledRunwayTime, runwayTime);
    objc_storeStrong(&v21->_currentRunwayTime, currentRunwayTime);
    objc_storeStrong(&v21->_gateBufferMinutes, minutes);
    objc_storeStrong(&v21->_runwayBufferMinutes, bufferMinutes);
  }

  if (![(PKFlightStep *)v21 isValid])
  {

    v21 = 0;
  }

  return v21;
}

- (PKFlightStep)initWithMockFlightStepDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKFlightStep;
  v5 = [(PKFlightStep *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"airport"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PKAirport alloc] initWithMockAirportDictionary:v6];
      airport = v5->_airport;
      v5->_airport = v7;
    }

    v9 = [dictionaryCopy PKStringForKey:@"terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v9;

    v11 = [dictionaryCopy PKStringForKey:@"gate"];
    gate = v5->_gate;
    v5->_gate = v11;

    v13 = [dictionaryCopy PKStringForKey:@"baggageClaim"];
    baggageClaim = v5->_baggageClaim;
    v5->_baggageClaim = v13;

    v15 = [dictionaryCopy PKStringForKey:@"status"];
    v5->_status = PKFlightStatusFromString(v15);

    v16 = [dictionaryCopy PKDateForKey:@"scheduledGateTime"];
    scheduledGateTime = v5->_scheduledGateTime;
    v5->_scheduledGateTime = v16;

    v18 = [dictionaryCopy PKDateForKey:@"currentGateTime"];
    currentGateTime = v5->_currentGateTime;
    v5->_currentGateTime = v18;

    v20 = [dictionaryCopy PKDateForKey:@"scheduledRunwayTime"];
    scheduledRunwayTime = v5->_scheduledRunwayTime;
    v5->_scheduledRunwayTime = v20;

    v22 = [dictionaryCopy PKDateForKey:@"currentRunwayTime"];
    currentRunwayTime = v5->_currentRunwayTime;
    v5->_currentRunwayTime = v22;

    v24 = [dictionaryCopy PKNumberForKey:@"gateBuffer"];
    gateBufferMinutes = v5->_gateBufferMinutes;
    v5->_gateBufferMinutes = v24;

    v26 = [dictionaryCopy PKNumberForKey:@"runwayBuffer"];
    runwayBufferMinutes = v5->_runwayBufferMinutes;
    v5->_runwayBufferMinutes = v26;
  }

  if (![(PKFlightStep *)v5 isValid])
  {

    v5 = 0;
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  asDictionary = [(PKAirport *)self->_airport asDictionary];
  [v3 setObject:asDictionary forKeyedSubscript:@"airport"];

  [v3 setObject:self->_terminal forKeyedSubscript:@"terminal"];
  [v3 setObject:self->_gate forKeyedSubscript:@"gate"];
  [v3 setObject:self->_baggageClaim forKeyedSubscript:@"baggageClaim"];
  v5 = PKFlightStatusToString(self->_status);
  [v3 setObject:v5 forKeyedSubscript:@"status"];

  v6 = PKW3CDateStringFromDate(self->_scheduledGateTime);
  [v3 setObject:v6 forKeyedSubscript:@"scheduledGateTime"];

  v7 = PKW3CDateStringFromDate(self->_currentGateTime);
  [v3 setObject:v7 forKeyedSubscript:@"currentGateTime"];

  v8 = PKW3CDateStringFromDate(self->_scheduledRunwayTime);
  [v3 setObject:v8 forKeyedSubscript:@"scheduledRunwayTime"];

  v9 = PKW3CDateStringFromDate(self->_currentRunwayTime);
  [v3 setObject:v9 forKeyedSubscript:@"currentRunwayTime"];

  [v3 setObject:self->_gateBufferMinutes forKeyedSubscript:@"gateBuffer"];
  [v3 setObject:self->_runwayBufferMinutes forKeyedSubscript:@"runwayBuffer"];
  v10 = [v3 copy];

  return v10;
}

- (PKFlightStep)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = PKFlightStep;
  v5 = [(PKFlightStep *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airport"];
    airport = v5->_airport;
    v5->_airport = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gate"];
    gate = v5->_gate;
    v5->_gate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baggageClaim"];
    baggageClaim = v5->_baggageClaim;
    v5->_baggageClaim = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledGateTime"];
    scheduledGateTime = v5->_scheduledGateTime;
    v5->_scheduledGateTime = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentGateTime"];
    currentGateTime = v5->_currentGateTime;
    v5->_currentGateTime = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledRunwayTime"];
    scheduledRunwayTime = v5->_scheduledRunwayTime;
    v5->_scheduledRunwayTime = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentRunwayTime"];
    currentRunwayTime = v5->_currentRunwayTime;
    v5->_currentRunwayTime = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gateBuffer"];
    gateBufferMinutes = v5->_gateBufferMinutes;
    v5->_gateBufferMinutes = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runwayBuffer"];
    runwayBufferMinutes = v5->_runwayBufferMinutes;
    v5->_runwayBufferMinutes = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  airport = self->_airport;
  coderCopy = coder;
  [coderCopy encodeObject:airport forKey:@"airport"];
  [coderCopy encodeObject:self->_terminal forKey:@"terminal"];
  [coderCopy encodeObject:self->_gate forKey:@"gate"];
  [coderCopy encodeObject:self->_baggageClaim forKey:@"baggageClaim"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_status];
  [coderCopy encodeObject:v5 forKey:@"status"];

  [coderCopy encodeObject:self->_scheduledGateTime forKey:@"scheduledGateTime"];
  [coderCopy encodeObject:self->_currentGateTime forKey:@"currentGateTime"];
  [coderCopy encodeObject:self->_scheduledRunwayTime forKey:@"scheduledRunwayTime"];
  [coderCopy encodeObject:self->_currentRunwayTime forKey:@"currentRunwayTime"];
  [coderCopy encodeObject:self->_gateBufferMinutes forKey:@"gateBuffer"];
  [coderCopy encodeObject:self->_runwayBufferMinutes forKey:@"runwayBuffer"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"airport: '%@'; ", self->_airport];
  [v3 appendFormat:@"terminal: '%@'; ", self->_terminal];
  [v3 appendFormat:@"gate: '%@'; ", self->_gate];
  [v3 appendFormat:@"baggageClaim: '%@'; ", self->_baggageClaim];
  [v3 appendFormat:@"status: '%lu'; ", self->_status];
  [v3 appendFormat:@"scheduledGateTime: '%@'; ", self->_scheduledGateTime];
  [v3 appendFormat:@"currentGateTime: '%@'; ", self->_currentGateTime];
  [v3 appendFormat:@"scheduledRunwayTime: '%@'; ", self->_scheduledRunwayTime];
  [v3 appendFormat:@"currentRunwayTime: '%@'; ", self->_currentRunwayTime];
  [v3 appendFormat:@"gateBufferMinutes: '%@'; ", self->_gateBufferMinutes];
  [v3 appendFormat:@"runwayBufferMinutes: '%@'; ", self->_runwayBufferMinutes];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        airport = self->_airport;
        v8 = v6->_airport;
        if (airport && v8)
        {
          if (![(PKAirport *)airport isEqual:?])
          {
            goto LABEL_29;
          }
        }

        else if (airport != v8)
        {
          goto LABEL_29;
        }

        terminal = v6->_terminal;
        v11 = self->_terminal;
        v12 = terminal;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          if (!v11 || !v12)
          {
            goto LABEL_28;
          }

          v14 = [(NSString *)v11 isEqualToString:v12];

          if (!v14)
          {
            goto LABEL_29;
          }
        }

        gate = v6->_gate;
        v11 = self->_gate;
        v16 = gate;
        v13 = v16;
        if (v11 == v16)
        {
        }

        else
        {
          if (!v11 || !v16)
          {
            goto LABEL_28;
          }

          v17 = [(NSString *)v11 isEqualToString:v16];

          if (!v17)
          {
            goto LABEL_29;
          }
        }

        baggageClaim = v6->_baggageClaim;
        v11 = self->_baggageClaim;
        v19 = baggageClaim;
        v13 = v19;
        if (v11 == v19)
        {

LABEL_33:
          if (self->_status == v6->_status)
          {
            scheduledGateTime = self->_scheduledGateTime;
            v23 = v6->_scheduledGateTime;
            if (scheduledGateTime && v23)
            {
              if (([(NSDate *)scheduledGateTime isEqual:?]& 1) == 0)
              {
                goto LABEL_29;
              }
            }

            else if (scheduledGateTime != v23)
            {
              goto LABEL_29;
            }

            currentGateTime = self->_currentGateTime;
            v25 = v6->_currentGateTime;
            if (currentGateTime && v25)
            {
              if (([(NSDate *)currentGateTime isEqual:?]& 1) == 0)
              {
                goto LABEL_29;
              }
            }

            else if (currentGateTime != v25)
            {
              goto LABEL_29;
            }

            scheduledRunwayTime = self->_scheduledRunwayTime;
            v27 = v6->_scheduledRunwayTime;
            if (scheduledRunwayTime && v27)
            {
              if (([(NSDate *)scheduledRunwayTime isEqual:?]& 1) == 0)
              {
                goto LABEL_29;
              }
            }

            else if (scheduledRunwayTime != v27)
            {
              goto LABEL_29;
            }

            currentRunwayTime = self->_currentRunwayTime;
            v29 = v6->_currentRunwayTime;
            if (currentRunwayTime && v29)
            {
              if (([(NSDate *)currentRunwayTime isEqual:?]& 1) == 0)
              {
                goto LABEL_29;
              }
            }

            else if (currentRunwayTime != v29)
            {
              goto LABEL_29;
            }

            gateBufferMinutes = self->_gateBufferMinutes;
            v31 = v6->_gateBufferMinutes;
            if (gateBufferMinutes && v31)
            {
              if (([(NSNumber *)gateBufferMinutes isEqual:?]& 1) != 0)
              {
                goto LABEL_59;
              }
            }

            else if (gateBufferMinutes == v31)
            {
LABEL_59:
              runwayBufferMinutes = self->_runwayBufferMinutes;
              v33 = v6->_runwayBufferMinutes;
              if (runwayBufferMinutes && v33)
              {
                v9 = [(NSNumber *)runwayBufferMinutes isEqual:?];
              }

              else
              {
                v9 = runwayBufferMinutes == v33;
              }

              goto LABEL_30;
            }
          }

LABEL_29:
          v9 = 0;
LABEL_30:

          goto LABEL_31;
        }

        if (v11 && v19)
        {
          v20 = [(NSString *)v11 isEqualToString:v19];

          if (!v20)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v9 = 0;
  }

LABEL_31:

  return v9;
}

- (unint64_t)hash
{
  [(NSString *)self->_terminal hash];
  [(NSString *)self->_gate hash];
  [(NSString *)self->_baggageClaim hash];
  [(NSDate *)self->_scheduledGateTime hash];
  [(NSDate *)self->_currentGateTime hash];
  [(NSDate *)self->_scheduledRunwayTime hash];
  [(NSDate *)self->_currentRunwayTime hash];
  [(NSNumber *)self->_gateBufferMinutes hash];
  [(NSNumber *)self->_runwayBufferMinutes hash];
  v3 = SipHash();
  return self->_status - v3 + 32 * v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKFlightStep allocWithZone:](PKFlightStep init];
  v6 = [(PKAirport *)self->_airport copyWithZone:zone];
  airport = v5->_airport;
  v5->_airport = v6;

  v8 = [(NSString *)self->_terminal copyWithZone:zone];
  terminal = v5->_terminal;
  v5->_terminal = v8;

  v10 = [(NSString *)self->_gate copyWithZone:zone];
  gate = v5->_gate;
  v5->_gate = v10;

  v12 = [(NSString *)self->_baggageClaim copyWithZone:zone];
  baggageClaim = v5->_baggageClaim;
  v5->_baggageClaim = v12;

  v5->_status = self->_status;
  v14 = [(NSDate *)self->_scheduledGateTime copyWithZone:zone];
  scheduledGateTime = v5->_scheduledGateTime;
  v5->_scheduledGateTime = v14;

  v16 = [(NSDate *)self->_currentGateTime copyWithZone:zone];
  currentGateTime = v5->_currentGateTime;
  v5->_currentGateTime = v16;

  v18 = [(NSDate *)self->_scheduledRunwayTime copyWithZone:zone];
  scheduledRunwayTime = v5->_scheduledRunwayTime;
  v5->_scheduledRunwayTime = v18;

  v20 = [(NSDate *)self->_currentGateTime copyWithZone:zone];
  v21 = v5->_currentGateTime;
  v5->_currentGateTime = v20;

  v22 = [(NSNumber *)self->_gateBufferMinutes copyWithZone:zone];
  gateBufferMinutes = v5->_gateBufferMinutes;
  v5->_gateBufferMinutes = v22;

  v24 = [(NSNumber *)self->_runwayBufferMinutes copyWithZone:zone];
  runwayBufferMinutes = v5->_runwayBufferMinutes;
  v5->_runwayBufferMinutes = v24;

  return v5;
}

@end