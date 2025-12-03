@interface BLTPBBulletinSummary
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKey:(id)key;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBBulletinSummary

- (void)addKey:(id)key
{
  keyCopy = key;
  keys = self->_keys;
  v8 = keyCopy;
  if (!keys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keys;
    self->_keys = v6;

    keyCopy = v8;
    keys = self->_keys;
  }

  [(NSMutableArray *)keys addObject:keyCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBBulletinSummary;
  v4 = [(BLTPBBulletinSummary *)&v8 description];
  dictionaryRepresentation = [(BLTPBBulletinSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID)
  {
    [dictionary setObject:publisherBulletinID forKey:@"publisherBulletinID"];
  }

  recordID = self->_recordID;
  if (recordID)
  {
    [v4 setObject:recordID forKey:@"recordID"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v4 setObject:sectionID forKey:@"sectionID"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_destinations];
  [v4 setObject:v8 forKey:@"destinations"];

  if ([(NSMutableArray *)self->_keys count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_keys, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_keys;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"key"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_publisherBulletinID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
  }

  if (!self->_sectionID)
  {
    [BLTPBBulletinSummary writeTo:];
  }

  PBDataWriterWriteStringField();
  destinations = self->_destinations;
  PBDataWriterWriteUint32Field();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_keys;
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
  v9 = toCopy;
  if (self->_publisherBulletinID)
  {
    [toCopy setPublisherBulletinID:?];
    toCopy = v9;
  }

  if (self->_recordID)
  {
    [v9 setRecordID:?];
    toCopy = v9;
  }

  [toCopy setSectionID:self->_sectionID];
  v9[2] = self->_destinations;
  if ([(BLTPBBulletinSummary *)self keysCount])
  {
    [v9 clearKeys];
    keysCount = [(BLTPBBulletinSummary *)self keysCount];
    if (keysCount)
    {
      v6 = keysCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BLTPBBulletinSummary *)self keyAtIndex:i];
        [v9 addKey:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_publisherBulletinID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_recordID copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_sectionID copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 8) = self->_destinations;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_keys;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
        [v5 addKey:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((publisherBulletinID = self->_publisherBulletinID, !(publisherBulletinID | equalCopy[3])) || -[NSString isEqual:](publisherBulletinID, "isEqual:")) && ((recordID = self->_recordID, !(recordID | equalCopy[4])) || -[NSString isEqual:](recordID, "isEqual:")) && ((sectionID = self->_sectionID, !(sectionID | equalCopy[5])) || -[NSString isEqual:](sectionID, "isEqual:")) && self->_destinations == *(equalCopy + 2))
  {
    keys = self->_keys;
    if (keys | equalCopy[2])
    {
      v9 = [(NSMutableArray *)keys isEqual:?];
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
  v3 = [(NSString *)self->_publisherBulletinID hash];
  v4 = [(NSString *)self->_recordID hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_sectionID hash];
  v6 = 2654435761 * self->_destinations;
  return v5 ^ [(NSMutableArray *)self->_keys hash]^ v6;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(BLTPBBulletinSummary *)self setPublisherBulletinID:?];
  }

  if (*(fromCopy + 4))
  {
    [(BLTPBBulletinSummary *)self setRecordID:?];
  }

  if (*(fromCopy + 5))
  {
    [(BLTPBBulletinSummary *)self setSectionID:?];
  }

  self->_destinations = *(fromCopy + 2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BLTPBBulletinSummary *)self addKey:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end