@interface NPKProtoStandalonePaymentCredential
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentCredential

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentCredential;
  v4 = [(NPKProtoStandalonePaymentCredential *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  sanitizedPrimaryAccountNumber = self->_sanitizedPrimaryAccountNumber;
  if (sanitizedPrimaryAccountNumber)
  {
    [dictionary setObject:sanitizedPrimaryAccountNumber forKey:@"sanitizedPrimaryAccountNumber"];
  }

  expiration = self->_expiration;
  if (expiration)
  {
    [v4 setObject:expiration forKey:@"expiration"];
  }

  longDescription = self->_longDescription;
  if (longDescription)
  {
    [v4 setObject:longDescription forKey:@"longDescription"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sanitizedPrimaryAccountNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_expiration)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_longDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sanitizedPrimaryAccountNumber)
  {
    [toCopy setSanitizedPrimaryAccountNumber:?];
    toCopy = v5;
  }

  if (self->_expiration)
  {
    [v5 setExpiration:?];
    toCopy = v5;
  }

  if (self->_longDescription)
  {
    [v5 setLongDescription:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sanitizedPrimaryAccountNumber copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_expiration copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_longDescription copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sanitizedPrimaryAccountNumber = self->_sanitizedPrimaryAccountNumber, !(sanitizedPrimaryAccountNumber | equalCopy[3])) || -[NSString isEqual:](sanitizedPrimaryAccountNumber, "isEqual:")) && ((expiration = self->_expiration, !(expiration | equalCopy[1])) || -[NSString isEqual:](expiration, "isEqual:")))
  {
    longDescription = self->_longDescription;
    if (longDescription | equalCopy[2])
    {
      v8 = [(NSString *)longDescription isEqual:?];
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
  v3 = [(NSString *)self->_sanitizedPrimaryAccountNumber hash];
  v4 = [(NSString *)self->_expiration hash]^ v3;
  return v4 ^ [(NSString *)self->_longDescription hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(NPKProtoStandalonePaymentCredential *)self setSanitizedPrimaryAccountNumber:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentCredential *)self setExpiration:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoStandalonePaymentCredential *)self setLongDescription:?];
    fromCopy = v5;
  }
}

@end