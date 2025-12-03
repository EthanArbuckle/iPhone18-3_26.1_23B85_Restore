@interface SYSyncAllObjects
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAllObjects:(id)objects;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYSyncAllObjects

- (void)addAllObjects:(id)objects
{
  objectsCopy = objects;
  allObjects = self->_allObjects;
  v8 = objectsCopy;
  if (!allObjects)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_allObjects;
    self->_allObjects = v6;

    objectsCopy = v8;
    allObjects = self->_allObjects;
  }

  [(NSMutableArray *)allObjects addObject:objectsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncAllObjects;
  v4 = [(SYSyncAllObjects *)&v8 description];
  dictionaryRepresentation = [(SYSyncAllObjects *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(SYMessageHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  syncID = self->_syncID;
  if (syncID)
  {
    [dictionary setObject:syncID forKey:@"syncID"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
  [dictionary setObject:v7 forKey:@"version"];

  allObjects = self->_allObjects;
  if (allObjects)
  {
    [dictionary setObject:allObjects forKey:@"allObjects"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_header)
  {
    [SYSyncAllObjects writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_syncID)
  {
    [SYSyncAllObjects writeTo:];
  }

  PBDataWriterWriteStringField();
  version = self->_version;
  PBDataWriterWriteUint64Field();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_allObjects;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteDataField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setSyncID:self->_syncID];
  toCopy[1] = self->_version;
  if ([(SYSyncAllObjects *)self allObjectsCount])
  {
    [toCopy clearAllObjects];
    allObjectsCount = [(SYSyncAllObjects *)self allObjectsCount];
    if (allObjectsCount)
    {
      v5 = allObjectsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SYSyncAllObjects *)self allObjectsAtIndex:i];
        [toCopy addAllObjects:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_syncID copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v5[1] = self->_version;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_allObjects;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addAllObjects:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[3])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((syncID = self->_syncID, !(syncID | equalCopy[4])) || -[NSString isEqual:](syncID, "isEqual:")) && self->_version == equalCopy[1])
  {
    allObjects = self->_allObjects;
    if (allObjects | equalCopy[2])
    {
      v8 = [(NSMutableArray *)allObjects isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_syncID hash]^ v3;
  v5 = 2654435761u * self->_version;
  return v4 ^ [(NSMutableArray *)self->_allObjects hash]^ v5;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 3);
  if (header)
  {
    if (v6)
    {
      [(SYMessageHeader *)header mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SYSyncAllObjects *)self setHeader:?];
  }

  if (*(fromCopy + 4))
  {
    [(SYSyncAllObjects *)self setSyncID:?];
  }

  self->_version = *(fromCopy + 1);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(fromCopy + 2);
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

        [(SYSyncAllObjects *)self addAllObjects:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end