@interface BMPBUserStatusChangeEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIdsHandles:(id)handles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBUserStatusChangeEvent

- (void)addIdsHandles:(id)handles
{
  handlesCopy = handles;
  idsHandles = self->_idsHandles;
  v8 = handlesCopy;
  if (!idsHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_idsHandles;
    self->_idsHandles = v6;

    handlesCopy = v8;
    idsHandles = self->_idsHandles;
  }

  [(NSMutableArray *)idsHandles addObject:handlesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBUserStatusChangeEvent;
  v4 = [(BMPBUserStatusChangeEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBUserStatusChangeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  idsHandle = self->_idsHandle;
  if (idsHandle)
  {
    [dictionary setObject:idsHandle forKey:@"idsHandle"];
  }

  statusChangeType = self->_statusChangeType;
  if (statusChangeType)
  {
    [v4 setObject:statusChangeType forKey:@"statusChangeType"];
  }

  idsHandles = self->_idsHandles;
  if (idsHandles)
  {
    [v4 setObject:idsHandles forKey:@"idsHandles"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_idsHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_statusChangeType)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_idsHandles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_idsHandle)
  {
    [toCopy setIdsHandle:?];
  }

  if (self->_statusChangeType)
  {
    [toCopy setStatusChangeType:?];
  }

  if ([(BMPBUserStatusChangeEvent *)self idsHandlesCount])
  {
    [toCopy clearIdsHandles];
    idsHandlesCount = [(BMPBUserStatusChangeEvent *)self idsHandlesCount];
    if (idsHandlesCount)
    {
      v5 = idsHandlesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBUserStatusChangeEvent *)self idsHandlesAtIndex:i];
        [toCopy addIdsHandles:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_idsHandle copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_statusChangeType copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_idsHandles;
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
        [v5 addIdsHandles:v15];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((idsHandle = self->_idsHandle, !(idsHandle | equalCopy[1])) || -[NSString isEqual:](idsHandle, "isEqual:")) && ((statusChangeType = self->_statusChangeType, !(statusChangeType | equalCopy[3])) || -[NSString isEqual:](statusChangeType, "isEqual:")))
  {
    idsHandles = self->_idsHandles;
    if (idsHandles | equalCopy[2])
    {
      v8 = [(NSMutableArray *)idsHandles isEqual:?];
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
  v3 = [(NSString *)self->_idsHandle hash];
  v4 = [(NSString *)self->_statusChangeType hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_idsHandles hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(BMPBUserStatusChangeEvent *)self setIdsHandle:?];
  }

  if (*(fromCopy + 3))
  {
    [(BMPBUserStatusChangeEvent *)self setStatusChangeType:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [(BMPBUserStatusChangeEvent *)self addIdsHandles:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end