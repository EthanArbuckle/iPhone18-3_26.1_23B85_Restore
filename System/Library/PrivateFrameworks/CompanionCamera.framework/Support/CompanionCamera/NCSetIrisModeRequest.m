@interface NCSetIrisModeRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIrisMode:(id)a3;
- (int)irisMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCSetIrisModeRequest

- (int)irisMode
{
  if (*&self->_has)
  {
    return self->_irisMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsIrisMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"On"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Auto"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetIrisModeRequest;
  v3 = [(NCSetIrisModeRequest *)&v7 description];
  v4 = [(NCSetIrisModeRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    irisMode = self->_irisMode;
    if (irisMode >= 3)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_irisMode];
    }

    else
    {
      v5 = *(&off_100035120 + irisMode);
    }

    [v3 setObject:v5 forKey:@"irisMode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    irisMode = self->_irisMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_irisMode;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_irisMode;
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
    if ((*(v4 + 12) & 1) != 0 && self->_irisMode == *(v4 + 2))
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
  if (*&self->_has)
  {
    return 2654435761 * self->_irisMode;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_irisMode = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end