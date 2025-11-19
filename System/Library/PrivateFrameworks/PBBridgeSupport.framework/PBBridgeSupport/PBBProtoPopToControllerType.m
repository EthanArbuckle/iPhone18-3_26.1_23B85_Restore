@interface PBBProtoPopToControllerType
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoPopToControllerType

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoPopToControllerType;
  v4 = [(PBBProtoPopToControllerType *)&v8 description];
  v5 = [(PBBProtoPopToControllerType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_controllerType];
  [v3 setObject:v4 forKey:@"controllerType"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intendedFireDate];
    [v3 setObject:v5 forKey:@"intendedFireDate"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  controllerType = self->_controllerType;
  v7 = v4;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
    intendedFireDate = self->_intendedFireDate;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 4) = self->_controllerType;
  if (*&self->_has)
  {
    *(a3 + 1) = *&self->_intendedFireDate;
    *(a3 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 4) = self->_controllerType;
  if (*&self->_has)
  {
    *(result + 1) = *&self->_intendedFireDate;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_controllerType != *(v4 + 4))
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_intendedFireDate == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  self->_controllerType = *(a3 + 4);
  if (*(a3 + 20))
  {
    self->_intendedFireDate = *(a3 + 1);
    *&self->_has |= 1u;
  }
}

@end