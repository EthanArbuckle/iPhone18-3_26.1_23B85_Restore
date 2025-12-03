@interface NPKProtoLongTermPrivacyKeyResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoLongTermPrivacyKeyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoLongTermPrivacyKeyResponse;
  v4 = [(NPKProtoLongTermPrivacyKeyResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoLongTermPrivacyKeyResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  keyData = self->_keyData;
  if (keyData)
  {
    [dictionary setObject:keyData forKey:@"keyData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_keyData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_keyData)
  {
    [toCopy setKeyData:?];
    toCopy = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_keyData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((keyData = self->_keyData, !(keyData | equalCopy[2])) || -[NSData isEqual:](keyData, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[1])
    {
      v7 = [(NSData *)errorData isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoLongTermPrivacyKeyResponse *)self setKeyData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoLongTermPrivacyKeyResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end