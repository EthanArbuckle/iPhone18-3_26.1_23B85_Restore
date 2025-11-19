@interface HDCodableTinkerPairingRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSetupType:(id)a3;
- (int)setupType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSetupType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasSetupType:(BOOL)a3
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

- (int)StringAsSetupType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TinkerPairingInitialSetup"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TinkerPairingMigrationSetup"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerPairingRequest;
  v4 = [(HDCodableTinkerPairingRequest *)&v8 description];
  v5 = [(HDCodableTinkerPairingRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_guardianIcloudIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    setupType = self->_setupType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_guardianFirstName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_guardianLastName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    guardianDSID = self->_guardianDSID;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_profileIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_tinkerFirstName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_tinkerLastName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    [v4 setRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_guardianIcloudIdentifier)
  {
    [v5 setGuardianIcloudIdentifier:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 14) = self->_setupType;
    *(v4 + 80) |= 2u;
  }

  if (self->_guardianFirstName)
  {
    [v5 setGuardianFirstName:?];
    v4 = v5;
  }

  if (self->_guardianLastName)
  {
    [v5 setGuardianLastName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_guardianDSID;
    *(v4 + 80) |= 1u;
  }

  if (self->_profileIdentifier)
  {
    [v5 setProfileIdentifier:?];
    v4 = v5;
  }

  if (self->_tinkerFirstName)
  {
    [v5 setTinkerFirstName:?];
    v4 = v5;
  }

  if (self->_tinkerLastName)
  {
    [v5 setTinkerLastName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_guardianIcloudIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_setupType;
    *(v5 + 80) |= 2u;
  }

  v10 = [(NSString *)self->_guardianFirstName copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_guardianLastName copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_guardianDSID;
    *(v5 + 80) |= 1u;
  }

  v14 = [(NSData *)self->_profileIdentifier copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_tinkerFirstName copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSString *)self->_tinkerLastName copyWithZone:a3];
  v19 = *(v5 + 72);
  *(v5 + 72) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(v4 + 6))
  {
    if (![(NSString *)requestIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  guardianIcloudIdentifier = self->_guardianIcloudIdentifier;
  if (guardianIcloudIdentifier | *(v4 + 3))
  {
    if (![(NSString *)guardianIcloudIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v7 = *(v4 + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_setupType != *(v4 + 14))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  guardianFirstName = self->_guardianFirstName;
  if (guardianFirstName | *(v4 + 2) && ![(NSString *)guardianFirstName isEqual:?])
  {
    goto LABEL_26;
  }

  guardianLastName = self->_guardianLastName;
  if (guardianLastName | *(v4 + 4))
  {
    if (![(NSString *)guardianLastName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v10 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_guardianDSID != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_26;
  }

  profileIdentifier = self->_profileIdentifier;
  if (profileIdentifier | *(v4 + 5) && ![(NSData *)profileIdentifier isEqual:?])
  {
    goto LABEL_26;
  }

  tinkerFirstName = self->_tinkerFirstName;
  if (tinkerFirstName | *(v4 + 8))
  {
    if (![(NSString *)tinkerFirstName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  tinkerLastName = self->_tinkerLastName;
  if (tinkerLastName | *(v4 + 9))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 6))
  {
    [(HDCodableTinkerPairingRequest *)self setRequestIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(HDCodableTinkerPairingRequest *)self setGuardianIcloudIdentifier:?];
    v4 = v5;
  }

  if ((*(v4 + 80) & 2) != 0)
  {
    self->_setupType = *(v4 + 14);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    [(HDCodableTinkerPairingRequest *)self setGuardianFirstName:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(HDCodableTinkerPairingRequest *)self setGuardianLastName:?];
    v4 = v5;
  }

  if (*(v4 + 80))
  {
    self->_guardianDSID = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(HDCodableTinkerPairingRequest *)self setProfileIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 8))
  {
    [(HDCodableTinkerPairingRequest *)self setTinkerFirstName:?];
    v4 = v5;
  }

  if (*(v4 + 9))
  {
    [(HDCodableTinkerPairingRequest *)self setTinkerLastName:?];
    v4 = v5;
  }
}

@end