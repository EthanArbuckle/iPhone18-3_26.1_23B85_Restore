@interface _MROriginProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsLocallyHosted:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"Local"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Custom"])
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

- (void)setHasIsLocallyHosted:(BOOL)a3
{
  if (a3)
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
  v5 = [(_MROriginProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"type"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKey:@"displayName"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_identifier];
    [v3 setObject:v7 forKey:@"identifier"];
  }

  deviceInfoDeprecated = self->_deviceInfoDeprecated;
  if (deviceInfoDeprecated)
  {
    v9 = [(_MRDeviceInfoMessageProtobuf *)deviceInfoDeprecated dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"deviceInfoDeprecated"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocallyHosted];
    [v3 setObject:v10 forKey:@"isLocallyHosted"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[7] = self->_type;
    *(v4 + 36) |= 2u;
  }

  v5 = v4;
  if (self->_displayName)
  {
    [v4 setDisplayName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[6] = self->_identifier;
    *(v4 + 36) |= 1u;
  }

  if (self->_deviceInfoDeprecated)
  {
    [v5 setDeviceInfoDeprecated:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 32) = self->_isLocallyHosted;
    *(v4 + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 28) = self->_type;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_displayName copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if (*&self->_has)
  {
    *(v6 + 24) = self->_identifier;
    *(v6 + 36) |= 1u;
  }

  v9 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfoDeprecated copyWithZone:a3];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_isLocallyHosted;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_type != *(v4 + 7))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_20;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 2))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_identifier != *(v4 + 6))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_20;
  }

  deviceInfoDeprecated = self->_deviceInfoDeprecated;
  if (deviceInfoDeprecated | *(v4 + 1))
  {
    if (![(_MRDeviceInfoMessageProtobuf *)deviceInfoDeprecated isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v10 = (*(v4 + 36) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) != 0)
    {
      if (self->_isLocallyHosted)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (*(v4 + 32))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[9] & 2) != 0)
  {
    self->_type = v4[7];
    *&self->_has |= 2u;
  }

  v8 = v4;
  if (*(v4 + 2))
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