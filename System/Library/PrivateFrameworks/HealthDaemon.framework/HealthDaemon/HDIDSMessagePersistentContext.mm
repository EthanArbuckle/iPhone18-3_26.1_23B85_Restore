@interface HDIDSMessagePersistentContext
- (HDIDSMessagePersistentContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDIDSMessagePersistentContext

- (HDIDSMessagePersistentContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HDIDSMessagePersistentContext;
  v5 = [(HDIDSMessagePersistentContext *)&v16 init];
  if (v5)
  {
    v5->_messageID = [coderCopy decodeIntegerForKey:@"m"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"q"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    if (_MergedGlobals_219 != -1)
    {
      dispatch_once(&_MergedGlobals_219, &__block_literal_global_208);
    }

    v10 = qword_280D67DE8;
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"u"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    date = v5->_date;
    v5->_date = v13;

    v5->_fromRequest = [coderCopy decodeBoolForKey:@"r"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_messageID forKey:@"m"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"i"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"q"];
  if (self->_userInfo)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:918 description:{@"Invalid parameter not satisfying: %@", @"!_userInfo || [_userInfo isKindOfClass:[NSDictionary class]]"}];
    }
  }

  [coderCopy encodeObject:self->_userInfo forKey:@"u"];
  [coderCopy encodeObject:self->_date forKey:@"d"];
  [coderCopy encodeBool:self->_fromRequest forKey:@"r"];
}

@end