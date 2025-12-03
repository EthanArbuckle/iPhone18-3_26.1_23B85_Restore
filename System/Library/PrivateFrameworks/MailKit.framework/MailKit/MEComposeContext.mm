@interface MEComposeContext
- (MEComposeContext)initWithAction:(int64_t)action originalMessage:(id)message shouldSign:(BOOL)sign isSigned:(BOOL)signed shouldEncrypt:(BOOL)encrypt isEncrypted:(BOOL)encrypted;
- (MEComposeContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEComposeContext

- (MEComposeContext)initWithAction:(int64_t)action originalMessage:(id)message shouldSign:(BOOL)sign isSigned:(BOOL)signed shouldEncrypt:(BOOL)encrypt isEncrypted:(BOOL)encrypted
{
  messageCopy = message;
  v20.receiver = self;
  v20.super_class = MEComposeContext;
  v16 = [(MEComposeContext *)&v20 init];
  if (v16)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    contextID = v16->_contextID;
    v16->_contextID = uUID;

    v16->_action = action;
    objc_storeStrong(&v16->_originalMessage, message);
    v16->_shouldSign = sign;
    v16->_isSigned = signed;
    v16->_shouldEncrypt = encrypt;
    v16->_isEncrypted = encrypted;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contextID = [(MEComposeContext *)self contextID];
  [coderCopy encodeObject:contextID forKey:@"EFPropertyKey_contextID"];

  originalMessage = [(MEComposeContext *)self originalMessage];
  [coderCopy encodeObject:originalMessage forKey:@"EFPropertyKey_originalMessage"];

  [coderCopy encodeInteger:-[MEComposeContext action](self forKey:{"action"), @"EFPropertyKey_action"}];
  [coderCopy encodeBool:-[MEComposeContext isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  [coderCopy encodeBool:-[MEComposeContext shouldEncrypt](self forKey:{"shouldEncrypt"), @"EFPropertyKey_shouldEncrypt"}];
  [coderCopy encodeBool:-[MEComposeContext isSigned](self forKey:{"isSigned"), @"EFPropertyKey_isSigned"}];
  [coderCopy encodeBool:-[MEComposeContext shouldSign](self forKey:{"shouldSign"), @"EFPropertyKey_shouldSign"}];
}

- (MEComposeContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MEComposeContext;
  v5 = [(MEComposeContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contextID"];
    contextID = v5->_contextID;
    v5->_contextID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_originalMessage"];
    originalMessage = v5->_originalMessage;
    v5->_originalMessage = v8;

    v5->_action = [coderCopy decodeIntegerForKey:@"EFPropertyKey_action"];
    v5->_isEncrypted = [coderCopy decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
    v5->_shouldEncrypt = [coderCopy decodeBoolForKey:@"EFPropertyKey_shouldEncrypt"];
    v5->_isSigned = [coderCopy decodeBoolForKey:@"EFPropertyKey_isSigned"];
    v5->_shouldSign = [coderCopy decodeBoolForKey:@"EFPropertyKey_shouldSign"];
  }

  return v5;
}

@end