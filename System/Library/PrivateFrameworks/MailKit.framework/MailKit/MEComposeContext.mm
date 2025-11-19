@interface MEComposeContext
- (MEComposeContext)initWithAction:(int64_t)a3 originalMessage:(id)a4 shouldSign:(BOOL)a5 isSigned:(BOOL)a6 shouldEncrypt:(BOOL)a7 isEncrypted:(BOOL)a8;
- (MEComposeContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEComposeContext

- (MEComposeContext)initWithAction:(int64_t)a3 originalMessage:(id)a4 shouldSign:(BOOL)a5 isSigned:(BOOL)a6 shouldEncrypt:(BOOL)a7 isEncrypted:(BOOL)a8
{
  v15 = a4;
  v20.receiver = self;
  v20.super_class = MEComposeContext;
  v16 = [(MEComposeContext *)&v20 init];
  if (v16)
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    contextID = v16->_contextID;
    v16->_contextID = v17;

    v16->_action = a3;
    objc_storeStrong(&v16->_originalMessage, a4);
    v16->_shouldSign = a5;
    v16->_isSigned = a6;
    v16->_shouldEncrypt = a7;
    v16->_isEncrypted = a8;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MEComposeContext *)self contextID];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_contextID"];

  v5 = [(MEComposeContext *)self originalMessage];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_originalMessage"];

  [v6 encodeInteger:-[MEComposeContext action](self forKey:{"action"), @"EFPropertyKey_action"}];
  [v6 encodeBool:-[MEComposeContext isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  [v6 encodeBool:-[MEComposeContext shouldEncrypt](self forKey:{"shouldEncrypt"), @"EFPropertyKey_shouldEncrypt"}];
  [v6 encodeBool:-[MEComposeContext isSigned](self forKey:{"isSigned"), @"EFPropertyKey_isSigned"}];
  [v6 encodeBool:-[MEComposeContext shouldSign](self forKey:{"shouldSign"), @"EFPropertyKey_shouldSign"}];
}

- (MEComposeContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MEComposeContext;
  v5 = [(MEComposeContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_contextID"];
    contextID = v5->_contextID;
    v5->_contextID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_originalMessage"];
    originalMessage = v5->_originalMessage;
    v5->_originalMessage = v8;

    v5->_action = [v4 decodeIntegerForKey:@"EFPropertyKey_action"];
    v5->_isEncrypted = [v4 decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
    v5->_shouldEncrypt = [v4 decodeBoolForKey:@"EFPropertyKey_shouldEncrypt"];
    v5->_isSigned = [v4 decodeBoolForKey:@"EFPropertyKey_isSigned"];
    v5->_shouldSign = [v4 decodeBoolForKey:@"EFPropertyKey_shouldSign"];
  }

  return v5;
}

@end