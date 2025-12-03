@interface MPSStateRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MPSStateRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    [(MPSStateRequest *)self setMPSDeviceID:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    [(MPSStateRequest *)self setICPLDeviceID:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(MPSStateRequest *)self setBackupDeviceID:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(MPSStateRequest *)self setBackupDeviceUUID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(MPSStateRequest *)self setBackupDeviceUDID:?];
    fromCopy = v5;
  }

  if (fromCopy[7])
  {
    self->_originalLibrarySize = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  mPSDeviceID = self->_mPSDeviceID;
  if (mPSDeviceID | *(equalCopy + 6))
  {
    if (![(NSString *)mPSDeviceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  iCPLDeviceID = self->_iCPLDeviceID;
  if (iCPLDeviceID | *(equalCopy + 5))
  {
    if (![(NSString *)iCPLDeviceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  backupDeviceID = self->_backupDeviceID;
  if (backupDeviceID | *(equalCopy + 2))
  {
    if (![(NSString *)backupDeviceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  backupDeviceUUID = self->_backupDeviceUUID;
  if (backupDeviceUUID | *(equalCopy + 4))
  {
    if (![(NSString *)backupDeviceUUID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  backupDeviceUDID = self->_backupDeviceUDID;
  if (backupDeviceUDID | *(equalCopy + 3))
  {
    if (![(NSString *)backupDeviceUDID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v10 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) != 0 && self->_originalLibrarySize == *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_mPSDeviceID copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_iCPLDeviceID copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_backupDeviceID copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_backupDeviceUUID copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_backupDeviceUDID copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_originalLibrarySize;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mPSDeviceID)
  {
    [toCopy setMPSDeviceID:?];
    toCopy = v5;
  }

  if (self->_iCPLDeviceID)
  {
    [v5 setICPLDeviceID:?];
    toCopy = v5;
  }

  if (self->_backupDeviceID)
  {
    [v5 setBackupDeviceID:?];
    toCopy = v5;
  }

  if (self->_backupDeviceUUID)
  {
    [v5 setBackupDeviceUUID:?];
    toCopy = v5;
  }

  if (self->_backupDeviceUDID)
  {
    [v5 setBackupDeviceUDID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_originalLibrarySize;
    *(toCopy + 56) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_mPSDeviceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_iCPLDeviceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_backupDeviceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_backupDeviceUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_backupDeviceUDID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    originalLibrarySize = self->_originalLibrarySize;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  mPSDeviceID = self->_mPSDeviceID;
  if (mPSDeviceID)
  {
    [dictionary setObject:mPSDeviceID forKey:@"MPSDeviceID"];
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
  dictionaryRepresentation = [(MPSStateRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end