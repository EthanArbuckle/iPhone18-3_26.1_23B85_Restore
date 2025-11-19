@interface CHHandlePb
+ (id)handleWithCHHandle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CHHandle)chHandle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CHHandlePb

+ (id)handleWithCHHandle:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 type];
    if ((v4 - 1) < 3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v3 value];
    v7 = [v3 normalizedValue];

    v8 = [CHHandlePb handleWithType:v5 value:v6 normalizedValue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CHHandle)chHandle
{
  v3 = [(CHHandlePb *)self value];
  if (v3)
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
    v7 = [(CHHandlePb *)self normalizedValue];
    v8 = [v6 initWithType:v5 value:v3 normalizedValue:v7];
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Generic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EmailAddress"])
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
  v4 = [(CHHandlePb *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_normalizedValue)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_type;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_value)
  {
    [v4 setValue:?];
    v4 = v5;
  }

  if (self->_normalizedValue)
  {
    [v5 setNormalizedValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_type;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_value copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_normalizedValue copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_type != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  value = self->_value;
  if (value | *(v4 + 3) && ![(NSString *)value isEqual:?])
  {
    goto LABEL_11;
  }

  normalizedValue = self->_normalizedValue;
  if (normalizedValue | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_type = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(CHHandlePb *)self setValue:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(CHHandlePb *)self setNormalizedValue:?];
    v4 = v5;
  }
}

@end