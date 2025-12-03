@interface CPLSocialGroupPerson
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLSocialGroupPerson

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(CPLSocialGroupPerson *)self setPersonIdentifier:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    personIdentifier = self->_personIdentifier;
    if (personIdentifier | equalCopy[1])
    {
      v6 = [(NSString *)personIdentifier isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_personIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  personIdentifier = self->_personIdentifier;
  if (personIdentifier)
  {
    [to setPersonIdentifier:personIdentifier];
  }
}

- (void)writeTo:(id)to
{
  if (self->_personIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  personIdentifier = self->_personIdentifier;
  if (personIdentifier)
  {
    [dictionary setObject:personIdentifier forKey:@"personIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLSocialGroupPerson;
  v4 = [(CPLSocialGroupPerson *)&v8 description];
  dictionaryRepresentation = [(CPLSocialGroupPerson *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end