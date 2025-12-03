@interface NPKProtoStandalonePaymentPass
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActivationState:(id)state;
- (int)activationState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsActivationState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Activated"])
  {
    v4 = 100;
  }

  else if ([stateCopy isEqualToString:@"RequiresActivation"])
  {
    v4 = 110;
  }

  else if ([stateCopy isEqualToString:@"Activating"])
  {
    v4 = 120;
  }

  else if ([stateCopy isEqualToString:@"Suspended"])
  {
    v4 = 130;
  }

  else if ([stateCopy isEqualToString:@"Deactivated"])
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
  dictionaryRepresentation = [(NPKProtoStandalonePaymentPass *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pass = self->_pass;
  if (pass)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePass *)pass dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"pass"];
  }

  primaryAccountIdentifier = self->_primaryAccountIdentifier;
  if (primaryAccountIdentifier)
  {
    [dictionary setObject:primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix)
  {
    [dictionary setObject:primaryAccountNumberSuffix forKey:@"primaryAccountNumberSuffix"];
  }

  deviceAccountIdentifier = self->_deviceAccountIdentifier;
  if (deviceAccountIdentifier)
  {
    [dictionary setObject:deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
  }

  deviceAccountNumberSuffix = self->_deviceAccountNumberSuffix;
  if (deviceAccountNumberSuffix)
  {
    [dictionary setObject:deviceAccountNumberSuffix forKey:@"deviceAccountNumberSuffix"];
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
          [dictionary setObject:v11 forKey:@"activationState"];

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
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentApplication *)devicePrimaryPaymentApplication dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"devicePrimaryPaymentApplication"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_pass)
  {
    [NPKProtoStandalonePaymentPass writeTo:];
  }

  v7 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPass:self->_pass];
  if (self->_primaryAccountIdentifier)
  {
    [toCopy setPrimaryAccountIdentifier:?];
  }

  if (self->_primaryAccountNumberSuffix)
  {
    [toCopy setPrimaryAccountNumberSuffix:?];
  }

  v4 = toCopy;
  if (self->_deviceAccountIdentifier)
  {
    [toCopy setDeviceAccountIdentifier:?];
    v4 = toCopy;
  }

  if (self->_deviceAccountNumberSuffix)
  {
    [toCopy setDeviceAccountNumberSuffix:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    v4[2] = self->_activationState;
    *(v4 + 64) |= 1u;
  }

  if (self->_devicePrimaryPaymentApplication)
  {
    [toCopy setDevicePrimaryPaymentApplication:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandalonePass *)self->_pass copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_deviceAccountIdentifier copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_deviceAccountNumberSuffix copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_activationState;
    *(v5 + 64) |= 1u;
  }

  v16 = [(NPKProtoStandalonePaymentApplication *)self->_devicePrimaryPaymentApplication copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  pass = self->_pass;
  if (pass | *(equalCopy + 5))
  {
    if (![(NPKProtoStandalonePass *)pass isEqual:?])
    {
      goto LABEL_19;
    }
  }

  primaryAccountIdentifier = self->_primaryAccountIdentifier;
  if (primaryAccountIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)primaryAccountIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix | *(equalCopy + 7))
  {
    if (![(NSString *)primaryAccountNumberSuffix isEqual:?])
    {
      goto LABEL_19;
    }
  }

  deviceAccountIdentifier = self->_deviceAccountIdentifier;
  if (deviceAccountIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)deviceAccountIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  deviceAccountNumberSuffix = self->_deviceAccountNumberSuffix;
  if (deviceAccountNumberSuffix | *(equalCopy + 3))
  {
    if (![(NSString *)deviceAccountNumberSuffix isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_activationState != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
  if (devicePrimaryPaymentApplication | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  pass = self->_pass;
  v6 = *(fromCopy + 5);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 6))
  {
    [(NPKProtoStandalonePaymentPass *)self setPrimaryAccountIdentifier:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 7))
  {
    [(NPKProtoStandalonePaymentPass *)self setPrimaryAccountNumberSuffix:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoStandalonePaymentPass *)self setDeviceAccountIdentifier:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoStandalonePaymentPass *)self setDeviceAccountNumberSuffix:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 64))
  {
    self->_activationState = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;
  v8 = *(fromCopy + 4);
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

  fromCopy = v9;
LABEL_23:
}

@end