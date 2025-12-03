@interface SGM2FoundInAppsICS
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDatetime:(id)datetime;
- (int)StringAsTimezone:(id)timezone;
- (int)datetime;
- (int)timezone;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTimezone:(BOOL)timezone;
- (void)writeTo:(id)to;
@end

@implementation SGM2FoundInAppsICS

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SGM2FoundInAppsICS *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_timezone = fromCopy[6];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_datetime = fromCopy[2];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_timezone;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_datetime;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_timezone != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_datetime != *(equalCopy + 2))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_timezone;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_datetime;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_key)
  {
    v6 = toCopy;
    [toCopy setKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_timezone;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_datetime;
    *(toCopy + 28) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    timezone = self->_timezone;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    datetime = self->_datetime;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    timezone = self->_timezone;
    if (timezone >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_timezone];
    }

    else
    {
      v8 = off_1E7EFCC50[timezone];
    }

    [v4 setObject:v8 forKey:@"timezone"];

    has = self->_has;
  }

  if (has)
  {
    datetime = self->_datetime;
    if (datetime)
    {
      if (datetime == 1)
      {
        v10 = @"SGMFoundInAppsDatetimeTypeEnd";
      }

      else
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_datetime];
      }
    }

    else
    {
      v10 = @"SGMFoundInAppsDatetimeTypeStart";
    }

    [v4 setObject:v10 forKey:@"datetime"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2FoundInAppsICS;
  v4 = [(SGM2FoundInAppsICS *)&v8 description];
  dictionaryRepresentation = [(SGM2FoundInAppsICS *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsDatetime:(id)datetime
{
  datetimeCopy = datetime;
  if ([datetimeCopy isEqualToString:@"SGMFoundInAppsDatetimeTypeStart"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [datetimeCopy isEqualToString:@"SGMFoundInAppsDatetimeTypeEnd"];
  }

  return v4;
}

- (int)datetime
{
  if (*&self->_has)
  {
    return self->_datetime;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsTimezone:(id)timezone
{
  timezoneCopy = timezone;
  if ([timezoneCopy isEqualToString:@"SGMFoundInAppsICSTZValueNull"])
  {
    v4 = 0;
  }

  else if ([timezoneCopy isEqualToString:@"SGMFoundInAppsICSTZValueValid"])
  {
    v4 = 1;
  }

  else if ([timezoneCopy isEqualToString:@"SGMFoundInAppsICSTZValueInvalid"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimezone:(BOOL)timezone
{
  if (timezone)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)timezone
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_timezone;
  }

  else
  {
    return 0;
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"FoundInAppsICS";
  }
}

@end