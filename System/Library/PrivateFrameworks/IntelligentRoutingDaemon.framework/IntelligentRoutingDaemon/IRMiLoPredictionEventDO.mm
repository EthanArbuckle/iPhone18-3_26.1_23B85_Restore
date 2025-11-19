@interface IRMiLoPredictionEventDO
+ (IRMiLoPredictionEventDO)miLoPredictionEventDOWithLabel:(id)a3 predictionId:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMiLoPredictionEventDO:(id)a3;
- (IRMiLoPredictionEventDO)initWithCoder:(id)a3;
- (IRMiLoPredictionEventDO)initWithLabel:(id)a3 predictionId:(id)a4;
- (id)copyWithReplacementLabel:(id)a3;
- (id)copyWithReplacementPredictionId:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRMiLoPredictionEventDO

- (IRMiLoPredictionEventDO)initWithLabel:(id)a3 predictionId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IRMiLoPredictionEventDO;
  v9 = [(IRMiLoPredictionEventDO *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    objc_storeStrong(&v10->_predictionId, a4);
  }

  return v10;
}

+ (IRMiLoPredictionEventDO)miLoPredictionEventDOWithLabel:(id)a3 predictionId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithLabel:v7 predictionId:v6];

  return v8;
}

- (id)copyWithReplacementLabel:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLabel:v4 predictionId:self->_predictionId];

  return v5;
}

- (id)copyWithReplacementPredictionId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLabel:self->_label predictionId:v4];

  return v5;
}

- (BOOL)isEqualToMiLoPredictionEventDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_label == 0;
  v7 = [v4 label];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  label = self->_label;
  if (label)
  {
    v10 = [v5 label];
    v11 = [(NSString *)label isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_predictionId == 0;
  v13 = [v5 predictionId];
  v14 = v13 != 0;

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
      v16 = [v5 predictionId];
      v17 = [(NSString *)predictionId isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRMiLoPredictionEventDO *)self isEqualToMiLoPredictionEventDO:v5];
  }

  return v6;
}

- (IRMiLoPredictionEventDO)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
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
      [v4 failWithError:v12];
LABEL_9:

LABEL_10:
      v14 = 0;
LABEL_13:

      goto LABEL_14;
    }

LABEL_6:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionId"];
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

    self = [(IRMiLoPredictionEventDO *)self initWithLabel:v5 predictionId:v7];
    v14 = self;
    goto LABEL_13;
  }

  v13 = [v4 error];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  label = self->_label;
  v7 = v4;
  if (label)
  {
    [v4 encodeObject:label forKey:@"label"];
    v4 = v7;
  }

  predictionId = self->_predictionId;
  if (predictionId)
  {
    [v7 encodeObject:predictionId forKey:@"predictionId"];
    v4 = v7;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRMiLoPredictionEventDO | label:%@ predictionId:%@>", self->_label, self->_predictionId];

  return v2;
}

@end