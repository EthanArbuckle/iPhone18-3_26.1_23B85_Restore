@interface _MRUpdateActiveSystemEndpointRequestProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)a3;
- (int)changeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasChangeType:(BOOL)a3;
- (void)setHasDemoteWhenSyncingToCompanion:(BOOL)a3;
- (void)setHasPairedDeviceSync:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRUpdateActiveSystemEndpointRequestProtobuf

- (int)changeType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_changeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasChangeType:(BOOL)a3
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

- (int)StringAsChangeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Immediate"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Deferrable"];
  }

  return v4;
}

- (void)setHasPairedDeviceSync:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasType:(BOOL)a3
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

- (void)setHasDemoteWhenSyncingToCompanion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRUpdateActiveSystemEndpointRequestProtobuf;
  v4 = [(_MRUpdateActiveSystemEndpointRequestProtobuf *)&v8 description];
  v5 = [(_MRUpdateActiveSystemEndpointRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v3 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    changeType = self->_changeType;
    if (changeType)
    {
      if (changeType == 1)
      {
        v7 = @"Deferrable";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_changeType];
      }
    }

    else
    {
      v7 = @"Immediate";
    }

    [v4 setObject:v7 forKey:@"changeType"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v4 setObject:reason forKey:@"reason"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_pairedDeviceSync];
    [v4 setObject:v13 forKey:@"pairedDeviceSync"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_14:
      if ((has & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_type];
  [v4 setObject:v14 forKey:@"type"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_disableDuration];
  [v4 setObject:v15 forKey:@"disableDuration"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_demoteWhenSyncingToCompanion];
    [v4 setObject:v10 forKey:@"demoteWhenSyncingToCompanion"];
  }

LABEL_17:
  previousOutputDeviceUID = self->_previousOutputDeviceUID;
  if (previousOutputDeviceUID)
  {
    [v4 setObject:previousOutputDeviceUID forKey:@"previousOutputDeviceUID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    v4 = v11;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    pairedDeviceSync = self->_pairedDeviceSync;
    PBDataWriterWriteBOOLField();
    v4 = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  type = self->_type;
  PBDataWriterWriteUint64Field();
  v4 = v11;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  disableDuration = self->_disableDuration;
  PBDataWriterWriteDoubleField();
  v4 = v11;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    demoteWhenSyncingToCompanion = self->_demoteWhenSyncingToCompanion;
    PBDataWriterWriteBOOLField();
    v4 = v11;
  }

LABEL_12:
  if (self->_previousOutputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_outputDeviceUID)
  {
    [v4 setOutputDeviceUID:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 6) = self->_changeType;
    *(v4 + 60) |= 4u;
  }

  if (self->_reason)
  {
    [v6 setReason:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 57) = self->_pairedDeviceSync;
    *(v4 + 60) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 2) = self->_type;
  *(v4 + 60) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  *(v4 + 1) = *&self->_disableDuration;
  *(v4 + 60) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(v4 + 56) = self->_demoteWhenSyncingToCompanion;
    *(v4 + 60) |= 8u;
  }

LABEL_12:
  if (self->_previousOutputDeviceUID)
  {
    [v6 setPreviousOutputDeviceUID:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_changeType;
    *(v5 + 60) |= 4u;
  }

  v8 = [(NSString *)self->_reason copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 57) = self->_pairedDeviceSync;
    *(v5 + 60) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v5 + 8) = self->_disableDuration;
      *(v5 + 60) |= 1u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 16) = self->_type;
  *(v5 + 60) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v5 + 56) = self->_demoteWhenSyncingToCompanion;
    *(v5 + 60) |= 8u;
  }

LABEL_8:
  v11 = [(NSString *)self->_previousOutputDeviceUID copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID | *(v4 + 4))
  {
    if (![(NSString *)outputDeviceUID isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v7 = *(v4 + 60);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_changeType != *(v4 + 6))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_35;
  }

  reason = self->_reason;
  if (reason | *(v4 + 6))
  {
    if (![(NSString *)reason isEqual:?])
    {
      goto LABEL_35;
    }

    has = self->_has;
  }

  v9 = *(v4 + 60);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 60) & 0x10) == 0)
    {
      goto LABEL_35;
    }

    v10 = *(v4 + 57);
    if (self->_pairedDeviceSync)
    {
      if ((*(v4 + 57) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 57))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 60) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_type != *(v4 + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_35;
  }

  if (has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_disableDuration != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_35;
  }

  if ((has & 8) == 0)
  {
    if ((*(v4 + 60) & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    v12 = 0;
    goto LABEL_36;
  }

  if ((*(v4 + 60) & 8) == 0)
  {
    goto LABEL_35;
  }

  v14 = *(v4 + 56);
  if (self->_demoteWhenSyncingToCompanion)
  {
    if ((*(v4 + 56) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_35;
  }

LABEL_32:
  previousOutputDeviceUID = self->_previousOutputDeviceUID;
  if (previousOutputDeviceUID | *(v4 + 5))
  {
    v12 = [(NSString *)previousOutputDeviceUID isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_36:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_outputDeviceUID hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_changeType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_reason hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v8 = 2654435761 * self->_pairedDeviceSync;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 2654435761u * self->_type;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  disableDuration = self->_disableDuration;
  if (disableDuration < 0.0)
  {
    disableDuration = -disableDuration;
  }

  *v6.i64 = floor(disableDuration + 0.5);
  v11 = (disableDuration - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_14:
  if ((*&self->_has & 8) != 0)
  {
    v14 = 2654435761 * self->_demoteWhenSyncingToCompanion;
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v13 ^ v14 ^ [(NSString *)self->_previousOutputDeviceUID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(_MRUpdateActiveSystemEndpointRequestProtobuf *)self setOutputDeviceUID:?];
    v4 = v6;
  }

  if ((*(v4 + 60) & 4) != 0)
  {
    self->_changeType = *(v4 + 6);
    *&self->_has |= 4u;
  }

  if (*(v4 + 6))
  {
    [(_MRUpdateActiveSystemEndpointRequestProtobuf *)self setReason:?];
    v4 = v6;
  }

  v5 = *(v4 + 60);
  if ((v5 & 0x10) != 0)
  {
    self->_pairedDeviceSync = *(v4 + 57);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 60) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_type = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  self->_disableDuration = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 60) & 8) != 0)
  {
LABEL_11:
    self->_demoteWhenSyncingToCompanion = *(v4 + 56);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(v4 + 5))
  {
    [(_MRUpdateActiveSystemEndpointRequestProtobuf *)self setPreviousOutputDeviceUID:?];
    v4 = v6;
  }
}

@end