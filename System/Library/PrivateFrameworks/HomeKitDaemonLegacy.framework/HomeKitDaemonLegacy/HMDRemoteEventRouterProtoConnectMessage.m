@interface HMDRemoteEventRouterProtoConnectMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTopicAdditions:(id)a3;
- (void)addTopicFilterAdditions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDRemoteEventRouterProtoConnectMessage

- (void)mergeFrom:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[12])
  {
    self->_routerVersion = v4[4];
    *&self->_has |= 1u;
  }

  connectEvent = self->_connectEvent;
  v7 = *(v5 + 1);
  if (connectEvent)
  {
    if (v7)
    {
      [(HMEProtoEventInfo *)connectEvent mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HMDRemoteEventRouterProtoConnectMessage *)self setConnectEvent:?];
  }

  unregisterEvent = self->_unregisterEvent;
  v9 = *(v5 + 5);
  if (unregisterEvent)
  {
    if (v9)
    {
      [(HMEProtoEventInfo *)unregisterEvent mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(HMDRemoteEventRouterProtoConnectMessage *)self setUnregisterEvent:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(v5 + 4);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HMDRemoteEventRouterProtoConnectMessage *)self addTopicFilterAdditions:*(*(&v25 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(v5 + 3);
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(HMDRemoteEventRouterProtoConnectMessage *)self addTopicAdditions:*(*(&v21 + 1) + 8 * j), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_routerVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HMEProtoEventInfo *)self->_connectEvent hash]^ v3;
  v5 = [(HMEProtoEventInfo *)self->_unregisterEvent hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_topicFilterAdditions hash];
  return v6 ^ [(NSMutableArray *)self->_topicAdditions hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_routerVersion != *(v4 + 4))
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

  connectEvent = self->_connectEvent;
  if (connectEvent | *(v4 + 1) && ![(HMEProtoEventInfo *)connectEvent isEqual:?])
  {
    goto LABEL_15;
  }

  unregisterEvent = self->_unregisterEvent;
  if (unregisterEvent | *(v4 + 5))
  {
    if (![(HMEProtoEventInfo *)unregisterEvent isEqual:?])
    {
      goto LABEL_15;
    }
  }

  topicFilterAdditions = self->_topicFilterAdditions;
  if (topicFilterAdditions | *(v4 + 4))
  {
    if (![(NSMutableArray *)topicFilterAdditions isEqual:?])
    {
      goto LABEL_15;
    }
  }

  topicAdditions = self->_topicAdditions;
  if (topicAdditions | *(v4 + 3))
  {
    v10 = [(NSMutableArray *)topicAdditions isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_routerVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(HMEProtoEventInfo *)self->_connectEvent copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HMEProtoEventInfo *)self->_unregisterEvent copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = self->_topicFilterAdditions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * v15) copyWithZone:a3];
        [v6 addTopicFilterAdditions:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_topicAdditions;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * v21) copyWithZone:{a3, v25}];
        [v6 addTopicAdditions:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_routerVersion;
    *(v4 + 48) |= 1u;
  }

  v13 = v4;
  if (self->_connectEvent)
  {
    [v4 setConnectEvent:?];
  }

  if (self->_unregisterEvent)
  {
    [v13 setUnregisterEvent:?];
  }

  if ([(HMDRemoteEventRouterProtoConnectMessage *)self topicFilterAdditionsCount])
  {
    [v13 clearTopicFilterAdditions];
    v5 = [(HMDRemoteEventRouterProtoConnectMessage *)self topicFilterAdditionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HMDRemoteEventRouterProtoConnectMessage *)self topicFilterAdditionsAtIndex:i];
        [v13 addTopicFilterAdditions:v8];
      }
    }
  }

  if ([(HMDRemoteEventRouterProtoConnectMessage *)self topicAdditionsCount])
  {
    [v13 clearTopicAdditions];
    v9 = [(HMDRemoteEventRouterProtoConnectMessage *)self topicAdditionsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HMDRemoteEventRouterProtoConnectMessage *)self topicAdditionsAtIndex:j];
        [v13 addTopicAdditions:v12];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    routerVersion = self->_routerVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_connectEvent)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_unregisterEvent)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_topicFilterAdditions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_topicAdditions;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_routerVersion];
    [v3 setObject:v4 forKey:@"routerVersion"];
  }

  connectEvent = self->_connectEvent;
  if (connectEvent)
  {
    v6 = [(HMEProtoEventInfo *)connectEvent dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"connectEvent"];
  }

  unregisterEvent = self->_unregisterEvent;
  if (unregisterEvent)
  {
    v8 = [(HMEProtoEventInfo *)unregisterEvent dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"unregisterEvent"];
  }

  topicFilterAdditions = self->_topicFilterAdditions;
  if (topicFilterAdditions)
  {
    [v3 setObject:topicFilterAdditions forKey:@"topicFilterAdditions"];
  }

  if ([(NSMutableArray *)self->_topicAdditions count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_topicAdditions, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_topicAdditions;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"topicAdditions"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoConnectMessage;
  v4 = [(HMDRemoteEventRouterProtoConnectMessage *)&v8 description];
  v5 = [(HMDRemoteEventRouterProtoConnectMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addTopicAdditions:(id)a3
{
  v4 = a3;
  topicAdditions = self->_topicAdditions;
  v8 = v4;
  if (!topicAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicAdditions;
    self->_topicAdditions = v6;

    v4 = v8;
    topicAdditions = self->_topicAdditions;
  }

  [(NSMutableArray *)topicAdditions addObject:v4];
}

- (void)addTopicFilterAdditions:(id)a3
{
  v4 = a3;
  topicFilterAdditions = self->_topicFilterAdditions;
  v8 = v4;
  if (!topicFilterAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicFilterAdditions;
    self->_topicFilterAdditions = v6;

    v4 = v8;
    topicFilterAdditions = self->_topicFilterAdditions;
  }

  [(NSMutableArray *)topicFilterAdditions addObject:v4];
}

@end