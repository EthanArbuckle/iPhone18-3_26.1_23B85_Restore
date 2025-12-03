@interface HDCodableNotificationInstructionCriteria
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNotificationInstructionCriteria

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNotificationInstructionCriteria;
  v4 = [(HDCodableNotificationInstructionCriteria *)&v8 description];
  dictionaryRepresentation = [(HDCodableNotificationInstructionCriteria *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  uUIDString = self->_uUIDString;
  if (uUIDString)
  {
    [v4 setObject:uUIDString forKey:@"UUIDString"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modificationTimeInterval];
    [v4 setObject:v7 forKey:@"modificationTimeInterval"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_uUIDString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    modificationTimeInterval = self->_modificationTimeInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_uUIDString)
  {
    [v5 setUUIDString:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_modificationTimeInterval;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_uUIDString copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_modificationTimeInterval;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 2))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  uUIDString = self->_uUIDString;
  if (uUIDString | *(equalCopy + 3))
  {
    if (![(NSString *)uUIDString isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_modificationTimeInterval == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_uUIDString hash];
  if (*&self->_has)
  {
    modificationTimeInterval = self->_modificationTimeInterval;
    if (modificationTimeInterval < 0.0)
    {
      modificationTimeInterval = -modificationTimeInterval;
    }

    *v5.i64 = floor(modificationTimeInterval + 0.5);
    v9 = (modificationTimeInterval - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(HDCodableNotificationInstructionCriteria *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(HDCodableNotificationInstructionCriteria *)self setUUIDString:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    self->_modificationTimeInterval = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end