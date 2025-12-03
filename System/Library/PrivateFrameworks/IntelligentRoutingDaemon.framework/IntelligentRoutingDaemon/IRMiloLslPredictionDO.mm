@interface IRMiloLslPredictionDO
- (BOOL)canUse;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMiloLslPredictionDO:(id)o;
- (BOOL)isTemporarilyUnavailable;
- (IRMiloLslPredictionDO)initWithCoder:(id)coder;
- (IRMiloLslPredictionDO)initWithPredictionId:(id)id isPredictionValid:(BOOL)valid isMapValid:(BOOL)mapValid isMotionDetected:(BOOL)detected scores:(id)scores predictionTime:(id)time;
- (id)copyWithReplacementPredictionId:(id)id;
- (id)copyWithReplacementPredictionTime:(id)time;
- (id)copyWithReplacementScores:(id)scores;
- (id)description;
- (id)exportAsDictionary;
- (id)scoreForPredictionEventEvent:(id)event;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRMiloLslPredictionDO

- (id)exportAsDictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  predictionId = [(IRMiloLslPredictionDO *)self predictionId];
  v22 = v3;
  [v3 setObject:predictionId forKeyedSubscript:@"predictionId"];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  scores = [(IRMiloLslPredictionDO *)self scores];
  v7 = [scores countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(scores);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = MEMORY[0x277CCABB0];
        [v11 score];
        v13 = [v12 numberWithDouble:?];
        [v5 setObject:v13 forKeyedSubscript:@"score"];

        eventID = [v11 eventID];
        [v5 setObject:eventID forKeyedSubscript:@"eventID"];
      }

      v8 = [scores countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  [v22 setObject:v5 forKeyedSubscript:@"scores"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isPredictionValid](selfCopy, "isPredictionValid")}];
  [v22 setObject:v15 forKeyedSubscript:@"isPredictionValid"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isMapValid](selfCopy, "isMapValid")}];
  [v22 setObject:v16 forKeyedSubscript:@"isMapValid"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isMotionDetected](selfCopy, "isMotionDetected")}];
  [v22 setObject:v17 forKeyedSubscript:@"isMotionDetected"];

  predictionTime = [(IRMiloLslPredictionDO *)selfCopy predictionTime];
  [v22 setObject:predictionTime forKeyedSubscript:@"predictionTime"];

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)scoreForPredictionEventEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(IRMiloLslPredictionDO *)self canUse])
  {
    predictionId = [(IRMiloLslPredictionDO *)self predictionId];
    predictionId2 = [eventCopy predictionId];
    v7 = [predictionId isEqual:predictionId2];

    if (v7)
    {
      v8 = &unk_286768F98;
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      scores = [(IRMiloLslPredictionDO *)self scores];
      v8 = [scores countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(scores);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            eventID = [v12 eventID];
            label = [eventCopy label];
            v15 = [eventID isEqual:label];

            if (v15)
            {
              v16 = MEMORY[0x277CCABB0];
              [v12 score];
              v8 = [v16 numberWithDouble:?];
              goto LABEL_15;
            }
          }

          v8 = [scores countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)canUse
{
  isMapValid = [(IRMiloLslPredictionDO *)self isMapValid];
  if (isMapValid)
  {

    LOBYTE(isMapValid) = [(IRMiloLslPredictionDO *)self isPredictionValid];
  }

  return isMapValid;
}

- (BOOL)isTemporarilyUnavailable
{
  isMapValid = [(IRMiloLslPredictionDO *)self isMapValid];
  if (isMapValid)
  {
    LOBYTE(isMapValid) = ![(IRMiloLslPredictionDO *)self isPredictionValid];
  }

  return isMapValid;
}

- (IRMiloLslPredictionDO)initWithPredictionId:(id)id isPredictionValid:(BOOL)valid isMapValid:(BOOL)mapValid isMotionDetected:(BOOL)detected scores:(id)scores predictionTime:(id)time
{
  idCopy = id;
  scoresCopy = scores;
  timeCopy = time;
  v21.receiver = self;
  v21.super_class = IRMiloLslPredictionDO;
  v18 = [(IRMiloLslPredictionDO *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_predictionId, id);
    v19->_isPredictionValid = valid;
    v19->_isMapValid = mapValid;
    v19->_isMotionDetected = detected;
    objc_storeStrong(&v19->_scores, scores);
    objc_storeStrong(&v19->_predictionTime, time);
  }

  return v19;
}

- (id)copyWithReplacementPredictionId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:idCopy isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:self->_scores predictionTime:self->_predictionTime];

  return v5;
}

- (id)copyWithReplacementScores:(id)scores
{
  scoresCopy = scores;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:self->_predictionId isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:scoresCopy predictionTime:self->_predictionTime];

  return v5;
}

- (id)copyWithReplacementPredictionTime:(id)time
{
  timeCopy = time;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:self->_predictionId isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:self->_scores predictionTime:timeCopy];

  return v5;
}

- (BOOL)isEqualToMiloLslPredictionDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_14;
  }

  v6 = self->_predictionId == 0;
  predictionId = [oCopy predictionId];
  v8 = predictionId != 0;

  if (v6 == v8)
  {
    goto LABEL_14;
  }

  predictionId = self->_predictionId;
  if (predictionId)
  {
    predictionId2 = [v5 predictionId];
    v11 = [(NSString *)predictionId isEqual:predictionId2];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  isPredictionValid = self->_isPredictionValid;
  if (isPredictionValid != [v5 isPredictionValid])
  {
    goto LABEL_14;
  }

  isMapValid = self->_isMapValid;
  if (isMapValid != [v5 isMapValid])
  {
    goto LABEL_14;
  }

  isMotionDetected = self->_isMotionDetected;
  if (isMotionDetected != [v5 isMotionDetected])
  {
    goto LABEL_14;
  }

  v15 = self->_scores == 0;
  scores = [v5 scores];
  v17 = scores != 0;

  if (v15 == v17)
  {
    goto LABEL_14;
  }

  scores = self->_scores;
  if (scores)
  {
    scores2 = [v5 scores];
    v20 = [(NSSet *)scores isEqual:scores2];

    if (!v20)
    {
      goto LABEL_14;
    }
  }

  v21 = self->_predictionTime == 0;
  predictionTime = [v5 predictionTime];
  v23 = predictionTime != 0;

  if (v21 != v23)
  {
    predictionTime = self->_predictionTime;
    if (predictionTime)
    {
      predictionTime2 = [v5 predictionTime];
      v26 = [(NSDate *)predictionTime isEqual:predictionTime2];
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
LABEL_14:
    v26 = 0;
  }

  return v26 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRMiloLslPredictionDO *)self isEqualToMiloLslPredictionDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_predictionId hash];
  v4 = self->_isPredictionValid - v3 + 32 * v3;
  v5 = self->_isMapValid - v4 + 32 * v4;
  v6 = self->_isMotionDetected - v5 + 32 * v5;
  v7 = [(NSSet *)self->_scores hash]- v6 + 32 * v6;
  return [(NSDate *)self->_predictionTime hash]- v7 + 32 * v7;
}

- (IRMiloLslPredictionDO)initWithCoder:(id)coder
{
  v44[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionId"];
  if (!v5)
  {
    error = [coderCopy error];

    if (error)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_9:
    v15 = [coderCopy decodeInt64ForKey:@"isPredictionValid"];
    if (!v15)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        goto LABEL_23;
      }

      if (([coderCopy containsValueForKey:@"isPredictionValid"] & 1) == 0)
      {
        v41 = *MEMORY[0x277CCA450];
        v42 = @"Missing serialized value for IRMiloLslPredictionDO.isPredictionValid";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v42;
        v28 = &v41;
        goto LABEL_31;
      }
    }

    v16 = [coderCopy decodeInt64ForKey:@"isMapValid"];
    if (!v16)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        goto LABEL_23;
      }

      if (([coderCopy containsValueForKey:@"isMapValid"] & 1) == 0)
      {
        v39 = *MEMORY[0x277CCA450];
        v40 = @"Missing serialized value for IRMiloLslPredictionDO.isMapValid";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v40;
        v28 = &v39;
        goto LABEL_31;
      }
    }

    v17 = [coderCopy decodeInt64ForKey:@"isMotionDetected"];
    if (v17)
    {
LABEL_12:
      v18 = objc_alloc(MEMORY[0x277CBEB98]);
      v19 = objc_opt_class();
      v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
      v7 = [coderCopy decodeObjectOfClasses:v20 forKey:@"scores"];

      if (!v7)
      {
        error4 = [coderCopy error];

        if (error4)
        {
          selfCopy = 0;
          goto LABEL_7;
        }
      }

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionTime"];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = objc_opt_class();
          v10 = NSStringFromClass(v21);
          v22 = objc_opt_class();
          v11 = NSStringFromClass(v22);
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRMiloLslPredictionDO key predictionTime (expected %@, decoded %@)", v10, v11, 0];
          v35 = *MEMORY[0x277CCA450];
          v36 = v12;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslPredictionDOOCNTErrorDomain" code:3 userInfo:v23];
          [coderCopy failWithError:v24];

          goto LABEL_4;
        }
      }

      else
      {
        error5 = [coderCopy error];

        if (error5)
        {
          goto LABEL_5;
        }
      }

      self = [(IRMiloLslPredictionDO *)self initWithPredictionId:v5 isPredictionValid:v15 != 0 isMapValid:v16 != 0 isMotionDetected:v17 != 0 scores:v7 predictionTime:v9];
      selfCopy = self;
      goto LABEL_6;
    }

    error6 = [coderCopy error];

    if (!error6)
    {
      if ([coderCopy containsValueForKey:@"isMotionDetected"])
      {
        goto LABEL_12;
      }

      v37 = *MEMORY[0x277CCA450];
      v38 = @"Missing serialized value for IRMiloLslPredictionDO.isMotionDetected";
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v38;
      v28 = &v37;
LABEL_31:
      v7 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
      v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslPredictionDOOCNTErrorDomain" code:1 userInfo:v7];
      [coderCopy failWithError:v9];
      goto LABEL_5;
    }

LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRMiloLslPredictionDO key predictionId (expected %@, decoded %@)", v7, v9, 0];
  v43 = *MEMORY[0x277CCA450];
  v44[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslPredictionDOOCNTErrorDomain" code:3 userInfo:v11];
  [coderCopy failWithError:v12];
LABEL_4:

LABEL_5:
  selfCopy = 0;
LABEL_6:

LABEL_7:
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  predictionId = self->_predictionId;
  v8 = coderCopy;
  if (predictionId)
  {
    [coderCopy encodeObject:predictionId forKey:@"predictionId"];
    coderCopy = v8;
  }

  [coderCopy encodeInt64:self->_isPredictionValid forKey:@"isPredictionValid"];
  [v8 encodeInt64:self->_isMapValid forKey:@"isMapValid"];
  [v8 encodeInt64:self->_isMotionDetected forKey:@"isMotionDetected"];
  scores = self->_scores;
  if (scores)
  {
    [v8 encodeObject:scores forKey:@"scores"];
  }

  predictionTime = self->_predictionTime;
  if (predictionTime)
  {
    [v8 encodeObject:predictionTime forKey:@"predictionTime"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  predictionId = self->_predictionId;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPredictionValid];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMapValid];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMotionDetected];
  v8 = [v3 initWithFormat:@"<IRMiloLslPredictionDO | predictionId:%@ isPredictionValid:%@ isMapValid:%@ isMotionDetected:%@ scores:%@ predictionTime:%@>", predictionId, v5, v6, v7, self->_scores, self->_predictionTime];

  return v8;
}

@end