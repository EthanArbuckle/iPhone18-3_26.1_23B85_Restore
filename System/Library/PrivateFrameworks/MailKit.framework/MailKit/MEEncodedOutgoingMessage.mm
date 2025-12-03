@interface MEEncodedOutgoingMessage
- (BOOL)isEqual:(id)equal;
- (MEEncodedOutgoingMessage)initWithCoder:(id)coder;
- (MEEncodedOutgoingMessage)initWithRawData:(NSData *)rawData isSigned:(BOOL)isSigned isEncrypted:(BOOL)isEncrypted;
- (void)encodeWithCoder:(id)coder;
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

- (MEEncodedOutgoingMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isSigned"];
  v6 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rawData"];
  v8 = [(MEEncodedOutgoingMessage *)self initWithRawData:v7 isSigned:v5 isEncrypted:v6];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MEEncodedOutgoingMessage isSigned](self forKey:{"isSigned"), @"EFPropertyKey_isSigned"}];
  [coderCopy encodeBool:-[MEEncodedOutgoingMessage isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  rawData = [(MEEncodedOutgoingMessage *)self rawData];
  [coderCopy encodeObject:rawData forKey:@"EFPropertyKey_rawData"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isSigned = [(MEEncodedOutgoingMessage *)self isSigned];
      if (isSigned == [(MEEncodedOutgoingMessage *)v5 isSigned]&& (v7 = [(MEEncodedOutgoingMessage *)self isEncrypted], v7 == [(MEEncodedOutgoingMessage *)v5 isEncrypted]))
      {
        rawData = [(MEEncodedOutgoingMessage *)self rawData];
        rawData2 = [(MEEncodedOutgoingMessage *)v5 rawData];
        v8 = [rawData isEqual:rawData2];
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