@interface BMPBEntity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)a3;
- (int)entityType;
- (unint64_t)hash;
- (void)clearOneofValuesForEntityType;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setPersonEntity:(id)a3;
- (void)setTopicEntity:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBEntity

- (void)setPersonEntity:(id)a3
{
  v4 = a3;
  [(BMPBEntity *)self clearOneofValuesForEntityType];
  *&self->_has |= 1u;
  self->_entityType = 1;
  personEntity = self->_personEntity;
  self->_personEntity = v4;
}

- (void)setTopicEntity:(id)a3
{
  v4 = a3;
  [(BMPBEntity *)self clearOneofValuesForEntityType];
  *&self->_has |= 1u;
  self->_entityType = 2;
  topicEntity = self->_topicEntity;
  self->_topicEntity = v4;
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

- (int)StringAsEntityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"personEntity"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"topicEntity"])
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
  v5 = [(BMPBEntity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  personEntity = self->_personEntity;
  if (personEntity)
  {
    v5 = [(BMPBPersonEntity *)personEntity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"personEntity"];
  }

  topicEntity = self->_topicEntity;
  if (topicEntity)
  {
    v7 = [(BMPBTopicEntity *)topicEntity dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"topicEntity"];
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

    [v3 setObject:v9 forKey:@"entityType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_personEntity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_topicEntity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_entityType;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_personEntity)
  {
    [v4 setPersonEntity:?];
    v4 = v5;
  }

  if (self->_topicEntity)
  {
    [v5 setTopicEntity:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_entityType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(BMPBPersonEntity *)self->_personEntity copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(BMPBTopicEntity *)self->_topicEntity copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_entityType != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  personEntity = self->_personEntity;
  if (personEntity | *(v4 + 2) && ![(BMPBPersonEntity *)personEntity isEqual:?])
  {
    goto LABEL_11;
  }

  topicEntity = self->_topicEntity;
  if (topicEntity | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[8])
  {
    self->_entityType = v4[2];
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