@interface HDCodableSampleOriginCollection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addContributor:(id)a3;
- (void)addDevice:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSampleOriginCollection

- (void)addDevice:(id)a3
{
  v4 = a3;
  devices = self->_devices;
  v8 = v4;
  if (!devices)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_devices;
    self->_devices = v6;

    v4 = v8;
    devices = self->_devices;
  }

  [(NSMutableArray *)devices addObject:v4];
}

- (void)addContributor:(id)a3
{
  v4 = a3;
  contributors = self->_contributors;
  v8 = v4;
  if (!contributors)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_contributors;
    self->_contributors = v6;

    v4 = v8;
    contributors = self->_contributors;
  }

  [(NSMutableArray *)contributors addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSampleOriginCollection;
  v4 = [(HDCodableSampleOriginCollection *)&v8 description];
  v5 = [(HDCodableSampleOriginCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_devices count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_devices, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = self->_devices;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"device"];
  }

  if ([(NSMutableArray *)self->_contributors count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_contributors, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_contributors;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"contributor"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_devices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_contributors;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(HDCodableSampleOriginCollection *)self devicesCount])
  {
    [v12 clearDevices];
    v4 = [(HDCodableSampleOriginCollection *)self devicesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableSampleOriginCollection *)self deviceAtIndex:i];
        [v12 addDevice:v7];
      }
    }
  }

  if ([(HDCodableSampleOriginCollection *)self contributorsCount])
  {
    [v12 clearContributors];
    v8 = [(HDCodableSampleOriginCollection *)self contributorsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HDCodableSampleOriginCollection *)self contributorAtIndex:j];
        [v12 addContributor:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_devices;
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

        v11 = [*(*(&v24 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addDevice:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_contributors;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
        [v5 addContributor:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((devices = self->_devices, !(devices | v4[2])) || -[NSMutableArray isEqual:](devices, "isEqual:")))
  {
    contributors = self->_contributors;
    if (contributors | v4[1])
    {
      v7 = [(NSMutableArray *)contributors isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4[2];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCodableSampleOriginCollection *)self addDevice:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4[1];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HDCodableSampleOriginCollection *)self addContributor:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end