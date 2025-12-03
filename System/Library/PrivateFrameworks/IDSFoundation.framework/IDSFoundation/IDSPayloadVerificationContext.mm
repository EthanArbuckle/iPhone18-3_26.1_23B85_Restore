@interface IDSPayloadVerificationContext
- (BOOL)isEqual:(id)equal;
- (IDSPayloadVerificationContext)initWithCoder:(id)coder;
- (IDSPayloadVerificationContext)initWithSignedPayload:(id)payload payloadData:(id)data remoteURI:(id)i;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPayloadVerificationContext

- (IDSPayloadVerificationContext)initWithSignedPayload:(id)payload payloadData:(id)data remoteURI:(id)i
{
  payloadCopy = payload;
  dataCopy = data;
  iCopy = i;
  v11 = iCopy;
  selfCopy = 0;
  if (payloadCopy && dataCopy && iCopy)
  {
    v21.receiver = self;
    v21.super_class = IDSPayloadVerificationContext;
    v13 = [(IDSPayloadVerificationContext *)&v21 init];
    if (v13)
    {
      v14 = [payloadCopy copy];
      signedPayload = v13->_signedPayload;
      v13->_signedPayload = v14;

      v16 = [dataCopy copy];
      payloadData = v13->_payloadData;
      v13->_payloadData = v16;

      v18 = [v11 copy];
      remoteURI = v13->_remoteURI;
      v13->_remoteURI = v18;
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  remoteURI = [(IDSPayloadVerificationContext *)self remoteURI];
  signedPayload = [(IDSPayloadVerificationContext *)self signedPayload];
  v7 = [signedPayload length];
  payloadData = [(IDSPayloadVerificationContext *)self payloadData];
  v9 = [v3 stringWithFormat:@"<%@ : %p URI: %@, signed payload length: %lu, payload data length: %lu>", v4, self, remoteURI, v7, objc_msgSend(payloadData, "length")];

  return v9;
}

- (IDSPayloadVerificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IDSPayloadVerificationContext;
  v5 = [(IDSPayloadVerificationContext *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedPayload"];
    signedPayload = v5->_signedPayload;
    v5->_signedPayload = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
    payloadData = v5->_payloadData;
    v5->_payloadData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteURI"];
    remoteURI = v5->_remoteURI;
    v5->_remoteURI = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signedPayload = [(IDSPayloadVerificationContext *)self signedPayload];
  [coderCopy encodeObject:signedPayload forKey:@"signedPayload"];

  payloadData = [(IDSPayloadVerificationContext *)self payloadData];
  [coderCopy encodeObject:payloadData forKey:@"payloadData"];

  remoteURI = [(IDSPayloadVerificationContext *)self remoteURI];
  [coderCopy encodeObject:remoteURI forKey:@"remoteURI"];
}

- (unint64_t)hash
{
  signedPayload = [(IDSPayloadVerificationContext *)self signedPayload];
  v4 = [signedPayload hash];
  payloadData = [(IDSPayloadVerificationContext *)self payloadData];
  v6 = [payloadData hash] ^ v4;
  remoteURI = [(IDSPayloadVerificationContext *)self remoteURI];
  v8 = [remoteURI hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      signedPayload = [(IDSPayloadVerificationContext *)self signedPayload];
      signedPayload2 = [(IDSPayloadVerificationContext *)v5 signedPayload];
      if ([signedPayload isEqualToData:signedPayload2])
      {
        payloadData = [(IDSPayloadVerificationContext *)self payloadData];
        payloadData2 = [(IDSPayloadVerificationContext *)v5 payloadData];
        if ([payloadData isEqualToData:payloadData2])
        {
          remoteURI = [(IDSPayloadVerificationContext *)self remoteURI];
          remoteURI2 = [(IDSPayloadVerificationContext *)v5 remoteURI];
          v12 = [remoteURI isEqual:remoteURI2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSPayloadVerificationContext allocWithZone:zone];
  signedPayload = [(IDSPayloadVerificationContext *)self signedPayload];
  payloadData = [(IDSPayloadVerificationContext *)self payloadData];
  remoteURI = [(IDSPayloadVerificationContext *)self remoteURI];
  v8 = [(IDSPayloadVerificationContext *)v4 initWithSignedPayload:signedPayload payloadData:payloadData remoteURI:remoteURI];

  return v8;
}

@end