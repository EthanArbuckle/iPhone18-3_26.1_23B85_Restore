@interface IRReplayEventDO
+ (id)replayEventDOWithDate:(id)a3 contextChangeReason:(id)a4 candidatesContainer:(id)a5 miloLslPrediction:(id)a6 systemState:(id)a7 nearbyDeviceContainerDO:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReplayEventDO:(id)a3;
- (IRReplayEventDO)initWithCoder:(id)a3;
- (IRReplayEventDO)initWithDate:(id)a3 contextChangeReason:(id)a4 candidatesContainer:(id)a5 miloLslPrediction:(id)a6 systemState:(id)a7 nearbyDeviceContainerDO:(id)a8;
- (id)copyWithReplacementCandidatesContainer:(id)a3;
- (id)copyWithReplacementContextChangeReason:(id)a3;
- (id)copyWithReplacementDate:(id)a3;
- (id)copyWithReplacementMiloLslPrediction:(id)a3;
- (id)copyWithReplacementNearbyDeviceContainerDO:(id)a3;
- (id)copyWithReplacementSystemState:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRReplayEventDO

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [(NSString *)self->_contextChangeReason hash]- v3 + 32 * v3;
  v5 = [(IRCandidatesContainerDO *)self->_candidatesContainer hash]- v4 + 32 * v4;
  v6 = [(IRMiloLslPredictionDO *)self->_miloLslPrediction hash]- v5 + 32 * v5;
  v7 = [(IRSystemStateDO *)self->_systemState hash]- v6 + 32 * v6;
  return [(IRNearbyDeviceContainerDO *)self->_nearbyDeviceContainerDO hash]- v7 + 32 * v7;
}

- (IRReplayEventDO)initWithDate:(id)a3 contextChangeReason:(id)a4 candidatesContainer:(id)a5 miloLslPrediction:(id)a6 systemState:(id)a7 nearbyDeviceContainerDO:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = IRReplayEventDO;
  v18 = [(IRReplayEventDO *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_date, a3);
    objc_storeStrong(&v19->_contextChangeReason, a4);
    objc_storeStrong(&v19->_candidatesContainer, a5);
    objc_storeStrong(&v19->_miloLslPrediction, a6);
    objc_storeStrong(&v19->_systemState, a7);
    objc_storeStrong(&v19->_nearbyDeviceContainerDO, a8);
  }

  return v19;
}

+ (id)replayEventDOWithDate:(id)a3 contextChangeReason:(id)a4 candidatesContainer:(id)a5 miloLslPrediction:(id)a6 systemState:(id)a7 nearbyDeviceContainerDO:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] initWithDate:v19 contextChangeReason:v18 candidatesContainer:v17 miloLslPrediction:v16 systemState:v15 nearbyDeviceContainerDO:v14];

  return v20;
}

- (id)copyWithReplacementDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:v4 contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementContextChangeReason:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:v4 candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementCandidatesContainer:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:v4 miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementMiloLslPrediction:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:v4 systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementSystemState:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:v4 nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementNearbyDeviceContainerDO:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:v4];

  return v5;
}

- (BOOL)isEqualToReplayEventDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = self->_date == 0;
  v7 = [v4 date];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_20;
  }

  date = self->_date;
  if (date)
  {
    v10 = [v5 date];
    v11 = [(NSDate *)date isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v12 = self->_contextChangeReason == 0;
  v13 = [v5 contextChangeReason];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_20;
  }

  contextChangeReason = self->_contextChangeReason;
  if (contextChangeReason)
  {
    v16 = [v5 contextChangeReason];
    v17 = [(NSString *)contextChangeReason isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  v18 = self->_candidatesContainer == 0;
  v19 = [v5 candidatesContainer];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_20;
  }

  candidatesContainer = self->_candidatesContainer;
  if (candidatesContainer)
  {
    v22 = [v5 candidatesContainer];
    v23 = [(IRCandidatesContainerDO *)candidatesContainer isEqual:v22];

    if (!v23)
    {
      goto LABEL_20;
    }
  }

  v24 = self->_miloLslPrediction == 0;
  v25 = [v5 miloLslPrediction];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_20;
  }

  miloLslPrediction = self->_miloLslPrediction;
  if (miloLslPrediction)
  {
    v28 = [v5 miloLslPrediction];
    v29 = [(IRMiloLslPredictionDO *)miloLslPrediction isEqual:v28];

    if (!v29)
    {
      goto LABEL_20;
    }
  }

  v30 = self->_systemState == 0;
  v31 = [v5 systemState];
  v32 = v31 != 0;

  if (v30 == v32)
  {
    goto LABEL_20;
  }

  systemState = self->_systemState;
  if (systemState)
  {
    v34 = [v5 systemState];
    v35 = [(IRSystemStateDO *)systemState isEqual:v34];

    if (!v35)
    {
      goto LABEL_20;
    }
  }

  v36 = self->_nearbyDeviceContainerDO == 0;
  v37 = [v5 nearbyDeviceContainerDO];
  v38 = v37 != 0;

  if (v36 == v38)
  {
LABEL_20:
    v41 = 0;
  }

  else
  {
    nearbyDeviceContainerDO = self->_nearbyDeviceContainerDO;
    if (nearbyDeviceContainerDO)
    {
      v40 = [v5 nearbyDeviceContainerDO];
      v41 = [(IRNearbyDeviceContainerDO *)nearbyDeviceContainerDO isEqual:v40];
    }

    else
    {
      v41 = 1;
    }
  }

  return v41 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRReplayEventDO *)self isEqualToReplayEventDO:v5];
  }

  return v6;
}

- (IRReplayEventDO)initWithCoder:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRReplayEventDO key date (expected %@, decoded %@)", v7, v9, 0];
      v31 = *MEMORY[0x277CCA450];
      v32[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRReplayEventDOOCNTErrorDomain" code:3 userInfo:v11];
      [v4 failWithError:v12];
LABEL_9:

LABEL_10:
      v14 = 0;
LABEL_29:

      goto LABEL_30;
    }

LABEL_6:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextChangeReason"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRReplayEventDO key contextChangeReason (expected %@, decoded %@)", v9, v10, 0];
        v29 = *MEMORY[0x277CCA450];
        v30 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRReplayEventDOOCNTErrorDomain" code:3 userInfo:v12];
        [v4 failWithError:v17];

        goto LABEL_9;
      }
    }

    else
    {
      v18 = [v4 error];

      if (v18)
      {
        goto LABEL_10;
      }
    }

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidatesContainer"];
    if (v19 || ([v4 error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
    {
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"miloLslPrediction"];
      if (v20 || ([v4 error], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
      {
        v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemState"];
        if (v21 || ([v4 error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nearbyDeviceContainerDO"];
          if (v22 || ([v4 error], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
          {
            self = [(IRReplayEventDO *)self initWithDate:v5 contextChangeReason:v7 candidatesContainer:v19 miloLslPrediction:v20 systemState:v21 nearbyDeviceContainerDO:v22];
            v14 = self;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_29;
  }

  v13 = [v4 error];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_30:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  date = self->_date;
  v11 = v4;
  if (date)
  {
    [v4 encodeObject:date forKey:@"date"];
    v4 = v11;
  }

  contextChangeReason = self->_contextChangeReason;
  if (contextChangeReason)
  {
    [v11 encodeObject:contextChangeReason forKey:@"contextChangeReason"];
    v4 = v11;
  }

  candidatesContainer = self->_candidatesContainer;
  if (candidatesContainer)
  {
    [v11 encodeObject:candidatesContainer forKey:@"candidatesContainer"];
    v4 = v11;
  }

  miloLslPrediction = self->_miloLslPrediction;
  if (miloLslPrediction)
  {
    [v11 encodeObject:miloLslPrediction forKey:@"miloLslPrediction"];
    v4 = v11;
  }

  systemState = self->_systemState;
  if (systemState)
  {
    [v11 encodeObject:systemState forKey:@"systemState"];
    v4 = v11;
  }

  nearbyDeviceContainerDO = self->_nearbyDeviceContainerDO;
  if (nearbyDeviceContainerDO)
  {
    [v11 encodeObject:nearbyDeviceContainerDO forKey:@"nearbyDeviceContainerDO"];
    v4 = v11;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_date;
  v5 = [v3 initWithFormat:@"<IRReplayEventDO | date:%@ contextChangeReason:%@ candidatesContainer:%@ miloLslPrediction:%@ systemState:%@ nearbyDeviceContainerDO:%@>", self->_date, self->_contextChangeReason, self->_candidatesContainer, self->_miloLslPrediction, self->_systemState, self->_nearbyDeviceContainerDO];

  return v5;
}

@end