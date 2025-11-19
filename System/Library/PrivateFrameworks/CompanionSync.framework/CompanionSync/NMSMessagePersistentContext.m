@interface NMSMessagePersistentContext
- (NMSMessagePersistentContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NMSMessagePersistentContext

- (NMSMessagePersistentContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NMSMessagePersistentContext;
  v5 = [(NMSMessagePersistentContext *)&v17 init];
  if (v5)
  {
    v5->_messageID = [v4 decodeIntegerForKey:@"m"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v6;

    v8 = allowedClasses();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"u"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    date = v5->_date;
    v5->_date = v11;

    v5->_fromRequest = [v4 decodeBoolForKey:@"r"];
    v13 = allowedClasses();
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"f"];
    idsOptions = v5->_idsOptions;
    v5->_idsOptions = v14;

    v5->_sendAcked = [v4 decodeBoolForKey:@"sa"];
    v5->_processAcked = [v4 decodeBoolForKey:@"pa"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:self->_messageID forKey:@"m"];
  [v6 encodeObject:self->_idsIdentifier forKey:@"i"];
  if (self->_userInfo)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NMSMessagePersistentContext encodeWithCoder:];
    }

    userInfo = self->_userInfo;
  }

  else
  {
    userInfo = 0;
  }

  [v6 encodeObject:userInfo forKey:@"u"];
  [v6 encodeObject:self->_date forKey:@"d"];
  [v6 encodeBool:self->_fromRequest forKey:@"r"];
  if (self->_idsOptions)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NMSMessagePersistentContext encodeWithCoder:];
    }

    idsOptions = self->_idsOptions;
  }

  else
  {
    idsOptions = 0;
  }

  [v6 encodeObject:idsOptions forKey:@"f"];
  [v6 encodeBool:self->_sendAcked forKey:@"sa"];
  [v6 encodeBool:self->_processAcked forKey:@"pa"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  idsOptions = self->_idsOptions;
  v7 = [v3 stringWithFormat:@"<%@:%p id:%hu ids:%@ date:%@ fromRequest:%d sendAcked:%d processAcked:%d idsOptions:%@ userInfo:%@>", v5, self, self->_messageID, self->_idsIdentifier, self->_date, self->_fromRequest, self->_sendAcked, self->_processAcked, idsOptions, self->_userInfo];

  return v7;
}

@end