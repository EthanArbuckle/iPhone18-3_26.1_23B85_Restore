@interface NTKProtoPigmentCollection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCollections:(id)collections;
- (void)addDefaultGalleryColors:(id)colors;
- (void)addItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsStub:(BOOL)stub;
- (void)writeTo:(id)to;
@end

@implementation NTKProtoPigmentCollection

- (void)addItems:(id)items
{
  itemsCopy = items;
  items = self->_items;
  v8 = itemsCopy;
  if (!items)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_items;
    self->_items = v6;

    itemsCopy = v8;
    items = self->_items;
  }

  [(NSMutableArray *)items addObject:itemsCopy];
}

- (void)addDefaultGalleryColors:(id)colors
{
  colorsCopy = colors;
  defaultGalleryColors = self->_defaultGalleryColors;
  v8 = colorsCopy;
  if (!defaultGalleryColors)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_defaultGalleryColors;
    self->_defaultGalleryColors = v6;

    colorsCopy = v8;
    defaultGalleryColors = self->_defaultGalleryColors;
  }

  [(NSMutableArray *)defaultGalleryColors addObject:colorsCopy];
}

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

- (void)setHasIsStub:(BOOL)stub
{
  if (stub)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKProtoPigmentCollection;
  v4 = [(NTKProtoPigmentCollection *)&v8 description];
  dictionaryRepresentation = [(NTKProtoPigmentCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  config = self->_config;
  if (config)
  {
    dictionaryRepresentation = [(NTKProtoPigmentCollectionConfig *)config dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"config"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  defaultOption = self->_defaultOption;
  if (defaultOption)
  {
    dictionaryRepresentation2 = [(NTKProtoPigment *)defaultOption dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"defaultOption"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = self->_items;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation3 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation3];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"items"];
  }

  if ([(NSMutableArray *)self->_defaultGalleryColors count])
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_defaultGalleryColors, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = self->_defaultGalleryColors;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation4 = [*(*(&v38 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation4];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"defaultGalleryColors"];
  }

  if ([(NSMutableArray *)self->_collections count])
  {
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_collections, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = self->_collections;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation5 = [*(*(&v34 + 1) + 8 * k) dictionaryRepresentation];
          [v23 addObject:dictionaryRepresentation5];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v26);
    }

    [dictionary setObject:v23 forKey:@"collections"];
  }

  has = self->_has;
  if (has)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_isShared];
    [dictionary setObject:v31 forKey:@"isShared"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_isStub];
    [dictionary setObject:v32 forKey:@"isStub"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_config)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_defaultOption)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_defaultGalleryColors;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = self->_collections;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_config)
  {
    [toCopy setConfig:?];
  }

  if (self->_name)
  {
    [toCopy setName:?];
  }

  if (self->_defaultOption)
  {
    [toCopy setDefaultOption:?];
  }

  if ([(NTKProtoPigmentCollection *)self itemsCount])
  {
    [toCopy clearItems];
    itemsCount = [(NTKProtoPigmentCollection *)self itemsCount];
    if (itemsCount)
    {
      v5 = itemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NTKProtoPigmentCollection *)self itemsAtIndex:i];
        [toCopy addItems:v7];
      }
    }
  }

  if ([(NTKProtoPigmentCollection *)self defaultGalleryColorsCount])
  {
    [toCopy clearDefaultGalleryColors];
    defaultGalleryColorsCount = [(NTKProtoPigmentCollection *)self defaultGalleryColorsCount];
    if (defaultGalleryColorsCount)
    {
      v9 = defaultGalleryColorsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NTKProtoPigmentCollection *)self defaultGalleryColorsAtIndex:j];
        [toCopy addDefaultGalleryColors:v11];
      }
    }
  }

  if ([(NTKProtoPigmentCollection *)self collectionsCount])
  {
    [toCopy clearCollections];
    collectionsCount = [(NTKProtoPigmentCollection *)self collectionsCount];
    if (collectionsCount)
    {
      v13 = collectionsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NTKProtoPigmentCollection *)self collectionsAtIndex:k];
        [toCopy addCollections:v15];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    toCopy[56] = self->_isShared;
    toCopy[60] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[57] = self->_isStub;
    toCopy[60] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NTKProtoPigmentCollectionConfig *)self->_config copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NTKProtoPigment *)self->_defaultOption copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = self->_items;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v40 + 1) + 8 * i) copyWithZone:zone];
        [v5 addItems:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v14);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = self->_defaultGalleryColors;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v36 + 1) + 8 * j) copyWithZone:zone];
        [v5 addDefaultGalleryColors:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v20);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = self->_collections;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v32 + 1) + 8 * k) copyWithZone:{zone, v32}];
        [v5 addCollections:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v26);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 56) = self->_isShared;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 57) = self->_isStub;
    *(v5 + 60) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  config = self->_config;
  if (config | *(equalCopy + 2))
  {
    if (![(NTKProtoPigmentCollectionConfig *)config isEqual:?])
    {
      goto LABEL_22;
    }
  }

  name = self->_name;
  if (name | *(equalCopy + 6))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_22;
    }
  }

  defaultOption = self->_defaultOption;
  if (defaultOption | *(equalCopy + 4))
  {
    if (![(NTKProtoPigment *)defaultOption isEqual:?])
    {
      goto LABEL_22;
    }
  }

  items = self->_items;
  if (items | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
      goto LABEL_22;
    }
  }

  defaultGalleryColors = self->_defaultGalleryColors;
  if (defaultGalleryColors | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)defaultGalleryColors isEqual:?])
    {
      goto LABEL_22;
    }
  }

  collections = self->_collections;
  if (collections | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)collections isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 60) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (self->_isShared)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_22;
  }

LABEL_16:
  v11 = (*(equalCopy + 60) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) != 0)
    {
      if (self->_isStub)
      {
        if (*(equalCopy + 57))
        {
          goto LABEL_30;
        }
      }

      else if (!*(equalCopy + 57))
      {
LABEL_30:
        v11 = 1;
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NTKProtoPigmentCollectionConfig *)self->_config hash];
  v4 = [(NSString *)self->_name hash];
  v5 = [(NTKProtoPigment *)self->_defaultOption hash];
  v6 = [(NSMutableArray *)self->_items hash];
  v7 = [(NSMutableArray *)self->_defaultGalleryColors hash];
  v8 = [(NSMutableArray *)self->_collections hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_isShared;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 2654435761 * self->_isStub;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  v40 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  config = self->_config;
  v6 = *(fromCopy + 2);
  if (config)
  {
    if (v6)
    {
      [(NTKProtoPigmentCollectionConfig *)config mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NTKProtoPigmentCollection *)self setConfig:?];
  }

  if (*(fromCopy + 6))
  {
    [(NTKProtoPigmentCollection *)self setName:?];
  }

  defaultOption = self->_defaultOption;
  v8 = *(fromCopy + 4);
  if (defaultOption)
  {
    if (v8)
    {
      [(NTKProtoPigment *)defaultOption mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NTKProtoPigmentCollection *)self setDefaultOption:?];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = *(fromCopy + 5);
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NTKProtoPigmentCollection *)self addItems:*(*(&v33 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = *(fromCopy + 3);
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NTKProtoPigmentCollection *)self addDefaultGalleryColors:*(*(&v29 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v16);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = *(fromCopy + 1);
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(NTKProtoPigmentCollection *)self addCollections:*(*(&v25 + 1) + 8 * k), v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v21);
  }

  v24 = *(fromCopy + 60);
  if (v24)
  {
    self->_isShared = *(fromCopy + 56);
    *&self->_has |= 1u;
    v24 = *(fromCopy + 60);
  }

  if ((v24 & 2) != 0)
  {
    self->_isStub = *(fromCopy + 57);
    *&self->_has |= 2u;
  }
}

@end