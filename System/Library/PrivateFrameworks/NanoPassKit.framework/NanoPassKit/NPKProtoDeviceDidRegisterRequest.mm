@interface NPKProtoDeviceDidRegisterRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBrokerRegionPushTopics:(id)a3;
- (void)addTsmRegionPushTopics:(id)a3;
- (void)addTsmRegionURLs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoDeviceDidRegisterRequest

- (void)addTsmRegionPushTopics:(id)a3
{
  v4 = a3;
  tsmRegionPushTopics = self->_tsmRegionPushTopics;
  v8 = v4;
  if (!tsmRegionPushTopics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tsmRegionPushTopics;
    self->_tsmRegionPushTopics = v6;

    v4 = v8;
    tsmRegionPushTopics = self->_tsmRegionPushTopics;
  }

  [(NSMutableArray *)tsmRegionPushTopics addObject:v4];
}

- (void)addTsmRegionURLs:(id)a3
{
  v4 = a3;
  tsmRegionURLs = self->_tsmRegionURLs;
  v8 = v4;
  if (!tsmRegionURLs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tsmRegionURLs;
    self->_tsmRegionURLs = v6;

    v4 = v8;
    tsmRegionURLs = self->_tsmRegionURLs;
  }

  [(NSMutableArray *)tsmRegionURLs addObject:v4];
}

- (void)addBrokerRegionPushTopics:(id)a3
{
  v4 = a3;
  brokerRegionPushTopics = self->_brokerRegionPushTopics;
  v8 = v4;
  if (!brokerRegionPushTopics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_brokerRegionPushTopics;
    self->_brokerRegionPushTopics = v6;

    v4 = v8;
    brokerRegionPushTopics = self->_brokerRegionPushTopics;
  }

  [(NSMutableArray *)brokerRegionPushTopics addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoDeviceDidRegisterRequest;
  v4 = [(NPKProtoDeviceDidRegisterRequest *)&v8 description];
  v5 = [(NPKProtoDeviceDidRegisterRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  tsmRegionPushTopics = self->_tsmRegionPushTopics;
  if (tsmRegionPushTopics)
  {
    [v3 setObject:tsmRegionPushTopics forKey:@"tsmRegionPushTopics"];
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

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v16 = a3;
  if ([(NPKProtoDeviceDidRegisterRequest *)self tsmRegionPushTopicsCount])
  {
    [v16 clearTsmRegionPushTopics];
    v4 = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionPushTopicsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionPushTopicsAtIndex:i];
        [v16 addTsmRegionPushTopics:v7];
      }
    }
  }

  if ([(NPKProtoDeviceDidRegisterRequest *)self tsmRegionURLsCount])
  {
    [v16 clearTsmRegionURLs];
    v8 = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionURLsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoDeviceDidRegisterRequest *)self tsmRegionURLsAtIndex:j];
        [v16 addTsmRegionURLs:v11];
      }
    }
  }

  if ([(NPKProtoDeviceDidRegisterRequest *)self brokerRegionPushTopicsCount])
  {
    [v16 clearBrokerRegionPushTopics];
    v12 = [(NPKProtoDeviceDidRegisterRequest *)self brokerRegionPushTopicsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NPKProtoDeviceDidRegisterRequest *)self brokerRegionPushTopicsAtIndex:k];
        [v16 addBrokerRegionPushTopics:v15];
      }
    }
  }

  if (self->_primaryRegionTopic)
  {
    [v16 setPrimaryRegionTopic:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v36 + 1) + 8 * v10) copyWithZone:a3];
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

        v17 = [*(*(&v32 + 1) + 8 * v16) copyWithZone:a3];
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

        v23 = [*(*(&v28 + 1) + 8 * v22) copyWithZone:{a3, v28}];
        [v5 addBrokerRegionPushTopics:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_primaryRegionTopic copyWithZone:a3];
  v25 = v5[2];
  v5[2] = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((tsmRegionPushTopics = self->_tsmRegionPushTopics, !(tsmRegionPushTopics | v4[3])) || -[NSMutableArray isEqual:](tsmRegionPushTopics, "isEqual:")) && ((tsmRegionURLs = self->_tsmRegionURLs, !(tsmRegionURLs | v4[4])) || -[NSMutableArray isEqual:](tsmRegionURLs, "isEqual:")) && ((brokerRegionPushTopics = self->_brokerRegionPushTopics, !(brokerRegionPushTopics | v4[1])) || -[NSMutableArray isEqual:](brokerRegionPushTopics, "isEqual:")))
  {
    primaryRegionTopic = self->_primaryRegionTopic;
    if (primaryRegionTopic | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v4[3];
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
  v10 = v4[4];
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
  v15 = v4[1];
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

  if (v4[2])
  {
    [(NPKProtoDeviceDidRegisterRequest *)self setPrimaryRegionTopic:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end