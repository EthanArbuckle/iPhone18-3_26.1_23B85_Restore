@interface MBSBackup
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSnapshot:(id)snapshot;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasQuotaUsed:(BOOL)used;
- (void)writeTo:(id)to;
@end

@implementation MBSBackup

- (void)dealloc
{
  [(MBSBackup *)self setBackupUDID:0];
  [(MBSBackup *)self setSnapshots:0];
  [(MBSBackup *)self setAttributes:0];
  v3.receiver = self;
  v3.super_class = MBSBackup;
  [(MBSBackup *)&v3 dealloc];
}

- (void)setHasQuotaUsed:(BOOL)used
{
  if (used)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSnapshot:(id)snapshot
{
  snapshots = self->_snapshots;
  if (!snapshots)
  {
    snapshots = objc_alloc_init(NSMutableArray);
    self->_snapshots = snapshots;
  }

  [(NSMutableArray *)snapshots addObject:snapshot];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MBSBackup;
  return [NSString stringWithFormat:@"%@ %@", [(MBSBackup *)&v3 description], [(MBSBackup *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  backupUDID = self->_backupUDID;
  if (backupUDID)
  {
    [v3 setObject:backupUDID forKey:@"backupUDID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v4 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_quotaUsed), @"quotaUsed"}];
  }

  if ([(NSMutableArray *)self->_snapshots count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_snapshots, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    snapshots = self->_snapshots;
    v8 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(snapshots);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"snapshot"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [v4 setObject:-[MBSBackupAttributes dictionaryRepresentation](attributes forKey:{"dictionaryRepresentation"), @"attributes"}];
  }

  if (*&self->_has)
  {
    [v4 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_keysLastModified), @"keysLastModified"}];
  }

  return v4;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          [objc_msgSend(from "data")];
          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v32 & 0x7F) << v6;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v11 = v7++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3);
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          Data = PBReaderReadData();

          self->_backupUDID = Data;
          goto LABEL_59;
        }

        if (v13 == 2)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *&self->_has |= 2u;
          while (1)
          {
            LOBYTE(v32) = 0;
            v23 = [from position] + 1;
            if (v23 >= [from position] && (v24 = objc_msgSend(from, "position") + 1, v24 <= objc_msgSend(from, "length")))
            {
              [objc_msgSend(from "data")];
              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v22 |= (v32 & 0x7F) << v20;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_57;
            }
          }

          if ([from hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v22;
          }

LABEL_57:
          v29 = 16;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            v25 = objc_alloc_init(MBSSnapshot);
            [(MBSBackup *)self addSnapshot:v25];

            v32 = 0;
            v33 = 0;
            v26 = PBReaderPlaceMark();
            if (!v26)
            {
              return v26;
            }

            v26 = MBSSnapshotReadFrom(v25, from);
            if (!v26)
            {
              return v26;
            }

            goto LABEL_46;
          case 4u:
            v27 = objc_alloc_init(MBSBackupAttributes);

            self->_attributes = v27;
            v32 = 0;
            v33 = 0;
            v26 = PBReaderPlaceMark();
            if (!v26)
            {
              return v26;
            }

            v26 = MBSBackupAttributesReadFrom(v27, from);
            if (!v26)
            {
              return v26;
            }

LABEL_46:
            PBReaderRecallMark();
            goto LABEL_59;
          case 5u:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              LOBYTE(v32) = 0;
              v17 = [from position] + 1;
              if (v17 >= [from position] && (v18 = objc_msgSend(from, "position") + 1, v18 <= objc_msgSend(from, "length")))
              {
                [objc_msgSend(from "data")];
                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v16 |= (v32 & 0x7F) << v14;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v19 = 0;
                goto LABEL_53;
              }
            }

            if ([from hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v16;
            }

LABEL_53:
            v29 = 8;
LABEL_58:
            *&self->PBCodable_opaque[v29] = v19;
            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        LOBYTE(v26) = 0;
        return v26;
      }

LABEL_59:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v26) = [from hasError] ^ 1;
  return v26;
}

- (void)writeTo:(id)to
{
  if (self->_backupUDID)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    quotaUsed = self->_quotaUsed;
    PBDataWriterWriteUint64Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  snapshots = self->_snapshots;
  v6 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(snapshots);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    keysLastModified = self->_keysLastModified;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  if (self->_backupUDID)
  {
    [to setBackupUDID:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 2) = self->_quotaUsed;
    *(to + 48) |= 2u;
  }

  if ([(MBSBackup *)self snapshotsCount])
  {
    [to clearSnapshots];
    snapshotsCount = [(MBSBackup *)self snapshotsCount];
    if (snapshotsCount)
    {
      v6 = snapshotsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addSnapshot:{-[MBSBackup snapshotAtIndex:](self, "snapshotAtIndex:", i)}];
      }
    }
  }

  if (self->_attributes)
  {
    [to setAttributes:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_keysLastModified;
    *(to + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[4] = [(NSData *)self->_backupUDID copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_quotaUsed;
    *(v5 + 48) |= 2u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  snapshots = self->_snapshots;
  v7 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(snapshots);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) copyWithZone:zone];
        [v5 addSnapshot:v11];
      }

      v8 = [(NSMutableArray *)snapshots countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v5[3] = [(MBSBackupAttributes *)self->_attributes copyWithZone:zone];
  if (*&self->_has)
  {
    v5[1] = self->_keysLastModified;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    backupUDID = self->_backupUDID;
    if (!(backupUDID | *(equal + 4)) || (v5 = [(NSData *)backupUDID isEqual:?]) != 0)
    {
      v7 = *(equal + 48);
      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 48) & 2) == 0 || self->_quotaUsed != *(equal + 2))
        {
          goto LABEL_17;
        }
      }

      else if ((*(equal + 48) & 2) != 0)
      {
LABEL_17:
        LOBYTE(v5) = 0;
        return v5;
      }

      snapshots = self->_snapshots;
      if (!(snapshots | *(equal + 5)) || (v5 = [(NSMutableArray *)snapshots isEqual:?]) != 0)
      {
        attributes = self->_attributes;
        if (!(attributes | *(equal + 3)) || (v5 = [(MBSBackupAttributes *)attributes isEqual:?]) != 0)
        {
          LOBYTE(v5) = (*(equal + 48) & 1) == 0;
          if (*&self->_has)
          {
            if ((*(equal + 48) & 1) == 0 || self->_keysLastModified != *(equal + 1))
            {
              goto LABEL_17;
            }

            LOBYTE(v5) = 1;
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_backupUDID hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761u * self->_quotaUsed;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_snapshots hash];
  v6 = [(MBSBackupAttributes *)self->_attributes hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_keysLastModified;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 4))
  {
    [(MBSBackup *)self setBackupUDID:?];
  }

  if ((*(from + 48) & 2) != 0)
  {
    self->_quotaUsed = *(from + 2);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(from + 5);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MBSBackup *)self addSnapshot:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  attributes = self->_attributes;
  v11 = *(from + 3);
  if (attributes)
  {
    if (v11)
    {
      [(MBSBackupAttributes *)attributes mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(MBSBackup *)self setAttributes:?];
  }

  if (*(from + 48))
  {
    self->_keysLastModified = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end