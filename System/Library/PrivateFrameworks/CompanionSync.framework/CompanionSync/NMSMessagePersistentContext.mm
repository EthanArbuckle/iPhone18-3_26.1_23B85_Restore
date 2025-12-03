@interface NMSMessagePersistentContext
- (NMSMessagePersistentContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NMSMessagePersistentContext

- (NMSMessagePersistentContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NMSMessagePersistentContext;
  v5 = [(NMSMessagePersistentContext *)&v17 init];
  if (v5)
  {
    v5->_messageID = [coderCopy decodeIntegerForKey:@"m"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v6;

    v8 = allowedClasses();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"u"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    date = v5->_date;
    v5->_date = v11;

    v5->_fromRequest = [coderCopy decodeBoolForKey:@"r"];
    v13 = allowedClasses();
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"f"];
    idsOptions = v5->_idsOptions;
    v5->_idsOptions = v14;

    v5->_sendAcked = [coderCopy decodeBoolForKey:@"sa"];
    v5->_processAcked = [coderCopy decodeBoolForKey:@"pa"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_messageID forKey:@"m"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"i"];
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

  [coderCopy encodeObject:userInfo forKey:@"u"];
  [coderCopy encodeObject:self->_date forKey:@"d"];
  [coderCopy encodeBool:self->_fromRequest forKey:@"r"];
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

  [coderCopy encodeObject:idsOptions forKey:@"f"];
  [coderCopy encodeBool:self->_sendAcked forKey:@"sa"];
  [coderCopy encodeBool:self->_processAcked forKey:@"pa"];
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