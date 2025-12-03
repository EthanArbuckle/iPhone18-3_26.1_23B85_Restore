@interface NTKProtoSharedCollections
+ (id)protoBufferFromSharedCollections:(id)collections;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sharedCollectionsDictionary;
- (void)addCollections:(id)collections;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NTKProtoSharedCollections

- (void)addCollections:(id)collections
{
  collectionsCopy = collections;
  collections = self->_collections;
  v8 = collectionsCopy;
  if (!collections)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_collections;
    self->_collections = v6;

    collectionsCopy = v8;
    collections = self->_collections;
  }

  [(NSMutableArray *)collections addObject:collectionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKProtoSharedCollections;
  v4 = [(NTKProtoSharedCollections *)&v8 description];
  dictionaryRepresentation = [(NTKProtoSharedCollections *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_collections count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_collections, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_collections;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"collections"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_collections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NTKProtoSharedCollections *)self collectionsCount])
  {
    [toCopy clearCollections];
    collectionsCount = [(NTKProtoSharedCollections *)self collectionsCount];
    if (collectionsCount)
    {
      v5 = collectionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NTKProtoSharedCollections *)self collectionsAtIndex:i];
        [toCopy addCollections:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
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

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addCollections:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    collections = self->_collections;
    if (collections | equalCopy[1])
    {
      v6 = [(NSMutableArray *)collections isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NTKProtoSharedCollections *)self addCollections:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (id)protoBufferFromSharedCollections:(id)collections
{
  collectionsCopy = collections;
  v4 = objc_alloc_init(NTKProtoSharedCollections);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__NTKProtoSharedCollections_NTKAdditons__protoBufferFromSharedCollections___block_invoke;
  v7[3] = &unk_278781A98;
  v5 = v4;
  v8 = v5;
  [collectionsCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __75__NTKProtoSharedCollections_NTKAdditons__protoBufferFromSharedCollections___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 protoBufferIgnoringSharedCollections:1];
  [v3 addCollections:v4];
}

- (id)sharedCollectionsDictionary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NTKProtoSharedCollections collectionsCount](self, "collectionsCount")}];
  collections = [(NTKProtoSharedCollections *)self collections];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__NTKProtoSharedCollections_NTKAdditons__sharedCollectionsDictionary__block_invoke;
  v12[3] = &unk_278789088;
  v5 = v3;
  v13 = v5;
  [collections enumerateObjectsUsingBlock:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__NTKProtoSharedCollections_NTKAdditons__sharedCollectionsDictionary__block_invoke_5;
  v10[3] = &unk_278781A98;
  v6 = v5;
  v11 = v6;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __69__NTKProtoSharedCollections_NTKAdditons__sharedCollectionsDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NTKPigmentCollection collectionFromProtoBuffer:v3 sharedCollections:0];
  v5 = [v4 collectionName];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v4 collectionName];
    [v6 setObject:v4 forKeyedSubscript:v7];
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__NTKProtoSharedCollections_NTKAdditons__sharedCollectionsDictionary__block_invoke_cold_1(v3, v8);
    }
  }
}

void __69__NTKProtoSharedCollections_NTKAdditons__sharedCollectionsDictionary__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 formattedText];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "#color-sync Failure while decoding shared collections's collection. Data won't be included in it. Protobuffer: %{public}@", &v4, 0xCu);
}

@end