@interface _MRAVAirPlaySecuritySettingsProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSecurityType:(id)a3;
- (int)securityType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRAVAirPlaySecuritySettingsProtobuf

- (int)securityType
{
  if (*&self->_has)
  {
    return self->_securityType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSecurityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NoneForInfraWiFi"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PINFirstTime"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PINEveryTime"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Password"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAVAirPlaySecuritySettingsProtobuf;
  v4 = [(_MRAVAirPlaySecuritySettingsProtobuf *)&v8 description];
  v5 = [(_MRAVAirPlaySecuritySettingsProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  password = self->_password;
  if (password)
  {
    [v3 setObject:password forKey:@"password"];
  }

  if (*&self->_has)
  {
    securityType = self->_securityType;
    if (securityType >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_securityType];
    }

    else
    {
      v7 = off_1E769CCC8[securityType];
    }

    [v4 setObject:v7 forKey:@"securityType"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_password)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    securityType = self->_securityType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_password)
  {
    v5 = v4;
    [v4 setPassword:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_securityType;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_password copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_securityType;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  password = self->_password;
  if (password | *(v4 + 1))
  {
    if (![(NSString *)password isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_securityType == *(v4 + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_password hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_securityType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(_MRAVAirPlaySecuritySettingsProtobuf *)self setPassword:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_securityType = v4[4];
    *&self->_has |= 1u;
  }
}

@end