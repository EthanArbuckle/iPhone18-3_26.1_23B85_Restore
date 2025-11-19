@interface IDSProtoKeyTransparencyTrustedServiceSignature
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSProtoKeyTransparencyTrustedServiceSignature

- (id)description
{
  v7.receiver = self;
  v7.super_class = IDSProtoKeyTransparencyTrustedServiceSignature;
  v3 = [(IDSProtoKeyTransparencyTrustedServiceSignature *)&v7 description];
  v4 = [(IDSProtoKeyTransparencyTrustedServiceSignature *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceIdentifier)
  {
    [v4 setServiceIdentifier:?];
    v4 = v5;
  }

  if (self->_signature)
  {
    [v5 setSignature:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serviceIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_signature copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((serviceIdentifier = self->_serviceIdentifier, !(serviceIdentifier | v4[1])) || -[NSString isEqual:](serviceIdentifier, "isEqual:")))
  {
    signature = self->_signature;
    if (signature | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(IDSProtoKeyTransparencyTrustedServiceSignature *)self setServiceIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(IDSProtoKeyTransparencyTrustedServiceSignature *)self setSignature:?];
    v4 = v5;
  }
}

@end