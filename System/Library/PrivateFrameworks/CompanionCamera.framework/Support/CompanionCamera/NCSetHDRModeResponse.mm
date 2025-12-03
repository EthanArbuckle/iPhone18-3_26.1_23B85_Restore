@interface NCSetHDRModeResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHdrMode:(id)mode;
- (int)hdrMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NCSetHDRModeResponse

- (int)hdrMode
{
  if (*&self->_has)
  {
    return self->_hdrMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsHdrMode:(id)mode
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
  v7.super_class = NCSetHDRModeResponse;
  v3 = [(NCSetHDRModeResponse *)&v7 description];
  dictionaryRepresentation = [(NCSetHDRModeResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    hdrMode = self->_hdrMode;
    if (hdrMode >= 3)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_hdrMode];
    }

    else
    {
      v5 = *(&off_100035108 + hdrMode);
    }

    [v3 setObject:v5 forKey:@"hdrMode"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    hdrMode = self->_hdrMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_hdrMode;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_hdrMode;
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
    if ((*(equalCopy + 12) & 1) != 0 && self->_hdrMode == *(equalCopy + 2))
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
    return 2654435761 * self->_hdrMode;
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
    self->_hdrMode = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end