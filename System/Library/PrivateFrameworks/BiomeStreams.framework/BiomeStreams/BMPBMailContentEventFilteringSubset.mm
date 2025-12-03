@interface BMPBMailContentEventFilteringSubset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBMailContentEventFilteringSubset

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBMailContentEventFilteringSubset;
  v4 = [(BMPBMailContentEventFilteringSubset *)&v8 description];
  dictionaryRepresentation = [(BMPBMailContentEventFilteringSubset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [dictionary setObject:uniqueId forKey:@"uniqueId"];
  }

  domainId = self->_domainId;
  if (domainId)
  {
    [v4 setObject:domainId forKey:@"domainId"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueId)
  {
    [toCopy setUniqueId:?];
    toCopy = v5;
  }

  if (self->_domainId)
  {
    [v5 setDomainId:?];
    toCopy = v5;
  }

  if (self->_personaId)
  {
    [v5 setPersonaId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_personaId copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uniqueId = self->_uniqueId, !(uniqueId | equalCopy[3])) || -[NSString isEqual:](uniqueId, "isEqual:")) && ((domainId = self->_domainId, !(domainId | equalCopy[1])) || -[NSString isEqual:](domainId, "isEqual:")))
  {
    personaId = self->_personaId;
    if (personaId | equalCopy[2])
    {
      v8 = [(NSString *)personaId isEqual:?];
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
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [(NSString *)self->_domainId hash]^ v3;
  return v4 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(BMPBMailContentEventFilteringSubset *)self setUniqueId:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(BMPBMailContentEventFilteringSubset *)self setDomainId:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BMPBMailContentEventFilteringSubset *)self setPersonaId:?];
    fromCopy = v5;
  }
}

@end