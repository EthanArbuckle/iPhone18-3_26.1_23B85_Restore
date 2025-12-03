@interface NPKProtoDeviceDidRegisterRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBrokerRegionPushTopics:(id)topics;
- (void)addTsmRegionPushTopics:(id)topics;
- (void)addTsmRegionURLs:(id)ls;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoDeviceDidRegisterRequest

- (void)addTsmRegionPushTopics:(id)topics
{
  topicsCopy = topics;
  tsmRegionPushTopics = self->_tsmRegionPushTopics;
  v8 = topicsCopy;
  if (!tsmRegionPushTopics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tsmRegionPushTopics;
    self->_tsmRegionPushTopics = v6;

    topicsCopy = v8;
    tsmRegionPushTopics = self->_tsmRegionPushTopics;
  }

  [(NSMutableArray *)tsmRegionPushTopics addObject:topicsCopy];
}

- (void)addTsmRegionURLs:(id)ls
{
  lsCopy = ls;
  tsmRegionURLs = self->_tsmRegionURLs;
  v8 = lsCopy;
  if (!tsmRegionURLs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tsmRegionURLs;
    self->_tsmRegionURLs = v6;

    lsCopy = v8;
    tsmRegionURLs = self->_tsmRegionURLs;
  }

  [(NSMutableArray *)tsmRegionURLs addObject:lsCopy];
}

- (void)addBrokerRegionPushTopics:(id)topics
{
  topicsCopy = topics;
  brokerRegionPushTopics = self->_brokerRegionPushTopics;
  v8 = topicsCopy;
  if (!brokerRegionPushTopics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_brokerRegionPushTopics;
    self->_brokerRegionPushTopics = v6;

    topicsCopy = v8;
    brokerRegionPushTopics = self->_brokerRegionPushTopics;
  }

  [(NSMutableArray *)brokerRegionPushTopics addObject:topicsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoDeviceDidRegisterRequest;
  v4 = [(NPKProtoDeviceDidRegisterRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoDeviceDidRegisterRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  tsmRegionPushTopics = self->_tsmRegionPushTopics;
  if (tsmRegionPushTopics)
  {
    [dictionary setObject:tsmRegionPushTopics forKey:@"tsmRegionPushTopics"];
  }

  tsmRegionURLs = self->_tsmRegionURLs;
  if (tsmRegionURLs)
  {
    [v4 setObject:tsmRegionURLs forKey:@"tsmRegionURLs"];
  }

  brokerRegionPushTopics = self->_brokerRegionPushTopics;
  if (brokerRegionPushTopics)
  {
    [v4 setObject:brokerRegionPushTopics forKey:@"brokerRegionPushTopics"];
  }

  primaryRegionTopic = self->_primaryRegionTopic;
  if (primaryRegionTopic)
  {
    [v4 setObject:primaryRegionTopic forKey:@"primaryRegionTopic"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_tsmRegionPushTopics;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_tsmRegionURLs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_brokerRegionPushTopics;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  if (self->_primaryRegionTopic)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoDeviceDidRegisterRequest *)self tsmRegionPushTopicsCount])
  {
    [toCopy clearTsmRegionPushTopics];
    tsmRegionPushTopicsCount = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionPushTopicsCount];
    if (tsmRegionPushTopicsCount)
    {
      v5 = tsmRegionPushTopicsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionPushTopicsAtIndex:i];
        [toCopy addTsmRegionPushTopics:v7];
      }
    }
  }

  if ([(NPKProtoDeviceDidRegisterRequest *)self tsmRegionURLsCount])
  {
    [toCopy clearTsmRegionURLs];
    tsmRegionURLsCount = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionURLsCount];
    if (tsmRegionURLsCount)
    {
      v9 = tsmRegionURLsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionURLsAtIndex:j];
        [toCopy addTsmRegionURLs:v11];
      }
    }
  }

  if ([(NPKProtoDeviceDidRegisterRequest *)self brokerRegionPushTopicsCount])
  {
    [toCopy clearBrokerRegionPushTopics];
    brokerRegionPushTopicsCount = [(NPKProtoDeviceDidRegisterRequest *)self brokerRegionPushTopicsCount];
    if (brokerRegionPushTopicsCount)
    {
      v13 = brokerRegionPushTopicsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NPKProtoDeviceDidRegisterRequest *)self brokerRegionPushTopicsAtIndex:k];
        [toCopy addBrokerRegionPushTopics:v15];
      }
    }
  }

  if (self->_primaryRegionTopic)
  {
    [toCopy setPrimaryRegionTopic:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = self->_tsmRegionPushTopics;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v36 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addTsmRegionPushTopics:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_tsmRegionURLs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addTsmRegionURLs:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_brokerRegionPushTopics;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * v22) copyWithZone:{zone, v28}];
        [v5 addBrokerRegionPushTopics:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_primaryRegionTopic copyWithZone:zone];
  v25 = v5[2];
  v5[2] = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((tsmRegionPushTopics = self->_tsmRegionPushTopics, !(tsmRegionPushTopics | equalCopy[3])) || -[NSMutableArray isEqual:](tsmRegionPushTopics, "isEqual:")) && ((tsmRegionURLs = self->_tsmRegionURLs, !(tsmRegionURLs | equalCopy[4])) || -[NSMutableArray isEqual:](tsmRegionURLs, "isEqual:")) && ((brokerRegionPushTopics = self->_brokerRegionPushTopics, !(brokerRegionPushTopics | equalCopy[1])) || -[NSMutableArray isEqual:](brokerRegionPushTopics, "isEqual:")))
  {
    primaryRegionTopic = self->_primaryRegionTopic;
    if (primaryRegionTopic | equalCopy[2])
    {
      v9 = [(NSString *)primaryRegionTopic isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_tsmRegionPushTopics hash];
  v4 = [(NSMutableArray *)self->_tsmRegionURLs hash]^ v3;
  v5 = [(NSMutableArray *)self->_brokerRegionPushTopics hash];
  return v4 ^ v5 ^ [(NSString *)self->_primaryRegionTopic hash];
}

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = fromCopy[3];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoDeviceDidRegisterRequest *)self addTsmRegionPushTopics:*(*(&v29 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = fromCopy[4];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoDeviceDidRegisterRequest *)self addTsmRegionURLs:*(*(&v25 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = fromCopy[1];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NPKProtoDeviceDidRegisterRequest *)self addBrokerRegionPushTopics:*(*(&v21 + 1) + 8 * k), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  if (fromCopy[2])
  {
    [(NPKProtoDeviceDidRegisterRequest *)self setPrimaryRegionTopic:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end