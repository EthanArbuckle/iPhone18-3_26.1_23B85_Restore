@interface PBBProtoDemoWirelessCredentials
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoDemoWirelessCredentials

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoDemoWirelessCredentials;
  v4 = [(PBBProtoDemoWirelessCredentials *)&v8 description];
  v5 = [(PBBProtoDemoWirelessCredentials *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  ssid = self->_ssid;
  if (ssid)
  {
    [v3 setObject:ssid forKey:@"ssid"];
  }

  password = self->_password;
  if (password)
  {
    [v4 setObject:password forKey:@"password"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_companionDemoConfig];
    [v4 setObject:v7 forKey:@"companionDemoConfig"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_ssid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_password)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    companionDemoConfig = self->_companionDemoConfig;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ssid)
  {
    [v4 setSsid:?];
    v4 = v5;
  }

  if (self->_password)
  {
    [v5 setPassword:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_companionDemoConfig;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_ssid copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_password copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_companionDemoConfig;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  ssid = self->_ssid;
  if (ssid | *(v4 + 3))
  {
    if (![(NSString *)ssid isEqual:?])
    {
      goto LABEL_10;
    }
  }

  password = self->_password;
  if (password | *(v4 + 2))
  {
    if (![(NSString *)password isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_companionDemoConfig == *(v4 + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_ssid hash];
  v4 = [(NSString *)self->_password hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_companionDemoConfig;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(PBBProtoDemoWirelessCredentials *)self setSsid:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PBBProtoDemoWirelessCredentials *)self setPassword:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_companionDemoConfig = v4[2];
    *&self->_has |= 1u;
  }
}

@end