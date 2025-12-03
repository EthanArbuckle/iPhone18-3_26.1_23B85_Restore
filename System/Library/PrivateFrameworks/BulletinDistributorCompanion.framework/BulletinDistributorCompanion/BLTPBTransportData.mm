@interface BLTPBTransportData
+ (id)transportDataWithSequenceNumberManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sessionUUID;
- (int64_t)setSequenceNumberOnManager:(id)manager;
- (unint64_t)backwardsCompatibleSessionState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsInitialSequenceNumber:(BOOL)number;
- (void)setHasSessionState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation BLTPBTransportData

+ (id)transportDataWithSequenceNumberManager:(id)manager
{
  v19[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  nextSendSequenceNumber = [managerCopy nextSendSequenceNumber];
  if (nextSendSequenceNumber)
  {
    v5 = objc_alloc_init(BLTPBTransportData);
    -[BLTPBTransportData setSequenceNumber:](v5, "setSequenceNumber:", [nextSendSequenceNumber unsignedLongLongValue]);
    sessionState = [managerCopy sessionState];
    if (sessionState)
    {
      v7 = sessionState;
      [(BLTPBTransportData *)v5 setSessionState:sessionState];
      if (v7 == 1)
      {
        [(BLTPBTransportData *)v5 setIsInitialSequenceNumber:1];
      }
    }

    v19[0] = 0;
    v19[1] = 0;
    currentSessionIdentifier = [managerCopy currentSessionIdentifier];
    [currentSessionIdentifier getUUIDBytes:v19];

    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:16];
    [(BLTPBTransportData *)v5 setSessionIdentifier:v9];
  }

  else
  {
    v10 = blt_ids_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BLTPBTransportData(SequenceNumberManager) *)managerCopy transportDataWithSequenceNumberManager:v10, v11, v12, v13, v14, v15, v16];
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
    sessionIdentifier = [(BLTPBTransportData *)self sessionIdentifier];
    v5 = [v3 initWithUUIDBytes:{objc_msgSend(sessionIdentifier, "bytes")}];
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

- (int64_t)setSequenceNumberOnManager:(id)manager
{
  managerCopy = manager;
  sequenceNumber = [(BLTPBTransportData *)self sequenceNumber];
  sessionUUID = [(BLTPBTransportData *)self sessionUUID];
  v7 = [managerCopy setRecvSequenceNumber:sequenceNumber recvSessionIdentifier:sessionUUID force:{-[BLTPBTransportData backwardsCompatibleSessionState](self, "backwardsCompatibleSessionState") == 1}];

  return v7;
}

- (void)setHasIsInitialSequenceNumber:(BOOL)number
{
  if (number)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionState:(BOOL)state
{
  if (state)
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
  dictionaryRepresentation = [(BLTPBTransportData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sequenceNumber];
    [dictionary setObject:v5 forKey:@"sequenceNumber"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInitialSequenceNumber];
    [dictionary setObject:v6 forKey:@"isInitialSequenceNumber"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [dictionary setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sessionState];
    [dictionary setObject:v8 forKey:@"sessionState"];
  }

  md5 = self->_md5;
  if (md5)
  {
    [dictionary setObject:md5 forKey:@"md5"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isInitialSequenceNumber = self->_isInitialSequenceNumber;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    sessionState = self->_sessionState;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

  if (self->_md5)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_sequenceNumber;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 36) = self->_isInitialSequenceNumber;
    *(toCopy + 40) |= 4u;
  }

  v6 = toCopy;
  if (self->_sessionIdentifier)
  {
    [toCopy setSessionIdentifier:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 8) = self->_sessionState;
    *(toCopy + 40) |= 2u;
  }

  if (self->_md5)
  {
    [v6 setMd5:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_sessionIdentifier copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 32) = self->_sessionState;
    *(v6 + 40) |= 2u;
  }

  v10 = [(NSData *)self->_md5 copyWithZone:zone];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_sequenceNumber != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0)
    {
      goto LABEL_24;
    }

    v9 = *(equalCopy + 36);
    if (self->_isInitialSequenceNumber)
    {
      if ((*(equalCopy + 36) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(equalCopy + 36))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (!(sessionIdentifier | *(equalCopy + 3)))
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
  v8 = *(equalCopy + 40);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_sessionState != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  md5 = self->_md5;
  if (md5 | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_sequenceNumber = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_isInitialSequenceNumber = *(fromCopy + 36);
    *&self->_has |= 4u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BLTPBTransportData *)self setSessionIdentifier:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 40) & 2) != 0)
  {
    self->_sessionState = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(BLTPBTransportData *)self setMd5:?];
    fromCopy = v6;
  }
}

@end