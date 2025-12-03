@interface NGMPBFullDeviceIdentity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPrekeys:(id)prekeys;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NGMPBFullDeviceIdentity

- (void)addPrekeys:(id)prekeys
{
  prekeysCopy = prekeys;
  prekeys = self->_prekeys;
  v8 = prekeysCopy;
  if (!prekeys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_prekeys;
    self->_prekeys = v6;

    prekeysCopy = v8;
    prekeys = self->_prekeys;
  }

  [(NSMutableArray *)prekeys addObject:prekeysCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBFullDeviceIdentity;
  v4 = [(NGMPBFullDeviceIdentity *)&v8 description];
  dictionaryRepresentation = [(NGMPBFullDeviceIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  signingKey = self->_signingKey;
  if (signingKey)
  {
    dictionaryRepresentation = [(NGMPBP256Key *)signingKey dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"signingKey"];
  }

  if ([(NSMutableArray *)self->_prekeys count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_prekeys, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_prekeys;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"prekeys"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_signingKey)
  {
    [NGMPBFullDeviceIdentity writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_prekeys;
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

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setSigningKey:self->_signingKey];
  if ([(NGMPBFullDeviceIdentity *)self prekeysCount])
  {
    [toCopy clearPrekeys];
    prekeysCount = [(NGMPBFullDeviceIdentity *)self prekeysCount];
    if (prekeysCount)
    {
      v5 = prekeysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NGMPBFullDeviceIdentity *)self prekeysAtIndex:i];
        [toCopy addPrekeys:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NGMPBP256Key *)self->_signingKey copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_prekeys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [v5 addPrekeys:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((signingKey = self->_signingKey, !(signingKey | equalCopy[2])) || -[NGMPBP256Key isEqual:](signingKey, "isEqual:")))
  {
    prekeys = self->_prekeys;
    if (prekeys | equalCopy[1])
    {
      v7 = [(NSMutableArray *)prekeys isEqual:?];
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

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  signingKey = self->_signingKey;
  v6 = *(fromCopy + 2);
  if (signingKey)
  {
    if (v6)
    {
      [(NGMPBP256Key *)signingKey mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NGMPBFullDeviceIdentity *)self setSigningKey:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NGMPBFullDeviceIdentity *)self addPrekeys:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end