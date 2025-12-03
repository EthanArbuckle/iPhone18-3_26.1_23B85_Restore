@interface FCCPauseRingsPostNotificationRequestProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FCCPauseRingsPostNotificationRequestProtobuf

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCPauseRingsPostNotificationRequestProtobuf;
  v4 = [(FCCPauseRingsPostNotificationRequestProtobuf *)&v8 description];
  dictionaryRepresentation = [(FCCPauseRingsPostNotificationRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_force];
    [dictionary setObject:v4 forKey:@"force"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    force = self->_force;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 8) = self->_force;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 8) = self->_force;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_5;
    }

    if (self->_force)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (equalCopy[8])
    {
      goto LABEL_4;
    }

    v5 = 1;
  }

LABEL_5:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_force;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_force = *(from + 8);
    *&self->_has |= 1u;
  }
}

@end