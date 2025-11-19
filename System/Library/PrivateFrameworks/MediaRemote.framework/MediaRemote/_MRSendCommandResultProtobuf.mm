@interface _MRSendCommandResultProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSendError:(id)a3;
- (int)sendError;
- (unint64_t)hash;
- (void)addStatuses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendCommandResultProtobuf

- (int)sendError
{
  if (*&self->_has)
  {
    return self->_sendError;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSendError:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ApplicationNotFound"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ConnectionFailed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Ignored"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CouldNotLaunchApplication"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TimedOut"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"OriginDoesNotExist"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"InvalidOptions"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"NoCommandHandlers"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ApplicationNotInstalled"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"NotSupported"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addStatuses:(id)a3
{
  v4 = a3;
  statuses = self->_statuses;
  v8 = v4;
  if (!statuses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_statuses;
    self->_statuses = v6;

    v4 = v8;
    statuses = self->_statuses;
  }

  [(NSMutableArray *)statuses addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendCommandResultProtobuf;
  v4 = [(_MRSendCommandResultProtobuf *)&v8 description];
  v5 = [(_MRSendCommandResultProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  playerPath = self->_playerPath;
  if (playerPath)
  {
    v5 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"playerPath"];
  }

  if (*&self->_has)
  {
    sendError = self->_sendError;
    if (sendError >= 0xB)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sendError];
    }

    else
    {
      v7 = off_1E769CC20[sendError];
    }

    [v3 setObject:v7 forKey:@"sendError"];
  }

  if ([(NSMutableArray *)self->_statuses count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_statuses, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_statuses;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"statuses"];
  }

  sendErrorDescription = self->_sendErrorDescription;
  if (sendErrorDescription)
  {
    [v3 setObject:sendErrorDescription forKey:@"sendErrorDescription"];
  }

  error = self->_error;
  if (error)
  {
    v17 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"error"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    sendError = self->_sendError;
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_statuses;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_sendErrorDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_playerPath)
  {
    [v4 setPlayerPath:?];
    v4 = v10;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_sendError;
    *(v4 + 48) |= 1u;
  }

  if ([(_MRSendCommandResultProtobuf *)self statusesCount])
  {
    [v10 clearStatuses];
    v5 = [(_MRSendCommandResultProtobuf *)self statusesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRSendCommandResultProtobuf *)self statusesAtIndex:i];
        [v10 addStatuses:v8];
      }
    }
  }

  if (self->_sendErrorDescription)
  {
    [v10 setSendErrorDescription:?];
  }

  v9 = v10;
  if (self->_error)
  {
    [v10 setError:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_sendError;
    *(v5 + 48) |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_statuses;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) copyWithZone:{a3, v20}];
        [v5 addStatuses:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_sendErrorDescription copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(_MRErrorProtobuf *)self->_error copyWithZone:a3];
  v17 = *(v5 + 8);
  *(v5 + 8) = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 2))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v6 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_sendError != *(v4 + 6))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  statuses = self->_statuses;
  if (statuses | *(v4 + 5) && ![(NSMutableArray *)statuses isEqual:?])
  {
    goto LABEL_15;
  }

  sendErrorDescription = self->_sendErrorDescription;
  if (sendErrorDescription | *(v4 + 4))
  {
    if (![(NSString *)sendErrorDescription isEqual:?])
    {
      goto LABEL_15;
    }
  }

  error = self->_error;
  if (error | *(v4 + 1))
  {
    v10 = [(_MRErrorProtobuf *)error isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_sendError;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSMutableArray *)self->_statuses hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_sendErrorDescription hash];
  return v7 ^ [(_MRErrorProtobuf *)self->_error hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  playerPath = self->_playerPath;
  v6 = *(v4 + 2);
  if (playerPath)
  {
    if (v6)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRSendCommandResultProtobuf *)self setPlayerPath:?];
  }

  if (*(v4 + 48))
  {
    self->_sendError = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(v4 + 5);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(_MRSendCommandResultProtobuf *)self addStatuses:*(*(&v15 + 1) + 8 * i), v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (*(v4 + 4))
  {
    [(_MRSendCommandResultProtobuf *)self setSendErrorDescription:?];
  }

  error = self->_error;
  v13 = *(v4 + 1);
  if (error)
  {
    if (v13)
    {
      [(_MRErrorProtobuf *)error mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(_MRSendCommandResultProtobuf *)self setError:?];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end