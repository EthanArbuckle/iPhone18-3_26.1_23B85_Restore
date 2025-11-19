@interface MTPBSyncMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTPBSyncMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBSyncMessage;
  v4 = [(MTPBSyncMessage *)&v8 description];
  v5 = [(MTPBSyncMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  snoozeAction = self->_snoozeAction;
  if (snoozeAction)
  {
    v5 = [(MTPBSnoozeAction *)snoozeAction dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"snoozeAction"];
  }

  dismissAction = self->_dismissAction;
  if (dismissAction)
  {
    v7 = [(MTPBDismissAction *)dismissAction dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"dismissAction"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_syncDate];
  [v3 setObject:v8 forKey:@"syncDate"];

  syncID = self->_syncID;
  if (syncID)
  {
    [v3 setObject:syncID forKey:@"syncID"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_syncVersion];
  [v3 setObject:v10 forKey:@"syncVersion"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_snoozeAction)
  {
    [v4 setSnoozeAction:?];
    v4 = v5;
  }

  if (self->_dismissAction)
  {
    [v5 setDismissAction:?];
    v4 = v5;
  }

  v4[1] = self->_syncDate;
  [v4 setSyncID:self->_syncID];
  v5[2] = self->_syncVersion;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTPBSnoozeAction *)self->_snoozeAction copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(MTPBDismissAction *)self->_dismissAction copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 8) = self->_syncDate;
  v10 = [(NSString *)self->_syncID copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 16) = self->_syncVersion;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = [v4 isMemberOfClass:objc_opt_class()] && ((snoozeAction = self->_snoozeAction, !(snoozeAction | *(v4 + 4))) || -[MTPBSnoozeAction isEqual:](snoozeAction, "isEqual:")) && ((dismissAction = self->_dismissAction, !(dismissAction | *(v4 + 3))) || -[MTPBDismissAction isEqual:](dismissAction, "isEqual:")) && self->_syncDate == *(v4 + 1) && ((syncID = self->_syncID, !(syncID | *(v4 + 5))) || -[NSString isEqual:](syncID, "isEqual:")) && self->_syncVersion == *(v4 + 2);

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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  snoozeAction = self->_snoozeAction;
  v6 = *(v4 + 4);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  dismissAction = self->_dismissAction;
  v8 = *(v4 + 3);
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

  v4 = v9;
LABEL_13:
  self->_syncDate = *(v4 + 1);
  if (*(v4 + 5))
  {
    dismissAction = [(MTPBSyncMessage *)self setSyncID:?];
    v4 = v9;
  }

  self->_syncVersion = *(v4 + 2);

  MEMORY[0x1EEE66BB8](dismissAction, v4);
}

@end