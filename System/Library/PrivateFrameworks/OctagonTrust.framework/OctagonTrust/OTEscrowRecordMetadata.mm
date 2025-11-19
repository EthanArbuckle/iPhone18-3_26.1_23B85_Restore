@interface OTEscrowRecordMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSecureBackupUsesMultipleIcscs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTEscrowRecordMetadata

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[3])
  {
    [(OTEscrowRecordMetadata *)self setBackupKeybagDigest:?];
    v4 = v9;
  }

  clientMetadata = self->_clientMetadata;
  v6 = v4[7];
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

  v4 = v9;
LABEL_9:
  if ((v4[12] & 2) != 0)
  {
    self->_secureBackupUsesMultipleIcscs = v4[2];
    *&self->_has |= 2u;
  }

  if (v4[4])
  {
    [(OTEscrowRecordMetadata *)self setBottleId:?];
    v4 = v9;
  }

  if (v4[12])
  {
    self->_secureBackupTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[8])
  {
    [(OTEscrowRecordMetadata *)self setEscrowedSpki:?];
    v4 = v9;
  }

  if (v4[10])
  {
    [(OTEscrowRecordMetadata *)self setPeerInfo:?];
    v4 = v9;
  }

  if (v4[5])
  {
    [(OTEscrowRecordMetadata *)self setBottleValidity:?];
    v4 = v9;
  }

  if (v4[11])
  {
    [(OTEscrowRecordMetadata *)self setSerial:?];
    v4 = v9;
  }

  if (v4[6])
  {
    [(OTEscrowRecordMetadata *)self setBuild:?];
    v4 = v9;
  }

  passcodeGeneration = self->_passcodeGeneration;
  v8 = v4[9];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  backupKeybagDigest = self->_backupKeybagDigest;
  if (backupKeybagDigest | *(v4 + 3))
  {
    if (![(NSData *)backupKeybagDigest isEqual:?])
    {
      goto LABEL_31;
    }
  }

  clientMetadata = self->_clientMetadata;
  if (clientMetadata | *(v4 + 7))
  {
    if (![(OTEscrowRecordMetadataClientMetadata *)clientMetadata isEqual:?])
    {
      goto LABEL_31;
    }
  }

  has = self->_has;
  v8 = *(v4 + 96);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_secureBackupUsesMultipleIcscs != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
    goto LABEL_31;
  }

  bottleId = self->_bottleId;
  if (bottleId | *(v4 + 4))
  {
    if (![(NSString *)bottleId isEqual:?])
    {
LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }

    has = self->_has;
    v8 = *(v4 + 96);
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_secureBackupTimestamp != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (v8)
  {
    goto LABEL_31;
  }

  escrowedSpki = self->_escrowedSpki;
  if (escrowedSpki | *(v4 + 8) && ![(NSData *)escrowedSpki isEqual:?])
  {
    goto LABEL_31;
  }

  peerInfo = self->_peerInfo;
  if (peerInfo | *(v4 + 10))
  {
    if (![(NSData *)peerInfo isEqual:?])
    {
      goto LABEL_31;
    }
  }

  bottleValidity = self->_bottleValidity;
  if (bottleValidity | *(v4 + 5))
  {
    if (![(NSString *)bottleValidity isEqual:?])
    {
      goto LABEL_31;
    }
  }

  serial = self->_serial;
  if (serial | *(v4 + 11))
  {
    if (![(NSString *)serial isEqual:?])
    {
      goto LABEL_31;
    }
  }

  build = self->_build;
  if (build | *(v4 + 6))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_31;
    }
  }

  passcodeGeneration = self->_passcodeGeneration;
  if (passcodeGeneration | *(v4 + 9))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_backupKeybagDigest copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(OTEscrowRecordMetadataClientMetadata *)self->_clientMetadata copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_secureBackupUsesMultipleIcscs;
    *(v5 + 96) |= 2u;
  }

  v10 = [(NSString *)self->_bottleId copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_secureBackupTimestamp;
    *(v5 + 96) |= 1u;
  }

  v12 = [(NSData *)self->_escrowedSpki copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  v14 = [(NSData *)self->_peerInfo copyWithZone:a3];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  v16 = [(NSString *)self->_bottleValidity copyWithZone:a3];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  v18 = [(NSString *)self->_serial copyWithZone:a3];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  v20 = [(NSString *)self->_build copyWithZone:a3];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  v22 = [(OTEscrowRecordMetadataPasscodeGeneration *)self->_passcodeGeneration copyWithZone:a3];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backupKeybagDigest)
  {
    [v4 setBackupKeybagDigest:?];
    v4 = v5;
  }

  if (self->_clientMetadata)
  {
    [v5 setClientMetadata:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_secureBackupUsesMultipleIcscs;
    *(v4 + 96) |= 2u;
  }

  if (self->_bottleId)
  {
    [v5 setBottleId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_secureBackupTimestamp;
    *(v4 + 96) |= 1u;
  }

  if (self->_escrowedSpki)
  {
    [v5 setEscrowedSpki:?];
    v4 = v5;
  }

  if (self->_peerInfo)
  {
    [v5 setPeerInfo:?];
    v4 = v5;
  }

  if (self->_bottleValidity)
  {
    [v5 setBottleValidity:?];
    v4 = v5;
  }

  if (self->_serial)
  {
    [v5 setSerial:?];
    v4 = v5;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    v4 = v5;
  }

  if (self->_passcodeGeneration)
  {
    [v5 setPasscodeGeneration:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_backupKeybagDigest)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_clientMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    secureBackupUsesMultipleIcscs = self->_secureBackupUsesMultipleIcscs;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_bottleId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    secureBackupTimestamp = self->_secureBackupTimestamp;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_escrowedSpki)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_peerInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_bottleValidity)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_serial)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_passcodeGeneration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  backupKeybagDigest = self->_backupKeybagDigest;
  if (backupKeybagDigest)
  {
    [v3 setObject:backupKeybagDigest forKey:@"backup_keybag_digest"];
  }

  clientMetadata = self->_clientMetadata;
  if (clientMetadata)
  {
    v7 = [(OTEscrowRecordMetadataClientMetadata *)clientMetadata dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"client_metadata"];
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
    v17 = [(OTEscrowRecordMetadataPasscodeGeneration *)passcodeGeneration dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"passcodeGeneration"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTEscrowRecordMetadata;
  v4 = [(OTEscrowRecordMetadata *)&v8 description];
  v5 = [(OTEscrowRecordMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasSecureBackupUsesMultipleIcscs:(BOOL)a3
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

@end