@interface PKFlightStep
- (BOOL)isEqual:(id)a3;
- (PKFlightStep)initWithAirport:(id)a3 terminal:(id)a4 gate:(id)a5 baggageClaim:(id)a6 status:(unint64_t)a7 scheduledGateTime:(id)a8 currentGateTime:(id)a9 scheduledRunwayTime:(id)a10 currentRunwayTime:(id)a11 gateBufferMinutes:(id)a12 runwayBufferMinutes:(id)a13;
- (PKFlightStep)initWithCoder:(id)a3;
- (PKFlightStep)initWithMockFlightStepDictionary:(id)a3;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFlightStep

- (PKFlightStep)initWithAirport:(id)a3 terminal:(id)a4 gate:(id)a5 baggageClaim:(id)a6 status:(unint64_t)a7 scheduledGateTime:(id)a8 currentGateTime:(id)a9 scheduledRunwayTime:(id)a10 currentRunwayTime:(id)a11 gateBufferMinutes:(id)a12 runwayBufferMinutes:(id)a13
{
  v33 = a3;
  obj = a4;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v26 = a11;
  v18 = a12;
  v19 = a13;
  v34.receiver = self;
  v34.super_class = PKFlightStep;
  v20 = [(PKFlightStep *)&v34 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_airport, a3);
    objc_storeStrong(&v21->_terminal, obj);
    objc_storeStrong(&v21->_gate, a5);
    objc_storeStrong(&v21->_baggageClaim, a6);
    v21->_status = a7;
    objc_storeStrong(&v21->_scheduledGateTime, a8);
    objc_storeStrong(&v21->_currentGateTime, a9);
    objc_storeStrong(&v21->_scheduledRunwayTime, a10);
    objc_storeStrong(&v21->_currentRunwayTime, a11);
    objc_storeStrong(&v21->_gateBufferMinutes, a12);
    objc_storeStrong(&v21->_runwayBufferMinutes, a13);
  }

  if (![(PKFlightStep *)v21 isValid])
  {

    v21 = 0;
  }

  return v21;
}

- (PKFlightStep)initWithMockFlightStepDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKFlightStep;
  v5 = [(PKFlightStep *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"airport"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PKAirport alloc] initWithMockAirportDictionary:v6];
      airport = v5->_airport;
      v5->_airport = v7;
    }

    v9 = [v4 PKStringForKey:@"terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v9;

    v11 = [v4 PKStringForKey:@"gate"];
    gate = v5->_gate;
    v5->_gate = v11;

    v13 = [v4 PKStringForKey:@"baggageClaim"];
    baggageClaim = v5->_baggageClaim;
    v5->_baggageClaim = v13;

    v15 = [v4 PKStringForKey:@"status"];
    v5->_status = PKFlightStatusFromString(v15);

    v16 = [v4 PKDateForKey:@"scheduledGateTime"];
    scheduledGateTime = v5->_scheduledGateTime;
    v5->_scheduledGateTime = v16;

    v18 = [v4 PKDateForKey:@"currentGateTime"];
    currentGateTime = v5->_currentGateTime;
    v5->_currentGateTime = v18;

    v20 = [v4 PKDateForKey:@"scheduledRunwayTime"];
    scheduledRunwayTime = v5->_scheduledRunwayTime;
    v5->_scheduledRunwayTime = v20;

    v22 = [v4 PKDateForKey:@"currentRunwayTime"];
    currentRunwayTime = v5->_currentRunwayTime;
    v5->_currentRunwayTime = v22;

    v24 = [v4 PKNumberForKey:@"gateBuffer"];
    gateBufferMinutes = v5->_gateBufferMinutes;
    v5->_gateBufferMinutes = v24;

    v26 = [v4 PKNumberForKey:@"runwayBuffer"];
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
  v4 = [(PKAirport *)self->_airport asDictionary];
  [v3 setObject:v4 forKeyedSubscript:@"airport"];

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

- (PKFlightStep)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PKFlightStep;
  v5 = [(PKFlightStep *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airport"];
    airport = v5->_airport;
    v5->_airport = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gate"];
    gate = v5->_gate;
    v5->_gate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baggageClaim"];
    baggageClaim = v5->_baggageClaim;
    v5->_baggageClaim = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v14 unsignedIntegerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledGateTime"];
    scheduledGateTime = v5->_scheduledGateTime;
    v5->_scheduledGateTime = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentGateTime"];
    currentGateTime = v5->_currentGateTime;
    v5->_currentGateTime = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledRunwayTime"];
    scheduledRunwayTime = v5->_scheduledRunwayTime;
    v5->_scheduledRunwayTime = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentRunwayTime"];
    currentRunwayTime = v5->_currentRunwayTime;
    v5->_currentRunwayTime = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gateBuffer"];
    gateBufferMinutes = v5->_gateBufferMinutes;
    v5->_gateBufferMinutes = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runwayBuffer"];
    runwayBufferMinutes = v5->_runwayBufferMinutes;
    v5->_runwayBufferMinutes = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  airport = self->_airport;
  v6 = a3;
  [v6 encodeObject:airport forKey:@"airport"];
  [v6 encodeObject:self->_terminal forKey:@"terminal"];
  [v6 encodeObject:self->_gate forKey:@"gate"];
  [v6 encodeObject:self->_baggageClaim forKey:@"baggageClaim"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_status];
  [v6 encodeObject:v5 forKey:@"status"];

  [v6 encodeObject:self->_scheduledGateTime forKey:@"scheduledGateTime"];
  [v6 encodeObject:self->_currentGateTime forKey:@"currentGateTime"];
  [v6 encodeObject:self->_scheduledRunwayTime forKey:@"scheduledRunwayTime"];
  [v6 encodeObject:self->_currentRunwayTime forKey:@"currentRunwayTime"];
  [v6 encodeObject:self->_gateBufferMinutes forKey:@"gateBuffer"];
  [v6 encodeObject:self->_runwayBufferMinutes forKey:@"runwayBuffer"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKFlightStep allocWithZone:](PKFlightStep init];
  v6 = [(PKAirport *)self->_airport copyWithZone:a3];
  airport = v5->_airport;
  v5->_airport = v6;

  v8 = [(NSString *)self->_terminal copyWithZone:a3];
  terminal = v5->_terminal;
  v5->_terminal = v8;

  v10 = [(NSString *)self->_gate copyWithZone:a3];
  gate = v5->_gate;
  v5->_gate = v10;

  v12 = [(NSString *)self->_baggageClaim copyWithZone:a3];
  baggageClaim = v5->_baggageClaim;
  v5->_baggageClaim = v12;

  v5->_status = self->_status;
  v14 = [(NSDate *)self->_scheduledGateTime copyWithZone:a3];
  scheduledGateTime = v5->_scheduledGateTime;
  v5->_scheduledGateTime = v14;

  v16 = [(NSDate *)self->_currentGateTime copyWithZone:a3];
  currentGateTime = v5->_currentGateTime;
  v5->_currentGateTime = v16;

  v18 = [(NSDate *)self->_scheduledRunwayTime copyWithZone:a3];
  scheduledRunwayTime = v5->_scheduledRunwayTime;
  v5->_scheduledRunwayTime = v18;

  v20 = [(NSDate *)self->_currentGateTime copyWithZone:a3];
  v21 = v5->_currentGateTime;
  v5->_currentGateTime = v20;

  v22 = [(NSNumber *)self->_gateBufferMinutes copyWithZone:a3];
  gateBufferMinutes = v5->_gateBufferMinutes;
  v5->_gateBufferMinutes = v22;

  v24 = [(NSNumber *)self->_runwayBufferMinutes copyWithZone:a3];
  runwayBufferMinutes = v5->_runwayBufferMinutes;
  v5->_runwayBufferMinutes = v24;

  return v5;
}

@end