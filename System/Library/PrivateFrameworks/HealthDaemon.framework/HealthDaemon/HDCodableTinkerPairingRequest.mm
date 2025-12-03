@interface HDCodableTinkerPairingRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSetupType:(id)type;
- (int)setupType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSetupType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableTinkerPairingRequest

- (int)setupType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_setupType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSetupType:(BOOL)type
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

- (int)StringAsSetupType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"TinkerPairingInitialSetup"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"TinkerPairingMigrationSetup"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerPairingRequest;
  v4 = [(HDCodableTinkerPairingRequest *)&v8 description];
  dictionaryRepresentation = [(HDCodableTinkerPairingRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  guardianIcloudIdentifier = self->_guardianIcloudIdentifier;
  if (guardianIcloudIdentifier)
  {
    [v4 setObject:guardianIcloudIdentifier forKey:@"guardianIcloudIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    setupType = self->_setupType;
    if (setupType)
    {
      if (setupType == 1)
      {
        v8 = @"TinkerPairingMigrationSetup";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_setupType];
      }
    }

    else
    {
      v8 = @"TinkerPairingInitialSetup";
    }

    [v4 setObject:v8 forKey:@"setupType"];
  }

  guardianFirstName = self->_guardianFirstName;
  if (guardianFirstName)
  {
    [v4 setObject:guardianFirstName forKey:@"guardianFirstName"];
  }

  guardianLastName = self->_guardianLastName;
  if (guardianLastName)
  {
    [v4 setObject:guardianLastName forKey:@"guardianLastName"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_guardianDSID];
    [v4 setObject:v11 forKey:@"guardianDSID"];
  }

  profileIdentifier = self->_profileIdentifier;
  if (profileIdentifier)
  {
    [v4 setObject:profileIdentifier forKey:@"profileIdentifier"];
  }

  tinkerFirstName = self->_tinkerFirstName;
  if (tinkerFirstName)
  {
    [v4 setObject:tinkerFirstName forKey:@"tinkerFirstName"];
  }

  tinkerLastName = self->_tinkerLastName;
  if (tinkerLastName)
  {
    [v4 setObject:tinkerLastName forKey:@"tinkerLastName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_guardianIcloudIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    setupType = self->_setupType;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_guardianFirstName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_guardianLastName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    guardianDSID = self->_guardianDSID;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_profileIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_tinkerFirstName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_tinkerLastName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_guardianIcloudIdentifier)
  {
    [v5 setGuardianIcloudIdentifier:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 14) = self->_setupType;
    *(toCopy + 80) |= 2u;
  }

  if (self->_guardianFirstName)
  {
    [v5 setGuardianFirstName:?];
    toCopy = v5;
  }

  if (self->_guardianLastName)
  {
    [v5 setGuardianLastName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_guardianDSID;
    *(toCopy + 80) |= 1u;
  }

  if (self->_profileIdentifier)
  {
    [v5 setProfileIdentifier:?];
    toCopy = v5;
  }

  if (self->_tinkerFirstName)
  {
    [v5 setTinkerFirstName:?];
    toCopy = v5;
  }

  if (self->_tinkerLastName)
  {
    [v5 setTinkerLastName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_guardianIcloudIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_setupType;
    *(v5 + 80) |= 2u;
  }

  v10 = [(NSString *)self->_guardianFirstName copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_guardianLastName copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_guardianDSID;
    *(v5 + 80) |= 1u;
  }

  v14 = [(NSData *)self->_profileIdentifier copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_tinkerFirstName copyWithZone:zone];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSString *)self->_tinkerLastName copyWithZone:zone];
  v19 = *(v5 + 72);
  *(v5 + 72) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)requestIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  guardianIcloudIdentifier = self->_guardianIcloudIdentifier;
  if (guardianIcloudIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)guardianIcloudIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v7 = *(equalCopy + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_setupType != *(equalCopy + 14))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  guardianFirstName = self->_guardianFirstName;
  if (guardianFirstName | *(equalCopy + 2) && ![(NSString *)guardianFirstName isEqual:?])
  {
    goto LABEL_26;
  }

  guardianLastName = self->_guardianLastName;
  if (guardianLastName | *(equalCopy + 4))
  {
    if (![(NSString *)guardianLastName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v10 = *(equalCopy + 80);
  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_guardianDSID != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_26;
  }

  profileIdentifier = self->_profileIdentifier;
  if (profileIdentifier | *(equalCopy + 5) && ![(NSData *)profileIdentifier isEqual:?])
  {
    goto LABEL_26;
  }

  tinkerFirstName = self->_tinkerFirstName;
  if (tinkerFirstName | *(equalCopy + 8))
  {
    if (![(NSString *)tinkerFirstName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  tinkerLastName = self->_tinkerLastName;
  if (tinkerLastName | *(equalCopy + 9))
  {
    v14 = [(NSString *)tinkerLastName isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_27:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestIdentifier hash];
  v4 = [(NSString *)self->_guardianIcloudIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_setupType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_guardianFirstName hash];
  v7 = [(NSString *)self->_guardianLastName hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_guardianDSID;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSData *)self->_profileIdentifier hash];
  v10 = [(NSString *)self->_tinkerFirstName hash];
  return v9 ^ v10 ^ [(NSString *)self->_tinkerLastName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(HDCodableTinkerPairingRequest *)self setRequestIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(HDCodableTinkerPairingRequest *)self setGuardianIcloudIdentifier:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 80) & 2) != 0)
  {
    self->_setupType = *(fromCopy + 14);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(HDCodableTinkerPairingRequest *)self setGuardianFirstName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(HDCodableTinkerPairingRequest *)self setGuardianLastName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 80))
  {
    self->_guardianDSID = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(HDCodableTinkerPairingRequest *)self setProfileIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 8))
  {
    [(HDCodableTinkerPairingRequest *)self setTinkerFirstName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 9))
  {
    [(HDCodableTinkerPairingRequest *)self setTinkerLastName:?];
    fromCopy = v5;
  }
}

@end