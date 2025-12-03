@interface HDCodableRoutineLocationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLocationType:(id)type;
- (int)locationType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRoutineLocationRequest

- (int)locationType
{
  if (*&self->_has)
  {
    return self->_locationType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsLocationType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"CurrentLocation"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"CachedLocation"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutineLocationRequest;
  v4 = [(HDCodableRoutineLocationRequest *)&v8 description];
  dictionaryRepresentation = [(HDCodableRoutineLocationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    locationType = self->_locationType;
    if (locationType == 1)
    {
      v5 = @"CurrentLocation";
    }

    else if (locationType == 2)
    {
      v5 = @"CachedLocation";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_locationType];
    }

    [dictionary setObject:v5 forKey:@"locationType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    locationType = self->_locationType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_locationType;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_locationType;
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
    if ((*(equalCopy + 12) & 1) != 0 && self->_locationType == *(equalCopy + 2))
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
    return 2654435761 * self->_locationType;
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
    self->_locationType = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end