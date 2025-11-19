@interface NPKProtoStandalonePaymentPass
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActivationState:(id)a3;
- (int)activationState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentPass

- (int)activationState
{
  if (*&self->_has)
  {
    return self->_activationState;
  }

  else
  {
    return 100;
  }
}

- (int)StringAsActivationState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Activated"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"RequiresActivation"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"Activating"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"Suspended"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"Deactivated"])
  {
    v4 = 140;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentPass;
  v4 = [(NPKProtoStandalonePaymentPass *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentPass *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  pass = self->_pass;
  if (pass)
  {
    v5 = [(NPKProtoStandalonePass *)pass dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"pass"];
  }

  primaryAccountIdentifier = self->_primaryAccountIdentifier;
  if (primaryAccountIdentifier)
  {
    [v3 setObject:primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix)
  {
    [v3 setObject:primaryAccountNumberSuffix forKey:@"primaryAccountNumberSuffix"];
  }

  deviceAccountIdentifier = self->_deviceAccountIdentifier;
  if (deviceAccountIdentifier)
  {
    [v3 setObject:deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
  }

  deviceAccountNumberSuffix = self->_deviceAccountNumberSuffix;
  if (deviceAccountNumberSuffix)
  {
    [v3 setObject:deviceAccountNumberSuffix forKey:@"deviceAccountNumberSuffix"];
  }

  if (*&self->_has)
  {
    activationState = self->_activationState;
    if (activationState <= 119)
    {
      if (activationState == 100)
      {
        v11 = @"Activated";
        goto LABEL_24;
      }

      if (activationState == 110)
      {
        v11 = @"RequiresActivation";
        goto LABEL_24;
      }
    }

    else
    {
      switch(activationState)
      {
        case 120:
          v11 = @"Activating";
          goto LABEL_24;
        case 130:
          v11 = @"Suspended";
          goto LABEL_24;
        case 140:
          v11 = @"Deactivated";
LABEL_24:
          [v3 setObject:v11 forKey:@"activationState"];

          goto LABEL_25;
      }
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_activationState];
    goto LABEL_24;
  }

LABEL_25:
  devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
  if (devicePrimaryPaymentApplication)
  {
    v13 = [(NPKProtoStandalonePaymentApplication *)devicePrimaryPaymentApplication dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"devicePrimaryPaymentApplication"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_pass)
  {
    [NPKProtoStandalonePaymentPass writeTo:];
  }

  v7 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_primaryAccountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_primaryAccountNumberSuffix)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v7;
  if (self->_deviceAccountIdentifier)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_deviceAccountNumberSuffix)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (*&self->_has)
  {
    activationState = self->_activationState;
    PBDataWriterWriteInt32Field();
    v5 = v7;
  }

  if (self->_devicePrimaryPaymentApplication)
  {
    PBDataWriterWriteSubmessage();
    v5 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setPass:self->_pass];
  if (self->_primaryAccountIdentifier)
  {
    [v5 setPrimaryAccountIdentifier:?];
  }

  if (self->_primaryAccountNumberSuffix)
  {
    [v5 setPrimaryAccountNumberSuffix:?];
  }

  v4 = v5;
  if (self->_deviceAccountIdentifier)
  {
    [v5 setDeviceAccountIdentifier:?];
    v4 = v5;
  }

  if (self->_deviceAccountNumberSuffix)
  {
    [v5 setDeviceAccountNumberSuffix:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[2] = self->_activationState;
    *(v4 + 64) |= 1u;
  }

  if (self->_devicePrimaryPaymentApplication)
  {
    [v5 setDevicePrimaryPaymentApplication:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandalonePass *)self->_pass copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_deviceAccountIdentifier copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_deviceAccountNumberSuffix copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_activationState;
    *(v5 + 64) |= 1u;
  }

  v16 = [(NPKProtoStandalonePaymentApplication *)self->_devicePrimaryPaymentApplication copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  pass = self->_pass;
  if (pass | *(v4 + 5))
  {
    if (![(NPKProtoStandalonePass *)pass isEqual:?])
    {
      goto LABEL_19;
    }
  }

  primaryAccountIdentifier = self->_primaryAccountIdentifier;
  if (primaryAccountIdentifier | *(v4 + 6))
  {
    if (![(NSString *)primaryAccountIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix | *(v4 + 7))
  {
    if (![(NSString *)primaryAccountNumberSuffix isEqual:?])
    {
      goto LABEL_19;
    }
  }

  deviceAccountIdentifier = self->_deviceAccountIdentifier;
  if (deviceAccountIdentifier | *(v4 + 2))
  {
    if (![(NSString *)deviceAccountIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  deviceAccountNumberSuffix = self->_deviceAccountNumberSuffix;
  if (deviceAccountNumberSuffix | *(v4 + 3))
  {
    if (![(NSString *)deviceAccountNumberSuffix isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_activationState != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
  if (devicePrimaryPaymentApplication | *(v4 + 4))
  {
    v12 = [(NPKProtoStandalonePaymentApplication *)devicePrimaryPaymentApplication isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoStandalonePass *)self->_pass hash];
  v4 = [(NSString *)self->_primaryAccountIdentifier hash];
  v5 = [(NSString *)self->_primaryAccountNumberSuffix hash];
  v6 = [(NSString *)self->_deviceAccountIdentifier hash];
  v7 = [(NSString *)self->_deviceAccountNumberSuffix hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_activationState;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NPKProtoStandalonePaymentApplication *)self->_devicePrimaryPaymentApplication hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  pass = self->_pass;
  v6 = *(v4 + 5);
  v9 = v4;
  if (pass)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePass *)pass mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentPass *)self setPass:?];
  }

  v4 = v9;
LABEL_7:
  if (*(v4 + 6))
  {
    [(NPKProtoStandalonePaymentPass *)self setPrimaryAccountIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 7))
  {
    [(NPKProtoStandalonePaymentPass *)self setPrimaryAccountNumberSuffix:?];
    v4 = v9;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoStandalonePaymentPass *)self setDeviceAccountIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoStandalonePaymentPass *)self setDeviceAccountNumberSuffix:?];
    v4 = v9;
  }

  if (*(v4 + 64))
  {
    self->_activationState = *(v4 + 2);
    *&self->_has |= 1u;
  }

  devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
  v8 = *(v4 + 4);
  if (devicePrimaryPaymentApplication)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(NPKProtoStandalonePaymentApplication *)devicePrimaryPaymentApplication mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(NPKProtoStandalonePaymentPass *)self setDevicePrimaryPaymentApplication:?];
  }

  v4 = v9;
LABEL_23:
}

@end