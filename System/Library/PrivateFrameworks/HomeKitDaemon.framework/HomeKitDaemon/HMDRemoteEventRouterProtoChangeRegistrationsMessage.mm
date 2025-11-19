@interface HMDRemoteEventRouterProtoChangeRegistrationsMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTopicAdditions:(id)a3;
- (void)addTopicFilterAdditions:(id)a3;
- (void)addTopicFilterRemovals:(id)a3;
- (void)addTopicRemovals:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDRemoteEventRouterProtoChangeRegistrationsMessage

- (void)mergeFrom:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v4[2];
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicFilterAdditions:*(*(&v38 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v4[3];
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicFilterRemovals:*(*(&v34 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v4[1];
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicAdditions:*(*(&v30 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v17);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v4[4];
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self addTopicRemovals:*(*(&v26 + 1) + 8 * v24++), v26];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_topicFilterAdditions hash];
  v4 = [(NSMutableArray *)self->_topicFilterRemovals hash]^ v3;
  v5 = [(NSMutableArray *)self->_topicAdditions hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_topicRemovals hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((topicFilterAdditions = self->_topicFilterAdditions, !(topicFilterAdditions | v4[2])) || -[NSMutableArray isEqual:](topicFilterAdditions, "isEqual:")) && ((topicFilterRemovals = self->_topicFilterRemovals, !(topicFilterRemovals | v4[3])) || -[NSMutableArray isEqual:](topicFilterRemovals, "isEqual:")) && ((topicAdditions = self->_topicAdditions, !(topicAdditions | v4[1])) || -[NSMutableArray isEqual:](topicAdditions, "isEqual:")))
  {
    topicRemovals = self->_topicRemovals;
    if (topicRemovals | v4[4])
    {
      v9 = [(NSMutableArray *)topicRemovals isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_topicFilterAdditions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v44 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addTopicFilterAdditions:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v8);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = self->_topicFilterRemovals;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v40 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addTopicFilterRemovals:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = self->_topicAdditions;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      v22 = 0;
      do
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v36 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addTopicAdditions:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v20);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = self->_topicRemovals;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v32 + 1) + 8 * v28) copyWithZone:{a3, v32}];
        [v5 addTopicRemovals:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v20 = a3;
  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsCount])
  {
    [v20 clearTopicFilterAdditions];
    v4 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsAtIndex:i];
        [v20 addTopicFilterAdditions:v7];
      }
    }
  }

  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsCount])
  {
    [v20 clearTopicFilterRemovals];
    v8 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsAtIndex:j];
        [v20 addTopicFilterRemovals:v11];
      }
    }
  }

  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicAdditionsCount])
  {
    [v20 clearTopicAdditions];
    v12 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicAdditionsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicAdditionsAtIndex:k];
        [v20 addTopicAdditions:v15];
      }
    }
  }

  if ([(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicRemovalsCount])
  {
    [v20 clearTopicRemovals];
    v16 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicRemovalsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self topicRemovalsAtIndex:m];
        [v20 addTopicRemovals:v19];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_topicFilterAdditions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_topicFilterRemovals;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_topicAdditions;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_topicRemovals;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  topicFilterAdditions = self->_topicFilterAdditions;
  if (topicFilterAdditions)
  {
    [v3 setObject:topicFilterAdditions forKey:@"topicFilterAdditions"];
  }

  topicFilterRemovals = self->_topicFilterRemovals;
  if (topicFilterRemovals)
  {
    [v4 setObject:topicFilterRemovals forKey:@"topicFilterRemovals"];
  }

  if ([(NSMutableArray *)self->_topicAdditions count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_topicAdditions, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = self->_topicAdditions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"topicAdditions"];
  }

  if ([(NSMutableArray *)self->_topicRemovals count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_topicRemovals, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_topicRemovals;
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

    [v4 setObject:v14 forKey:@"topicRemovals"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoChangeRegistrationsMessage;
  v4 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)&v8 description];
  v5 = [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addTopicRemovals:(id)a3
{
  v4 = a3;
  topicRemovals = self->_topicRemovals;
  v8 = v4;
  if (!topicRemovals)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicRemovals;
    self->_topicRemovals = v6;

    v4 = v8;
    topicRemovals = self->_topicRemovals;
  }

  [(NSMutableArray *)topicRemovals addObject:v4];
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

- (void)addTopicFilterRemovals:(id)a3
{
  v4 = a3;
  topicFilterRemovals = self->_topicFilterRemovals;
  v8 = v4;
  if (!topicFilterRemovals)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_topicFilterRemovals;
    self->_topicFilterRemovals = v6;

    v4 = v8;
    topicFilterRemovals = self->_topicFilterRemovals;
  }

  [(NSMutableArray *)topicFilterRemovals addObject:v4];
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