@interface PBBProtoPushControllerType
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoPushControllerType

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoPushControllerType;
  v4 = [(PBBProtoPushControllerType *)&v8 description];
  dictionaryRepresentation = [(PBBProtoPushControllerType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_controllerType];
  [dictionary setObject:v4 forKey:@"controllerType"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intendedFireDate];
    [dictionary setObject:v5 forKey:@"intendedFireDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  controllerType = self->_controllerType;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
    intendedFireDate = self->_intendedFireDate;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 4) = self->_controllerType;
  if (*&self->_has)
  {
    *(to + 1) = *&self->_intendedFireDate;
    *(to + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_controllerType;
  if (*&self->_has)
  {
    *(result + 1) = *&self->_intendedFireDate;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_controllerType != *(equalCopy + 4))
  {
    goto LABEL_7;
  }

  v5 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_intendedFireDate == *(equalCopy + 1))
    {
      v5 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    intendedFireDate = self->_intendedFireDate;
    if (intendedFireDate < 0.0)
    {
      intendedFireDate = -intendedFireDate;
    }

    *v2.i64 = floor(intendedFireDate + 0.5);
    v6 = (intendedFireDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ (2654435761 * self->_controllerType);
}

- (void)mergeFrom:(id)from
{
  self->_controllerType = *(from + 4);
  if (*(from + 20))
  {
    self->_intendedFireDate = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end