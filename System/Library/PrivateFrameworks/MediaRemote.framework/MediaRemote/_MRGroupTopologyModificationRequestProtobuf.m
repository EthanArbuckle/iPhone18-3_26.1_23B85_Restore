@interface _MRGroupTopologyModificationRequestProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)addOutputDeviceUIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFadeAudio:(BOOL)a3;
- (void)setHasMuteUntilFinished:(BOOL)a3;
- (void)setHasShouldClearPredictedRoutes:(BOOL)a3;
- (void)setHasShouldModifyPredictedRoutes:(BOOL)a3;
- (void)setHasShouldNotPauseIfLastDeviceRemoved:(BOOL)a3;
- (void)setHasShouldWaitForUpdatedOutputDevices:(BOOL)a3;
- (void)setHasSuppressErrorDialog:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupTopologyModificationRequestProtobuf

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Add"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Remove"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Set"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addOutputDeviceUIDs:(id)a3
{
  v4 = a3;
  outputDeviceUIDs = self->_outputDeviceUIDs;
  v8 = v4;
  if (!outputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_outputDeviceUIDs;
    self->_outputDeviceUIDs = v6;

    v4 = v8;
    outputDeviceUIDs = self->_outputDeviceUIDs;
  }

  [(NSMutableArray *)outputDeviceUIDs addObject:v4];
}

- (void)setHasFadeAudio:(BOOL)a3
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

- (void)setHasSuppressErrorDialog:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasShouldNotPauseIfLastDeviceRemoved:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMuteUntilFinished:(BOOL)a3
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

- (void)setHasShouldModifyPredictedRoutes:(BOOL)a3
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

- (void)setHasShouldClearPredictedRoutes:(BOOL)a3
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

- (void)setHasShouldWaitForUpdatedOutputDevices:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupTopologyModificationRequestProtobuf;
  v4 = [(_MRGroupTopologyModificationRequestProtobuf *)&v8 description];
  v5 = [(_MRGroupTopologyModificationRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  details = self->_details;
  if (details)
  {
    v5 = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"details"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v7 = off_1E76A17E0[type];
    }

    [v3 setObject:v7 forKey:@"type"];
  }

  outputDeviceUIDs = self->_outputDeviceUIDs;
  if (outputDeviceUIDs)
  {
    [v3 setObject:outputDeviceUIDs forKey:@"outputDeviceUIDs"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_fadeAudio];
    [v3 setObject:v9 forKey:@"fadeAudio"];
  }

  password = self->_password;
  if (password)
  {
    [v3 setObject:password forKey:@"password"];
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_suppressErrorDialog];
  [v3 setObject:v18 forKey:@"suppressErrorDialog"];

  *&has = self->_has;
  if ((*&has & 0x20) != 0)
  {
LABEL_16:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldNotPauseIfLastDeviceRemoved];
    [v3 setObject:v12 forKey:@"shouldNotPauseIfLastDeviceRemoved"];

    *&has = self->_has;
  }

LABEL_17:
  if ((*&has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_muteUntilFinished];
    [v3 setObject:v15 forKey:@"muteUntilFinished"];

    *&has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_19:
      if ((*&has & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_19;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldModifyPredictedRoutes];
  [v3 setObject:v16 forKey:@"shouldModifyPredictedRoutes"];

  *&has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_27:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldClearPredictedRoutes];
  [v3 setObject:v17 forKey:@"shouldClearPredictedRoutes"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_21:
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldWaitForUpdatedOutputDevices];
    [v3 setObject:v13 forKey:@"shouldWaitForUpdatedOutputDevices"];
  }

LABEL_22:

  return v3;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_outputDeviceUIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    fadeAudio = self->_fadeAudio;
    PBDataWriterWriteBOOLField();
  }

  if (self->_password)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  suppressErrorDialog = self->_suppressErrorDialog;
  PBDataWriterWriteBOOLField();
  *&has = self->_has;
  if ((*&has & 0x20) != 0)
  {
LABEL_18:
    shouldNotPauseIfLastDeviceRemoved = self->_shouldNotPauseIfLastDeviceRemoved;
    PBDataWriterWriteBOOLField();
    *&has = self->_has;
  }

LABEL_19:
  if ((*&has & 4) != 0)
  {
    muteUntilFinished = self->_muteUntilFinished;
    PBDataWriterWriteBOOLField();
    *&has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_21:
      if ((*&has & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_27:
      shouldClearPredictedRoutes = self->_shouldClearPredictedRoutes;
      PBDataWriterWriteBOOLField();
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_21;
  }

  shouldModifyPredictedRoutes = self->_shouldModifyPredictedRoutes;
  PBDataWriterWriteBOOLField();
  *&has = self->_has;
  if ((*&has & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((*&has & 0x40) != 0)
  {
LABEL_23:
    shouldWaitForUpdatedOutputDevices = self->_shouldWaitForUpdatedOutputDevices;
    PBDataWriterWriteBOOLField();
  }

LABEL_24:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_details)
  {
    [v4 setDetails:?];
    v4 = v11;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_type;
    v4[44] |= 1u;
  }

  if ([(_MRGroupTopologyModificationRequestProtobuf *)self outputDeviceUIDsCount])
  {
    [v11 clearOutputDeviceUIDs];
    v5 = [(_MRGroupTopologyModificationRequestProtobuf *)self outputDeviceUIDsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRGroupTopologyModificationRequestProtobuf *)self outputDeviceUIDsAtIndex:i];
        [v11 addOutputDeviceUIDs:v8];
      }
    }
  }

  v9 = v11;
  if ((*&self->_has & 2) != 0)
  {
    v11[36] = self->_fadeAudio;
    v11[44] |= 2u;
  }

  if (self->_password)
  {
    [v11 setPassword:?];
    v9 = v11;
  }

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v9[42] = self->_suppressErrorDialog;
  v9[44] |= 0x80u;
  *&has = self->_has;
  if ((*&has & 0x20) != 0)
  {
LABEL_15:
    v9[40] = self->_shouldNotPauseIfLastDeviceRemoved;
    v9[44] |= 0x20u;
    *&has = self->_has;
  }

LABEL_16:
  if ((*&has & 4) != 0)
  {
    v9[37] = self->_muteUntilFinished;
    v9[44] |= 4u;
    *&has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_18:
      if ((*&has & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_18;
  }

  v9[39] = self->_shouldModifyPredictedRoutes;
  v9[44] |= 0x10u;
  *&has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_19:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_26:
  v9[38] = self->_shouldClearPredictedRoutes;
  v9[44] |= 8u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_20:
    v9[41] = self->_shouldWaitForUpdatedOutputDevices;
    v9[44] |= 0x40u;
  }

LABEL_21:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 44) |= 1u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_outputDeviceUIDs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v5 addOutputDeviceUIDs:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 36) = self->_fadeAudio;
    *(v5 + 44) |= 2u;
  }

  v14 = [(NSString *)self->_password copyWithZone:a3, v19];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *(v5 + 42) = self->_suppressErrorDialog;
  *(v5 + 44) |= 0x80u;
  *&has = self->_has;
  if ((*&has & 0x20) != 0)
  {
LABEL_14:
    *(v5 + 40) = self->_shouldNotPauseIfLastDeviceRemoved;
    *(v5 + 44) |= 0x20u;
    *&has = self->_has;
  }

LABEL_15:
  if ((*&has & 4) != 0)
  {
    *(v5 + 37) = self->_muteUntilFinished;
    *(v5 + 44) |= 4u;
    *&has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_17:
      if ((*&has & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      *(v5 + 38) = self->_shouldClearPredictedRoutes;
      *(v5 + 44) |= 8u;
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 39) = self->_shouldModifyPredictedRoutes;
  *(v5 + 44) |= 0x10u;
  *&has = self->_has;
  if ((*&has & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if ((*&has & 0x40) != 0)
  {
LABEL_19:
    *(v5 + 41) = self->_shouldWaitForUpdatedOutputDevices;
    *(v5 + 44) |= 0x40u;
  }

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_69;
  }

  details = self->_details;
  if (details | *(v4 + 1))
  {
    if (![(_MRRequestDetailsProtobuf *)details isEqual:?])
    {
      goto LABEL_69;
    }
  }

  has = self->_has;
  v7 = *(v4 + 44);
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_69;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_69;
  }

  outputDeviceUIDs = self->_outputDeviceUIDs;
  if (outputDeviceUIDs | *(v4 + 2))
  {
    if (![(NSMutableArray *)outputDeviceUIDs isEqual:?])
    {
      goto LABEL_69;
    }

    has = self->_has;
  }

  v9 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_69;
    }

    v12 = *(v4 + 36);
    if (self->_fadeAudio)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_69;
  }

  password = self->_password;
  if (password | *(v4 + 3))
  {
    if (![(NSString *)password isEqual:?])
    {
      goto LABEL_69;
    }

    has = self->_has;
  }

  if (has < 0)
  {
    if ((*(v4 + 44) & 0x80) == 0)
    {
      goto LABEL_69;
    }

    v13 = *(v4 + 42);
    if (self->_suppressErrorDialog)
    {
      if ((*(v4 + 42) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 42))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 44) & 0x80) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) == 0)
    {
      goto LABEL_69;
    }

    v14 = *(v4 + 40);
    if (self->_shouldNotPauseIfLastDeviceRemoved)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 44) & 0x20) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_69;
    }

    v15 = *(v4 + 37);
    if (self->_muteUntilFinished)
    {
      if ((*(v4 + 37) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 37))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0)
    {
      goto LABEL_69;
    }

    v16 = *(v4 + 39);
    if (self->_shouldModifyPredictedRoutes)
    {
      if ((*(v4 + 39) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 39))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 44) & 0x10) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0)
    {
      goto LABEL_69;
    }

    v17 = *(v4 + 38);
    if (self->_shouldClearPredictedRoutes)
    {
      if ((*(v4 + 38) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 38))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_69;
  }

  v11 = (*(v4 + 44) & 0x40) == 0;
  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 44) & 0x40) != 0)
    {
      if (self->_shouldWaitForUpdatedOutputDevices)
      {
        if (*(v4 + 41))
        {
          goto LABEL_71;
        }
      }

      else if (!*(v4 + 41))
      {
LABEL_71:
        v11 = 1;
        goto LABEL_70;
      }
    }

LABEL_69:
    v11 = 0;
  }

LABEL_70:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(_MRRequestDetailsProtobuf *)self->_details hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_outputDeviceUIDs hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_fadeAudio;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_password hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v8 = 2654435761 * self->_suppressErrorDialog;
    if ((*&self->_has & 0x20) == 0)
    {
LABEL_9:
      v9 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_9;
    }
  }

  v9 = 2654435761 * self->_shouldNotPauseIfLastDeviceRemoved;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v10 = 2654435761 * self->_muteUntilFinished;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    v11 = 2654435761 * self->_shouldModifyPredictedRoutes;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_17:
  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = 2654435761 * self->_shouldClearPredictedRoutes;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v13 = 2654435761 * self->_shouldWaitForUpdatedOutputDevices;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  details = self->_details;
  v6 = *(v4 + 1);
  if (details)
  {
    if (v6)
    {
      [(_MRRequestDetailsProtobuf *)details mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRGroupTopologyModificationRequestProtobuf *)self setDetails:?];
  }

  if (v4[44])
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(_MRGroupTopologyModificationRequestProtobuf *)self addOutputDeviceUIDs:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ((v4[44] & 2) != 0)
  {
    self->_fadeAudio = v4[36];
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(_MRGroupTopologyModificationRequestProtobuf *)self setPassword:?];
  }

  v12 = v4[44];
  if ((v12 & 0x80000000) == 0)
  {
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  self->_suppressErrorDialog = v4[42];
  *&self->_has |= 0x80u;
  LOBYTE(v12) = v4[44];
  if ((v12 & 0x20) != 0)
  {
LABEL_21:
    self->_shouldNotPauseIfLastDeviceRemoved = v4[40];
    *&self->_has |= 0x20u;
    LOBYTE(v12) = v4[44];
  }

LABEL_22:
  if ((v12 & 4) != 0)
  {
    self->_muteUntilFinished = v4[37];
    *&self->_has |= 4u;
    LOBYTE(v12) = v4[44];
    if ((v12 & 0x10) == 0)
    {
LABEL_24:
      if ((v12 & 8) == 0)
      {
        goto LABEL_25;
      }

LABEL_30:
      self->_shouldClearPredictedRoutes = v4[38];
      *&self->_has |= 8u;
      if ((v4[44] & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_24;
  }

  self->_shouldModifyPredictedRoutes = v4[39];
  *&self->_has |= 0x10u;
  LOBYTE(v12) = v4[44];
  if ((v12 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((v12 & 0x40) != 0)
  {
LABEL_26:
    self->_shouldWaitForUpdatedOutputDevices = v4[41];
    *&self->_has |= 0x40u;
  }

LABEL_27:

  v13 = *MEMORY[0x1E69E9840];
}

@end