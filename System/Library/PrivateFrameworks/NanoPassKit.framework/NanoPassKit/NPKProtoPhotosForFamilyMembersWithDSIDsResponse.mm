@interface NPKProtoPhotosForFamilyMembersWithDSIDsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFamilyPhotos:(id)photos;
- (void)addFamilyPhotosIDs:(id)ds;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPhotosForFamilyMembersWithDSIDsResponse

- (void)addFamilyPhotosIDs:(id)ds
{
  dsCopy = ds;
  familyPhotosIDs = self->_familyPhotosIDs;
  v8 = dsCopy;
  if (!familyPhotosIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_familyPhotosIDs;
    self->_familyPhotosIDs = v6;

    dsCopy = v8;
    familyPhotosIDs = self->_familyPhotosIDs;
  }

  [(NSMutableArray *)familyPhotosIDs addObject:dsCopy];
}

- (void)addFamilyPhotos:(id)photos
{
  photosCopy = photos;
  familyPhotos = self->_familyPhotos;
  v8 = photosCopy;
  if (!familyPhotos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_familyPhotos;
    self->_familyPhotos = v6;

    photosCopy = v8;
    familyPhotos = self->_familyPhotos;
  }

  [(NSMutableArray *)familyPhotos addObject:photosCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPhotosForFamilyMembersWithDSIDsResponse;
  v4 = [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v4 forKey:@"success"];
  }

  familyPhotosIDs = self->_familyPhotosIDs;
  if (familyPhotosIDs)
  {
    [dictionary setObject:familyPhotosIDs forKey:@"familyPhotosIDs"];
  }

  familyPhotos = self->_familyPhotos;
  if (familyPhotos)
  {
    [dictionary setObject:familyPhotos forKey:@"familyPhotos"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_familyPhotosIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_familyPhotos;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteDataField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_success;
    toCopy[28] |= 1u;
  }

  v13 = toCopy;
  if ([(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self familyPhotosIDsCount])
  {
    [v13 clearFamilyPhotosIDs];
    familyPhotosIDsCount = [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self familyPhotosIDsCount];
    if (familyPhotosIDsCount)
    {
      v6 = familyPhotosIDsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self familyPhotosIDsAtIndex:i];
        [v13 addFamilyPhotosIDs:v8];
      }
    }
  }

  if ([(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self familyPhotosCount])
  {
    [v13 clearFamilyPhotos];
    familyPhotosCount = [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self familyPhotosCount];
    if (familyPhotosCount)
    {
      v10 = familyPhotosCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self familyPhotosAtIndex:j];
        [v13 addFamilyPhotos:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_familyPhotosIDs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addFamilyPhotosIDs:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_familyPhotos;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{zone, v21}];
        [v6 addFamilyPhotos:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_success)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  familyPhotosIDs = self->_familyPhotosIDs;
  if (familyPhotosIDs | *(equalCopy + 2) && ![(NSMutableArray *)familyPhotosIDs isEqual:?])
  {
    goto LABEL_9;
  }

  familyPhotos = self->_familyPhotos;
  if (familyPhotos | *(equalCopy + 1))
  {
    v8 = [(NSMutableArray *)familyPhotos isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_success;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_familyPhotosIDs hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_familyPhotos hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_success = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self addFamilyPhotosIDs:*(*(&v21 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5[1];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NPKProtoPhotosForFamilyMembersWithDSIDsResponse *)self addFamilyPhotos:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end