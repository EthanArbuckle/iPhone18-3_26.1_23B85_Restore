@interface SYLogSessionState
- (BOOL)isEqual:(id)a3;
- (NSDictionary)cocoaTransportOptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (unint64_t)hash;
- (void)addPeer:(id)a3;
- (void)addTransportOptions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setCocoaTransportOptions:(id)a3;
- (void)setHasCanRestart:(BOOL)a3;
- (void)setHasCanRollback:(BOOL)a3;
- (void)setHasCanceled:(BOOL)a3;
- (void)setHasIsReset:(BOOL)a3;
- (void)setHasPerMessageTimeout:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYLogSessionState

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotStarted"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Continue"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SendComplete"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Cancel"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Restart"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Error"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"WaitingForStartConfirmation"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"WaitingForCompletionConfirmation"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"WaitingForBatchEnqueue"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SyncComplete"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsReset:(BOOL)a3
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

- (void)setHasPerMessageTimeout:(BOOL)a3
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

- (void)setHasCanRestart:(BOOL)a3
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

- (void)setHasCanRollback:(BOOL)a3
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

- (void)setHasCanceled:(BOOL)a3
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

- (void)addTransportOptions:(id)a3
{
  v4 = a3;
  transportOptions = self->_transportOptions;
  v8 = v4;
  if (!transportOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_transportOptions;
    self->_transportOptions = v6;

    v4 = v8;
    transportOptions = self->_transportOptions;
  }

  [(NSMutableArray *)transportOptions addObject:v4];
}

- (void)addPeer:(id)a3
{
  v4 = a3;
  peers = self->_peers;
  v8 = v4;
  if (!peers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_peers;
    self->_peers = v6;

    v4 = v8;
    peers = self->_peers;
  }

  [(NSMutableArray *)peers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogSessionState;
  v4 = [(SYLogSessionState *)&v8 description];
  v5 = [(SYLogSessionState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  state = self->_state;
  if (state >= 0xA)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v7 = off_1E86CAF18[state];
  }

  [v4 setObject:v7 forKey:@"state"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSending];
  [v4 setObject:v8 forKey:@"isSending"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_isReset];
    [v4 setObject:v33 forKey:@"isReset"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

  v34 = [MEMORY[0x1E696AD98] numberWithDouble:self->_perMessageTimeout];
  [v4 setObject:v34 forKey:@"perMessageTimeout"];

  if (*&self->_has)
  {
LABEL_9:
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fullSessionTimeout];
    [v4 setObject:v10 forKey:@"fullSessionTimeout"];
  }

LABEL_10:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_maxConcurrentMessages];
  [v4 setObject:v11 forKey:@"maxConcurrentMessages"];

  error = self->_error;
  if (error)
  {
    v13 = [(SYLogErrorInfo *)error dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"error"];
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:self->_canRestart];
    [v4 setObject:v35 forKey:@"canRestart"];

    v14 = self->_has;
    if ((v14 & 8) == 0)
    {
LABEL_14:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_canRollback];
  [v4 setObject:v36 forKey:@"canRollback"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_canceled];
    [v4 setObject:v15 forKey:@"canceled"];
  }

LABEL_16:
  if ([(NSMutableArray *)self->_transportOptions count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_transportOptions, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = self->_transportOptions;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v19);
    }

    [v4 setObject:v16 forKey:@"transportOptions"];
  }

  if ([(NSMutableArray *)self->_peers count])
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_peers, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = self->_peers;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v26);
    }

    [v4 setObject:v23 forKey:@"peer"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v4 setObject:reason forKey:@"reason"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_identifier)
  {
    [SYLogSessionState writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  state = self->_state;
  PBDataWriterWriteInt32Field();
  isSending = self->_isSending;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    isReset = self->_isReset;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_4:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_4;
  }

  perMessageTimeout = self->_perMessageTimeout;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_5:
    fullSessionTimeout = self->_fullSessionTimeout;
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  maxConcurrentMessages = self->_maxConcurrentMessages;
  PBDataWriterWriteUint64Field();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    canRestart = self->_canRestart;
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  canRollback = self->_canRollback;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    canceled = self->_canceled;
    PBDataWriterWriteBOOLField();
  }

LABEL_12:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = self->_transportOptions;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = self->_peers;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v15 = a3;
  [v15 setIdentifier:self->_identifier];
  v4 = v15;
  *(v15 + 16) = self->_state;
  *(v15 + 84) = self->_isSending;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v15 + 83) = self->_isReset;
    *(v15 + 88) |= 0x20u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v15 + 3) = *&self->_perMessageTimeout;
  *(v15 + 88) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v15 + 1) = *&self->_fullSessionTimeout;
    *(v15 + 88) |= 1u;
  }

LABEL_5:
  *(v15 + 2) = self->_maxConcurrentMessages;
  if (self->_error)
  {
    [v15 setError:?];
    v4 = v15;
  }

  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    v4[81] = self->_canRollback;
    v4[88] |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4[80] = self->_canRestart;
  v4[88] |= 4u;
  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  if ((v6 & 0x10) != 0)
  {
LABEL_10:
    v4[82] = self->_canceled;
    v4[88] |= 0x10u;
  }

LABEL_11:
  if ([(SYLogSessionState *)self transportOptionsCount])
  {
    [v15 clearTransportOptions];
    v7 = [(SYLogSessionState *)self transportOptionsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(SYLogSessionState *)self transportOptionsAtIndex:i];
        [v15 addTransportOptions:v10];
      }
    }
  }

  if ([(SYLogSessionState *)self peersCount])
  {
    [v15 clearPeers];
    v11 = [(SYLogSessionState *)self peersCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(SYLogSessionState *)self peerAtIndex:j];
        [v15 addPeer:v14];
      }
    }
  }

  if (self->_reason)
  {
    [v15 setReason:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 64) = self->_state;
  *(v5 + 84) = self->_isSending;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 83) = self->_isReset;
    *(v5 + 88) |= 0x20u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_perMessageTimeout;
  *(v5 + 88) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_fullSessionTimeout;
    *(v5 + 88) |= 1u;
  }

LABEL_5:
  *(v5 + 16) = self->_maxConcurrentMessages;
  v9 = [(SYLogErrorInfo *)self->_error copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    *(v5 + 80) = self->_canRestart;
    *(v5 + 88) |= 4u;
    v11 = self->_has;
    if ((v11 & 8) == 0)
    {
LABEL_7:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 81) = self->_canRollback;
  *(v5 + 88) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    *(v5 + 82) = self->_canceled;
    *(v5 + 88) |= 0x10u;
  }

LABEL_9:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_transportOptions;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * i) copyWithZone:a3];
        [v5 addTransportOptions:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_peers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * j) copyWithZone:{a3, v28}];
        [v5 addPeer:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_reason copyWithZone:a3];
  v25 = *(v5 + 56);
  *(v5 + 56) = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if (self->_state != *(v4 + 16))
  {
    goto LABEL_60;
  }

  v6 = *(v4 + 84);
  if (self->_isSending)
  {
    if ((*(v4 + 84) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_60;
  }

  has = self->_has;
  v8 = *(v4 + 88);
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 88) & 0x20) == 0)
    {
      goto LABEL_60;
    }

    v9 = *(v4 + 83);
    if (self->_isReset)
    {
      if ((*(v4 + 83) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 83))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 88) & 0x20) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_perMessageTimeout != *(v4 + 3))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
    goto LABEL_60;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_fullSessionTimeout != *(v4 + 1))
    {
      goto LABEL_60;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_60;
  }

  if (self->_maxConcurrentMessages != *(v4 + 2))
  {
LABEL_60:
    v15 = 0;
    goto LABEL_61;
  }

  error = self->_error;
  if (error | *(v4 + 4))
  {
    if (![(SYLogErrorInfo *)error isEqual:?])
    {
      goto LABEL_60;
    }

    has = self->_has;
  }

  v11 = *(v4 + 88);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 88) & 4) == 0)
    {
      goto LABEL_60;
    }

    v16 = *(v4 + 80);
    if (self->_canRestart)
    {
      if ((*(v4 + 80) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 80))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 88) & 4) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 88) & 8) == 0)
    {
      goto LABEL_60;
    }

    v17 = *(v4 + 81);
    if (self->_canRollback)
    {
      if ((*(v4 + 81) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 81))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 88) & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x10) == 0)
  {
    if ((*(v4 + 88) & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_60;
  }

  if ((*(v4 + 88) & 0x10) == 0)
  {
    goto LABEL_60;
  }

  v18 = *(v4 + 82);
  if (self->_canceled)
  {
    if ((*(v4 + 82) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (*(v4 + 82))
  {
    goto LABEL_60;
  }

LABEL_37:
  transportOptions = self->_transportOptions;
  if (transportOptions | *(v4 + 9) && ![(NSMutableArray *)transportOptions isEqual:?])
  {
    goto LABEL_60;
  }

  peers = self->_peers;
  if (peers | *(v4 + 6))
  {
    if (![(NSMutableArray *)peers isEqual:?])
    {
      goto LABEL_60;
    }
  }

  reason = self->_reason;
  if (reason | *(v4 + 7))
  {
    v15 = [(NSString *)reason isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_61:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v6 = 2654435761 * self->_isReset;
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    perMessageTimeout = self->_perMessageTimeout;
    if (perMessageTimeout < 0.0)
    {
      perMessageTimeout = -perMessageTimeout;
    }

    *v4.i64 = floor(perMessageTimeout + 0.5);
    v9 = (perMessageTimeout - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v7 = 2654435761u * *v4.i64;
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

  if (*&self->_has)
  {
    fullSessionTimeout = self->_fullSessionTimeout;
    if (fullSessionTimeout < 0.0)
    {
      fullSessionTimeout = -fullSessionTimeout;
    }

    *v4.i64 = floor(fullSessionTimeout + 0.5);
    v13 = (fullSessionTimeout - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  isSending = self->_isSending;
  state = self->_state;
  maxConcurrentMessages = self->_maxConcurrentMessages;
  v18 = [(SYLogErrorInfo *)self->_error hash];
  if ((*&self->_has & 4) == 0)
  {
    v19 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    v20 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

  v19 = 2654435761 * self->_canRestart;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v20 = 2654435761 * self->_canRollback;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v21 = 2654435761 * self->_canceled;
LABEL_27:
  v22 = v18 ^ v19 ^ v20 ^ v21 ^ [(NSMutableArray *)self->_transportOptions hash];
  v23 = v22 ^ [(NSMutableArray *)self->_peers hash];
  return (2654435761 * state) ^ v3 ^ (2654435761 * isSending) ^ v6 ^ v7 ^ v11 ^ (2654435761u * maxConcurrentMessages) ^ v23 ^ [(NSString *)self->_reason hash];
}

- (void)mergeFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 5))
  {
    [(SYLogSessionState *)self setIdentifier:?];
  }

  self->_state = *(v4 + 16);
  self->_isSending = *(v4 + 84);
  v5 = *(v4 + 88);
  if ((v5 & 0x20) != 0)
  {
    self->_isReset = *(v4 + 83);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 88);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 88) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_perMessageTimeout = *(v4 + 3);
  *&self->_has |= 2u;
  if (*(v4 + 88))
  {
LABEL_6:
    self->_fullSessionTimeout = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  self->_maxConcurrentMessages = *(v4 + 2);
  error = self->_error;
  v7 = *(v4 + 4);
  if (error)
  {
    if (v7)
    {
      [(SYLogErrorInfo *)error mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SYLogSessionState *)self setError:?];
  }

  v8 = *(v4 + 88);
  if ((v8 & 4) != 0)
  {
    self->_canRestart = *(v4 + 80);
    *&self->_has |= 4u;
    v8 = *(v4 + 88);
    if ((v8 & 8) == 0)
    {
LABEL_17:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v4 + 88) & 8) == 0)
  {
    goto LABEL_17;
  }

  self->_canRollback = *(v4 + 81);
  *&self->_has |= 8u;
  if ((*(v4 + 88) & 0x10) != 0)
  {
LABEL_18:
    self->_canceled = *(v4 + 82);
    *&self->_has |= 0x10u;
  }

LABEL_19:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = *(v4 + 9);
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SYLogSessionState *)self addTransportOptions:*(*(&v24 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(v4 + 6);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(SYLogSessionState *)self addPeer:*(*(&v20 + 1) + 8 * j), v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  if (*(v4 + 7))
  {
    [(SYLogSessionState *)self setReason:?];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setCocoaTransportOptions:(id)a3
{
  v4 = a3;
  [(SYLogSessionState *)self clearTransportOptions];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SYLogSessionState_Convenience__setCocoaTransportOptions___block_invoke;
  v5[3] = &unk_1E86CB270;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __59__SYLogSessionState_Convenience__setCocoaTransportOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_opt_new();
  [v8 setKey:v6];

  v7 = [v5 description];

  [v8 setValue:v7];
  [*(a1 + 32) addTransportOptions:v8];
}

- (NSDictionary)cocoaTransportOptions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [(SYLogSessionState *)self transportOptions];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(SYLogSessionState *)self transportOptions];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 value];
        v13 = [v11 key];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

@end