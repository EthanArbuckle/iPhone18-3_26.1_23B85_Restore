@interface _MROriginProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsLocallyHosted:(BOOL)hosted;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation _MROriginProtobuf

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"Local"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"Custom"])
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

- (void)setHasIsLocallyHosted:(BOOL)hosted
{
  if (hosted)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MROriginProtobuf;
  v4 = [(_MROriginProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MROriginProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    if (type == 1)
    {
      v5 = @"Local";
    }

    else if (type == 2)
    {
      v5 = @"Custom";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    [dictionary setObject:v5 forKey:@"type"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [dictionary setObject:displayName forKey:@"displayName"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_identifier];
    [dictionary setObject:v7 forKey:@"identifier"];
  }

  deviceInfoDeprecated = self->_deviceInfoDeprecated;
  if (deviceInfoDeprecated)
  {
    dictionaryRepresentation = [(_MRDeviceInfoMessageProtobuf *)deviceInfoDeprecated dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceInfoDeprecated"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocallyHosted];
    [dictionary setObject:v10 forKey:@"isLocallyHosted"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    identifier = self->_identifier;
    PBDataWriterWriteInt32Field();
  }

  if (self->_deviceInfoDeprecated)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    isLocallyHosted = self->_isLocallyHosted;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[7] = self->_type;
    *(toCopy + 36) |= 2u;
  }

  v5 = toCopy;
  if (self->_displayName)
  {
    [toCopy setDisplayName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[6] = self->_identifier;
    *(toCopy + 36) |= 1u;
  }

  if (self->_deviceInfoDeprecated)
  {
    [v5 setDeviceInfoDeprecated:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 32) = self->_isLocallyHosted;
    *(toCopy + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 28) = self->_type;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_displayName copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if (*&self->_has)
  {
    *(v6 + 24) = self->_identifier;
    *(v6 + 36) |= 1u;
  }

  v9 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfoDeprecated copyWithZone:zone];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_isLocallyHosted;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_type != *(equalCopy + 7))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_20;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 2))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_identifier != *(equalCopy + 6))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_20;
  }

  deviceInfoDeprecated = self->_deviceInfoDeprecated;
  if (deviceInfoDeprecated | *(equalCopy + 1))
  {
    if (![(_MRDeviceInfoMessageProtobuf *)deviceInfoDeprecated isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v10 = (*(equalCopy + 36) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) != 0)
    {
      if (self->_isLocallyHosted)
      {
        if ((*(equalCopy + 32) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (*(equalCopy + 32))
      {
        goto LABEL_20;
      }

      v10 = 1;
      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_displayName hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_identifier;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfoDeprecated hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_isLocallyHosted;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[9] & 2) != 0)
  {
    self->_type = fromCopy[7];
    *&self->_has |= 2u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_MROriginProtobuf *)self setDisplayName:?];
    v5 = v8;
  }

  if (*(v5 + 36))
  {
    self->_identifier = *(v5 + 6);
    *&self->_has |= 1u;
  }

  deviceInfoDeprecated = self->_deviceInfoDeprecated;
  v7 = *(v5 + 1);
  if (deviceInfoDeprecated)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(_MRDeviceInfoMessageProtobuf *)deviceInfoDeprecated mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(_MROriginProtobuf *)self setDeviceInfoDeprecated:?];
  }

  v5 = v8;
LABEL_13:
  if ((*(v5 + 36) & 4) != 0)
  {
    self->_isLocallyHosted = *(v5 + 32);
    *&self->_has |= 4u;
  }
}

@end