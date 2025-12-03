@interface NCSetIrisModeResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIrisMode:(id)mode;
- (int)irisMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NCSetIrisModeResponse

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

- (int)StringAsIrisMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"On"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Auto"])
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
  v7.super_class = NCSetIrisModeResponse;
  v3 = [(NCSetIrisModeResponse *)&v7 description];
  dictionaryRepresentation = [(NCSetIrisModeResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
      v5 = *(&off_100035138 + irisMode);
    }

    [v3 setObject:v5 forKey:@"irisMode"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    irisMode = self->_irisMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_irisMode;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_irisMode;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_irisMode == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_irisMode = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end