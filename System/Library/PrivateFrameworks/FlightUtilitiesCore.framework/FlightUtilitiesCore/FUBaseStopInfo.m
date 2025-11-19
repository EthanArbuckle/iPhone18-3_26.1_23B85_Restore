@interface FUBaseStopInfo
- (BOOL)isEqual:(id)a3;
- (FUBaseStopInfo)initWithAirport:(id)a3 gate:(id)a4 terminal:(id)a5 displayTime:(id)a6 scheduledGateTime:(id)a7 currentGateTime:(id)a8 scheduledRunwayTime:(id)a9 currentRunwayTime:(id)a10 gateBufferMinutes:(id)a11 runwayBufferMinutes:(id)a12;
- (FUBaseStopInfo)initWithCoder:(id)a3;
- (NSDate)displayTime;
- (id)delayFromSchedule;
- (id)description;
- (int64_t)_deltaGateMinutes;
- (unint64_t)flightTimeStatus;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FUBaseStopInfo

- (FUBaseStopInfo)initWithAirport:(id)a3 gate:(id)a4 terminal:(id)a5 displayTime:(id)a6 scheduledGateTime:(id)a7 currentGateTime:(id)a8 scheduledRunwayTime:(id)a9 currentRunwayTime:(id)a10 gateBufferMinutes:(id)a11 runwayBufferMinutes:(id)a12
{
  v48 = a3;
  v18 = a4;
  v49 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v50.receiver = self;
  v50.super_class = FUBaseStopInfo;
  v26 = [(FUBaseStopInfo *)&v50 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_airport, a3);
    v28 = [v18 copy];
    gate = v27->_gate;
    v27->_gate = v28;

    v30 = [v49 copy];
    terminal = v27->_terminal;
    v27->_terminal = v30;

    v32 = [v19 copy];
    displayTime = v27->_displayTime;
    v27->_displayTime = v32;

    v34 = [v20 copy];
    scheduledGateTime = v27->_scheduledGateTime;
    v27->_scheduledGateTime = v34;

    v36 = [v21 copy];
    currentGateTime = v27->_currentGateTime;
    v27->_currentGateTime = v36;

    v38 = [v22 copy];
    scheduledRunwayTime = v27->_scheduledRunwayTime;
    v27->_scheduledRunwayTime = v38;

    v40 = [v23 copy];
    currentRunwayTime = v27->_currentRunwayTime;
    v27->_currentRunwayTime = v40;

    v42 = [v24 copy];
    gateBufferMinutes = v27->_gateBufferMinutes;
    v27->_gateBufferMinutes = v42;

    v44 = [v25 copy];
    runwayBufferMinutes = v27->_runwayBufferMinutes;
    v27->_runwayBufferMinutes = v44;
  }

  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FUBaseStopInfo *)self airport];
      v6 = [(FUBaseStopInfo *)v4 airport];
      if (v5 != v6)
      {
        v7 = [(FUBaseStopInfo *)self airport];
        v80 = [(FUBaseStopInfo *)v4 airport];
        v81 = v7;
        if (![v7 isEqual:?])
        {
          v8 = 0;
          goto LABEL_57;
        }
      }

      v9 = [(FUBaseStopInfo *)self gate];
      v10 = [(FUBaseStopInfo *)v4 gate];
      if (v9 != v10)
      {
        v11 = [(FUBaseStopInfo *)self gate];
        v12 = [(FUBaseStopInfo *)v4 gate];
        if (![v11 isEqual:v12])
        {
          v8 = 0;
LABEL_55:

LABEL_56:
          if (v5 == v6)
          {
LABEL_58:

            goto LABEL_59;
          }

LABEL_57:

          goto LABEL_58;
        }

        v76 = v12;
        v77 = v11;
      }

      v13 = [(FUBaseStopInfo *)self terminal];
      v78 = [(FUBaseStopInfo *)v4 terminal];
      v79 = v13;
      if (v13 != v78)
      {
        v14 = [(FUBaseStopInfo *)self terminal];
        v73 = [(FUBaseStopInfo *)v4 terminal];
        v74 = v14;
        if (![v14 isEqual:?])
        {
          v8 = 0;
LABEL_53:

LABEL_54:
          v12 = v76;
          v11 = v77;
          if (v9 == v10)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }
      }

      v15 = [(FUBaseStopInfo *)self displayTime];
      v16 = [(FUBaseStopInfo *)v4 displayTime];
      v75 = v15;
      v17 = v15 == v16;
      v18 = v16;
      if (!v17)
      {
        v19 = [(FUBaseStopInfo *)self displayTime];
        v70 = [(FUBaseStopInfo *)v4 displayTime];
        v71 = v19;
        if (![v19 isEqual:?])
        {
          v8 = 0;
          v20 = v18;
          v21 = v75;
LABEL_51:

LABEL_52:
          if (v79 == v78)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      v22 = [(FUBaseStopInfo *)self scheduledGateTime];
      v23 = [(FUBaseStopInfo *)v4 scheduledGateTime];
      v72 = v22;
      v17 = v22 == v23;
      v24 = v23;
      if (!v17)
      {
        v25 = [(FUBaseStopInfo *)self scheduledGateTime];
        v66 = [(FUBaseStopInfo *)v4 scheduledGateTime];
        v67 = v25;
        if (![v25 isEqual:?])
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

      v27 = [(FUBaseStopInfo *)self currentGateTime];
      v28 = [(FUBaseStopInfo *)v4 currentGateTime];
      v68 = v27;
      v69 = v24;
      v17 = v27 == v28;
      v29 = v28;
      if (v17)
      {
        v63 = v28;
        v31 = v18;
      }

      else
      {
        v30 = [(FUBaseStopInfo *)self currentGateTime];
        v61 = [(FUBaseStopInfo *)v4 currentGateTime];
        v62 = v30;
        if (![v30 isEqual:?])
        {
          v8 = 0;
          v34 = v68;
          goto LABEL_46;
        }

        v63 = v29;
        v31 = v18;
      }

      v32 = [(FUBaseStopInfo *)self scheduledRunwayTime];
      [(FUBaseStopInfo *)v4 scheduledRunwayTime];
      v65 = v64 = v31;
      if (v32 == v65)
      {
        v59 = v32;
      }

      else
      {
        v33 = [(FUBaseStopInfo *)self scheduledRunwayTime];
        v57 = [(FUBaseStopInfo *)v4 scheduledRunwayTime];
        v58 = v33;
        if (![v33 isEqual:?])
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

        v59 = v32;
      }

      v35 = [(FUBaseStopInfo *)self currentRunwayTime];
      [(FUBaseStopInfo *)v4 currentRunwayTime];
      v36 = v60 = v35;
      if (v35 != v36)
      {
        v37 = [(FUBaseStopInfo *)self currentRunwayTime];
        v54 = [(FUBaseStopInfo *)v4 currentRunwayTime];
        v55 = v37;
        if (![v37 isEqual:?])
        {
          v8 = 0;
          v29 = v63;
          v38 = v35;
LABEL_42:

LABEL_43:
          v39 = v65;
          v32 = v59;
          if (v59 == v65)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      v40 = [(FUBaseStopInfo *)self gateBufferMinutes];
      v56 = [(FUBaseStopInfo *)v4 gateBufferMinutes];
      if (v40 == v56 || (-[FUBaseStopInfo gateBufferMinutes](self, "gateBufferMinutes"), v41 = objc_claimAutoreleasedReturnValue(), -[FUBaseStopInfo gateBufferMinutes](v4, "gateBufferMinutes"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v41, [v41 isEqual:?]))
      {
        v43 = [(FUBaseStopInfo *)self runwayBufferMinutes];
        v44 = [(FUBaseStopInfo *)v4 runwayBufferMinutes];
        if (v43 == v44)
        {

          v8 = 1;
          v42 = v56;
          if (v40 == v56)
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
          v51 = v44;
          v45 = [(FUBaseStopInfo *)self runwayBufferMinutes];
          [(FUBaseStopInfo *)v4 runwayBufferMinutes];
          v50 = v36;
          v46 = v45;
          v48 = v47 = v40;
          v8 = [v45 isEqual:?];

          v40 = v47;
          v36 = v50;

          v42 = v56;
          if (v47 == v56)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v8 = 0;
        v42 = v56;
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
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [(FUBaseStopInfo *)self currentGateTime];
  v5 = [(FUBaseStopInfo *)self scheduledGateTime];
  v6 = [v3 components:64 fromDate:v4 toDate:v5 options:0];

  v7 = [v6 minute];
  return v7;
}

- (unint64_t)flightTimeStatus
{
  v3 = [(FUBaseStopInfo *)self _deltaGateMinutes];
  v4 = [(FUBaseStopInfo *)self gateBufferMinutes];
  v5 = [v4 integerValue];

  if (v3 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = -v3;
  }

  v7 = 4;
  if (v3 > 0)
  {
    v7 = 2;
  }

  if (v6 <= v5)
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
  v3 = [(FUBaseStopInfo *)self _deltaGateMinutes];
  v4 = v3;
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = -v3;
  }

  v6 = [(FUBaseStopInfo *)self gateBufferMinutes];
  v7 = [v6 integerValue];

  if (v5 <= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:60 * v4];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FUBaseStopInfo *)self airport];
  [v4 encodeObject:v5 forKey:@"airport"];

  v6 = [(FUBaseStopInfo *)self gate];
  [v4 encodeObject:v6 forKey:@"gate"];

  v7 = [(FUBaseStopInfo *)self terminal];
  [v4 encodeObject:v7 forKey:@"terminal"];

  v8 = [(FUBaseStopInfo *)self displayTime];
  [v4 encodeObject:v8 forKey:@"displayTime"];

  v9 = [(FUBaseStopInfo *)self scheduledGateTime];
  [v4 encodeObject:v9 forKey:@"scheduledGateTime"];

  v10 = [(FUBaseStopInfo *)self currentGateTime];
  [v4 encodeObject:v10 forKey:@"currentGateTime"];

  v11 = [(FUBaseStopInfo *)self scheduledRunwayTime];
  [v4 encodeObject:v11 forKey:@"scheduledRunwayTime"];

  v12 = [(FUBaseStopInfo *)self currentRunwayTime];
  [v4 encodeObject:v12 forKey:@"currentRunwayTime"];

  v13 = [(FUBaseStopInfo *)self gateBufferMinutes];
  [v4 encodeObject:v13 forKey:@"gateBufferMinutes"];

  v14 = [(FUBaseStopInfo *)self runwayBufferMinutes];
  [v4 encodeObject:v14 forKey:@"runwayBufferMinutes"];
}

- (FUBaseStopInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = FUBaseStopInfo;
  v5 = [(FUBaseStopInfo *)&v27 init];
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayTime"];
    displayTime = v5->_displayTime;
    v5->_displayTime = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledGateTime"];
    scheduledGateTime = v5->_scheduledGateTime;
    v5->_scheduledGateTime = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentGateTime"];
    currentGateTime = v5->_currentGateTime;
    v5->_currentGateTime = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledRunwayTime"];
    scheduledRunwayTime = v5->_scheduledRunwayTime;
    v5->_scheduledRunwayTime = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentRunwayTime"];
    currentRunwayTime = v5->_currentRunwayTime;
    v5->_currentRunwayTime = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gateBufferMinutes"];
    gateBufferMinutes = v5->_gateBufferMinutes;
    v5->_gateBufferMinutes = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runwayBufferMinutes"];
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
  v17 = [(FUBaseStopInfo *)self airport];
  v4 = [(FUBaseStopInfo *)self gate];
  v5 = [(FUBaseStopInfo *)self terminal];
  v6 = [(FUBaseStopInfo *)self displayTime];
  v7 = [(FUBaseStopInfo *)self scheduledGateTime];
  v14 = [(FUBaseStopInfo *)self currentGateTime];
  v8 = [(FUBaseStopInfo *)self scheduledRunwayTime];
  v9 = [(FUBaseStopInfo *)self currentRunwayTime];
  v10 = [(FUBaseStopInfo *)self gateBufferMinutes];
  v11 = [(FUBaseStopInfo *)self runwayBufferMinutes];
  v12 = [v16 stringWithFormat:@"<%@: %p> {airport: %@, gate: %@, terminal: %@, displayTime: %@, scheduledGateTime: %@, currentGateTime: %@, scheduledRunwayTime: %@, currentRunwayTime: %@, gateBufferMinutes: %@, runwayBufferMinutes: %@}", v15, self, v17, v4, v5, v6, v7, v14, v8, v9, v10, v11];

  return v12;
}

@end