@interface HDIDSMessagePersistentContext
- (HDIDSMessagePersistentContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDIDSMessagePersistentContext

- (HDIDSMessagePersistentContext)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDIDSMessagePersistentContext;
  v5 = [(HDIDSMessagePersistentContext *)&v16 init];
  if (v5)
  {
    v5->_messageID = [v4 decodeIntegerForKey:@"m"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"q"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    if (_MergedGlobals_219 != -1)
    {
      dispatch_once(&_MergedGlobals_219, &__block_literal_global_208);
    }

    v10 = qword_280D67DE8;
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"u"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    date = v5->_date;
    v5->_date = v13;

    v5->_fromRequest = [v4 decodeBoolForKey:@"r"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:self->_messageID forKey:@"m"];
  [v6 encodeObject:self->_idsIdentifier forKey:@"i"];
  [v6 encodeObject:self->_deviceIdentifier forKey:@"q"];
  if (self->_userInfo)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:918 description:{@"Invalid parameter not satisfying: %@", @"!_userInfo || [_userInfo isKindOfClass:[NSDictionary class]]"}];
    }
  }

  [v6 encodeObject:self->_userInfo forKey:@"u"];
  [v6 encodeObject:self->_date forKey:@"d"];
  [v6 encodeBool:self->_fromRequest forKey:@"r"];
}

@end