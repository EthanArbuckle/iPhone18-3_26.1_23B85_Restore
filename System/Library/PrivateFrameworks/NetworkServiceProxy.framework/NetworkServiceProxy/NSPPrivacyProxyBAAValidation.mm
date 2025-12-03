@interface NSPPrivacyProxyBAAValidation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyBAAValidation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyBAAValidation;
  v4 = [(NSPPrivacyProxyBAAValidation *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyBAAValidation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  baaSignature = self->_baaSignature;
  if (baaSignature)
  {
    [dictionary setObject:baaSignature forKey:@"baaSignature"];
  }

  leafCertificate = self->_leafCertificate;
  if (leafCertificate)
  {
    [v4 setObject:leafCertificate forKey:@"leafCertificate"];
  }

  intermediateCertificate = self->_intermediateCertificate;
  if (intermediateCertificate)
  {
    [v4 setObject:intermediateCertificate forKey:@"intermediateCertificate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_baaSignature)
  {
    __assert_rtn("[NSPPrivacyProxyBAAValidation writeTo:]", "NSPPrivacyProxyBAAValidation.m", 111, "nil != self->_baaSignature");
  }

  PBDataWriterWriteDataField();
  if (!self->_leafCertificate)
  {
    __assert_rtn("[NSPPrivacyProxyBAAValidation writeTo:]", "NSPPrivacyProxyBAAValidation.m", 116, "nil != self->_leafCertificate");
  }

  PBDataWriterWriteDataField();
  if (!self->_intermediateCertificate)
  {
    __assert_rtn("[NSPPrivacyProxyBAAValidation writeTo:]", "NSPPrivacyProxyBAAValidation.m", 121, "nil != self->_intermediateCertificate");
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  baaSignature = self->_baaSignature;
  toCopy = to;
  [toCopy setBaaSignature:baaSignature];
  [toCopy setLeafCertificate:self->_leafCertificate];
  [toCopy setIntermediateCertificate:self->_intermediateCertificate];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_baaSignature copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_leafCertificate copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_intermediateCertificate copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((baaSignature = self->_baaSignature, !(baaSignature | equalCopy[1])) || -[NSData isEqual:](baaSignature, "isEqual:")) && ((leafCertificate = self->_leafCertificate, !(leafCertificate | equalCopy[3])) || -[NSData isEqual:](leafCertificate, "isEqual:")))
  {
    intermediateCertificate = self->_intermediateCertificate;
    if (intermediateCertificate | equalCopy[2])
    {
      v8 = [(NSData *)intermediateCertificate isEqual:?];
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
  v3 = [(NSData *)self->_baaSignature hash];
  v4 = [(NSData *)self->_leafCertificate hash]^ v3;
  return v4 ^ [(NSData *)self->_intermediateCertificate hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NSPPrivacyProxyBAAValidation *)self setBaaSignature:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NSPPrivacyProxyBAAValidation *)self setLeafCertificate:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NSPPrivacyProxyBAAValidation *)self setIntermediateCertificate:?];
    fromCopy = v5;
  }
}

@end