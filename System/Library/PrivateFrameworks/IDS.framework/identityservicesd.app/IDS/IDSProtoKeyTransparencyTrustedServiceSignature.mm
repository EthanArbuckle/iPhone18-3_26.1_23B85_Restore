@interface IDSProtoKeyTransparencyTrustedServiceSignature
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSProtoKeyTransparencyTrustedServiceSignature

- (id)description
{
  v7.receiver = self;
  v7.super_class = IDSProtoKeyTransparencyTrustedServiceSignature;
  v3 = [(IDSProtoKeyTransparencyTrustedServiceSignature *)&v7 description];
  dictionaryRepresentation = [(IDSProtoKeyTransparencyTrustedServiceSignature *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [v3 setObject:serviceIdentifier forKey:@"service_identifier"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v4 setObject:signature forKey:@"signature"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serviceIdentifier)
  {
    [toCopy setServiceIdentifier:?];
    toCopy = v5;
  }

  if (self->_signature)
  {
    [v5 setSignature:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_serviceIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_signature copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((serviceIdentifier = self->_serviceIdentifier, !(serviceIdentifier | equalCopy[1])) || -[NSString isEqual:](serviceIdentifier, "isEqual:")))
  {
    signature = self->_signature;
    if (signature | equalCopy[2])
    {
      v7 = [(NSData *)signature isEqual:?];
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
  if (fromCopy[1])
  {
    [(IDSProtoKeyTransparencyTrustedServiceSignature *)self setServiceIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(IDSProtoKeyTransparencyTrustedServiceSignature *)self setSignature:?];
    fromCopy = v5;
  }
}

@end