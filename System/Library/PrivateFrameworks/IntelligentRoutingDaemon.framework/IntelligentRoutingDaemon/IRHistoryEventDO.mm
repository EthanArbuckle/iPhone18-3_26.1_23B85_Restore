@interface IRHistoryEventDO
+ (id)historyEventDOWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistoryEventDO:(id)o;
- (IRHistoryEventDO)initWithCoder:(id)coder;
- (IRHistoryEventDO)initWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy;
- (id)copyWithReplacementCandidateIdentifier:(id)identifier;
- (id)copyWithReplacementDate:(id)date;
- (id)copyWithReplacementEvent:(id)event;
- (id)copyWithReplacementMiloPredictionEvent:(id)event;
- (id)copyWithReplacementSharingPolicy:(id)policy;
- (id)copyWithReplacementSystemState:(id)state;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRHistoryEventDO

- (IRHistoryEventDO)initWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy
{
  dateCopy = date;
  identifierCopy = identifier;
  eventCopy = event;
  predictionEventCopy = predictionEvent;
  stateCopy = state;
  policyCopy = policy;
  v24.receiver = self;
  v24.super_class = IRHistoryEventDO;
  v18 = [(IRHistoryEventDO *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_date, date);
    objc_storeStrong(&v19->_candidateIdentifier, identifier);
    objc_storeStrong(&v19->_event, event);
    objc_storeStrong(&v19->_miloPredictionEvent, predictionEvent);
    objc_storeStrong(&v19->_systemState, state);
    objc_storeStrong(&v19->_sharingPolicy, policy);
  }

  return v19;
}

+ (id)historyEventDOWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy
{
  policyCopy = policy;
  stateCopy = state;
  predictionEventCopy = predictionEvent;
  eventCopy = event;
  identifierCopy = identifier;
  dateCopy = date;
  v20 = [[self alloc] initWithDate:dateCopy candidateIdentifier:identifierCopy event:eventCopy miloPredictionEvent:predictionEventCopy systemState:stateCopy sharingPolicy:policyCopy];

  return v20;
}

- (id)copyWithReplacementDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:dateCopy candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementCandidateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:identifierCopy event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementEvent:(id)event
{
  eventCopy = event;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:eventCopy miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementMiloPredictionEvent:(id)event
{
  eventCopy = event;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:eventCopy systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementSystemState:(id)state
{
  stateCopy = state;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:stateCopy sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementSharingPolicy:(id)policy
{
  policyCopy = policy;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:policyCopy];

  return v5;
}

- (BOOL)isEqualToHistoryEventDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_20;
  }

  v6 = self->_date == 0;
  date = [oCopy date];
  v8 = date != 0;

  if (v6 == v8)
  {
    goto LABEL_20;
  }

  date = self->_date;
  if (date)
  {
    date2 = [v5 date];
    v11 = [(NSDate *)date isEqual:date2];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v12 = self->_candidateIdentifier == 0;
  candidateIdentifier = [v5 candidateIdentifier];
  v14 = candidateIdentifier != 0;

  if (v12 == v14)
  {
    goto LABEL_20;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    candidateIdentifier2 = [v5 candidateIdentifier];
    v17 = [(NSString *)candidateIdentifier isEqual:candidateIdentifier2];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  v18 = self->_event == 0;
  event = [v5 event];
  v20 = event != 0;

  if (v18 == v20)
  {
    goto LABEL_20;
  }

  event = self->_event;
  if (event)
  {
    event2 = [v5 event];
    v23 = [(IREventDO *)event isEqual:event2];

    if (!v23)
    {
      goto LABEL_20;
    }
  }

  v24 = self->_miloPredictionEvent == 0;
  miloPredictionEvent = [v5 miloPredictionEvent];
  v26 = miloPredictionEvent != 0;

  if (v24 == v26)
  {
    goto LABEL_20;
  }

  miloPredictionEvent = self->_miloPredictionEvent;
  if (miloPredictionEvent)
  {
    miloPredictionEvent2 = [v5 miloPredictionEvent];
    v29 = [(IRMiLoPredictionEventDO *)miloPredictionEvent isEqual:miloPredictionEvent2];

    if (!v29)
    {
      goto LABEL_20;
    }
  }

  v30 = self->_systemState == 0;
  systemState = [v5 systemState];
  v32 = systemState != 0;

  if (v30 == v32)
  {
    goto LABEL_20;
  }

  systemState = self->_systemState;
  if (systemState)
  {
    systemState2 = [v5 systemState];
    v35 = [(IRSystemStateDO *)systemState isEqual:systemState2];

    if (!v35)
    {
      goto LABEL_20;
    }
  }

  v36 = self->_sharingPolicy == 0;
  sharingPolicy = [v5 sharingPolicy];
  v38 = sharingPolicy != 0;

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
      sharingPolicy2 = [v5 sharingPolicy];
      v41 = [(NSString *)sharingPolicy isEqual:sharingPolicy2];
    }

    else
    {
      v41 = 1;
    }
  }

  return v41 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRHistoryEventDO *)self isEqualToHistoryEventDO:v5];
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

- (IRHistoryEventDO)initWithCoder:(id)coder
{
  v37[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
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
      [coderCopy failWithError:v12];
LABEL_9:
      selfCopy = 0;
LABEL_10:

LABEL_11:
LABEL_12:

LABEL_13:
LABEL_14:

      goto LABEL_15;
    }

LABEL_6:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateIdentifier"];
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
        [coderCopy failWithError:v17];

        goto LABEL_9;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
        goto LABEL_14;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    if (!v9)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
        goto LABEL_13;
      }
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"miloPredictionEvent"];
    if (!v10)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        goto LABEL_12;
      }
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemState"];
    if (!v11)
    {
      error4 = [coderCopy error];

      if (error4)
      {
        selfCopy = 0;
        goto LABEL_11;
      }
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingPolicy"];
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
        [coderCopy failWithError:v24];

        goto LABEL_9;
      }
    }

    else
    {
      error5 = [coderCopy error];

      if (error5)
      {
        goto LABEL_9;
      }
    }

    self = [(IRHistoryEventDO *)self initWithDate:v5 candidateIdentifier:v7 event:v9 miloPredictionEvent:v10 systemState:v11 sharingPolicy:v12];
    selfCopy = self;
    goto LABEL_10;
  }

  error6 = [coderCopy error];

  if (!error6)
  {
    goto LABEL_6;
  }

  selfCopy = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = self->_date;
  v11 = coderCopy;
  if (date)
  {
    [coderCopy encodeObject:date forKey:@"date"];
    coderCopy = v11;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    [v11 encodeObject:candidateIdentifier forKey:@"candidateIdentifier"];
    coderCopy = v11;
  }

  event = self->_event;
  if (event)
  {
    [v11 encodeObject:event forKey:@"event"];
    coderCopy = v11;
  }

  miloPredictionEvent = self->_miloPredictionEvent;
  if (miloPredictionEvent)
  {
    [v11 encodeObject:miloPredictionEvent forKey:@"miloPredictionEvent"];
    coderCopy = v11;
  }

  systemState = self->_systemState;
  if (systemState)
  {
    [v11 encodeObject:systemState forKey:@"systemState"];
    coderCopy = v11;
  }

  sharingPolicy = self->_sharingPolicy;
  if (sharingPolicy)
  {
    [v11 encodeObject:sharingPolicy forKey:@"sharingPolicy"];
    coderCopy = v11;
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