@interface SYLogDeviceState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)state;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYLogDeviceState

- (unsigned)state
{
  if (*&self->_has)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogDeviceState;
  v4 = [(SYLogDeviceState *)&v8 description];
  v5 = [(SYLogDeviceState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  deviceClass = self->_deviceClass;
  if (deviceClass)
  {
    [v4 setObject:deviceClass forKey:@"deviceClass"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_state];
    [v4 setObject:v8 forKey:@"state"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deviceClass)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    state = self->_state;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_deviceClass)
  {
    [v5 setDeviceClass:?];
    v4 = v5;
  }

  if (self->_buildVersion)
  {
    [v5 setBuildVersion:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_state;
    *(v4 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_deviceClass copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_state;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  deviceClass = self->_deviceClass;
  if (deviceClass | *(v4 + 2))
  {
    if (![(NSString *)deviceClass isEqual:?])
    {
      goto LABEL_12;
    }
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(v4 + 1))
  {
    if (![(NSString *)buildVersion isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_state == *(v4 + 8))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_deviceClass hash];
  v5 = [(NSString *)self->_buildVersion hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_state;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(SYLogDeviceState *)self setIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(SYLogDeviceState *)self setDeviceClass:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SYLogDeviceState *)self setBuildVersion:?];
    v4 = v5;
  }

  if (v4[9])
  {
    self->_state = v4[8];
    *&self->_has |= 1u;
  }
}

@end