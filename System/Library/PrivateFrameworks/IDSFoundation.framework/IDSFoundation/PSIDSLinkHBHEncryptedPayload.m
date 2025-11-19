@interface PSIDSLinkHBHEncryptedPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSIDSLinkHBHEncryptedPayload

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PSIDSLinkHBHEncryptedPayload;
  v4 = [(PSIDSLinkHBHEncryptedPayload *)&v8 description];
  v5 = [(PSIDSLinkHBHEncryptedPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  initializationVector = self->_initializationVector;
  if (initializationVector)
  {
    [v3 setObject:initializationVector forKey:@"initializationVector"];
  }

  cipherText = self->_cipherText;
  if (cipherText)
  {
    [v4 setObject:cipherText forKey:@"cipherText"];
  }

  authenticationTag = self->_authenticationTag;
  if (authenticationTag)
  {
    [v4 setObject:authenticationTag forKey:@"authenticationTag"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_initializationVector)
  {
    sub_1A7E145E0();
  }

  PBDataWriterWriteDataField();
  if (!self->_cipherText)
  {
    sub_1A7E145B4();
  }

  PBDataWriterWriteDataField();
  if (!self->_authenticationTag)
  {
    sub_1A7E14588();
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  initializationVector = self->_initializationVector;
  v5 = a3;
  [v5 setInitializationVector:initializationVector];
  [v5 setCipherText:self->_cipherText];
  [v5 setAuthenticationTag:self->_authenticationTag];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_initializationVector copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_cipherText copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_authenticationTag copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((initializationVector = self->_initializationVector, !(initializationVector | v4[3])) || -[NSData isEqual:](initializationVector, "isEqual:")) && ((cipherText = self->_cipherText, !(cipherText | v4[2])) || -[NSData isEqual:](cipherText, "isEqual:")))
  {
    authenticationTag = self->_authenticationTag;
    if (authenticationTag | v4[1])
    {
      v8 = [(NSData *)authenticationTag isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_initializationVector hash];
  v4 = [(NSData *)self->_cipherText hash]^ v3;
  return v4 ^ [(NSData *)self->_authenticationTag hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(PSIDSLinkHBHEncryptedPayload *)self setInitializationVector:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(PSIDSLinkHBHEncryptedPayload *)self setCipherText:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(PSIDSLinkHBHEncryptedPayload *)self setAuthenticationTag:?];
    v4 = v5;
  }
}

@end