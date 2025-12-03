@interface HKCodableHealthRecordsProvider
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableHealthRecordsProvider

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthRecordsProvider;
  v4 = [(HKCodableHealthRecordsProvider *)&v8 description];
  dictionaryRepresentation = [(HKCodableHealthRecordsProvider *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  providerName = self->_providerName;
  if (providerName)
  {
    [dictionary setObject:providerName forKey:@"providerName"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_providerName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_providerURI)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_providerLogo)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_providerName)
  {
    [toCopy setProviderName:?];
    toCopy = v5;
  }

  if (self->_providerURI)
  {
    [v5 setProviderURI:?];
    toCopy = v5;
  }

  if (self->_providerLogo)
  {
    [v5 setProviderLogo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_providerName copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_providerURI copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_providerLogo copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((providerName = self->_providerName, !(providerName | equalCopy[2])) || -[NSString isEqual:](providerName, "isEqual:")) && ((providerURI = self->_providerURI, !(providerURI | equalCopy[3])) || -[NSString isEqual:](providerURI, "isEqual:")))
  {
    providerLogo = self->_providerLogo;
    if (providerLogo | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(HKCodableHealthRecordsProvider *)self setProviderName:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(HKCodableHealthRecordsProvider *)self setProviderURI:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(HKCodableHealthRecordsProvider *)self setProviderLogo:?];
    fromCopy = v5;
  }
}

@end