@interface PDSProtoBatchRegisterResp
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUserPushTokenRegResponses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRetryInterval:(BOOL)a3;
- (void)setHasServerTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDSProtoBatchRegisterResp

- (void)addUserPushTokenRegResponses:(id)a3
{
  v4 = a3;
  userPushTokenRegResponses = self->_userPushTokenRegResponses;
  v8 = v4;
  if (!userPushTokenRegResponses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_userPushTokenRegResponses;
    self->_userPushTokenRegResponses = v6;

    v4 = v8;
    userPushTokenRegResponses = self->_userPushTokenRegResponses;
  }

  [(NSMutableArray *)userPushTokenRegResponses addObject:v4];
}

- (void)setHasRetryInterval:(BOOL)a3
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

- (void)setHasServerTimestamp:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoBatchRegisterResp;
  v4 = [(PDSProtoBatchRegisterResp *)&v8 description];
  v5 = [(PDSProtoBatchRegisterResp *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_status];
  [v3 setObject:v4 forKey:@"status"];

  message = self->_message;
  if (message)
  {
    [v3 setObject:message forKey:@"message"];
  }

  if ([(NSMutableArray *)self->_userPushTokenRegResponses count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_userPushTokenRegResponses, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_userPushTokenRegResponses;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"user_push_token_reg_responses"];
  }

  has = self->_has;
  if (has)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_responseTtl];
    [v3 setObject:v17 forKey:@"response_ttl"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_14:
      if ((has & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{self->_retryInterval, v19}];
  [v3 setObject:v18 forKey:@"retry_interval"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{self->_serverTimestamp, v19}];
    [v3 setObject:v14 forKey:@"server_timestamp"];
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  status = self->_status;
  PBDataWriterWriteInt32Field();
  if (self->_message)
  {
    PBDataWriterWriteStringField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_userPushTokenRegResponses;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    retryInterval = self->_retryInterval;
    PBDataWriterWriteInt64Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  responseTtl = self->_responseTtl;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    serverTimestamp = self->_serverTimestamp;
    PBDataWriterWriteInt64Field();
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  v9[10] = self->_status;
  if (self->_message)
  {
    [v9 setMessage:?];
  }

  if ([(PDSProtoBatchRegisterResp *)self userPushTokenRegResponsesCount])
  {
    [v9 clearUserPushTokenRegResponses];
    v4 = [(PDSProtoBatchRegisterResp *)self userPushTokenRegResponsesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDSProtoBatchRegisterResp *)self userPushTokenRegResponsesAtIndex:i];
        [v9 addUserPushTokenRegResponses:v7];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v9 + 1) = self->_responseTtl;
    *(v9 + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v9 + 2) = self->_retryInterval;
  *(v9 + 56) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(v9 + 3) = self->_serverTimestamp;
    *(v9 + 56) |= 4u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_status;
  v6 = [(NSString *)self->_message copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_userPushTokenRegResponses;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [v5 addUserPushTokenRegResponses:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v5 + 16) = self->_retryInterval;
    *(v5 + 56) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(v5 + 8) = self->_responseTtl;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    *(v5 + 24) = self->_serverTimestamp;
    *(v5 + 56) |= 4u;
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (self->_status != *(v4 + 10))
  {
    goto LABEL_21;
  }

  message = self->_message;
  if (message | *(v4 + 4))
  {
    if (![(NSString *)message isEqual:?])
    {
      goto LABEL_21;
    }
  }

  userPushTokenRegResponses = self->_userPushTokenRegResponses;
  if (userPushTokenRegResponses | *(v4 + 6))
  {
    if (![(NSMutableArray *)userPushTokenRegResponses isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_responseTtl != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_retryInterval != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_21;
  }

  v7 = (*(v4 + 56) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_serverTimestamp != *(v4 + 3))
    {
      goto LABEL_21;
    }

    v7 = 1;
  }

LABEL_22:

  return v7;
}

- (unint64_t)hash
{
  status = self->_status;
  v4 = [(NSString *)self->_message hash];
  v5 = [(NSMutableArray *)self->_userPushTokenRegResponses hash];
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ (2654435761 * status);
  }

  v6 = 2654435761 * self->_responseTtl;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_retryInterval;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_serverTimestamp;
  return v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ (2654435761 * status);
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_status = *(v4 + 10);
  if (*(v4 + 4))
  {
    [(PDSProtoBatchRegisterResp *)self setMessage:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v4 + 6);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDSProtoBatchRegisterResp *)self addUserPushTokenRegResponses:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 56);
  if ((v10 & 1) == 0)
  {
    if ((*(v4 + 56) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    self->_retryInterval = *(v4 + 2);
    *&self->_has |= 2u;
    if ((*(v4 + 56) & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  self->_responseTtl = *(v4 + 1);
  *&self->_has |= 1u;
  v10 = *(v4 + 56);
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v10 & 4) != 0)
  {
LABEL_13:
    self->_serverTimestamp = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

@end