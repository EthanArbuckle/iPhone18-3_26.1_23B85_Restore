@interface BLTMessageDigest
- (BLTMessageDigest)initWithCoder:(id)a3;
- (BLTMessageDigest)initWithMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessageDigest:(id)a3;
@end

@implementation BLTMessageDigest

- (BLTMessageDigest)initWithMessage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BLTMessageDigest;
  v5 = [(BLTMessageDigest *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    [v4 MD5:v11];
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:16];
    messageDigest = v5->_messageDigest;
    v5->_messageDigest = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BLTMessageDigest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLTMessageDigest;
  v5 = [(BLTMessageDigest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageDigest"];
    messageDigest = v5->_messageDigest;
    v5->_messageDigest = v6;
  }

  return v5;
}

- (BOOL)isEqualToMessageDigest:(id)a3
{
  messageDigest = self->_messageDigest;
  v4 = [a3 messageDigest];
  LOBYTE(messageDigest) = [(NSData *)messageDigest isEqual:v4];

  return messageDigest;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BLTMessageDigest *)self isEqualToMessageDigest:v4];
  }

  return v5;
}

@end