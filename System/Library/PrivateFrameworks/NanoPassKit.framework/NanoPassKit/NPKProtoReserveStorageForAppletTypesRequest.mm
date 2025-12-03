@interface NPKProtoReserveStorageForAppletTypesRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addAppletTypes:(id)types;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoReserveStorageForAppletTypesRequest

- (void)addAppletTypes:(id)types
{
  typesCopy = types;
  appletTypes = self->_appletTypes;
  v8 = typesCopy;
  if (!appletTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appletTypes;
    self->_appletTypes = v6;

    typesCopy = v8;
    appletTypes = self->_appletTypes;
  }

  [(NSMutableArray *)appletTypes addObject:typesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoReserveStorageForAppletTypesRequest;
  v4 = [(NPKProtoReserveStorageForAppletTypesRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoReserveStorageForAppletTypesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  appletTypes = self->_appletTypes;
  if (appletTypes)
  {
    [dictionary setObject:appletTypes forKey:@"appletTypes"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    [v4 setObject:metadata forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_appletTypes;
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

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoReserveStorageForAppletTypesRequest *)self appletTypesCount])
  {
    [toCopy clearAppletTypes];
    appletTypesCount = [(NPKProtoReserveStorageForAppletTypesRequest *)self appletTypesCount];
    if (appletTypesCount)
    {
      v5 = appletTypesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoReserveStorageForAppletTypesRequest *)self appletTypesAtIndex:i];
        [toCopy addAppletTypes:v7];
      }
    }
  }

  if (self->_metadata)
  {
    [toCopy setMetadata:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_appletTypes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{zone, v16}];
        [v5 addAppletTypes:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_metadata copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((appletTypes = self->_appletTypes, !(appletTypes | equalCopy[1])) || -[NSMutableArray isEqual:](appletTypes, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | equalCopy[2])
    {
      v7 = [(NSData *)metadata isEqual:?];
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
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = fromCopy[1];
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

        [(NPKProtoReserveStorageForAppletTypesRequest *)self addAppletTypes:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (fromCopy[2])
  {
    [(NPKProtoReserveStorageForAppletTypesRequest *)self setMetadata:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end