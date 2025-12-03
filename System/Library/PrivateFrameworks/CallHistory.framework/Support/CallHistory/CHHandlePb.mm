@interface CHHandlePb
+ (id)handleWithCHHandle:(id)handle;
- (BOOL)isEqual:(id)equal;
- (CHHandle)chHandle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CHHandlePb

+ (id)handleWithCHHandle:(id)handle
{
  if (handle)
  {
    handleCopy = handle;
    type = [handleCopy type];
    if ((type - 1) < 3)
    {
      v5 = type;
    }

    else
    {
      v5 = 0;
    }

    value = [handleCopy value];
    normalizedValue = [handleCopy normalizedValue];

    v8 = [CHHandlePb handleWithType:v5 value:value normalizedValue:normalizedValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CHHandle)chHandle
{
  value = [(CHHandlePb *)self value];
  if (value)
  {
    v4 = [(CHHandlePb *)self type]- 1;
    if (v4 < 3)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [CHHandle alloc];
    normalizedValue = [(CHHandlePb *)self normalizedValue];
    v8 = [v6 initWithType:v5 value:value normalizedValue:normalizedValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Generic"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"EmailAddress"])
  {
    v4 = 3;
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
  v7.super_class = CHHandlePb;
  v3 = [(CHHandlePb *)&v7 description];
  dictionaryRepresentation = [(CHHandlePb *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_100050F70[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  normalizedValue = self->_normalizedValue;
  if (normalizedValue)
  {
    [v3 setObject:normalizedValue forKey:@"normalizedValue"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_normalizedValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_type;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_value)
  {
    [toCopy setValue:?];
    toCopy = v5;
  }

  if (self->_normalizedValue)
  {
    [v5 setNormalizedValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_type;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_value copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_normalizedValue copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_type != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  value = self->_value;
  if (value | *(equalCopy + 3) && ![(NSString *)value isEqual:?])
  {
    goto LABEL_11;
  }

  normalizedValue = self->_normalizedValue;
  if (normalizedValue | *(equalCopy + 1))
  {
    v8 = [(NSString *)normalizedValue isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_value hash]^ v3;
  return v4 ^ [(NSString *)self->_normalizedValue hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_type = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(CHHandlePb *)self setValue:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(CHHandlePb *)self setNormalizedValue:?];
    fromCopy = v5;
  }
}

@end