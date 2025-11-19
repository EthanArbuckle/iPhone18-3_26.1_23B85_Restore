@interface SYLogServiceState
- (BOOL)isEqual:(id)a3;
- (NSDictionary)cocoaTransportOptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEnqueuedSyncType:(id)a3;
- (int)StringAsServiceType:(id)a3;
- (int)serviceType;
- (unint64_t)hash;
- (void)addTransportOptions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setCocoaTransportOptions:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYLogServiceState

- (int)StringAsEnqueuedSyncType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Delta"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Reset"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (int)serviceType
{
  if (*&self->_has)
  {
    return self->_serviceType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsServiceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Master"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Slave"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogServiceState;
  v4 = [(SYLogServiceState *)&v8 description];
  v5 = [(SYLogServiceState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  engine = self->_engine;
  if (engine)
  {
    v7 = [(SYLogEngineState *)engine dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"engine"];
  }

  session = self->_session;
  if (session)
  {
    v9 = [(SYLogSessionState *)session dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"session"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_sessionQueueRunning];
  [v4 setObject:v10 forKey:@"sessionQueueRunning"];

  targetedDevice = self->_targetedDevice;
  if (targetedDevice)
  {
    v12 = [(SYLogDeviceState *)targetedDevice dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"targetedDevice"];
  }

  enqueuedSyncType = self->_enqueuedSyncType;
  if (enqueuedSyncType >= 3)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_enqueuedSyncType];
  }

  else
  {
    v14 = off_1E86CA048[enqueuedSyncType];
  }

  [v4 setObject:v14 forKey:@"enqueuedSyncType"];

  if ([(NSMutableArray *)self->_transportOptions count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_transportOptions, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = self->_transportOptions;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"transportOptions"];
  }

  peerID = self->_peerID;
  if (peerID)
  {
    [v4 setObject:peerID forKey:@"peerID"];
  }

  peerGenerationID = self->_peerGenerationID;
  if (peerGenerationID)
  {
    [v4 setObject:peerGenerationID forKey:@"peerGenerationID"];
  }

  if (*&self->_has)
  {
    serviceType = self->_serviceType;
    if (serviceType >= 3)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_serviceType];
    }

    else
    {
      v25 = off_1E86CA060[serviceType];
    }

    [v4 setObject:v25 forKey:@"serviceType"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_name)
  {
    [SYLogServiceState writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (self->_engine)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
  }

  sessionQueueRunning = self->_sessionQueueRunning;
  PBDataWriterWriteBOOLField();
  if (self->_targetedDevice)
  {
    PBDataWriterWriteSubmessage();
  }

  enqueuedSyncType = self->_enqueuedSyncType;
  PBDataWriterWriteInt32Field();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_transportOptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_peerGenerationID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    serviceType = self->_serviceType;
    PBDataWriterWriteInt32Field();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v10 = a3;
  [v10 setName:self->_name];
  if (self->_engine)
  {
    [v10 setEngine:?];
  }

  if (self->_session)
  {
    [v10 setSession:?];
  }

  v4 = v10;
  v10[80] = self->_sessionQueueRunning;
  if (self->_targetedDevice)
  {
    [v10 setTargetedDevice:?];
    v4 = v10;
  }

  *(v4 + 4) = self->_enqueuedSyncType;
  if ([(SYLogServiceState *)self transportOptionsCount])
  {
    [v10 clearTransportOptions];
    v5 = [(SYLogServiceState *)self transportOptionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SYLogServiceState *)self transportOptionsAtIndex:i];
        [v10 addTransportOptions:v8];
      }
    }
  }

  if (self->_peerID)
  {
    [v10 setPeerID:?];
  }

  v9 = v10;
  if (self->_peerGenerationID)
  {
    [v10 setPeerGenerationID:?];
    v9 = v10;
  }

  if (*&self->_has)
  {
    *(v9 + 12) = self->_serviceType;
    v9[84] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(SYLogEngineState *)self->_engine copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(SYLogSessionState *)self->_session copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  *(v5 + 80) = self->_sessionQueueRunning;
  v12 = [(SYLogDeviceState *)self->_targetedDevice copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  *(v5 + 16) = self->_enqueuedSyncType;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = self->_transportOptions;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v26 + 1) + 8 * v18) copyWithZone:{a3, v26}];
        [v5 addTransportOptions:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_peerID copyWithZone:a3];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(NSString *)self->_peerGenerationID copyWithZone:a3];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_serviceType;
    *(v5 + 84) |= 1u;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  name = self->_name;
  if (name | *(v4 + 3))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_25;
    }
  }

  engine = self->_engine;
  if (engine | *(v4 + 1))
  {
    if (![(SYLogEngineState *)engine isEqual:?])
    {
      goto LABEL_25;
    }
  }

  session = self->_session;
  if (session | *(v4 + 7))
  {
    if (![(SYLogSessionState *)session isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v8 = *(v4 + 80);
  if (self->_sessionQueueRunning)
  {
    if ((*(v4 + 80) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  targetedDevice = self->_targetedDevice;
  if (targetedDevice | *(v4 + 8) && ![(SYLogDeviceState *)targetedDevice isEqual:?])
  {
    goto LABEL_25;
  }

  if (self->_enqueuedSyncType != *(v4 + 4))
  {
    goto LABEL_25;
  }

  transportOptions = self->_transportOptions;
  if (transportOptions | *(v4 + 9))
  {
    if (![(NSMutableArray *)transportOptions isEqual:?])
    {
      goto LABEL_25;
    }
  }

  peerID = self->_peerID;
  if (peerID | *(v4 + 5))
  {
    if (![(NSString *)peerID isEqual:?])
    {
      goto LABEL_25;
    }
  }

  peerGenerationID = self->_peerGenerationID;
  if (peerGenerationID | *(v4 + 4))
  {
    if (![(NSString *)peerGenerationID isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v13 = (*(v4 + 84) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_serviceType != *(v4 + 12))
    {
      goto LABEL_25;
    }

    v13 = 1;
  }

LABEL_26:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(SYLogEngineState *)self->_engine hash];
  v5 = [(SYLogSessionState *)self->_session hash];
  sessionQueueRunning = self->_sessionQueueRunning;
  v7 = [(SYLogDeviceState *)self->_targetedDevice hash];
  enqueuedSyncType = self->_enqueuedSyncType;
  v9 = [(NSMutableArray *)self->_transportOptions hash];
  v10 = [(NSString *)self->_peerID hash];
  v11 = [(NSString *)self->_peerGenerationID hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_serviceType;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ (2654435761 * sessionQueueRunning) ^ (2654435761 * enqueuedSyncType) ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(SYLogServiceState *)self setName:?];
  }

  engine = self->_engine;
  v6 = *(v4 + 1);
  if (engine)
  {
    if (v6)
    {
      [(SYLogEngineState *)engine mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SYLogServiceState *)self setEngine:?];
  }

  session = self->_session;
  v8 = *(v4 + 7);
  if (session)
  {
    if (v8)
    {
      [(SYLogSessionState *)session mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SYLogServiceState *)self setSession:?];
  }

  self->_sessionQueueRunning = *(v4 + 80);
  targetedDevice = self->_targetedDevice;
  v10 = *(v4 + 8);
  if (targetedDevice)
  {
    if (v10)
    {
      [(SYLogDeviceState *)targetedDevice mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SYLogServiceState *)self setTargetedDevice:?];
  }

  self->_enqueuedSyncType = *(v4 + 4);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = *(v4 + 9);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SYLogServiceState *)self addTransportOptions:*(*(&v17 + 1) + 8 * i), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  if (*(v4 + 5))
  {
    [(SYLogServiceState *)self setPeerID:?];
  }

  if (*(v4 + 4))
  {
    [(SYLogServiceState *)self setPeerGenerationID:?];
  }

  if (*(v4 + 84))
  {
    self->_serviceType = *(v4 + 12);
    *&self->_has |= 1u;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setCocoaTransportOptions:(id)a3
{
  v4 = a3;
  [(SYLogServiceState *)self clearTransportOptions];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SYLogServiceState_Convenience__setCocoaTransportOptions___block_invoke;
  v5[3] = &unk_1E86CB270;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __59__SYLogServiceState_Convenience__setCocoaTransportOptions___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v4 = [(SYLogServiceState *)self transportOptions];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(SYLogServiceState *)self transportOptions];
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