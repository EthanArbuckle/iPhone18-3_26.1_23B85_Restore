@interface MPSStateRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MPSStateRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    [(MPSStateRequest *)self setMPSDeviceID:?];
    v4 = v5;
  }

  if (v4[5])
  {
    [(MPSStateRequest *)self setICPLDeviceID:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(MPSStateRequest *)self setBackupDeviceID:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(MPSStateRequest *)self setBackupDeviceUUID:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(MPSStateRequest *)self setBackupDeviceUDID:?];
    v4 = v5;
  }

  if (v4[7])
  {
    self->_originalLibrarySize = v4[1];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mPSDeviceID hash];
  v4 = [(NSString *)self->_iCPLDeviceID hash];
  v5 = [(NSString *)self->_backupDeviceID hash];
  v6 = [(NSString *)self->_backupDeviceUUID hash];
  v7 = [(NSString *)self->_backupDeviceUDID hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_originalLibrarySize;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  mPSDeviceID = self->_mPSDeviceID;
  if (mPSDeviceID | *(v4 + 6))
  {
    if (![(NSString *)mPSDeviceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  iCPLDeviceID = self->_iCPLDeviceID;
  if (iCPLDeviceID | *(v4 + 5))
  {
    if (![(NSString *)iCPLDeviceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  backupDeviceID = self->_backupDeviceID;
  if (backupDeviceID | *(v4 + 2))
  {
    if (![(NSString *)backupDeviceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  backupDeviceUUID = self->_backupDeviceUUID;
  if (backupDeviceUUID | *(v4 + 4))
  {
    if (![(NSString *)backupDeviceUUID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  backupDeviceUDID = self->_backupDeviceUDID;
  if (backupDeviceUDID | *(v4 + 3))
  {
    if (![(NSString *)backupDeviceUDID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v10 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) != 0 && self->_originalLibrarySize == *(v4 + 1))
    {
      v10 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_mPSDeviceID copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_iCPLDeviceID copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_backupDeviceID copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_backupDeviceUUID copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_backupDeviceUDID copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_originalLibrarySize;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mPSDeviceID)
  {
    [v4 setMPSDeviceID:?];
    v4 = v5;
  }

  if (self->_iCPLDeviceID)
  {
    [v5 setICPLDeviceID:?];
    v4 = v5;
  }

  if (self->_backupDeviceID)
  {
    [v5 setBackupDeviceID:?];
    v4 = v5;
  }

  if (self->_backupDeviceUUID)
  {
    [v5 setBackupDeviceUUID:?];
    v4 = v5;
  }

  if (self->_backupDeviceUDID)
  {
    [v5 setBackupDeviceUDID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_originalLibrarySize;
    *(v4 + 56) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_mPSDeviceID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_iCPLDeviceID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_backupDeviceID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_backupDeviceUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_backupDeviceUDID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    originalLibrarySize = self->_originalLibrarySize;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  mPSDeviceID = self->_mPSDeviceID;
  if (mPSDeviceID)
  {
    [v3 setObject:mPSDeviceID forKey:@"MPSDeviceID"];
  }

  iCPLDeviceID = self->_iCPLDeviceID;
  if (iCPLDeviceID)
  {
    [v4 setObject:iCPLDeviceID forKey:@"iCPLDeviceID"];
  }

  backupDeviceID = self->_backupDeviceID;
  if (backupDeviceID)
  {
    [v4 setObject:backupDeviceID forKey:@"BackupDeviceID"];
  }

  backupDeviceUUID = self->_backupDeviceUUID;
  if (backupDeviceUUID)
  {
    [v4 setObject:backupDeviceUUID forKey:@"BackupDeviceUUID"];
  }

  backupDeviceUDID = self->_backupDeviceUDID;
  if (backupDeviceUDID)
  {
    [v4 setObject:backupDeviceUDID forKey:@"BackupDeviceUDID"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_originalLibrarySize];
    [v4 setObject:v10 forKey:@"OriginalLibrarySize"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MPSStateRequest;
  v4 = [(MPSStateRequest *)&v8 description];
  v5 = [(MPSStateRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end