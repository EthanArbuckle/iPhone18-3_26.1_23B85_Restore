@interface ELSQueueEntry
- (BOOL)isEqual:(id)a3;
- (ELSQueueEntry)initWithCoder:(id)a3;
- (ELSQueueEntry)initWithType:(id)a3 typeName:(id)a4 parameters:(id)a5 executeAfterDuration:(double)a6 retry:(BOOL)a7 platform:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ELSQueueEntry

- (ELSQueueEntry)initWithType:(id)a3 typeName:(id)a4 parameters:(id)a5 executeAfterDuration:(double)a6 retry:(BOOL)a7 platform:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = ELSQueueEntry;
  v19 = [(ELSQueueEntry *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_type, a3);
    objc_storeStrong(&v20->_typeName, a4);
    objc_storeStrong(&v20->_parameters, a5);
    v20->_executeAfterDuration = a6;
    v20->_retry = a7;
    objc_storeStrong(&v20->_platform, a8);
  }

  return v20;
}

- (ELSQueueEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ELSQueueEntry;
  v5 = [(ELSQueueEntry *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [v4 decodeObjectForKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = [v4 decodeObjectForKey:@"typeName"];
    typeName = v5->_typeName;
    v5->_typeName = v10;

    v12 = [v4 decodeObjectForKey:@"executeAfterDuration"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
    }

    else
    {
      v14 = 0.0;
    }

    v5->_executeAfterDuration = v14;
    v15 = [v4 decodeObjectForKey:@"retry"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 BOOLValue];
    }

    else
    {
      v17 = 1;
    }

    v5->_retry = v17;
    v18 = [v4 decodeObjectForKey:@"platform"];
    platform = v5->_platform;
    v5->_platform = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ELSQueueEntry *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(ELSQueueEntry *)self typeName];
  [v4 encodeObject:v6 forKey:@"typeName"];

  v7 = [(ELSQueueEntry *)self parameters];
  [v4 encodeObject:v7 forKey:@"parameters"];

  v8 = MEMORY[0x277CCABB0];
  [(ELSQueueEntry *)self executeAfterDuration];
  v9 = [v8 numberWithDouble:?];
  [v4 encodeObject:v9 forKey:@"executeAfterDuration"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ELSQueueEntry retry](self, "retry")}];
  [v4 encodeObject:v10 forKey:@"retry"];

  v11 = [(ELSQueueEntry *)self platform];
  [v4 encodeObject:v11 forKey:@"platform"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_typeName copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSDictionary *)self->_parameters copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  *(v5 + 40) = self->_executeAfterDuration;
  *(v5 + 8) = self->_retry;
  objc_storeStrong((v5 + 48), self->_platform);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ELSQueueEntry *)self type];
    v7 = [v5 type];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(ELSQueueEntry *)self typeName];
      v9 = [v5 typeName];
      if ([v8 isEqualToString:v9])
      {
        [(ELSQueueEntry *)self executeAfterDuration];
        v11 = v10;
        [v5 executeAfterDuration];
        v13 = v11 == v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = @"type";
  v3 = [(ELSQueueEntry *)self type];
  v15[0] = v3;
  v14[1] = @"typeName";
  v4 = [(ELSQueueEntry *)self typeName];
  v15[1] = v4;
  v14[2] = @"parameters";
  v5 = [(ELSQueueEntry *)self parameters];
  v15[2] = v5;
  v14[3] = @"executeAfterDuration";
  v6 = MEMORY[0x277CCABB0];
  [(ELSQueueEntry *)self executeAfterDuration];
  v7 = [v6 numberWithDouble:?];
  v15[3] = v7;
  v14[4] = @"retry";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ELSQueueEntry retry](self, "retry")}];
  v15[4] = v8;
  v14[5] = @"platform";
  v9 = [(ELSQueueEntry *)self platform];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v15[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];
  if (!v9)
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ELSQueueEntry *)self dictionaryRepresentation];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

@end