@interface IDSPayloadVerificationContext
- (BOOL)isEqual:(id)a3;
- (IDSPayloadVerificationContext)initWithCoder:(id)a3;
- (IDSPayloadVerificationContext)initWithSignedPayload:(id)a3 payloadData:(id)a4 remoteURI:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPayloadVerificationContext

- (IDSPayloadVerificationContext)initWithSignedPayload:(id)a3 payloadData:(id)a4 remoteURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v21.receiver = self;
    v21.super_class = IDSPayloadVerificationContext;
    v13 = [(IDSPayloadVerificationContext *)&v21 init];
    if (v13)
    {
      v14 = [v8 copy];
      signedPayload = v13->_signedPayload;
      v13->_signedPayload = v14;

      v16 = [v9 copy];
      payloadData = v13->_payloadData;
      v13->_payloadData = v16;

      v18 = [v11 copy];
      remoteURI = v13->_remoteURI;
      v13->_remoteURI = v18;
    }

    self = v13;
    v12 = self;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSPayloadVerificationContext *)self remoteURI];
  v6 = [(IDSPayloadVerificationContext *)self signedPayload];
  v7 = [v6 length];
  v8 = [(IDSPayloadVerificationContext *)self payloadData];
  v9 = [v3 stringWithFormat:@"<%@ : %p URI: %@, signed payload length: %lu, payload data length: %lu>", v4, self, v5, v7, objc_msgSend(v8, "length")];

  return v9;
}

- (IDSPayloadVerificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IDSPayloadVerificationContext;
  v5 = [(IDSPayloadVerificationContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedPayload"];
    signedPayload = v5->_signedPayload;
    v5->_signedPayload = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
    payloadData = v5->_payloadData;
    v5->_payloadData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteURI"];
    remoteURI = v5->_remoteURI;
    v5->_remoteURI = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSPayloadVerificationContext *)self signedPayload];
  [v4 encodeObject:v5 forKey:@"signedPayload"];

  v6 = [(IDSPayloadVerificationContext *)self payloadData];
  [v4 encodeObject:v6 forKey:@"payloadData"];

  v7 = [(IDSPayloadVerificationContext *)self remoteURI];
  [v4 encodeObject:v7 forKey:@"remoteURI"];
}

- (unint64_t)hash
{
  v3 = [(IDSPayloadVerificationContext *)self signedPayload];
  v4 = [v3 hash];
  v5 = [(IDSPayloadVerificationContext *)self payloadData];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSPayloadVerificationContext *)self remoteURI];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IDSPayloadVerificationContext *)self signedPayload];
      v7 = [(IDSPayloadVerificationContext *)v5 signedPayload];
      if ([v6 isEqualToData:v7])
      {
        v8 = [(IDSPayloadVerificationContext *)self payloadData];
        v9 = [(IDSPayloadVerificationContext *)v5 payloadData];
        if ([v8 isEqualToData:v9])
        {
          v10 = [(IDSPayloadVerificationContext *)self remoteURI];
          v11 = [(IDSPayloadVerificationContext *)v5 remoteURI];
          v12 = [v10 isEqual:v11];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IDSPayloadVerificationContext allocWithZone:a3];
  v5 = [(IDSPayloadVerificationContext *)self signedPayload];
  v6 = [(IDSPayloadVerificationContext *)self payloadData];
  v7 = [(IDSPayloadVerificationContext *)self remoteURI];
  v8 = [(IDSPayloadVerificationContext *)v4 initWithSignedPayload:v5 payloadData:v6 remoteURI:v7];

  return v8;
}

@end