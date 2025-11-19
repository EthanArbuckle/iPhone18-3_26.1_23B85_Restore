@interface IRHistoryEventDO
+ (id)historyEventDOWithDate:(id)a3 candidateIdentifier:(id)a4 event:(id)a5 miloPredictionEvent:(id)a6 systemState:(id)a7 sharingPolicy:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHistoryEventDO:(id)a3;
- (IRHistoryEventDO)initWithCoder:(id)a3;
- (IRHistoryEventDO)initWithDate:(id)a3 candidateIdentifier:(id)a4 event:(id)a5 miloPredictionEvent:(id)a6 systemState:(id)a7 sharingPolicy:(id)a8;
- (id)copyWithReplacementCandidateIdentifier:(id)a3;
- (id)copyWithReplacementDate:(id)a3;
- (id)copyWithReplacementEvent:(id)a3;
- (id)copyWithReplacementMiloPredictionEvent:(id)a3;
- (id)copyWithReplacementSharingPolicy:(id)a3;
- (id)copyWithReplacementSystemState:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRHistoryEventDO

- (IRHistoryEventDO)initWithDate:(id)a3 candidateIdentifier:(id)a4 event:(id)a5 miloPredictionEvent:(id)a6 systemState:(id)a7 sharingPolicy:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = IRHistoryEventDO;
  v18 = [(IRHistoryEventDO *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_date, a3);
    objc_storeStrong(&v19->_candidateIdentifier, a4);
    objc_storeStrong(&v19->_event, a5);
    objc_storeStrong(&v19->_miloPredictionEvent, a6);
    objc_storeStrong(&v19->_systemState, a7);
    objc_storeStrong(&v19->_sharingPolicy, a8);
  }

  return v19;
}

+ (id)historyEventDOWithDate:(id)a3 candidateIdentifier:(id)a4 event:(id)a5 miloPredictionEvent:(id)a6 systemState:(id)a7 sharingPolicy:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] initWithDate:v19 candidateIdentifier:v18 event:v17 miloPredictionEvent:v16 systemState:v15 sharingPolicy:v14];

  return v20;
}

- (id)copyWithReplacementDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:v4 candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementCandidateIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:v4 event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementEvent:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:v4 miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementMiloPredictionEvent:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:v4 systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementSystemState:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:v4 sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementSharingPolicy:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:v4];

  return v5;
}

- (BOOL)isEqualToHistoryEventDO:(id)a3
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

  v12 = self->_candidateIdentifier == 0;
  v13 = [v5 candidateIdentifier];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_20;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    v16 = [v5 candidateIdentifier];
    v17 = [(NSString *)candidateIdentifier isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  v18 = self->_event == 0;
  v19 = [v5 event];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_20;
  }

  event = self->_event;
  if (event)
  {
    v22 = [v5 event];
    v23 = [(IREventDO *)event isEqual:v22];

    if (!v23)
    {
      goto LABEL_20;
    }
  }

  v24 = self->_miloPredictionEvent == 0;
  v25 = [v5 miloPredictionEvent];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_20;
  }

  miloPredictionEvent = self->_miloPredictionEvent;
  if (miloPredictionEvent)
  {
    v28 = [v5 miloPredictionEvent];
    v29 = [(IRMiLoPredictionEventDO *)miloPredictionEvent isEqual:v28];

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

  v36 = self->_sharingPolicy == 0;
  v37 = [v5 sharingPolicy];
  v38 = v37 != 0;

  if (v36 == v38)
  {
LABEL_20:
    v41 = 0;
  }

  else
  {
    sharingPolicy = self->_sharingPolicy;
    if (sharingPolicy)
    {
      v40 = [v5 sharingPolicy];
      v41 = [(NSString *)sharingPolicy isEqual:v40];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRHistoryEventDO *)self isEqualToHistoryEventDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [(NSString *)self->_candidateIdentifier hash]- v3 + 32 * v3;
  v5 = [(IREventDO *)self->_event hash]- v4 + 32 * v4;
  v6 = [(IRMiLoPredictionEventDO *)self->_miloPredictionEvent hash]- v5 + 32 * v5;
  v7 = [(IRSystemStateDO *)self->_systemState hash]- v6 + 32 * v6;
  return [(NSString *)self->_sharingPolicy hash]- v7 + 32 * v7;
}

- (IRHistoryEventDO)initWithCoder:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
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
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRHistoryEventDO key date (expected %@, decoded %@)", v7, v9, 0];
      v36 = *MEMORY[0x277CCA450];
      v37[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRHistoryEventDOOCNTErrorDomain" code:3 userInfo:v11];
      [v4 failWithError:v12];
LABEL_9:
      v14 = 0;
LABEL_10:

LABEL_11:
LABEL_12:

LABEL_13:
LABEL_14:

      goto LABEL_15;
    }

LABEL_6:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateIdentifier"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRHistoryEventDO key candidateIdentifier (expected %@, decoded %@)", v9, v10, 0];
        v34 = *MEMORY[0x277CCA450];
        v35 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRHistoryEventDOOCNTErrorDomain" code:3 userInfo:v12];
        [v4 failWithError:v17];

        goto LABEL_9;
      }
    }

    else
    {
      v20 = [v4 error];

      if (v20)
      {
        v14 = 0;
        goto LABEL_14;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    if (!v9)
    {
      v25 = [v4 error];

      if (v25)
      {
        v14 = 0;
        goto LABEL_13;
      }
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"miloPredictionEvent"];
    if (!v10)
    {
      v26 = [v4 error];

      if (v26)
      {
        v14 = 0;
        goto LABEL_12;
      }
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemState"];
    if (!v11)
    {
      v27 = [v4 error];

      if (v27)
      {
        v14 = 0;
        goto LABEL_11;
      }
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingPolicy"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = objc_opt_class();
        v31 = NSStringFromClass(v21);
        v22 = objc_opt_class();
        v30 = NSStringFromClass(v22);
        v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRHistoryEventDO key sharingPolicy (expected %@, decoded %@)", v31, v30, 0];
        v32 = *MEMORY[0x277CCA450];
        v33 = v29;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRHistoryEventDOOCNTErrorDomain" code:3 userInfo:v23];
        [v4 failWithError:v24];

        goto LABEL_9;
      }
    }

    else
    {
      v28 = [v4 error];

      if (v28)
      {
        goto LABEL_9;
      }
    }

    self = [(IRHistoryEventDO *)self initWithDate:v5 candidateIdentifier:v7 event:v9 miloPredictionEvent:v10 systemState:v11 sharingPolicy:v12];
    v14 = self;
    goto LABEL_10;
  }

  v13 = [v4 error];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
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

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    [v11 encodeObject:candidateIdentifier forKey:@"candidateIdentifier"];
    v4 = v11;
  }

  event = self->_event;
  if (event)
  {
    [v11 encodeObject:event forKey:@"event"];
    v4 = v11;
  }

  miloPredictionEvent = self->_miloPredictionEvent;
  if (miloPredictionEvent)
  {
    [v11 encodeObject:miloPredictionEvent forKey:@"miloPredictionEvent"];
    v4 = v11;
  }

  systemState = self->_systemState;
  if (systemState)
  {
    [v11 encodeObject:systemState forKey:@"systemState"];
    v4 = v11;
  }

  sharingPolicy = self->_sharingPolicy;
  if (sharingPolicy)
  {
    [v11 encodeObject:sharingPolicy forKey:@"sharingPolicy"];
    v4 = v11;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_date;
  v5 = [v3 initWithFormat:@"<IRHistoryEventDO | date:%@ candidateIdentifier:%@ event:%@ miloPredictionEvent:%@ systemState:%@ sharingPolicy:%@>", self->_date, self->_candidateIdentifier, self->_event, self->_miloPredictionEvent, self->_systemState, self->_sharingPolicy];

  return v5;
}

@end