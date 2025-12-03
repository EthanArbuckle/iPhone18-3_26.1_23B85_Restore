@interface PDSRegistration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRegistration:(id)registration;
- (PDSRegistration)initWithCoder:(id)coder;
- (PDSRegistration)initWithTopic:(id)topic qualifier:(id)qualifier pushEnvironment:(char)environment;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PDSRegistration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  topicString = [(PDSRegistration *)self topicString];
  qualifierString = [(PDSRegistration *)self qualifierString];
  v7 = [v3 stringWithFormat:@"<%@: %p topic = %@; qual = %@; env = %d>", v4, self, topicString, qualifierString, -[PDSRegistration pushEnvironment](self, "pushEnvironment")];;

  return v7;
}

- (PDSRegistration)initWithTopic:(id)topic qualifier:(id)qualifier pushEnvironment:(char)environment
{
  environmentCopy = environment;
  topicCopy = topic;
  qualifierCopy = qualifier;
  v12 = qualifierCopy;
  if (topicCopy)
  {
    if (qualifierCopy)
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
  if (environmentCopy >= 2)
  {
    [PDSRegistration initWithTopic:a2 qualifier:self pushEnvironment:?];
  }

  v16.receiver = self;
  v16.super_class = PDSRegistration;
  v13 = [(PDSRegistration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_topicString, topic);
    objc_storeStrong(&v14->_qualifierString, qualifier);
    v14->_pushEnvironment = environmentCopy;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSRegistration *)self isEqualToRegistration:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  topicString = [(PDSRegistration *)self topicString];
  v4 = [topicString hash];
  qualifierString = [(PDSRegistration *)self qualifierString];
  v6 = [qualifierString hash] ^ v4;
  pushEnvironment = [(PDSRegistration *)self pushEnvironment];

  return v6 ^ pushEnvironment;
}

- (BOOL)isEqualToRegistration:(id)registration
{
  registrationCopy = registration;
  if (registrationCopy == self)
  {
    v10 = 1;
  }

  else
  {
    qualifierString = [(PDSRegistration *)self qualifierString];
    qualifierString2 = [(PDSRegistration *)registrationCopy qualifierString];
    if ([qualifierString isEqualToString:qualifierString2])
    {
      topicString = [(PDSRegistration *)self topicString];
      topicString2 = [(PDSRegistration *)registrationCopy topicString];
      if ([topicString isEqualToString:topicString2])
      {
        pushEnvironment = [(PDSRegistration *)self pushEnvironment];
        v10 = pushEnvironment == [(PDSRegistration *)registrationCopy pushEnvironment];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topicString = [(PDSRegistration *)self topicString];
  [coderCopy encodeObject:topicString forKey:@"topic"];

  qualifierString = [(PDSRegistration *)self qualifierString];
  [coderCopy encodeObject:qualifierString forKey:@"qualifier"];

  [coderCopy encodeInt32:-[PDSRegistration pushEnvironment](self forKey:{"pushEnvironment"), @"env"}];
}

- (PDSRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qualifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v7 = [coderCopy decodeInt32ForKey:@"env"];

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