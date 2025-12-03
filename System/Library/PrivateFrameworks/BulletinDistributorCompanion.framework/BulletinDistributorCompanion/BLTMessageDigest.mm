@interface BLTMessageDigest
- (BLTMessageDigest)initWithCoder:(id)coder;
- (BLTMessageDigest)initWithMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessageDigest:(id)digest;
@end

@implementation BLTMessageDigest

- (BLTMessageDigest)initWithMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v10.receiver = self;
  v10.super_class = BLTMessageDigest;
  v5 = [(BLTMessageDigest *)&v10 init];
  if (v5)
  {
    if (!messageCopy)
    {
      messageCopy = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    [messageCopy MD5:v11];
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:16];
    messageDigest = v5->_messageDigest;
    v5->_messageDigest = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BLTMessageDigest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BLTMessageDigest;
  v5 = [(BLTMessageDigest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageDigest"];
    messageDigest = v5->_messageDigest;
    v5->_messageDigest = v6;
  }

  return v5;
}

- (BOOL)isEqualToMessageDigest:(id)digest
{
  messageDigest = self->_messageDigest;
  messageDigest = [digest messageDigest];
  LOBYTE(messageDigest) = [(NSData *)messageDigest isEqual:messageDigest];

  return messageDigest;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BLTMessageDigest *)self isEqualToMessageDigest:equalCopy];
  }

  return v5;
}

@end