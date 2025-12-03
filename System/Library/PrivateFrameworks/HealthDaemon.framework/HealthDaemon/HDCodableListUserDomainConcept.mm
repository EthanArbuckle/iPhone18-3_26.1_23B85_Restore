@interface HDCodableListUserDomainConcept
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableListUserDomainConcept

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableListUserDomainConcept;
  v4 = [(HDCodableListUserDomainConcept *)&v8 description];
  dictionaryRepresentation = [(HDCodableListUserDomainConcept *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [dictionary setObject:v4 forKey:@"type"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_type;
    *(toCopy + 24) |= 1u;
  }

  if (self->_name)
  {
    v5 = toCopy;
    [toCopy setName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_type != *(equalCopy + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  name = self->_name;
  if (name | *(equalCopy + 2))
  {
    v7 = [(NSString *)name isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_type;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_name hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    self->_type = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(HDCodableListUserDomainConcept *)self setName:?];
    fromCopy = v5;
  }
}

@end