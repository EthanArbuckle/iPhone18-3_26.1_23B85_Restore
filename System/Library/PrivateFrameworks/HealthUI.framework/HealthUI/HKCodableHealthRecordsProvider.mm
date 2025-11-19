@interface HKCodableHealthRecordsProvider
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthRecordsProvider

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthRecordsProvider;
  v4 = [(HKCodableHealthRecordsProvider *)&v8 description];
  v5 = [(HKCodableHealthRecordsProvider *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  providerName = self->_providerName;
  if (providerName)
  {
    [v3 setObject:providerName forKey:@"providerName"];
  }

  providerURI = self->_providerURI;
  if (providerURI)
  {
    [v4 setObject:providerURI forKey:@"providerURI"];
  }

  providerLogo = self->_providerLogo;
  if (providerLogo)
  {
    [v4 setObject:providerLogo forKey:@"providerLogo"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_providerName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_providerURI)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_providerLogo)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_providerName)
  {
    [v4 setProviderName:?];
    v4 = v5;
  }

  if (self->_providerURI)
  {
    [v5 setProviderURI:?];
    v4 = v5;
  }

  if (self->_providerLogo)
  {
    [v5 setProviderLogo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_providerName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_providerURI copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_providerLogo copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((providerName = self->_providerName, !(providerName | v4[2])) || -[NSString isEqual:](providerName, "isEqual:")) && ((providerURI = self->_providerURI, !(providerURI | v4[3])) || -[NSString isEqual:](providerURI, "isEqual:")))
  {
    providerLogo = self->_providerLogo;
    if (providerLogo | v4[1])
    {
      v8 = [(NSData *)providerLogo isEqual:?];
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
  v3 = [(NSString *)self->_providerName hash];
  v4 = [(NSString *)self->_providerURI hash]^ v3;
  return v4 ^ [(NSData *)self->_providerLogo hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(HKCodableHealthRecordsProvider *)self setProviderName:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(HKCodableHealthRecordsProvider *)self setProviderURI:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(HKCodableHealthRecordsProvider *)self setProviderLogo:?];
    v4 = v5;
  }
}

@end