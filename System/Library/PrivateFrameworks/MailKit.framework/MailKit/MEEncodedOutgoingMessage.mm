@interface MEEncodedOutgoingMessage
- (BOOL)isEqual:(id)a3;
- (MEEncodedOutgoingMessage)initWithCoder:(id)a3;
- (MEEncodedOutgoingMessage)initWithRawData:(NSData *)rawData isSigned:(BOOL)isSigned isEncrypted:(BOOL)isEncrypted;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEEncodedOutgoingMessage

- (MEEncodedOutgoingMessage)initWithRawData:(NSData *)rawData isSigned:(BOOL)isSigned isEncrypted:(BOOL)isEncrypted
{
  v9 = rawData;
  v13.receiver = self;
  v13.super_class = MEEncodedOutgoingMessage;
  v10 = [(MEEncodedOutgoingMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_isSigned = isSigned;
    v10->_isEncrypted = isEncrypted;
    objc_storeStrong(&v10->_rawData, rawData);
  }

  return v11;
}

- (MEEncodedOutgoingMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"EFPropertyKey_isSigned"];
  v6 = [v4 decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawData"];
  v8 = [(MEEncodedOutgoingMessage *)self initWithRawData:v7 isSigned:v5 isEncrypted:v6];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[MEEncodedOutgoingMessage isSigned](self forKey:{"isSigned"), @"EFPropertyKey_isSigned"}];
  [v5 encodeBool:-[MEEncodedOutgoingMessage isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  v4 = [(MEEncodedOutgoingMessage *)self rawData];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_rawData"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MEEncodedOutgoingMessage *)self isSigned];
      if (v6 == [(MEEncodedOutgoingMessage *)v5 isSigned]&& (v7 = [(MEEncodedOutgoingMessage *)self isEncrypted], v7 == [(MEEncodedOutgoingMessage *)v5 isEncrypted]))
      {
        v9 = [(MEEncodedOutgoingMessage *)self rawData];
        v10 = [(MEEncodedOutgoingMessage *)v5 rawData];
        v8 = [v9 isEqual:v10];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end