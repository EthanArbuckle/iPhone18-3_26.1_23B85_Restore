@interface NSPPrivacyProxyBAAValidation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyBAAValidation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyBAAValidation;
  v4 = [(NSPPrivacyProxyBAAValidation *)&v8 description];
  v5 = [(NSPPrivacyProxyBAAValidation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  baaSignature = self->_baaSignature;
  if (baaSignature)
  {
    [v3 setObject:baaSignature forKey:@"baaSignature"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  baaSignature = self->_baaSignature;
  v5 = a3;
  [v5 setBaaSignature:baaSignature];
  [v5 setLeafCertificate:self->_leafCertificate];
  [v5 setIntermediateCertificate:self->_intermediateCertificate];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_baaSignature copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_leafCertificate copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_intermediateCertificate copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((baaSignature = self->_baaSignature, !(baaSignature | v4[1])) || -[NSData isEqual:](baaSignature, "isEqual:")) && ((leafCertificate = self->_leafCertificate, !(leafCertificate | v4[3])) || -[NSData isEqual:](leafCertificate, "isEqual:")))
  {
    intermediateCertificate = self->_intermediateCertificate;
    if (intermediateCertificate | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NSPPrivacyProxyBAAValidation *)self setBaaSignature:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NSPPrivacyProxyBAAValidation *)self setLeafCertificate:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NSPPrivacyProxyBAAValidation *)self setIntermediateCertificate:?];
    v4 = v5;
  }
}

@end