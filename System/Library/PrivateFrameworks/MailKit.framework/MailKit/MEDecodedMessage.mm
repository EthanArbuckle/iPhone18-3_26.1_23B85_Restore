@interface MEDecodedMessage
- (BOOL)isEqual:(id)equal;
- (MEDecodedMessage)initWithCoder:(id)coder;
- (MEDecodedMessage)initWithData:(NSData *)rawData securityInformation:(MEMessageSecurityInformation *)securityInformation context:(NSData *)context banner:(MEDecodedMessageBanner *)banner;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEDecodedMessage

- (MEDecodedMessage)initWithData:(NSData *)rawData securityInformation:(MEMessageSecurityInformation *)securityInformation context:(NSData *)context banner:(MEDecodedMessageBanner *)banner
{
  v11 = rawData;
  v12 = securityInformation;
  v13 = context;
  v14 = banner;
  v18.receiver = self;
  v18.super_class = MEDecodedMessage;
  v15 = [(MEDecodedMessage *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_rawData, rawData);
    objc_storeStrong(&v16->_securityInformation, securityInformation);
    objc_storeStrong(&v16->_context, context);
    objc_storeStrong(&v16->_banner, banner);
  }

  return v16;
}

- (MEDecodedMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_context"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_banner"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_securityInformation"];
  v9 = [(MEDecodedMessage *)self initWithData:v5 securityInformation:v8 context:v6 banner:v7];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rawData = [(MEDecodedMessage *)self rawData];
  [coderCopy encodeObject:rawData forKey:@"EFPropertyKey_rawData"];

  securityInformation = [(MEDecodedMessage *)self securityInformation];
  [coderCopy encodeObject:securityInformation forKey:@"EFPropertyKey_securityInformation"];

  context = [(MEDecodedMessage *)self context];
  [coderCopy encodeObject:context forKey:@"EFPropertyKey_context"];

  banner = [(MEDecodedMessage *)self banner];
  [coderCopy encodeObject:banner forKey:@"EFPropertyKey_banner"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    rawData = [(MEDecodedMessage *)self rawData];
    rawData2 = [v6 rawData];
    if (EFObjectsAreEqual())
    {
      securityInformation = [(MEDecodedMessage *)self securityInformation];
      securityInformation2 = [v6 securityInformation];
      if ([securityInformation isEqual:securityInformation2])
      {
        context = [(MEDecodedMessage *)self context];
        context2 = [v6 context];
        if (EFObjectsAreEqual())
        {
          banner = [(MEDecodedMessage *)self banner];
          banner2 = [v6 banner];
          v13 = EFObjectsAreEqual();
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end