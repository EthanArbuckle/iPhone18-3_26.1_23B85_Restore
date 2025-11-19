@interface _MRSendCommandResultMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHandlerReturnStatus:(id)a3;
- (int)StringAsSendError:(id)a3;
- (int)handlerReturnStatusAtIndex:(unint64_t)a3;
- (int)sendError;
- (unint64_t)hash;
- (void)addHandlerReturnStatusData:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendCommandResultMessageProtobuf

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = _MRSendCommandResultMessageProtobuf;
  [(_MRSendCommandResultMessageProtobuf *)&v3 dealloc];
}

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

- (int)handlerReturnStatusAtIndex:(unint64_t)a3
{
  p_handlerReturnStatus = &self->_handlerReturnStatus;
  count = self->_handlerReturnStatus.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_handlerReturnStatus->list[a3];
}

- (int)StringAsHandlerReturnStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Success"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NoSuchContent"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CommandFailed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NoActionableNowPlayingItem"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"DeviceNotFound"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"UIKitLegacy"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SkipAdProhibited"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"QueueIsUserCurated"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"UserModifiedQueueDisable"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"UserQueueModificationNotSupportedForCurrentItem"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"SubscriptionRequiredForSharedQueue"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"InsertionPositionNotSpecified"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"InvalidInsertionPosition"])
  {
    v4 = 106;
  }

  else if ([v3 isEqualToString:@"RequestParametersOutOfBounds"])
  {
    v4 = 107;
  }

  else if ([v3 isEqualToString:@"SkipLimitReached"])
  {
    v4 = 108;
  }

  else if ([v3 isEqualToString:@"CannotModifyQueueWithPlaybackTokenItems"])
  {
    v4 = 109;
  }

  else if ([v3 isEqualToString:@"AuthenticationFailure"])
  {
    v4 = 401;
  }

  else if ([v3 isEqualToString:@"MediaServicesUnavailable"])
  {
    v4 = 501;
  }

  else if ([v3 isEqualToString:@"Timeout"])
  {
    v4 = 555;
  }

  else if ([v3 isEqualToString:@"UnsupportedCommand"])
  {
    v4 = 404;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addHandlerReturnStatusData:(id)a3
{
  v4 = a3;
  handlerReturnStatusDatas = self->_handlerReturnStatusDatas;
  v8 = v4;
  if (!handlerReturnStatusDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_handlerReturnStatusDatas;
    self->_handlerReturnStatusDatas = v6;

    v4 = v8;
    handlerReturnStatusDatas = self->_handlerReturnStatusDatas;
  }

  [(NSMutableArray *)handlerReturnStatusDatas addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendCommandResultMessageProtobuf;
  v4 = [(_MRSendCommandResultMessageProtobuf *)&v8 description];
  v5 = [(_MRSendCommandResultMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    sendError = self->_sendError;
    if (sendError >= 0xB)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sendError];
    }

    else
    {
      v5 = off_1E76A4060[sendError];
    }

    [v3 setObject:v5 forKey:@"sendError"];
  }

  p_handlerReturnStatus = &self->_handlerReturnStatus;
  if (self->_handlerReturnStatus.count)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_handlerReturnStatus.count)
    {
      for (i = 0; i < self->_handlerReturnStatus.count; ++i)
      {
        v9 = p_handlerReturnStatus->list[i];
        if (v9 > 103)
        {
          if (v9 <= 108)
          {
            if (v9 <= 105)
            {
              if (v9 == 104)
              {
                v10 = @"SubscriptionRequiredForSharedQueue";
              }

              else
              {
                v10 = @"InsertionPositionNotSpecified";
              }
            }

            else if (v9 == 106)
            {
              v10 = @"InvalidInsertionPosition";
            }

            else if (v9 == 107)
            {
              v10 = @"RequestParametersOutOfBounds";
            }

            else
            {
              v10 = @"SkipLimitReached";
            }

            goto LABEL_53;
          }

          if (v9 <= 403)
          {
            if (v9 == 109)
            {
              v10 = @"CannotModifyQueueWithPlaybackTokenItems";
            }

            else
            {
              if (v9 != 401)
              {
LABEL_52:
                v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_handlerReturnStatus->list[i]];
                goto LABEL_53;
              }

              v10 = @"AuthenticationFailure";
            }
          }

          else
          {
            switch(v9)
            {
              case 404:
                v10 = @"UnsupportedCommand";
                break;
              case 501:
                v10 = @"MediaServicesUnavailable";
                break;
              case 555:
                v10 = @"Timeout";
                break;
              default:
                goto LABEL_52;
            }
          }
        }

        else if (v9 > 19)
        {
          if (v9 > 100)
          {
            if (v9 == 101)
            {
              v10 = @"QueueIsUserCurated";
            }

            else if (v9 == 102)
            {
              v10 = @"UserModifiedQueueDisable";
            }

            else
            {
              v10 = @"UserQueueModificationNotSupportedForCurrentItem";
            }

            goto LABEL_53;
          }

          if (v9 == 20)
          {
            v10 = @"DeviceNotFound";
          }

          else
          {
            if (v9 != 100)
            {
              goto LABEL_52;
            }

            v10 = @"SkipAdProhibited";
          }
        }

        else if (v9 <= 1)
        {
          v10 = @"Success";
          if (v9)
          {
            if (v9 != 1)
            {
              goto LABEL_52;
            }

            v10 = @"NoSuchContent";
          }
        }

        else
        {
          switch(v9)
          {
            case 2:
              v10 = @"CommandFailed";
              break;
            case 3:
              v10 = @"UIKitLegacy";
              break;
            case 10:
              v10 = @"NoActionableNowPlayingItem";
              break;
            default:
              goto LABEL_52;
          }
        }

LABEL_53:
        [v7 addObject:v10];
      }
    }

    [v3 setObject:v7 forKey:@"handlerReturnStatus"];
  }

  handlerReturnStatusDatas = self->_handlerReturnStatusDatas;
  if (handlerReturnStatusDatas)
  {
    [v3 setObject:handlerReturnStatusDatas forKey:@"handlerReturnStatusData"];
  }

  commandID = self->_commandID;
  if (commandID)
  {
    [v3 setObject:commandID forKey:@"commandID"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v14 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"playerPath"];
  }

  commandResult = self->_commandResult;
  if (commandResult)
  {
    v16 = [(_MRSendCommandResultProtobuf *)commandResult dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"commandResult"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    sendError = self->_sendError;
    PBDataWriterWriteInt32Field();
  }

  if (self->_handlerReturnStatus.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_handlerReturnStatus.list[v6];
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < self->_handlerReturnStatus.count);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_handlerReturnStatusDatas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (self->_commandID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_commandResult)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_sendError;
    *(v4 + 68) |= 1u;
  }

  v13 = v4;
  if ([(_MRSendCommandResultMessageProtobuf *)self handlerReturnStatusCount])
  {
    [v13 clearHandlerReturnStatus];
    v5 = [(_MRSendCommandResultMessageProtobuf *)self handlerReturnStatusCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v13 addHandlerReturnStatus:{-[_MRSendCommandResultMessageProtobuf handlerReturnStatusAtIndex:](self, "handlerReturnStatusAtIndex:", i)}];
      }
    }
  }

  if ([(_MRSendCommandResultMessageProtobuf *)self handlerReturnStatusDatasCount])
  {
    [v13 clearHandlerReturnStatusDatas];
    v8 = [(_MRSendCommandResultMessageProtobuf *)self handlerReturnStatusDatasCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_MRSendCommandResultMessageProtobuf *)self handlerReturnStatusDataAtIndex:j];
        [v13 addHandlerReturnStatusData:v11];
      }
    }
  }

  if (self->_commandID)
  {
    [v13 setCommandID:?];
  }

  v12 = v13;
  if (self->_playerPath)
  {
    [v13 setPlayerPath:?];
    v12 = v13;
  }

  if (self->_commandResult)
  {
    [v13 setCommandResult:?];
    v12 = v13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 64) = self->_sendError;
    *(v5 + 68) |= 1u;
  }

  PBRepeatedInt32Copy();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_handlerReturnStatusDatas;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * v11) copyWithZone:{a3, v21}];
        [v6 addHandlerReturnStatusData:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_commandID copyWithZone:a3];
  v14 = v6[4];
  v6[4] = v13;

  v15 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v16 = v6[7];
  v6[7] = v15;

  v17 = [(_MRSendCommandResultProtobuf *)self->_commandResult copyWithZone:a3];
  v18 = v6[5];
  v6[5] = v17;

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_sendError != *(v4 + 16))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_16;
  }

  handlerReturnStatusDatas = self->_handlerReturnStatusDatas;
  if (handlerReturnStatusDatas | *(v4 + 6))
  {
    if (![(NSMutableArray *)handlerReturnStatusDatas isEqual:?])
    {
      goto LABEL_16;
    }
  }

  commandID = self->_commandID;
  if (commandID | *(v4 + 4))
  {
    if (![(NSString *)commandID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 7))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_16;
    }
  }

  commandResult = self->_commandResult;
  if (commandResult | *(v4 + 5))
  {
    v10 = [(_MRSendCommandResultProtobuf *)commandResult isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_17:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_sendError;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedInt32Hash() ^ v3;
  v5 = v4 ^ [(NSMutableArray *)self->_handlerReturnStatusDatas hash];
  v6 = [(NSString *)self->_commandID hash];
  v7 = v5 ^ v6 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  return v7 ^ [(_MRSendCommandResultProtobuf *)self->_commandResult hash];
}

- (void)mergeFrom:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 68))
  {
    self->_sendError = *(v4 + 16);
    *&self->_has |= 1u;
  }

  v6 = [v4 handlerReturnStatusCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[_MRSendCommandResultMessageProtobuf addHandlerReturnStatus:](self, "addHandlerReturnStatus:", [v5 handlerReturnStatusAtIndex:i]);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5[6];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(_MRSendCommandResultMessageProtobuf *)self addHandlerReturnStatusData:*(*(&v19 + 1) + 8 * j), v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if (v5[4])
  {
    [(_MRSendCommandResultMessageProtobuf *)self setCommandID:?];
  }

  playerPath = self->_playerPath;
  v15 = v5[7];
  if (playerPath)
  {
    if (v15)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(_MRSendCommandResultMessageProtobuf *)self setPlayerPath:?];
  }

  commandResult = self->_commandResult;
  v17 = v5[5];
  if (commandResult)
  {
    if (v17)
    {
      [(_MRSendCommandResultProtobuf *)commandResult mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(_MRSendCommandResultMessageProtobuf *)self setCommandResult:?];
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end