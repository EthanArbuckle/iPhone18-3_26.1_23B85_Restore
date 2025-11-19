@interface PDSProtoUserPushTokenRegRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDeviceInfo:(id)a3;
- (void)addTopic:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDSProtoUserPushTokenRegRequest

- (void)addDeviceInfo:(id)a3
{
  v4 = a3;
  deviceInfos = self->_deviceInfos;
  v8 = v4;
  if (!deviceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deviceInfos;
    self->_deviceInfos = v6;

    v4 = v8;
    deviceInfos = self->_deviceInfos;
  }

  [(NSMutableArray *)deviceInfos addObject:v4];
}

- (void)addTopic:(id)a3
{
  v4 = a3;
  topics = self->_topics;
  v8 = v4;
  if (!topics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topics;
    self->_topics = v6;

    v4 = v8;
    topics = self->_topics;
  }

  [(NSMutableArray *)topics addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoUserPushTokenRegRequest;
  v4 = [(PDSProtoUserPushTokenRegRequest *)&v8 description];
  v5 = [(PDSProtoUserPushTokenRegRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  userPushToken = self->_userPushToken;
  if (userPushToken)
  {
    v5 = [(PDSProtoUserPushToken *)userPushToken dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"user_push_token"];
  }

  if ([(NSMutableArray *)self->_deviceInfos count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_deviceInfos, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_deviceInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"device_info"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ttl];
    [v3 setObject:v13 forKey:@"ttl"];
  }

  if ([(NSMutableArray *)self->_topics count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_topics, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_topics;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"topic"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_userPushToken)
  {
    [PDSProtoUserPushTokenRegRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_deviceInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    ttl = self->_ttl;
    PBDataWriterWriteInt64Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_topics;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  [v12 setUserPushToken:self->_userPushToken];
  if ([(PDSProtoUserPushTokenRegRequest *)self deviceInfosCount])
  {
    [v12 clearDeviceInfos];
    v4 = [(PDSProtoUserPushTokenRegRequest *)self deviceInfosCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDSProtoUserPushTokenRegRequest *)self deviceInfoAtIndex:i];
        [v12 addDeviceInfo:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v12 + 1) = self->_ttl;
    *(v12 + 40) |= 1u;
  }

  if ([(PDSProtoUserPushTokenRegRequest *)self topicsCount])
  {
    [v12 clearTopics];
    v8 = [(PDSProtoUserPushTokenRegRequest *)self topicsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PDSProtoUserPushTokenRegRequest *)self topicAtIndex:j];
        [v12 addTopic:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDSProtoUserPushToken *)self->_userPushToken copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_deviceInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addDeviceInfo:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_ttl;
    *(v5 + 40) |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_topics;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
        [v5 addTopic:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  userPushToken = self->_userPushToken;
  if (userPushToken | *(v4 + 4))
  {
    if (![(PDSProtoUserPushToken *)userPushToken isEqual:?])
    {
      goto LABEL_13;
    }
  }

  deviceInfos = self->_deviceInfos;
  if (deviceInfos | *(v4 + 2))
  {
    if (![(NSMutableArray *)deviceInfos isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_ttl != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  topics = self->_topics;
  if (topics | *(v4 + 3))
  {
    v9 = [(NSMutableArray *)topics isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PDSProtoUserPushToken *)self->_userPushToken hash];
  v4 = [(NSMutableArray *)self->_deviceInfos hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_ttl;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_topics hash];
}

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  userPushToken = self->_userPushToken;
  v6 = *(v4 + 4);
  if (userPushToken)
  {
    if (v6)
    {
      [(PDSProtoUserPushToken *)userPushToken mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDSProtoUserPushTokenRegRequest *)self setUserPushToken:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDSProtoUserPushTokenRegRequest *)self addDeviceInfo:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  if (*(v4 + 40))
  {
    self->_ttl = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v4 + 3);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PDSProtoUserPushTokenRegRequest *)self addTopic:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end