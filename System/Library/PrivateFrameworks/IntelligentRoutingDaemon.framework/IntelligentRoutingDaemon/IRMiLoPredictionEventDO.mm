@interface IRMiLoPredictionEventDO
+ (IRMiLoPredictionEventDO)miLoPredictionEventDOWithLabel:(id)label predictionId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMiLoPredictionEventDO:(id)o;
- (IRMiLoPredictionEventDO)initWithCoder:(id)coder;
- (IRMiLoPredictionEventDO)initWithLabel:(id)label predictionId:(id)id;
- (id)copyWithReplacementLabel:(id)label;
- (id)copyWithReplacementPredictionId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRMiLoPredictionEventDO

- (IRMiLoPredictionEventDO)initWithLabel:(id)label predictionId:(id)id
{
  labelCopy = label;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = IRMiLoPredictionEventDO;
  v9 = [(IRMiLoPredictionEventDO *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    objc_storeStrong(&v10->_predictionId, id);
  }

  return v10;
}

+ (IRMiLoPredictionEventDO)miLoPredictionEventDOWithLabel:(id)label predictionId:(id)id
{
  idCopy = id;
  labelCopy = label;
  v8 = [[self alloc] initWithLabel:labelCopy predictionId:idCopy];

  return v8;
}

- (id)copyWithReplacementLabel:(id)label
{
  labelCopy = label;
  v5 = [objc_alloc(objc_opt_class()) initWithLabel:labelCopy predictionId:self->_predictionId];

  return v5;
}

- (id)copyWithReplacementPredictionId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithLabel:self->_label predictionId:idCopy];

  return v5;
}

- (BOOL)isEqualToMiLoPredictionEventDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_label == 0;
  label = [oCopy label];
  v8 = label != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  label = self->_label;
  if (label)
  {
    label2 = [v5 label];
    v11 = [(NSString *)label isEqual:label2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_predictionId == 0;
  predictionId = [v5 predictionId];
  v14 = predictionId != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    predictionId = self->_predictionId;
    if (predictionId)
    {
      predictionId2 = [v5 predictionId];
      v17 = [(NSString *)predictionId isEqual:predictionId2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRMiLoPredictionEventDO *)self isEqualToMiLoPredictionEventDO:v5];
  }

  return v6;
}

- (IRMiLoPredictionEventDO)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRMiLoPredictionEventDO key label (expected %@, decoded %@)", v7, v9, 0];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiLoPredictionEventDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_9:

LABEL_10:
      selfCopy = 0;
LABEL_13:

      goto LABEL_14;
    }

LABEL_6:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionId"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRMiLoPredictionEventDO key predictionId (expected %@, decoded %@)", v9, v10, 0];
        v21 = *MEMORY[0x277CCA450];
        v22 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiLoPredictionEventDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];

        goto LABEL_9;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        goto LABEL_10;
      }
    }

    self = [(IRMiLoPredictionEventDO *)self initWithLabel:v5 predictionId:v7];
    selfCopy = self;
    goto LABEL_13;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    goto LABEL_6;
  }

  selfCopy = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = self->_label;
  v7 = coderCopy;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"label"];
    coderCopy = v7;
  }

  predictionId = self->_predictionId;
  if (predictionId)
  {
    [v7 encodeObject:predictionId forKey:@"predictionId"];
    coderCopy = v7;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRMiLoPredictionEventDO | label:%@ predictionId:%@>", self->_label, self->_predictionId];

  return v2;
}

@end