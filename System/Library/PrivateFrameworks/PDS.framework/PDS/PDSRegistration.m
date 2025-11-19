@interface PDSRegistration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRegistration:(id)a3;
- (PDSRegistration)initWithCoder:(id)a3;
- (PDSRegistration)initWithTopic:(id)a3 qualifier:(id)a4 pushEnvironment:(char)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PDSRegistration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PDSRegistration *)self topicString];
  v6 = [(PDSRegistration *)self qualifierString];
  v7 = [v3 stringWithFormat:@"<%@: %p topic = %@; qual = %@; env = %d>", v4, self, v5, v6, -[PDSRegistration pushEnvironment](self, "pushEnvironment")];;

  return v7;
}

- (PDSRegistration)initWithTopic:(id)a3 qualifier:(id)a4 pushEnvironment:(char)a5
{
  v5 = a5;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRegistration initWithTopic:a2 qualifier:self pushEnvironment:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [PDSRegistration initWithTopic:a2 qualifier:self pushEnvironment:?];
LABEL_3:
  if (v5 >= 2)
  {
    [PDSRegistration initWithTopic:a2 qualifier:self pushEnvironment:?];
  }

  v16.receiver = self;
  v16.super_class = PDSRegistration;
  v13 = [(PDSRegistration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_topicString, a3);
    objc_storeStrong(&v14->_qualifierString, a4);
    v14->_pushEnvironment = v5;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSRegistration *)self isEqualToRegistration:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(PDSRegistration *)self topicString];
  v4 = [v3 hash];
  v5 = [(PDSRegistration *)self qualifierString];
  v6 = [v5 hash] ^ v4;
  v7 = [(PDSRegistration *)self pushEnvironment];

  return v6 ^ v7;
}

- (BOOL)isEqualToRegistration:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(PDSRegistration *)self qualifierString];
    v6 = [(PDSRegistration *)v4 qualifierString];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(PDSRegistration *)self topicString];
      v8 = [(PDSRegistration *)v4 topicString];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(PDSRegistration *)self pushEnvironment];
        v10 = v9 == [(PDSRegistration *)v4 pushEnvironment];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(PDSRegistration *)self topicString];
  [v6 encodeObject:v4 forKey:@"topic"];

  v5 = [(PDSRegistration *)self qualifierString];
  [v6 encodeObject:v5 forKey:@"qualifier"];

  [v6 encodeInt32:-[PDSRegistration pushEnvironment](self forKey:{"pushEnvironment"), @"env"}];
}

- (PDSRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"qualifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v7 = [v4 decodeInt32ForKey:@"env"];

  v8 = [(PDSRegistration *)self initWithTopic:v6 qualifier:v5 pushEnvironment:v7];
  return v8;
}

- (void)initWithTopic:(uint64_t)a1 qualifier:(uint64_t)a2 pushEnvironment:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSRegistration.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"topic"}];
}

- (void)initWithTopic:(uint64_t)a1 qualifier:(uint64_t)a2 pushEnvironment:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSRegistration.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"qualifier"}];
}

- (void)initWithTopic:(uint64_t)a1 qualifier:(uint64_t)a2 pushEnvironment:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSRegistration.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"pushEnvironment == PDSPushEnvironmentSandbox || pushEnvironment == PDSPushEnvironmentProduction"}];
}

@end