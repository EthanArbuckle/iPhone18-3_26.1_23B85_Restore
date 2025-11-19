@interface IRMiloLslSingleScoreDO
+ (id)miloLslSingleScoreDOWithScore:(double)a3 eventID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMiloLslSingleScoreDO:(id)a3;
- (IRMiloLslSingleScoreDO)initWithCoder:(id)a3;
- (IRMiloLslSingleScoreDO)initWithScore:(double)a3 eventID:(id)a4;
- (id)copyWithReplacementEventID:(id)a3;
- (id)copyWithReplacementScore:(double)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRMiloLslSingleScoreDO

- (IRMiloLslSingleScoreDO)initWithScore:(double)a3 eventID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IRMiloLslSingleScoreDO;
  v8 = [(IRMiloLslSingleScoreDO *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_score = a3;
    objc_storeStrong(&v8->_eventID, a4);
  }

  return v9;
}

+ (id)miloLslSingleScoreDOWithScore:(double)a3 eventID:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithScore:v6 eventID:a3];

  return v7;
}

- (id)copyWithReplacementScore:(double)a3
{
  v5 = objc_alloc(objc_opt_class());
  eventID = self->_eventID;

  return [v5 initWithScore:eventID eventID:a3];
}

- (id)copyWithReplacementEventID:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithScore:v4 eventID:self->_score];

  return v5;
}

- (BOOL)isEqualToMiloLslSingleScoreDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (score = self->_score, [v4 score], score == v7) && (v8 = self->_eventID == 0, objc_msgSend(v5, "eventID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 != 0, v9, v8 != v10))
  {
    eventID = self->_eventID;
    if (eventID)
    {
      v12 = [v5 eventID];
      v13 = [(NSString *)eventID isEqual:v12];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRMiloLslSingleScoreDO *)self isEqualToMiloLslSingleScoreDO:v5];
  }

  return v6;
}

- (IRMiloLslSingleScoreDO)initWithCoder:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"score"];
  if (v5)
  {
    goto LABEL_2;
  }

  v14 = [v4 error];

  if (!v14)
  {
    if (([v4 containsValueForKey:@"score"] & 1) == 0)
    {
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"Missing serialized value for IRMiloLslSingleScoreDO.score";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslSingleScoreDOOCNTErrorDomain" code:1 userInfo:v6];
      [v4 failWithError:v8];
      goto LABEL_11;
    }

LABEL_2:
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventID"];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRMiloLslSingleScoreDO key eventID (expected %@, decoded %@)", v8, v10, 0];
        v19 = *MEMORY[0x277CCA450];
        v20 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslSingleScoreDOOCNTErrorDomain" code:3 userInfo:v12];
        [v4 failWithError:v13];

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
      v16 = [v4 error];

      if (v16)
      {
LABEL_12:
        v15 = 0;
        goto LABEL_13;
      }
    }

    self = [(IRMiloLslSingleScoreDO *)self initWithScore:v6 eventID:v5];
    v15 = self;
LABEL_13:

    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:self->_score forKey:@"score"];
  eventID = self->_eventID;
  if (eventID)
  {
    [v5 encodeObject:eventID forKey:@"eventID"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
  v5 = [v3 initWithFormat:@"<IRMiloLslSingleScoreDO | score:%@ eventID:%@>", v4, self->_eventID];

  return v5;
}

@end