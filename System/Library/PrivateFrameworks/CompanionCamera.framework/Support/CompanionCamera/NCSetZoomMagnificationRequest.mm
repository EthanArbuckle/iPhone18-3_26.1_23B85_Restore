@interface NCSetZoomMagnificationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCSetZoomMagnificationRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetZoomMagnificationRequest;
  v3 = [(NCSetZoomMagnificationRequest *)&v7 description];
  v4 = [(NCSetZoomMagnificationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    *&v4 = self->_zoomMagnificationAmount;
    v5 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v5 forKey:@"zoomMagnificationAmount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    zoomMagnificationAmount = self->_zoomMagnificationAmount;
    PBDataWriterWriteFloatField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = LODWORD(self->_zoomMagnificationAmount);
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = LODWORD(self->_zoomMagnificationAmount);
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_zoomMagnificationAmount == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  zoomMagnificationAmount = self->_zoomMagnificationAmount;
  if (zoomMagnificationAmount < 0.0)
  {
    zoomMagnificationAmount = -zoomMagnificationAmount;
  }

  *v2.i32 = floorf(zoomMagnificationAmount + 0.5);
  v6 = (zoomMagnificationAmount - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  result = 2654435761u * *vbslq_s8(v7, v3, v2).i32;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      result += v6;
    }
  }

  else
  {
    result -= fabsf(v6);
  }

  return result;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_zoomMagnificationAmount = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end