@interface HDCodableNanoSyncChangeSet
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyForPersistentUserInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedSessionError;
- (id)decodedSessionStartDate;
- (id)decodedSessionUUID;
- (id)dictionaryRepresentation;
- (id)nanoSyncDescription;
- (int)StringAsStatusCode:(id)code;
- (int)statusCode;
- (unint64_t)hash;
- (void)addChanges:(id)changes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStatusCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNanoSyncChangeSet

- (id)copyForPersistentUserInfo
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HDCodableNanoSyncChangeSet);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  changes = [(HDCodableNanoSyncChangeSet *)self changes];
  v5 = [changes countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(changes);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = objc_alloc_init(HDCodableNanoSyncChange);
        v11 = v10;
        if ((*(v9 + 76) & 8) != 0)
        {
          [(HDCodableNanoSyncChange *)v10 setObjectType:*(v9 + 48)];
        }

        if ([v9 hasEntityIdentifier])
        {
          entityIdentifier = [v9 entityIdentifier];
          [(HDCodableNanoSyncChange *)v11 setEntityIdentifier:entityIdentifier];
        }

        v13 = *(v9 + 76);
        if ((v13 & 0x20) != 0)
        {
          [(HDCodableNanoSyncChange *)v11 setSpeculative:*(v9 + 73)];
          v13 = *(v9 + 76);
          if ((v13 & 4) == 0)
          {
LABEL_12:
            if ((v13 & 1) == 0)
            {
              goto LABEL_14;
            }

LABEL_13:
            [(HDCodableNanoSyncChange *)v11 setEndAnchor:*(v9 + 8)];
            goto LABEL_14;
          }
        }

        else if ((*(v9 + 76) & 4) == 0)
        {
          goto LABEL_12;
        }

        [(HDCodableNanoSyncChange *)v11 setStartAnchor:*(v9 + 24)];
        if (*(v9 + 76))
        {
          goto LABEL_13;
        }

LABEL_14:
        [(HDCodableNanoSyncChangeSet *)v3 addChanges:v11];

        ++v8;
      }

      while (v6 != v8);
      v14 = [changes countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = v14;
    }

    while (v14);
  }

  if ((*&selfCopy->_has & 2) != 0)
  {
    [(HDCodableNanoSyncChangeSet *)v3 setStatusCode:selfCopy->_statusCode];
  }

  [(HDCodableNanoSyncChangeSet *)v3 setSessionUUID:selfCopy->_sessionUUID];
  v15 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)nanoSyncDescription
{
  statusCode = self->_statusCode;
  switch(statusCode)
  {
    case 1:
      statusCode = @"Continue";
      goto LABEL_10;
    case 3:
      statusCode = @"Error";
LABEL_8:
      if ([(HDCodableNanoSyncChangeSet *)self hasSessionError])
      {
        sessionError = [(HDCodableNanoSyncChangeSet *)self sessionError];
        code = [sessionError code];
        sessionError2 = [(HDCodableNanoSyncChangeSet *)self sessionError];
        domain = [sessionError2 domain];
        sessionError3 = [(HDCodableNanoSyncChangeSet *)self sessionError];
        localizedDescription = [sessionError3 localizedDescription];
        v11 = [(__CFString *)statusCode stringByAppendingFormat:@":%lld, %@, %@", code, domain, localizedDescription];

        statusCode = v11;
      }

      goto LABEL_10;
    case 2:
      statusCode = @"Finished";
      goto LABEL_10;
  }

  statusCode = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", statusCode];
  if (self->_statusCode == 3)
  {
    goto LABEL_8;
  }

LABEL_10:
  v12 = MEMORY[0x277CCACA8];
  decodedSessionUUID = [(HDCodableNanoSyncChangeSet *)self decodedSessionUUID];
  uUIDString = [decodedSessionUUID UUIDString];
  changes = [(HDCodableNanoSyncChangeSet *)self changes];
  v16 = HDNanoSyncDescriptionWithArray(changes);
  v17 = [v12 stringWithFormat:@"session:%@ status:%@, changes:%@", uUIDString, statusCode, v16];

  return v17;
}

- (id)decodedSessionUUID
{
  if (self->_sessionUUID)
  {
    v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

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

- (id)decodedSessionStartDate
{
  if (*&self->_has)
  {
    sessionStartDate = self->_sessionStartDate;
    v3 = HDDecodeDateForValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decodedSessionError
{
  if (self->_sessionError)
  {
    v3 = [MEMORY[0x277CCA9B8] hk_errorWithCodableError:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addChanges:(id)changes
{
  changesCopy = changes;
  changes = self->_changes;
  v8 = changesCopy;
  if (!changes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_changes;
    self->_changes = v6;

    changesCopy = v8;
    changes = self->_changes;
  }

  [(NSMutableArray *)changes addObject:changesCopy];
}

- (void)setHasStatusCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsStatusCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"Continue"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"Finished"])
  {
    v4 = 2;
  }

  else if ([codeCopy isEqualToString:@"Error"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNanoSyncChangeSet;
  v4 = [(HDCodableNanoSyncChangeSet *)&v8 description];
  dictionaryRepresentation = [(HDCodableNanoSyncChangeSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_changes count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_changes, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_changes;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"changes"];
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [dictionary setObject:sessionUUID forKey:@"sessionUUID"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sessionStartDate];
    [dictionary setObject:v12 forKey:@"sessionStartDate"];
  }

  sessionError = self->_sessionError;
  if (sessionError)
  {
    dictionaryRepresentation2 = [(HDCodableError *)sessionError dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sessionError"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = self->_statusCode - 1;
    if (v15 >= 3)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_statusCode];
    }

    else
    {
      v16 = off_2786243A8[v15];
    }

    [dictionary setObject:v16 forKey:@"statusCode"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_changes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (self->_sessionUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    sessionStartDate = self->_sessionStartDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_sessionError)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    statusCode = self->_statusCode;
    PBDataWriterWriteInt32Field();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HDCodableNanoSyncChangeSet *)self changesCount])
  {
    [toCopy clearChanges];
    changesCount = [(HDCodableNanoSyncChangeSet *)self changesCount];
    if (changesCount)
    {
      v5 = changesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableNanoSyncChangeSet *)self changesAtIndex:i];
        [toCopy addChanges:v7];
      }
    }
  }

  if (self->_sessionUUID)
  {
    [toCopy setSessionUUID:?];
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_sessionStartDate;
    *(toCopy + 44) |= 1u;
  }

  if (self->_sessionError)
  {
    [toCopy setSessionError:?];
    v8 = toCopy;
  }

  if ((*&self->_has & 2) != 0)
  {
    v8[10] = self->_statusCode;
    *(v8 + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_changes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{zone, v18}];
        [v5 addChanges:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_sessionUUID copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_sessionStartDate;
    *(v5 + 44) |= 1u;
  }

  v14 = [(HDCodableError *)self->_sessionError copyWithZone:zone, v18];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_statusCode;
    *(v5 + 44) |= 2u;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  changes = self->_changes;
  if (changes | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)changes isEqual:?])
    {
      goto LABEL_18;
    }
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(equalCopy + 4))
  {
    if (![(NSData *)sessionUUID isEqual:?])
    {
      goto LABEL_18;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_sessionStartDate != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_18;
  }

  sessionError = self->_sessionError;
  if (sessionError | *(equalCopy + 3))
  {
    if (![(HDCodableError *)sessionError isEqual:?])
    {
LABEL_18:
      v10 = 0;
      goto LABEL_19;
    }

    has = self->_has;
    v8 = *(equalCopy + 44);
  }

  v10 = (v8 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_statusCode != *(equalCopy + 10))
    {
      goto LABEL_18;
    }

    v10 = 1;
  }

LABEL_19:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_changes hash];
  v4 = [(NSData *)self->_sessionUUID hash];
  if (*&self->_has)
  {
    sessionStartDate = self->_sessionStartDate;
    if (sessionStartDate < 0.0)
    {
      sessionStartDate = -sessionStartDate;
    }

    *v5.i64 = floor(sessionStartDate + 0.5);
    v9 = (sessionStartDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = [(HDCodableError *)self->_sessionError hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_statusCode;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCodableNanoSyncChangeSet *)self addChanges:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 4))
  {
    [(HDCodableNanoSyncChangeSet *)self setSessionUUID:?];
  }

  if (*(fromCopy + 44))
  {
    self->_sessionStartDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  sessionError = self->_sessionError;
  v11 = *(fromCopy + 3);
  if (sessionError)
  {
    if (v11)
    {
      [(HDCodableError *)sessionError mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(HDCodableNanoSyncChangeSet *)self setSessionError:?];
  }

  if ((*(fromCopy + 44) & 2) != 0)
  {
    self->_statusCode = *(fromCopy + 10);
    *&self->_has |= 2u;
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end