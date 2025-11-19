@interface IRMiloLslPredictionDO
- (BOOL)canUse;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMiloLslPredictionDO:(id)a3;
- (BOOL)isTemporarilyUnavailable;
- (IRMiloLslPredictionDO)initWithCoder:(id)a3;
- (IRMiloLslPredictionDO)initWithPredictionId:(id)a3 isPredictionValid:(BOOL)a4 isMapValid:(BOOL)a5 isMotionDetected:(BOOL)a6 scores:(id)a7 predictionTime:(id)a8;
- (id)copyWithReplacementPredictionId:(id)a3;
- (id)copyWithReplacementPredictionTime:(id)a3;
- (id)copyWithReplacementScores:(id)a3;
- (id)description;
- (id)exportAsDictionary;
- (id)scoreForPredictionEventEvent:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRMiloLslPredictionDO

- (id)exportAsDictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(IRMiloLslPredictionDO *)self predictionId];
  v22 = v3;
  [v3 setObject:v4 forKeyedSubscript:@"predictionId"];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = self;
  v6 = [(IRMiloLslPredictionDO *)self scores];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = MEMORY[0x277CCABB0];
        [v11 score];
        v13 = [v12 numberWithDouble:?];
        [v5 setObject:v13 forKeyedSubscript:@"score"];

        v14 = [v11 eventID];
        [v5 setObject:v14 forKeyedSubscript:@"eventID"];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  [v22 setObject:v5 forKeyedSubscript:@"scores"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isPredictionValid](v21, "isPredictionValid")}];
  [v22 setObject:v15 forKeyedSubscript:@"isPredictionValid"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isMapValid](v21, "isMapValid")}];
  [v22 setObject:v16 forKeyedSubscript:@"isMapValid"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isMotionDetected](v21, "isMotionDetected")}];
  [v22 setObject:v17 forKeyedSubscript:@"isMotionDetected"];

  v18 = [(IRMiloLslPredictionDO *)v21 predictionTime];
  [v22 setObject:v18 forKeyedSubscript:@"predictionTime"];

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)scoreForPredictionEventEvent:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(IRMiloLslPredictionDO *)self canUse])
  {
    v5 = [(IRMiloLslPredictionDO *)self predictionId];
    v6 = [v4 predictionId];
    v7 = [v5 isEqual:v6];

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
      v9 = [(IRMiloLslPredictionDO *)self scores];
      v8 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v12 eventID];
            v14 = [v4 label];
            v15 = [v13 isEqual:v14];

            if (v15)
            {
              v16 = MEMORY[0x277CCABB0];
              [v12 score];
              v8 = [v16 numberWithDouble:?];
              goto LABEL_15;
            }
          }

          v8 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v3 = [(IRMiloLslPredictionDO *)self isMapValid];
  if (v3)
  {

    LOBYTE(v3) = [(IRMiloLslPredictionDO *)self isPredictionValid];
  }

  return v3;
}

- (BOOL)isTemporarilyUnavailable
{
  v3 = [(IRMiloLslPredictionDO *)self isMapValid];
  if (v3)
  {
    LOBYTE(v3) = ![(IRMiloLslPredictionDO *)self isPredictionValid];
  }

  return v3;
}

- (IRMiloLslPredictionDO)initWithPredictionId:(id)a3 isPredictionValid:(BOOL)a4 isMapValid:(BOOL)a5 isMotionDetected:(BOOL)a6 scores:(id)a7 predictionTime:(id)a8
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = IRMiloLslPredictionDO;
  v18 = [(IRMiloLslPredictionDO *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_predictionId, a3);
    v19->_isPredictionValid = a4;
    v19->_isMapValid = a5;
    v19->_isMotionDetected = a6;
    objc_storeStrong(&v19->_scores, a7);
    objc_storeStrong(&v19->_predictionTime, a8);
  }

  return v19;
}

- (id)copyWithReplacementPredictionId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:v4 isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:self->_scores predictionTime:self->_predictionTime];

  return v5;
}

- (id)copyWithReplacementScores:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:self->_predictionId isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:v4 predictionTime:self->_predictionTime];

  return v5;
}

- (id)copyWithReplacementPredictionTime:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:self->_predictionId isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:self->_scores predictionTime:v4];

  return v5;
}

- (BOOL)isEqualToMiloLslPredictionDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = self->_predictionId == 0;
  v7 = [v4 predictionId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_14;
  }

  predictionId = self->_predictionId;
  if (predictionId)
  {
    v10 = [v5 predictionId];
    v11 = [(NSString *)predictionId isEqual:v10];

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
  v16 = [v5 scores];
  v17 = v16 != 0;

  if (v15 == v17)
  {
    goto LABEL_14;
  }

  scores = self->_scores;
  if (scores)
  {
    v19 = [v5 scores];
    v20 = [(NSSet *)scores isEqual:v19];

    if (!v20)
    {
      goto LABEL_14;
    }
  }

  v21 = self->_predictionTime == 0;
  v22 = [v5 predictionTime];
  v23 = v22 != 0;

  if (v21 != v23)
  {
    predictionTime = self->_predictionTime;
    if (predictionTime)
    {
      v25 = [v5 predictionTime];
      v26 = [(NSDate *)predictionTime isEqual:v25];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRMiloLslPredictionDO *)self isEqualToMiloLslPredictionDO:v5];
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

- (IRMiloLslPredictionDO)initWithCoder:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionId"];
  if (!v5)
  {
    v14 = [v4 error];

    if (v14)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_9:
    v15 = [v4 decodeInt64ForKey:@"isPredictionValid"];
    if (!v15)
    {
      v25 = [v4 error];

      if (v25)
      {
        goto LABEL_23;
      }

      if (([v4 containsValueForKey:@"isPredictionValid"] & 1) == 0)
      {
        v41 = *MEMORY[0x277CCA450];
        v42 = @"Missing serialized value for IRMiloLslPredictionDO.isPredictionValid";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v42;
        v28 = &v41;
        goto LABEL_31;
      }
    }

    v16 = [v4 decodeInt64ForKey:@"isMapValid"];
    if (!v16)
    {
      v29 = [v4 error];

      if (v29)
      {
        goto LABEL_23;
      }

      if (([v4 containsValueForKey:@"isMapValid"] & 1) == 0)
      {
        v39 = *MEMORY[0x277CCA450];
        v40 = @"Missing serialized value for IRMiloLslPredictionDO.isMapValid";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v40;
        v28 = &v39;
        goto LABEL_31;
      }
    }

    v17 = [v4 decodeInt64ForKey:@"isMotionDetected"];
    if (v17)
    {
LABEL_12:
      v18 = objc_alloc(MEMORY[0x277CBEB98]);
      v19 = objc_opt_class();
      v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
      v7 = [v4 decodeObjectOfClasses:v20 forKey:@"scores"];

      if (!v7)
      {
        v33 = [v4 error];

        if (v33)
        {
          v13 = 0;
          goto LABEL_7;
        }
      }

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionTime"];
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
          [v4 failWithError:v24];

          goto LABEL_4;
        }
      }

      else
      {
        v34 = [v4 error];

        if (v34)
        {
          goto LABEL_5;
        }
      }

      self = [(IRMiloLslPredictionDO *)self initWithPredictionId:v5 isPredictionValid:v15 != 0 isMapValid:v16 != 0 isMotionDetected:v17 != 0 scores:v7 predictionTime:v9];
      v13 = self;
      goto LABEL_6;
    }

    v30 = [v4 error];

    if (!v30)
    {
      if ([v4 containsValueForKey:@"isMotionDetected"])
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
      [v4 failWithError:v9];
      goto LABEL_5;
    }

LABEL_23:
    v13 = 0;
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
  [v4 failWithError:v12];
LABEL_4:

LABEL_5:
  v13 = 0;
LABEL_6:

LABEL_7:
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  predictionId = self->_predictionId;
  v8 = v4;
  if (predictionId)
  {
    [v4 encodeObject:predictionId forKey:@"predictionId"];
    v4 = v8;
  }

  [v4 encodeInt64:self->_isPredictionValid forKey:@"isPredictionValid"];
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