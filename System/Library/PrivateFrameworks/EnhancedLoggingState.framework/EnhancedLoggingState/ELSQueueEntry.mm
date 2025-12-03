@interface ELSQueueEntry
- (BOOL)isEqual:(id)equal;
- (ELSQueueEntry)initWithCoder:(id)coder;
- (ELSQueueEntry)initWithType:(id)type typeName:(id)name parameters:(id)parameters executeAfterDuration:(double)duration retry:(BOOL)retry platform:(id)platform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ELSQueueEntry

- (ELSQueueEntry)initWithType:(id)type typeName:(id)name parameters:(id)parameters executeAfterDuration:(double)duration retry:(BOOL)retry platform:(id)platform
{
  typeCopy = type;
  nameCopy = name;
  parametersCopy = parameters;
  platformCopy = platform;
  v22.receiver = self;
  v22.super_class = ELSQueueEntry;
  v19 = [(ELSQueueEntry *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_type, type);
    objc_storeStrong(&v20->_typeName, name);
    objc_storeStrong(&v20->_parameters, parameters);
    v20->_executeAfterDuration = duration;
    v20->_retry = retry;
    objc_storeStrong(&v20->_platform, platform);
  }

  return v20;
}

- (ELSQueueEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = ELSQueueEntry;
  v5 = [(ELSQueueEntry *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [coderCopy decodeObjectForKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = [coderCopy decodeObjectForKey:@"typeName"];
    typeName = v5->_typeName;
    v5->_typeName = v10;

    v12 = [coderCopy decodeObjectForKey:@"executeAfterDuration"];
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
    v15 = [coderCopy decodeObjectForKey:@"retry"];
    v16 = v15;
    if (v15)
    {
      bOOLValue = [v15 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v5->_retry = bOOLValue;
    v18 = [coderCopy decodeObjectForKey:@"platform"];
    platform = v5->_platform;
    v5->_platform = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(ELSQueueEntry *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  typeName = [(ELSQueueEntry *)self typeName];
  [coderCopy encodeObject:typeName forKey:@"typeName"];

  parameters = [(ELSQueueEntry *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  v8 = MEMORY[0x277CCABB0];
  [(ELSQueueEntry *)self executeAfterDuration];
  v9 = [v8 numberWithDouble:?];
  [coderCopy encodeObject:v9 forKey:@"executeAfterDuration"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ELSQueueEntry retry](self, "retry")}];
  [coderCopy encodeObject:v10 forKey:@"retry"];

  platform = [(ELSQueueEntry *)self platform];
  [coderCopy encodeObject:platform forKey:@"platform"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_typeName copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSDictionary *)self->_parameters copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  *(v5 + 40) = self->_executeAfterDuration;
  *(v5 + 8) = self->_retry;
  objc_storeStrong((v5 + 48), self->_platform);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(ELSQueueEntry *)self type];
    type2 = [v5 type];
    if ([type isEqualToString:type2])
    {
      typeName = [(ELSQueueEntry *)self typeName];
      typeName2 = [v5 typeName];
      if ([typeName isEqualToString:typeName2])
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
  type = [(ELSQueueEntry *)self type];
  v15[0] = type;
  v14[1] = @"typeName";
  typeName = [(ELSQueueEntry *)self typeName];
  v15[1] = typeName;
  v14[2] = @"parameters";
  parameters = [(ELSQueueEntry *)self parameters];
  v15[2] = parameters;
  v14[3] = @"executeAfterDuration";
  v6 = MEMORY[0x277CCABB0];
  [(ELSQueueEntry *)self executeAfterDuration];
  v7 = [v6 numberWithDouble:?];
  v15[3] = v7;
  v14[4] = @"retry";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ELSQueueEntry retry](self, "retry")}];
  v15[4] = v8;
  v14[5] = @"platform";
  platform = [(ELSQueueEntry *)self platform];
  null = platform;
  if (!platform)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[5] = null;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];
  if (!platform)
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dictionaryRepresentation = [(ELSQueueEntry *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation description];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

@end