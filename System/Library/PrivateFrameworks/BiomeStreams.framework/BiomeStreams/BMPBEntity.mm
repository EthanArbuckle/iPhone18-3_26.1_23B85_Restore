@interface BMPBEntity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)type;
- (int)entityType;
- (unint64_t)hash;
- (void)clearOneofValuesForEntityType;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setPersonEntity:(id)entity;
- (void)setTopicEntity:(id)entity;
- (void)writeTo:(id)to;
@end

@implementation BMPBEntity

- (void)setPersonEntity:(id)entity
{
  entityCopy = entity;
  [(BMPBEntity *)self clearOneofValuesForEntityType];
  *&self->_has |= 1u;
  self->_entityType = 1;
  personEntity = self->_personEntity;
  self->_personEntity = entityCopy;
}

- (void)setTopicEntity:(id)entity
{
  entityCopy = entity;
  [(BMPBEntity *)self clearOneofValuesForEntityType];
  *&self->_has |= 1u;
  self->_entityType = 2;
  topicEntity = self->_topicEntity;
  self->_topicEntity = entityCopy;
}

- (int)entityType
{
  if (*&self->_has)
  {
    return self->_entityType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEntityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"personEntity"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"topicEntity"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForEntityType
{
  *&self->_has &= ~1u;
  self->_entityType = 0;
  personEntity = self->_personEntity;
  self->_personEntity = 0;

  topicEntity = self->_topicEntity;
  self->_topicEntity = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBEntity;
  v4 = [(BMPBEntity *)&v8 description];
  dictionaryRepresentation = [(BMPBEntity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  personEntity = self->_personEntity;
  if (personEntity)
  {
    dictionaryRepresentation = [(BMPBPersonEntity *)personEntity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"personEntity"];
  }

  topicEntity = self->_topicEntity;
  if (topicEntity)
  {
    dictionaryRepresentation2 = [(BMPBTopicEntity *)topicEntity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"topicEntity"];
  }

  if (*&self->_has)
  {
    entityType = self->_entityType;
    if (entityType >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_entityType];
    }

    else
    {
      v9 = off_1E6E52DD0[entityType];
    }

    [dictionary setObject:v9 forKey:@"entityType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_personEntity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_topicEntity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_entityType;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_personEntity)
  {
    [toCopy setPersonEntity:?];
    toCopy = v5;
  }

  if (self->_topicEntity)
  {
    [v5 setTopicEntity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_entityType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(BMPBPersonEntity *)self->_personEntity copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(BMPBTopicEntity *)self->_topicEntity copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_entityType != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  personEntity = self->_personEntity;
  if (personEntity | *(equalCopy + 2) && ![(BMPBPersonEntity *)personEntity isEqual:?])
  {
    goto LABEL_11;
  }

  topicEntity = self->_topicEntity;
  if (topicEntity | *(equalCopy + 3))
  {
    v8 = [(BMPBTopicEntity *)topicEntity isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_entityType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMPBPersonEntity *)self->_personEntity hash]^ v3;
  return v4 ^ [(BMPBTopicEntity *)self->_topicEntity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[8])
  {
    self->_entityType = fromCopy[2];
    *&self->_has |= 1u;
  }

  personEntity = self->_personEntity;
  v7 = *(v5 + 2);
  v10 = v5;
  if (personEntity)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(BMPBPersonEntity *)personEntity mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(BMPBEntity *)self setPersonEntity:?];
  }

  v5 = v10;
LABEL_9:
  topicEntity = self->_topicEntity;
  v9 = *(v5 + 3);
  if (topicEntity)
  {
    if (v9)
    {
      [(BMPBTopicEntity *)topicEntity mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(BMPBEntity *)self setTopicEntity:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end