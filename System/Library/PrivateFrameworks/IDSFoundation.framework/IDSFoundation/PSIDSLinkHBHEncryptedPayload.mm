@interface PSIDSLinkHBHEncryptedPayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PSIDSLinkHBHEncryptedPayload

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PSIDSLinkHBHEncryptedPayload;
  v4 = [(PSIDSLinkHBHEncryptedPayload *)&v8 description];
  dictionaryRepresentation = [(PSIDSLinkHBHEncryptedPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  initializationVector = self->_initializationVector;
  if (initializationVector)
  {
    [dictionary setObject:initializationVector forKey:@"initializationVector"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  initializationVector = self->_initializationVector;
  toCopy = to;
  [toCopy setInitializationVector:initializationVector];
  [toCopy setCipherText:self->_cipherText];
  [toCopy setAuthenticationTag:self->_authenticationTag];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_initializationVector copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_cipherText copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_authenticationTag copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((initializationVector = self->_initializationVector, !(initializationVector | equalCopy[3])) || -[NSData isEqual:](initializationVector, "isEqual:")) && ((cipherText = self->_cipherText, !(cipherText | equalCopy[2])) || -[NSData isEqual:](cipherText, "isEqual:")))
  {
    authenticationTag = self->_authenticationTag;
    if (authenticationTag | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(PSIDSLinkHBHEncryptedPayload *)self setInitializationVector:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(PSIDSLinkHBHEncryptedPayload *)self setCipherText:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(PSIDSLinkHBHEncryptedPayload *)self setAuthenticationTag:?];
    fromCopy = v5;
  }
}

@end