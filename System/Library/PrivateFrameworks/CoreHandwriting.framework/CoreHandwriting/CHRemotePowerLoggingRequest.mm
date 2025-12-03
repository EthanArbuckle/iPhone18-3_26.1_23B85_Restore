@interface CHRemotePowerLoggingRequest
- (BOOL)isEqual:(id)equal;
- (CHRemotePowerLoggingRequest)initWithCoder:(id)coder;
- (CHRemotePowerLoggingRequest)initWithModel:(unint64_t)model;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHRemotePowerLoggingRequest

- (CHRemotePowerLoggingRequest)initWithModel:(unint64_t)model
{
  v5.receiver = self;
  v5.super_class = CHRemotePowerLoggingRequest;
  result = [(CHRemotePowerLoggingRequest *)&v5 init];
  if (result)
  {
    result->_modelIdentifier = model;
  }

  return result;
}

- (CHRemotePowerLoggingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CHRemotePowerLoggingRequest;
  v9 = [(CHRemotePowerLoggingRequest *)&v11 init];
  if (v9)
  {
    v9->_modelIdentifier = objc_msgSend_decodeIntForKey_(coderCopy, v5, @"model", v6, v7, v8);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_modelIdentifier, v5, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"model", v10, v11);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v11 = v5;
    if (self)
    {
      if (self == v5)
      {
        LOBYTE(self) = 1;
      }

      else
      {
        self = self->_modelIdentifier;
        LOBYTE(self) = self == objc_msgSend_modelIdentifier(v5, v6, v7, v8, v9, v10);
      }
    }

    return self;
  }

  else
  {

    return 0;
  }
}

@end