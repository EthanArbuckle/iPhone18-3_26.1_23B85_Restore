@interface HDCodableNanoSyncActivationRestore
- (BOOL)hasRequiredFields;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyForPersistentUserInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedRestoreUUID;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (int)StringAsStatusCode:(id)a3;
- (int)statusCode;
- (unint64_t)hash;
- (void)addObliteratedHealthPairingUUIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)encodeObliteratedHealthPairingUUIDs:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStatusCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableNanoSyncActivationRestore

- (int)statusCode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_statusCode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasStatusCode:(BOOL)a3
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

- (int)StringAsStatusCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Continue"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Finished"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Abort"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addObliteratedHealthPairingUUIDs:(id)a3
{
  v4 = a3;
  obliteratedHealthPairingUUIDs = self->_obliteratedHealthPairingUUIDs;
  v8 = v4;
  if (!obliteratedHealthPairingUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_obliteratedHealthPairingUUIDs;
    self->_obliteratedHealthPairingUUIDs = v6;

    v4 = v8;
    obliteratedHealthPairingUUIDs = self->_obliteratedHealthPairingUUIDs;
  }

  [(NSMutableArray *)obliteratedHealthPairingUUIDs addObject:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNanoSyncActivationRestore;
  v4 = [(HDCodableNanoSyncActivationRestore *)&v8 description];
  v5 = [(HDCodableNanoSyncActivationRestore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  restoreIdentifier = self->_restoreIdentifier;
  if (restoreIdentifier)
  {
    [v3 setObject:restoreIdentifier forKey:@"restoreIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sequenceNumber];
    [v4 setObject:v7 forKey:@"sequenceNumber"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = self->_statusCode - 1;
    if (v8 >= 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_statusCode];
    }

    else
    {
      v9 = off_278615820[v8];
    }

    [v4 setObject:v9 forKey:@"statusCode"];
  }

  defaultSourceBundleIdentifier = self->_defaultSourceBundleIdentifier;
  if (defaultSourceBundleIdentifier)
  {
    [v4 setObject:defaultSourceBundleIdentifier forKey:@"defaultSourceBundleIdentifier"];
  }

  obliteratedHealthPairingUUIDs = self->_obliteratedHealthPairingUUIDs;
  if (obliteratedHealthPairingUUIDs)
  {
    [v4 setObject:obliteratedHealthPairingUUIDs forKey:@"obliteratedHealthPairingUUIDs"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_restoreIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    statusCode = self->_statusCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_defaultSourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_obliteratedHealthPairingUUIDs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_restoreIdentifier)
  {
    [v4 setRestoreIdentifier:?];
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_sequenceNumber;
    *(v4 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 10) = self->_statusCode;
    *(v4 + 44) |= 2u;
  }

  if (self->_defaultSourceBundleIdentifier)
  {
    [v10 setDefaultSourceBundleIdentifier:?];
  }

  if ([(HDCodableNanoSyncActivationRestore *)self obliteratedHealthPairingUUIDsCount])
  {
    [v10 clearObliteratedHealthPairingUUIDs];
    v6 = [(HDCodableNanoSyncActivationRestore *)self obliteratedHealthPairingUUIDsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableNanoSyncActivationRestore *)self obliteratedHealthPairingUUIDsAtIndex:i];
        [v10 addObliteratedHealthPairingUUIDs:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_restoreIdentifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_sequenceNumber;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_statusCode;
    *(v5 + 44) |= 2u;
  }

  v9 = [(NSString *)self->_defaultSourceBundleIdentifier copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_obliteratedHealthPairingUUIDs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v5 addObliteratedHealthPairingUUIDs:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  restoreIdentifier = self->_restoreIdentifier;
  if (restoreIdentifier | *(v4 + 4))
  {
    if (![(NSData *)restoreIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_sequenceNumber != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_statusCode != *(v4 + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_18;
  }

  defaultSourceBundleIdentifier = self->_defaultSourceBundleIdentifier;
  if (defaultSourceBundleIdentifier | *(v4 + 2) && ![(NSString *)defaultSourceBundleIdentifier isEqual:?])
  {
    goto LABEL_18;
  }

  obliteratedHealthPairingUUIDs = self->_obliteratedHealthPairingUUIDs;
  if (obliteratedHealthPairingUUIDs | *(v4 + 3))
  {
    v9 = [(NSMutableArray *)obliteratedHealthPairingUUIDs isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_restoreIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_sequenceNumber;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_statusCode;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_defaultSourceBundleIdentifier hash];
  return v6 ^ [(NSMutableArray *)self->_obliteratedHealthPairingUUIDs hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(HDCodableNanoSyncActivationRestore *)self setRestoreIdentifier:?];
  }

  v5 = *(v4 + 44);
  if (v5)
  {
    self->_sequenceNumber = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_statusCode = *(v4 + 10);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    [(HDCodableNanoSyncActivationRestore *)self setDefaultSourceBundleIdentifier:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 3);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableNanoSyncActivationRestore *)self addObliteratedHealthPairingUUIDs:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasRequiredFields
{
  if (![(HDCodableNanoSyncActivationRestore *)self hasRestoreIdentifier]|| ![(HDCodableNanoSyncActivationRestore *)self hasSequenceNumber])
  {
    return 0;
  }

  return [(HDCodableNanoSyncActivationRestore *)self hasStatusCode];
}

- (id)decodedRestoreUUID
{
  if (self->_restoreIdentifier)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeObliteratedHealthPairingUUIDs:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HDCodableNanoSyncActivationRestore *)self clearObliteratedHealthPairingUUIDs];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) hk_dataForUUIDBytes];
        [(HDCodableNanoSyncActivationRestore *)self addObliteratedHealthPairingUUIDs:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)nanoSyncDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDCodableNanoSyncActivationRestore *)self decodedRestoreUUID];
  v5 = [v4 UUIDString];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sequenceNumber];
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v8 = self->_statusCode - 1;
      if (v8 >= 3)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_statusCode];
      }

      else
      {
        v9 = off_278623118[v8];
      }

      v10 = [v3 stringWithFormat:@"restore-id:%@ seq:%@ status:%@", v5, v7, v9, 0];

      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = @"(null)";
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v10 = [v3 stringWithFormat:@"restore-id:%@ seq:%@ status:%@", v5, v7, @"(null)", 0];
  if (has)
  {
LABEL_10:
  }

LABEL_11:

  return v10;
}

- (id)copyForPersistentUserInfo
{
  v3 = objc_alloc_init(HDCodableNanoSyncActivationRestore);
  [(HDCodableNanoSyncActivationRestore *)v3 setRestoreIdentifier:self->_restoreIdentifier];
  has = self->_has;
  if (has)
  {
    [(HDCodableNanoSyncActivationRestore *)v3 setSequenceNumber:self->_sequenceNumber];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [(HDCodableNanoSyncActivationRestore *)v3 setStatusCode:self->_statusCode];
  }

  return v3;
}

@end