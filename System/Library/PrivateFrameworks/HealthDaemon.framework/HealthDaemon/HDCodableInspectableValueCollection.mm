@interface HDCodableInspectableValueCollection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCollection:(id)collection;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableInspectableValueCollection

- (void)addCollection:(id)collection
{
  collectionCopy = collection;
  collections = self->_collections;
  v8 = collectionCopy;
  if (!collections)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_collections;
    self->_collections = v6;

    collectionCopy = v8;
    collections = self->_collections;
  }

  [(NSMutableArray *)collections addObject:collectionCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableInspectableValueCollection;
  v4 = [(HDCodableInspectableValueCollection *)&v8 description];
  dictionaryRepresentation = [(HDCodableInspectableValueCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_collectionType];
    [dictionary setObject:v4 forKey:@"collectionType"];
  }

  if ([(NSMutableArray *)self->_collections count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_collections, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_collections;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"collection"];
  }

  elementTags = self->_elementTags;
  if (elementTags)
  {
    dictionaryRepresentation2 = [(HDCodableMedicalCodingList *)elementTags dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"elementTags"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    collectionType = self->_collectionType;
    PBDataWriterWriteInt64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_collections;
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

  if (self->_elementTags)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_collectionType;
    *(toCopy + 32) |= 1u;
  }

  v9 = toCopy;
  if ([(HDCodableInspectableValueCollection *)self collectionsCount])
  {
    [v9 clearCollections];
    collectionsCount = [(HDCodableInspectableValueCollection *)self collectionsCount];
    if (collectionsCount)
    {
      v6 = collectionsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HDCodableInspectableValueCollection *)self collectionAtIndex:i];
        [v9 addCollection:v8];
      }
    }
  }

  if (self->_elementTags)
  {
    [v9 setElementTags:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_collectionType;
    *(v5 + 32) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_collections;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) copyWithZone:{zone, v17}];
        [v6 addCollection:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(HDCodableMedicalCodingList *)self->_elementTags copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_collectionType != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  collections = self->_collections;
  if (collections | *(equalCopy + 2) && ![(NSMutableArray *)collections isEqual:?])
  {
    goto LABEL_11;
  }

  elementTags = self->_elementTags;
  if (elementTags | *(equalCopy + 3))
  {
    v8 = [(HDCodableMedicalCodingList *)elementTags isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_collectionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_collections hash]^ v3;
  return v4 ^ [(HDCodableMedicalCodingList *)self->_elementTags hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 32))
  {
    self->_collectionType = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableInspectableValueCollection *)self addCollection:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  elementTags = self->_elementTags;
  v12 = v5[3];
  if (elementTags)
  {
    if (v12)
    {
      [(HDCodableMedicalCodingList *)elementTags mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HDCodableInspectableValueCollection *)self setElementTags:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end