@interface OTEscrowRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRecordStatus:(id)status;
- (int)StringAsRecordViability:(id)viability;
- (int)StringAsRecoveryStatus:(id)status;
- (int)StringAsViabilityStatus:(id)status;
- (int)recordStatus;
- (int)recordViability;
- (int)recoveryStatus;
- (int)viabilityStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCreationDate:(BOOL)date;
- (void)setHasRecordStatus:(BOOL)status;
- (void)setHasRecordViability:(BOOL)viability;
- (void)setHasRecoveryStatus:(BOOL)status;
- (void)setHasRemainingAttempts:(BOOL)attempts;
- (void)setHasSilentAttemptAllowed:(BOOL)allowed;
- (void)setHasViabilityStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation OTEscrowRecord

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 108);
  if ((v6 & 2) != 0)
  {
    self->_creationDate = fromCopy[2];
    *&self->_has |= 2u;
    v6 = *(fromCopy + 108);
  }

  if ((v6 & 4) != 0)
  {
    self->_remainingAttempts = fromCopy[3];
    *&self->_has |= 4u;
  }

  escrowInformationMetadata = self->_escrowInformationMetadata;
  v8 = v5[5];
  v12 = v5;
  if (escrowInformationMetadata)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(OTEscrowRecordMetadata *)escrowInformationMetadata mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(OTEscrowRecord *)self setEscrowInformationMetadata:?];
  }

  v5 = v12;
LABEL_11:
  if (v5[8])
  {
    [(OTEscrowRecord *)self setLabel:?];
    v5 = v12;
  }

  v9 = *(v5 + 108);
  if ((v9 & 8) != 0)
  {
    self->_silentAttemptAllowed = v5[4];
    *&self->_has |= 8u;
    v9 = *(v5 + 108);
  }

  if ((v9 & 0x10) != 0)
  {
    self->_recordStatus = *(v5 + 20);
    *&self->_has |= 0x10u;
  }

  if (v5[9])
  {
    [(OTEscrowRecord *)self setRecordId:?];
    v5 = v12;
  }

  v10 = *(v5 + 108);
  if ((v10 & 0x40) != 0)
  {
    self->_recoveryStatus = *(v5 + 22);
    *&self->_has |= 0x40u;
    v10 = *(v5 + 108);
  }

  if (v10)
  {
    self->_coolOffEnd = v5[1];
    *&self->_has |= 1u;
  }

  if (v5[12])
  {
    [(OTEscrowRecord *)self setSerialNumber:?];
    v5 = v12;
  }

  v11 = *(v5 + 108);
  if ((v11 & 0x20) != 0)
  {
    self->_recordViability = *(v5 + 21);
    *&self->_has |= 0x20u;
    v11 = *(v5 + 108);
  }

  if (v11 < 0)
  {
    self->_viabilityStatus = *(v5 + 26);
    *&self->_has |= 0x80u;
  }

  if (v5[7])
  {
    [(OTEscrowRecord *)self setFederationId:?];
    v5 = v12;
  }

  if (v5[6])
  {
    [(OTEscrowRecord *)self setExpectedFederationId:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v18 = 2654435761u * self->_creationDate;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = [(OTEscrowRecordMetadata *)self->_escrowInformationMetadata hash];
      goto LABEL_6;
    }
  }

  v3 = [(OTEscrowRecordMetadata *)self->_escrowInformationMetadata hash];
LABEL_6:
  v4 = v3;
  v5 = [(NSString *)self->_label hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761u * self->_silentAttemptAllowed;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_recordStatus;
      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  v8 = [(NSString *)self->_recordId hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v9 = 2654435761 * self->_recoveryStatus;
    if (*&self->_has)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if (*&self->_has)
    {
LABEL_13:
      v10 = 2654435761u * self->_coolOffEnd;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  v11 = [(NSString *)self->_serialNumber hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v12 = 2654435761 * self->_recordViability;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v12 = 0;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  v13 = 2654435761 * self->_viabilityStatus;
LABEL_21:
  v14 = v17 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  v15 = [(NSString *)self->_federationId hash];
  return v14 ^ v15 ^ [(NSString *)self->_expectedFederationId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  v5 = *(equalCopy + 108);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 108) & 2) == 0 || self->_creationDate != *(equalCopy + 2))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 108) & 2) != 0)
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 108) & 4) == 0 || self->_remainingAttempts != *(equalCopy + 3))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 108) & 4) != 0)
  {
    goto LABEL_55;
  }

  escrowInformationMetadata = self->_escrowInformationMetadata;
  if (escrowInformationMetadata | *(equalCopy + 5) && ![(OTEscrowRecordMetadata *)escrowInformationMetadata isEqual:?])
  {
    goto LABEL_55;
  }

  label = self->_label;
  if (label | *(equalCopy + 8))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_55;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 108);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 108) & 8) == 0 || self->_silentAttemptAllowed != *(equalCopy + 4))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 108) & 8) != 0)
  {
    goto LABEL_55;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 108) & 0x10) == 0 || self->_recordStatus != *(equalCopy + 20))
    {
      goto LABEL_55;
    }
  }

  else if ((*(equalCopy + 108) & 0x10) != 0)
  {
    goto LABEL_55;
  }

  recordId = self->_recordId;
  if (recordId | *(equalCopy + 9))
  {
    if (![(NSString *)recordId isEqual:?])
    {
      goto LABEL_55;
    }

    has = self->_has;
    v9 = *(equalCopy + 108);
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_recoveryStatus != *(equalCopy + 22))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_55;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_coolOffEnd != *(equalCopy + 1))
    {
      goto LABEL_55;
    }
  }

  else if (v9)
  {
    goto LABEL_55;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(equalCopy + 12))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_55;
    }

    has = self->_has;
    v9 = *(equalCopy + 108);
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_recordViability != *(equalCopy + 21))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_55;
  }

  if ((has & 0x80) == 0)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_49;
    }

LABEL_55:
    v14 = 0;
    goto LABEL_56;
  }

  if ((v9 & 0x80) == 0 || self->_viabilityStatus != *(equalCopy + 26))
  {
    goto LABEL_55;
  }

LABEL_49:
  federationId = self->_federationId;
  if (federationId | *(equalCopy + 7) && ![(NSString *)federationId isEqual:?])
  {
    goto LABEL_55;
  }

  expectedFederationId = self->_expectedFederationId;
  if (expectedFederationId | *(equalCopy + 6))
  {
    v14 = [(NSString *)expectedFederationId isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_56:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_creationDate;
    *(v5 + 108) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_remainingAttempts;
    *(v5 + 108) |= 4u;
  }

  v8 = [(OTEscrowRecordMetadata *)self->_escrowInformationMetadata copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = [(NSString *)self->_label copyWithZone:zone];
  v11 = *(v6 + 64);
  *(v6 + 64) = v10;

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    *(v6 + 32) = self->_silentAttemptAllowed;
    *(v6 + 108) |= 8u;
    v12 = self->_has;
  }

  if ((v12 & 0x10) != 0)
  {
    *(v6 + 80) = self->_recordStatus;
    *(v6 + 108) |= 0x10u;
  }

  v13 = [(NSString *)self->_recordId copyWithZone:zone];
  v14 = *(v6 + 72);
  *(v6 + 72) = v13;

  v15 = self->_has;
  if ((v15 & 0x40) != 0)
  {
    *(v6 + 88) = self->_recoveryStatus;
    *(v6 + 108) |= 0x40u;
    v15 = self->_has;
  }

  if (v15)
  {
    *(v6 + 8) = self->_coolOffEnd;
    *(v6 + 108) |= 1u;
  }

  v16 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v17 = *(v6 + 96);
  *(v6 + 96) = v16;

  v18 = self->_has;
  if ((v18 & 0x20) != 0)
  {
    *(v6 + 84) = self->_recordViability;
    *(v6 + 108) |= 0x20u;
    v18 = self->_has;
  }

  if (v18 < 0)
  {
    *(v6 + 104) = self->_viabilityStatus;
    *(v6 + 108) |= 0x80u;
  }

  v19 = [(NSString *)self->_federationId copyWithZone:zone];
  v20 = *(v6 + 56);
  *(v6 + 56) = v19;

  v21 = [(NSString *)self->_expectedFederationId copyWithZone:zone];
  v22 = *(v6 + 48);
  *(v6 + 48) = v21;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_creationDate;
    *(toCopy + 108) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[3] = self->_remainingAttempts;
    *(toCopy + 108) |= 4u;
  }

  v9 = toCopy;
  if (self->_escrowInformationMetadata)
  {
    [toCopy setEscrowInformationMetadata:?];
    toCopy = v9;
  }

  if (self->_label)
  {
    [v9 setLabel:?];
    toCopy = v9;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    toCopy[4] = self->_silentAttemptAllowed;
    *(toCopy + 108) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 20) = self->_recordStatus;
    *(toCopy + 108) |= 0x10u;
  }

  if (self->_recordId)
  {
    [v9 setRecordId:?];
    toCopy = v9;
  }

  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    *(toCopy + 22) = self->_recoveryStatus;
    *(toCopy + 108) |= 0x40u;
    v7 = self->_has;
  }

  if (v7)
  {
    toCopy[1] = self->_coolOffEnd;
    *(toCopy + 108) |= 1u;
  }

  if (self->_serialNumber)
  {
    [v9 setSerialNumber:?];
    toCopy = v9;
  }

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    *(toCopy + 21) = self->_recordViability;
    *(toCopy + 108) |= 0x20u;
    v8 = self->_has;
  }

  if (v8 < 0)
  {
    *(toCopy + 26) = self->_viabilityStatus;
    *(toCopy + 108) |= 0x80u;
  }

  if (self->_federationId)
  {
    [v9 setFederationId:?];
    toCopy = v9;
  }

  if (self->_expectedFederationId)
  {
    [v9 setExpectedFederationId:?];
    toCopy = v9;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v17 = toCopy;
  if ((has & 2) != 0)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteUint64Field();
    toCopy = v17;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    remainingAttempts = self->_remainingAttempts;
    PBDataWriterWriteUint64Field();
    toCopy = v17;
  }

  if (self->_escrowInformationMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v17;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    silentAttemptAllowed = self->_silentAttemptAllowed;
    PBDataWriterWriteUint64Field();
    toCopy = v17;
    v8 = self->_has;
  }

  if ((v8 & 0x10) != 0)
  {
    recordStatus = self->_recordStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v17;
  }

  if (self->_recordId)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    recoveryStatus = self->_recoveryStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v17;
    v11 = self->_has;
  }

  if (v11)
  {
    coolOffEnd = self->_coolOffEnd;
    PBDataWriterWriteUint64Field();
    toCopy = v17;
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  v14 = self->_has;
  if ((v14 & 0x20) != 0)
  {
    recordViability = self->_recordViability;
    PBDataWriterWriteInt32Field();
    toCopy = v17;
    v14 = self->_has;
  }

  if (v14 < 0)
  {
    viabilityStatus = self->_viabilityStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v17;
  }

  if (self->_federationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_expectedFederationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationDate];
    [dictionary setObject:v5 forKey:@"creation_date"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_remainingAttempts];
    [dictionary setObject:v6 forKey:@"remaining_attempts"];
  }

  escrowInformationMetadata = self->_escrowInformationMetadata;
  if (escrowInformationMetadata)
  {
    dictionaryRepresentation = [(OTEscrowRecordMetadata *)escrowInformationMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"escrow_information_metadata"];
  }

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_silentAttemptAllowed];
    [dictionary setObject:v11 forKey:@"silent_attempt_allowed"];

    v10 = self->_has;
  }

  if ((v10 & 0x10) != 0)
  {
    recordStatus = self->_recordStatus;
    if (recordStatus)
    {
      if (recordStatus == 1)
      {
        v13 = @"RECORD_STATUS_INVALID";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_recordStatus];
      }
    }

    else
    {
      v13 = @"RECORD_STATUS_VALID";
    }

    [dictionary setObject:v13 forKey:@"record_status"];
  }

  recordId = self->_recordId;
  if (recordId)
  {
    [dictionary setObject:recordId forKey:@"record_id"];
  }

  v15 = self->_has;
  if ((v15 & 0x40) != 0)
  {
    recoveryStatus = self->_recoveryStatus;
    if (recoveryStatus >= 3)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_recoveryStatus];
    }

    else
    {
      v17 = off_1E833E928[recoveryStatus];
    }

    [dictionary setObject:v17 forKey:@"recovery_status"];

    v15 = self->_has;
  }

  if (v15)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_coolOffEnd];
    [dictionary setObject:v18 forKey:@"cool_off_end"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [dictionary setObject:serialNumber forKey:@"serial_number"];
  }

  v20 = self->_has;
  if ((v20 & 0x20) != 0)
  {
    recordViability = self->_recordViability;
    if (recordViability >= 3)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_recordViability];
    }

    else
    {
      v22 = off_1E833E940[recordViability];
    }

    [dictionary setObject:v22 forKey:@"record_viability"];

    v20 = self->_has;
  }

  if (v20 < 0)
  {
    viabilityStatus = self->_viabilityStatus;
    if (viabilityStatus >= 3)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_viabilityStatus];
    }

    else
    {
      v24 = off_1E833E958[viabilityStatus];
    }

    [dictionary setObject:v24 forKey:@"viability_status"];
  }

  federationId = self->_federationId;
  if (federationId)
  {
    [dictionary setObject:federationId forKey:@"federation_id"];
  }

  expectedFederationId = self->_expectedFederationId;
  if (expectedFederationId)
  {
    [dictionary setObject:expectedFederationId forKey:@"expected_federation_id"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTEscrowRecord;
  v4 = [(OTEscrowRecord *)&v8 description];
  dictionaryRepresentation = [(OTEscrowRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsViabilityStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"SOS_VIABLE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"SOS_VIABLE"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"SOS_NOT_VIABLE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasViabilityStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)viabilityStatus
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    return self->_viabilityStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRecordViability:(id)viability
{
  viabilityCopy = viability;
  if ([viabilityCopy isEqualToString:@"RECORD_VIABILITY_FULLY_VIABLE"])
  {
    v4 = 0;
  }

  else if ([viabilityCopy isEqualToString:@"RECORD_VIABILITY_PARTIALLY_VIABLE"])
  {
    v4 = 1;
  }

  else if ([viabilityCopy isEqualToString:@"RECORD_VIABILITY_LEGACY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRecordViability:(BOOL)viability
{
  if (viability)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)recordViability
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_recordViability;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRecoveryStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"RECOVERY_STATUS_VALID"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"RECOVERY_STATUS_SOFT_LIMIT_REACHED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"RECOVERY_STATUS_HARD_LIMIT_REACHED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRecoveryStatus:(BOOL)status
{
  if (status)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)recoveryStatus
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_recoveryStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRecordStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"RECORD_STATUS_VALID"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [statusCopy isEqualToString:@"RECORD_STATUS_INVALID"];
  }

  return v4;
}

- (void)setHasRecordStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)recordStatus
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_recordStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSilentAttemptAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRemainingAttempts:(BOOL)attempts
{
  if (attempts)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCreationDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end