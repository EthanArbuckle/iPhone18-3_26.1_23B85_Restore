@interface CKDPLocationBound
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPLocationBound

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPLocationBound;
  v4 = [(CKDPLocationBound *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, self->_radius);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"radius");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    radius = self->_radius;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = *&self->_radius;
    *(to + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (*&self->_has)
  {
    *(result + 1) = *&self->_radius;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_6;
  }

  v7 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_radius == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  radius = self->_radius;
  if (radius < 0.0)
  {
    radius = -radius;
  }

  *v2.i64 = floor(radius + 0.5);
  v6 = (radius - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      result += v6;
    }
  }

  else
  {
    result -= fabs(v6);
  }

  return result;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 16))
  {
    self->_radius = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end