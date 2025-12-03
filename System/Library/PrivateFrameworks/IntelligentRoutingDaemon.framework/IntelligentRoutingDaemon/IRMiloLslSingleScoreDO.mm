@interface IRMiloLslSingleScoreDO
+ (id)miloLslSingleScoreDOWithScore:(double)score eventID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMiloLslSingleScoreDO:(id)o;
- (IRMiloLslSingleScoreDO)initWithCoder:(id)coder;
- (IRMiloLslSingleScoreDO)initWithScore:(double)score eventID:(id)d;
- (id)copyWithReplacementEventID:(id)d;
- (id)copyWithReplacementScore:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRMiloLslSingleScoreDO

- (IRMiloLslSingleScoreDO)initWithScore:(double)score eventID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = IRMiloLslSingleScoreDO;
  v8 = [(IRMiloLslSingleScoreDO *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_score = score;
    objc_storeStrong(&v8->_eventID, d);
  }

  return v9;
}

+ (id)miloLslSingleScoreDOWithScore:(double)score eventID:(id)d
{
  dCopy = d;
  v7 = [[self alloc] initWithScore:dCopy eventID:score];

  return v7;
}

- (id)copyWithReplacementScore:(double)score
{
  v5 = objc_alloc(objc_opt_class());
  eventID = self->_eventID;

  return [v5 initWithScore:eventID eventID:score];
}

- (id)copyWithReplacementEventID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(objc_opt_class()) initWithScore:dCopy eventID:self->_score];

  return v5;
}

- (BOOL)isEqualToMiloLslSingleScoreDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (oCopy && (score = self->_score, [oCopy score], score == v7) && (v8 = self->_eventID == 0, objc_msgSend(v5, "eventID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 != 0, v9, v8 != v10))
  {
    eventID = self->_eventID;
    if (eventID)
    {
      eventID = [v5 eventID];
      v13 = [(NSString *)eventID isEqual:eventID];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRMiloLslSingleScoreDO *)self isEqualToMiloLslSingleScoreDO:v5];
  }

  return v6;
}

- (IRMiloLslSingleScoreDO)initWithCoder:(id)coder
{
  v22[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"score"];
  if (v5)
  {
    goto LABEL_2;
  }

  error = [coderCopy error];

  if (!error)
  {
    if (([coderCopy containsValueForKey:@"score"] & 1) == 0)
    {
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"Missing serialized value for IRMiloLslSingleScoreDO.score";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslSingleScoreDOOCNTErrorDomain" code:1 userInfo:v6];
      [coderCopy failWithError:v8];
      goto LABEL_11;
    }

LABEL_2:
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventID"];
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
        [coderCopy failWithError:v13];

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
LABEL_12:
        selfCopy = 0;
        goto LABEL_13;
      }
    }

    self = [(IRMiloLslSingleScoreDO *)self initWithScore:v6 eventID:v5];
    selfCopy = self;
LABEL_13:

    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_score forKey:@"score"];
  eventID = self->_eventID;
  if (eventID)
  {
    [coderCopy encodeObject:eventID forKey:@"eventID"];
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