@interface HDCodableSourceAuthorization
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAuthorizations:(id)authorizations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSourceAuthorization

- (void)addAuthorizations:(id)authorizations
{
  authorizationsCopy = authorizations;
  authorizations = self->_authorizations;
  v8 = authorizationsCopy;
  if (!authorizations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_authorizations;
    self->_authorizations = v6;

    authorizationsCopy = v8;
    authorizations = self->_authorizations;
  }

  [(NSMutableArray *)authorizations addObject:authorizationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSourceAuthorization;
  v4 = [(HDCodableSourceAuthorization *)&v8 description];
  dictionaryRepresentation = [(HDCodableSourceAuthorization *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  sourceUUID = self->_sourceUUID;
  if (sourceUUID)
  {
    [dictionary setObject:sourceUUID forKey:@"sourceUUID"];
  }

  if ([(NSMutableArray *)self->_authorizations count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_authorizations, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_authorizations;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"authorizations"];
  }

  backupUUID = self->_backupUUID;
  if (backupUUID)
  {
    [v4 setObject:backupUUID forKey:@"backupUUID"];
  }

  source = self->_source;
  if (source)
  {
    dictionaryRepresentation2 = [(HDCodableSource *)source dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"source"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_sourceUUID)
  {
    PBDataWriterWriteDataField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_authorizations;
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
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_backupUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_source)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_sourceUUID)
  {
    [toCopy setSourceUUID:?];
  }

  if ([(HDCodableSourceAuthorization *)self authorizationsCount])
  {
    [toCopy clearAuthorizations];
    authorizationsCount = [(HDCodableSourceAuthorization *)self authorizationsCount];
    if (authorizationsCount)
    {
      v5 = authorizationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableSourceAuthorization *)self authorizationsAtIndex:i];
        [toCopy addAuthorizations:v7];
      }
    }
  }

  if (self->_backupUUID)
  {
    [toCopy setBackupUUID:?];
  }

  v8 = toCopy;
  if (self->_source)
  {
    [toCopy setSource:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_sourceUUID copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_authorizations;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) copyWithZone:{zone, v20}];
        [v5 addAuthorizations:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_backupUUID copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(HDCodableSource *)self->_source copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sourceUUID = self->_sourceUUID, !(sourceUUID | equalCopy[4])) || -[NSData isEqual:](sourceUUID, "isEqual:")) && ((authorizations = self->_authorizations, !(authorizations | equalCopy[1])) || -[NSMutableArray isEqual:](authorizations, "isEqual:")) && ((backupUUID = self->_backupUUID, !(backupUUID | equalCopy[2])) || -[NSData isEqual:](backupUUID, "isEqual:")))
  {
    source = self->_source;
    if (source | equalCopy[3])
    {
      v9 = [(HDCodableSource *)source isEqual:?];
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
  v3 = [(NSData *)self->_sourceUUID hash];
  v4 = [(NSMutableArray *)self->_authorizations hash]^ v3;
  v5 = [(NSData *)self->_backupUUID hash];
  return v4 ^ v5 ^ [(HDCodableSource *)self->_source hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(HDCodableSourceAuthorization *)self setSourceUUID:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCodableSourceAuthorization *)self addAuthorizations:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 2))
  {
    [(HDCodableSourceAuthorization *)self setBackupUUID:?];
  }

  source = self->_source;
  v11 = *(fromCopy + 3);
  if (source)
  {
    if (v11)
    {
      [(HDCodableSource *)source mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(HDCodableSourceAuthorization *)self setSource:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end