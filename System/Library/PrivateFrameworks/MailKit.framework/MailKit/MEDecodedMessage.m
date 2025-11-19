@interface MEDecodedMessage
- (BOOL)isEqual:(id)a3;
- (MEDecodedMessage)initWithCoder:(id)a3;
- (MEDecodedMessage)initWithData:(NSData *)rawData securityInformation:(MEMessageSecurityInformation *)securityInformation context:(NSData *)context banner:(MEDecodedMessageBanner *)banner;
- (void)encodeWithCoder:(id)a3;
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

- (MEDecodedMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_context"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_banner"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_securityInformation"];
  v9 = [(MEDecodedMessage *)self initWithData:v5 securityInformation:v8 context:v6 banner:v7];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MEDecodedMessage *)self rawData];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_rawData"];

  v5 = [(MEDecodedMessage *)self securityInformation];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_securityInformation"];

  v6 = [(MEDecodedMessage *)self context];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_context"];

  v7 = [(MEDecodedMessage *)self banner];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_banner"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEDecodedMessage *)self rawData];
    v8 = [v6 rawData];
    if (EFObjectsAreEqual())
    {
      v9 = [(MEDecodedMessage *)self securityInformation];
      v10 = [v6 securityInformation];
      if ([v9 isEqual:v10])
      {
        v16 = [(MEDecodedMessage *)self context];
        v11 = [v6 context];
        if (EFObjectsAreEqual())
        {
          v15 = [(MEDecodedMessage *)self banner];
          v12 = [v6 banner];
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