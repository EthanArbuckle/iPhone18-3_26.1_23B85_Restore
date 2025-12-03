@interface MTPBSyncMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTPBSyncMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBSyncMessage;
  v4 = [(MTPBSyncMessage *)&v8 description];
  dictionaryRepresentation = [(MTPBSyncMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  snoozeAction = self->_snoozeAction;
  if (snoozeAction)
  {
    dictionaryRepresentation = [(MTPBSnoozeAction *)snoozeAction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"snoozeAction"];
  }

  dismissAction = self->_dismissAction;
  if (dismissAction)
  {
    dictionaryRepresentation2 = [(MTPBDismissAction *)dismissAction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"dismissAction"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_syncDate];
  [dictionary setObject:v8 forKey:@"syncDate"];

  syncID = self->_syncID;
  if (syncID)
  {
    [dictionary setObject:syncID forKey:@"syncID"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_syncVersion];
  [dictionary setObject:v10 forKey:@"syncVersion"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_snoozeAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dismissAction)
  {
    PBDataWriterWriteSubmessage();
  }

  syncDate = self->_syncDate;
  PBDataWriterWriteDoubleField();
  syncID = self->_syncID;
  PBDataWriterWriteStringField();
  syncVersion = self->_syncVersion;
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_snoozeAction)
  {
    [toCopy setSnoozeAction:?];
    toCopy = v5;
  }

  if (self->_dismissAction)
  {
    [v5 setDismissAction:?];
    toCopy = v5;
  }

  toCopy[1] = self->_syncDate;
  [toCopy setSyncID:self->_syncID];
  v5[2] = self->_syncVersion;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTPBSnoozeAction *)self->_snoozeAction copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(MTPBDismissAction *)self->_dismissAction copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 8) = self->_syncDate;
  v10 = [(NSString *)self->_syncID copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 16) = self->_syncVersion;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = [equalCopy isMemberOfClass:objc_opt_class()] && ((snoozeAction = self->_snoozeAction, !(snoozeAction | *(equalCopy + 4))) || -[MTPBSnoozeAction isEqual:](snoozeAction, "isEqual:")) && ((dismissAction = self->_dismissAction, !(dismissAction | *(equalCopy + 3))) || -[MTPBDismissAction isEqual:](dismissAction, "isEqual:")) && self->_syncDate == *(equalCopy + 1) && ((syncID = self->_syncID, !(syncID | *(equalCopy + 5))) || -[NSString isEqual:](syncID, "isEqual:")) && self->_syncVersion == *(equalCopy + 2);

  return v8;
}

- (unint64_t)hash
{
  v3 = [(MTPBSnoozeAction *)self->_snoozeAction hash];
  v4 = [(MTPBDismissAction *)self->_dismissAction hash];
  syncDate = self->_syncDate;
  if (syncDate < 0.0)
  {
    syncDate = -syncDate;
  }

  *v5.i64 = floor(syncDate + 0.5);
  v8 = (syncDate - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v23 = vnegq_f64(v9);
  v5.i64[0] = vbslq_s8(v23, v6, v5).i64[0];
  v10 = 2654435761u * *v5.i64;
  v11 = v10 + v8;
  if (v8 <= 0.0)
  {
    v11 = 2654435761u * *v5.i64;
  }

  v12 = v10 - fabs(v8);
  if (v8 < 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = [(NSString *)self->_syncID hash];
  syncVersion = self->_syncVersion;
  if (syncVersion < 0.0)
  {
    syncVersion = -syncVersion;
  }

  *v15.i64 = floor(syncVersion + 0.5);
  v18 = (syncVersion - *v15.i64) * 1.84467441e19;
  *v16.i64 = *v15.i64 - trunc(*v15.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.i64[0] = vbslq_s8(v24, v16, v15).i64[0];
  v19 = 2654435761u * *v15.i64;
  v20 = v19 + v18;
  if (v18 <= 0.0)
  {
    v20 = 2654435761u * *v15.i64;
  }

  v21 = v19 - fabs(v18);
  if (v18 >= 0.0)
  {
    v21 = v20;
  }

  return v4 ^ v3 ^ v14 ^ v13 ^ v21;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  snoozeAction = self->_snoozeAction;
  v6 = *(fromCopy + 4);
  v9 = fromCopy;
  if (snoozeAction)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTPBSnoozeAction *)snoozeAction mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTPBSyncMessage *)self setSnoozeAction:?];
  }

  fromCopy = v9;
LABEL_7:
  dismissAction = self->_dismissAction;
  v8 = *(fromCopy + 3);
  if (dismissAction)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    dismissAction = [(MTPBDismissAction *)dismissAction mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    dismissAction = [(MTPBSyncMessage *)self setDismissAction:?];
  }

  fromCopy = v9;
LABEL_13:
  self->_syncDate = *(fromCopy + 1);
  if (*(fromCopy + 5))
  {
    dismissAction = [(MTPBSyncMessage *)self setSyncID:?];
    fromCopy = v9;
  }

  self->_syncVersion = *(fromCopy + 2);

  MEMORY[0x1EEE66BB8](dismissAction, fromCopy);
}

@end