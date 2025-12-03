@interface HMDRemoteEventRouterProtoConnectMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTopicAdditions:(id)additions;
- (void)addTopicFilterAdditions:(id)additions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMDRemoteEventRouterProtoConnectMessage

- (void)mergeFrom:(id)from
{
  v31 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[12])
  {
    self->_routerVersion = fromCopy[4];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_routerVersion != *(equalCopy + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  connectEvent = self->_connectEvent;
  if (connectEvent | *(equalCopy + 1) && ![(HMEProtoEventInfo *)connectEvent isEqual:?])
  {
    goto LABEL_15;
  }

  unregisterEvent = self->_unregisterEvent;
  if (unregisterEvent | *(equalCopy + 5))
  {
    if (![(HMEProtoEventInfo *)unregisterEvent isEqual:?])
    {
      goto LABEL_15;
    }
  }

  topicFilterAdditions = self->_topicFilterAdditions;
  if (topicFilterAdditions | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)topicFilterAdditions isEqual:?])
    {
      goto LABEL_15;
    }
  }

  topicAdditions = self->_topicAdditions;
  if (topicAdditions | *(equalCopy + 3))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_routerVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(HMEProtoEventInfo *)self->_connectEvent copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HMEProtoEventInfo *)self->_unregisterEvent copyWithZone:zone];
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

        v16 = [*(*(&v29 + 1) + 8 * v15) copyWithZone:zone];
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

        v22 = [*(*(&v25 + 1) + 8 * v21) copyWithZone:{zone, v25}];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_routerVersion;
    *(toCopy + 48) |= 1u;
  }

  v13 = toCopy;
  if (self->_connectEvent)
  {
    [toCopy setConnectEvent:?];
  }

  if (self->_unregisterEvent)
  {
    [v13 setUnregisterEvent:?];
  }

  if ([(HMDRemoteEventRouterProtoConnectMessage *)self topicFilterAdditionsCount])
  {
    [v13 clearTopicFilterAdditions];
    topicFilterAdditionsCount = [(HMDRemoteEventRouterProtoConnectMessage *)self topicFilterAdditionsCount];
    if (topicFilterAdditionsCount)
    {
      v6 = topicFilterAdditionsCount;
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
    topicAdditionsCount = [(HMDRemoteEventRouterProtoConnectMessage *)self topicAdditionsCount];
    if (topicAdditionsCount)
    {
      v10 = topicAdditionsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HMDRemoteEventRouterProtoConnectMessage *)self topicAdditionsAtIndex:j];
        [v13 addTopicAdditions:v12];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_routerVersion];
    [dictionary setObject:v4 forKey:@"routerVersion"];
  }

  connectEvent = self->_connectEvent;
  if (connectEvent)
  {
    dictionaryRepresentation = [(HMEProtoEventInfo *)connectEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"connectEvent"];
  }

  unregisterEvent = self->_unregisterEvent;
  if (unregisterEvent)
  {
    dictionaryRepresentation2 = [(HMEProtoEventInfo *)unregisterEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"unregisterEvent"];
  }

  topicFilterAdditions = self->_topicFilterAdditions;
  if (topicFilterAdditions)
  {
    [dictionary setObject:topicFilterAdditions forKey:@"topicFilterAdditions"];
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

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation3];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"topicAdditions"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoConnectMessage;
  v4 = [(HMDRemoteEventRouterProtoConnectMessage *)&v8 description];
  dictionaryRepresentation = [(HMDRemoteEventRouterProtoConnectMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTopicAdditions:(id)additions
{
  additionsCopy = additions;
  topicAdditions = self->_topicAdditions;
  v8 = additionsCopy;
  if (!topicAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicAdditions;
    self->_topicAdditions = v6;

    additionsCopy = v8;
    topicAdditions = self->_topicAdditions;
  }

  [(NSMutableArray *)topicAdditions addObject:additionsCopy];
}

- (void)addTopicFilterAdditions:(id)additions
{
  additionsCopy = additions;
  topicFilterAdditions = self->_topicFilterAdditions;
  v8 = additionsCopy;
  if (!topicFilterAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicFilterAdditions;
    self->_topicFilterAdditions = v6;

    additionsCopy = v8;
    topicFilterAdditions = self->_topicFilterAdditions;
  }

  [(NSMutableArray *)topicFilterAdditions addObject:additionsCopy];
}

@end