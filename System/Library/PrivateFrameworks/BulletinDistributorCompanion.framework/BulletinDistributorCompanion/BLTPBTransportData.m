@interface BLTPBTransportData
+ (id)transportDataWithSequenceNumberManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sessionUUID;
- (int64_t)setSequenceNumberOnManager:(id)a3;
- (unint64_t)backwardsCompatibleSessionState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsInitialSequenceNumber:(BOOL)a3;
- (void)setHasSessionState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBTransportData

+ (id)transportDataWithSequenceNumberManager:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 nextSendSequenceNumber];
  if (v4)
  {
    v5 = objc_alloc_init(BLTPBTransportData);
    -[BLTPBTransportData setSequenceNumber:](v5, "setSequenceNumber:", [v4 unsignedLongLongValue]);
    v6 = [v3 sessionState];
    if (v6)
    {
      v7 = v6;
      [(BLTPBTransportData *)v5 setSessionState:v6];
      if (v7 == 1)
      {
        [(BLTPBTransportData *)v5 setIsInitialSequenceNumber:1];
      }
    }

    v19[0] = 0;
    v19[1] = 0;
    v8 = [v3 currentSessionIdentifier];
    [v8 getUUIDBytes:v19];

    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:16];
    [(BLTPBTransportData *)v5 setSessionIdentifier:v9];
  }

  else
  {
    v10 = blt_ids_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BLTPBTransportData(SequenceNumberManager) *)v3 transportDataWithSequenceNumberManager:v10, v11, v12, v13, v14, v15, v16];
    }

    v5 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)sessionUUID
{
  if ([(BLTPBTransportData *)self hasSessionIdentifier])
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [(BLTPBTransportData *)self sessionIdentifier];
    v5 = [v3 initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)backwardsCompatibleSessionState
{
  if ([(BLTPBTransportData *)self hasSessionState])
  {
    LODWORD(result) = [(BLTPBTransportData *)self sessionState];
    return result;
  }

  if ([(BLTPBTransportData *)self hasIsInitialSequenceNumber])
  {
    LODWORD(result) = [(BLTPBTransportData *)self isInitialSequenceNumber];
    return result;
  }

  return 0;
}

- (int64_t)setSequenceNumberOnManager:(id)a3
{
  v4 = a3;
  v5 = [(BLTPBTransportData *)self sequenceNumber];
  v6 = [(BLTPBTransportData *)self sessionUUID];
  v7 = [v4 setRecvSequenceNumber:v5 recvSessionIdentifier:v6 force:{-[BLTPBTransportData backwardsCompatibleSessionState](self, "backwardsCompatibleSessionState") == 1}];

  return v7;
}

- (void)setHasIsInitialSequenceNumber:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionState:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBTransportData;
  v4 = [(BLTPBTransportData *)&v8 description];
  v5 = [(BLTPBTransportData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sequenceNumber];
    [v3 setObject:v5 forKey:@"sequenceNumber"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInitialSequenceNumber];
    [v3 setObject:v6 forKey:@"isInitialSequenceNumber"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v3 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sessionState];
    [v3 setObject:v8 forKey:@"sessionState"];
  }

  md5 = self->_md5;
  if (md5)
  {
    [v3 setObject:md5 forKey:@"md5"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isInitialSequenceNumber = self->_isInitialSequenceNumber;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    sessionState = self->_sessionState;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  if (self->_md5)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_sequenceNumber;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 36) = self->_isInitialSequenceNumber;
    *(v4 + 40) |= 4u;
  }

  v6 = v4;
  if (self->_sessionIdentifier)
  {
    [v4 setSessionIdentifier:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 8) = self->_sessionState;
    *(v4 + 40) |= 2u;
  }

  if (self->_md5)
  {
    [v6 setMd5:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_sequenceNumber;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 36) = self->_isInitialSequenceNumber;
    *(v5 + 40) |= 4u;
  }

  v8 = [(NSData *)self->_sessionIdentifier copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 32) = self->_sessionState;
    *(v6 + 40) |= 2u;
  }

  v10 = [(NSData *)self->_md5 copyWithZone:a3];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_sequenceNumber != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0)
    {
      goto LABEL_24;
    }

    v9 = *(v4 + 36);
    if (self->_isInitialSequenceNumber)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (!(sessionIdentifier | *(v4 + 3)))
  {
    goto LABEL_12;
  }

  if (![(NSData *)sessionIdentifier isEqual:?])
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  has = self->_has;
LABEL_12:
  v8 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_sessionState != *(v4 + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  md5 = self->_md5;
  if (md5 | *(v4 + 2))
  {
    v11 = [(NSData *)md5 isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_25:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_sequenceNumber;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isInitialSequenceNumber;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_sessionIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_sessionState;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ [(NSData *)self->_md5 hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_sequenceNumber = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_isInitialSequenceNumber = *(v4 + 36);
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 3))
  {
    [(BLTPBTransportData *)self setSessionIdentifier:?];
    v4 = v6;
  }

  if ((*(v4 + 40) & 2) != 0)
  {
    self->_sessionState = *(v4 + 8);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    [(BLTPBTransportData *)self setMd5:?];
    v4 = v6;
  }
}

@end