@interface OTEscrowRecordMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSecureBackupUsesMultipleIcscs:(BOOL)icscs;
- (void)writeTo:(id)to;
@end

@implementation OTEscrowRecordMetadata

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[3])
  {
    [(OTEscrowRecordMetadata *)self setBackupKeybagDigest:?];
    fromCopy = v9;
  }

  clientMetadata = self->_clientMetadata;
  v6 = fromCopy[7];
  if (clientMetadata)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(OTEscrowRecordMetadataClientMetadata *)clientMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(OTEscrowRecordMetadata *)self setClientMetadata:?];
  }

  fromCopy = v9;
LABEL_9:
  if ((fromCopy[12] & 2) != 0)
  {
    self->_secureBackupUsesMultipleIcscs = fromCopy[2];
    *&self->_has |= 2u;
  }

  if (fromCopy[4])
  {
    [(OTEscrowRecordMetadata *)self setBottleId:?];
    fromCopy = v9;
  }

  if (fromCopy[12])
  {
    self->_secureBackupTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[8])
  {
    [(OTEscrowRecordMetadata *)self setEscrowedSpki:?];
    fromCopy = v9;
  }

  if (fromCopy[10])
  {
    [(OTEscrowRecordMetadata *)self setPeerInfo:?];
    fromCopy = v9;
  }

  if (fromCopy[5])
  {
    [(OTEscrowRecordMetadata *)self setBottleValidity:?];
    fromCopy = v9;
  }

  if (fromCopy[11])
  {
    [(OTEscrowRecordMetadata *)self setSerial:?];
    fromCopy = v9;
  }

  if (fromCopy[6])
  {
    [(OTEscrowRecordMetadata *)self setBuild:?];
    fromCopy = v9;
  }

  passcodeGeneration = self->_passcodeGeneration;
  v8 = fromCopy[9];
  if (passcodeGeneration)
  {
    if (v8)
    {
      [(OTEscrowRecordMetadataPasscodeGeneration *)passcodeGeneration mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(OTEscrowRecordMetadata *)self setPasscodeGeneration:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_backupKeybagDigest hash];
  v4 = [(OTEscrowRecordMetadataClientMetadata *)self->_clientMetadata hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_secureBackupUsesMultipleIcscs;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_bottleId hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_secureBackupTimestamp;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSData *)self->_escrowedSpki hash];
  v10 = v8 ^ v9 ^ [(NSData *)self->_peerInfo hash];
  v11 = [(NSString *)self->_bottleValidity hash];
  v12 = v11 ^ [(NSString *)self->_serial hash];
  v13 = v12 ^ [(NSString *)self->_build hash];
  return v10 ^ v13 ^ [(OTEscrowRecordMetadataPasscodeGeneration *)self->_passcodeGeneration hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  backupKeybagDigest = self->_backupKeybagDigest;
  if (backupKeybagDigest | *(equalCopy + 3))
  {
    if (![(NSData *)backupKeybagDigest isEqual:?])
    {
      goto LABEL_31;
    }
  }

  clientMetadata = self->_clientMetadata;
  if (clientMetadata | *(equalCopy + 7))
  {
    if (![(OTEscrowRecordMetadataClientMetadata *)clientMetadata isEqual:?])
    {
      goto LABEL_31;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 96);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_secureBackupUsesMultipleIcscs != *(equalCopy + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
    goto LABEL_31;
  }

  bottleId = self->_bottleId;
  if (bottleId | *(equalCopy + 4))
  {
    if (![(NSString *)bottleId isEqual:?])
    {
LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }

    has = self->_has;
    v8 = *(equalCopy + 96);
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_secureBackupTimestamp != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (v8)
  {
    goto LABEL_31;
  }

  escrowedSpki = self->_escrowedSpki;
  if (escrowedSpki | *(equalCopy + 8) && ![(NSData *)escrowedSpki isEqual:?])
  {
    goto LABEL_31;
  }

  peerInfo = self->_peerInfo;
  if (peerInfo | *(equalCopy + 10))
  {
    if (![(NSData *)peerInfo isEqual:?])
    {
      goto LABEL_31;
    }
  }

  bottleValidity = self->_bottleValidity;
  if (bottleValidity | *(equalCopy + 5))
  {
    if (![(NSString *)bottleValidity isEqual:?])
    {
      goto LABEL_31;
    }
  }

  serial = self->_serial;
  if (serial | *(equalCopy + 11))
  {
    if (![(NSString *)serial isEqual:?])
    {
      goto LABEL_31;
    }
  }

  build = self->_build;
  if (build | *(equalCopy + 6))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_31;
    }
  }

  passcodeGeneration = self->_passcodeGeneration;
  if (passcodeGeneration | *(equalCopy + 9))
  {
    v16 = [(OTEscrowRecordMetadataPasscodeGeneration *)passcodeGeneration isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_32:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_backupKeybagDigest copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(OTEscrowRecordMetadataClientMetadata *)self->_clientMetadata copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_secureBackupUsesMultipleIcscs;
    *(v5 + 96) |= 2u;
  }

  v10 = [(NSString *)self->_bottleId copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_secureBackupTimestamp;
    *(v5 + 96) |= 1u;
  }

  v12 = [(NSData *)self->_escrowedSpki copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSData *)self->_peerInfo copyWithZone:zone];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  v16 = [(NSString *)self->_bottleValidity copyWithZone:zone];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v18 = [(NSString *)self->_serial copyWithZone:zone];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  v20 = [(NSString *)self->_build copyWithZone:zone];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  v22 = [(OTEscrowRecordMetadataPasscodeGeneration *)self->_passcodeGeneration copyWithZone:zone];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_backupKeybagDigest)
  {
    [toCopy setBackupKeybagDigest:?];
    toCopy = v5;
  }

  if (self->_clientMetadata)
  {
    [v5 setClientMetadata:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_secureBackupUsesMultipleIcscs;
    *(toCopy + 96) |= 2u;
  }

  if (self->_bottleId)
  {
    [v5 setBottleId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_secureBackupTimestamp;
    *(toCopy + 96) |= 1u;
  }

  if (self->_escrowedSpki)
  {
    [v5 setEscrowedSpki:?];
    toCopy = v5;
  }

  if (self->_peerInfo)
  {
    [v5 setPeerInfo:?];
    toCopy = v5;
  }

  if (self->_bottleValidity)
  {
    [v5 setBottleValidity:?];
    toCopy = v5;
  }

  if (self->_serial)
  {
    [v5 setSerial:?];
    toCopy = v5;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    toCopy = v5;
  }

  if (self->_passcodeGeneration)
  {
    [v5 setPasscodeGeneration:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_backupKeybagDigest)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_clientMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    secureBackupUsesMultipleIcscs = self->_secureBackupUsesMultipleIcscs;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_bottleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    secureBackupTimestamp = self->_secureBackupTimestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_escrowedSpki)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_peerInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_bottleValidity)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_serial)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_passcodeGeneration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  backupKeybagDigest = self->_backupKeybagDigest;
  if (backupKeybagDigest)
  {
    [dictionary setObject:backupKeybagDigest forKey:@"backup_keybag_digest"];
  }

  clientMetadata = self->_clientMetadata;
  if (clientMetadata)
  {
    dictionaryRepresentation = [(OTEscrowRecordMetadataClientMetadata *)clientMetadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"client_metadata"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_secureBackupUsesMultipleIcscs];
    [v4 setObject:v8 forKey:@"secure_backup_uses_multiple_icscs"];
  }

  bottleId = self->_bottleId;
  if (bottleId)
  {
    [v4 setObject:bottleId forKey:@"bottle_id"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_secureBackupTimestamp];
    [v4 setObject:v10 forKey:@"secure_backup_timestamp"];
  }

  escrowedSpki = self->_escrowedSpki;
  if (escrowedSpki)
  {
    [v4 setObject:escrowedSpki forKey:@"escrowed_spki"];
  }

  peerInfo = self->_peerInfo;
  if (peerInfo)
  {
    [v4 setObject:peerInfo forKey:@"peer_info"];
  }

  bottleValidity = self->_bottleValidity;
  if (bottleValidity)
  {
    [v4 setObject:bottleValidity forKey:@"bottle_validity"];
  }

  serial = self->_serial;
  if (serial)
  {
    [v4 setObject:serial forKey:@"serial"];
  }

  build = self->_build;
  if (build)
  {
    [v4 setObject:build forKey:@"build"];
  }

  passcodeGeneration = self->_passcodeGeneration;
  if (passcodeGeneration)
  {
    dictionaryRepresentation2 = [(OTEscrowRecordMetadataPasscodeGeneration *)passcodeGeneration dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"passcodeGeneration"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTEscrowRecordMetadata;
  v4 = [(OTEscrowRecordMetadata *)&v8 description];
  dictionaryRepresentation = [(OTEscrowRecordMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasSecureBackupUsesMultipleIcscs:(BOOL)icscs
{
  if (icscs)
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