@interface RTPModelTile
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addApMapping:(id)mapping;
- (void)addHashedApMapping:(id)mapping;
- (void)addModel:(id)model;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RTPModelTile

- (void)addModel:(id)model
{
  modelCopy = model;
  models = self->_models;
  v8 = modelCopy;
  if (!models)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_models;
    self->_models = v6;

    modelCopy = v8;
    models = self->_models;
  }

  [(NSMutableArray *)models addObject:modelCopy];
}

- (void)addApMapping:(id)mapping
{
  mappingCopy = mapping;
  apMappings = self->_apMappings;
  v8 = mappingCopy;
  if (!apMappings)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_apMappings;
    self->_apMappings = v6;

    mappingCopy = v8;
    apMappings = self->_apMappings;
  }

  [(NSMutableArray *)apMappings addObject:mappingCopy];
}

- (void)addHashedApMapping:(id)mapping
{
  mappingCopy = mapping;
  hashedApMappings = self->_hashedApMappings;
  v8 = mappingCopy;
  if (!hashedApMappings)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_hashedApMappings;
    self->_hashedApMappings = v6;

    mappingCopy = v8;
    hashedApMappings = self->_hashedApMappings;
  }

  [(NSMutableArray *)hashedApMappings addObject:mappingCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RTPModelTile;
  v3 = [(RTPModelTile *)&v7 description];
  dictionaryRepresentation = [(RTPModelTile *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_models count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_models, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = self->_models;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"model"];
  }

  if ([(NSMutableArray *)self->_apMappings count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_apMappings, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = self->_apMappings;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"ap_mapping"];
  }

  if (*&self->_has)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:self->_singlePoiMuid];
    [v3 setObject:v18 forKey:@"single_poi_muid"];
  }

  if ([(NSMutableArray *)self->_hashedApMappings count])
  {
    v19 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_hashedApMappings, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_hashedApMappings;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"hashed_ap_mapping"];
  }

  hashSalt = self->_hashSalt;
  if (hashSalt)
  {
    [v3 setObject:hashSalt forKey:@"hash_salt"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_models;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_apMappings;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    singlePoiMuid = self->_singlePoiMuid;
    PBDataWriterWriteUint64Field();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self->_hashedApMappings;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v24 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }

  if (self->_hashSalt)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(RTPModelTile *)self modelsCount])
  {
    [toCopy clearModels];
    modelsCount = [(RTPModelTile *)self modelsCount];
    if (modelsCount)
    {
      v5 = modelsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(RTPModelTile *)self modelAtIndex:i];
        [toCopy addModel:v7];
      }
    }
  }

  if ([(RTPModelTile *)self apMappingsCount])
  {
    [toCopy clearApMappings];
    apMappingsCount = [(RTPModelTile *)self apMappingsCount];
    if (apMappingsCount)
    {
      v9 = apMappingsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(RTPModelTile *)self apMappingAtIndex:j];
        [toCopy addApMapping:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_singlePoiMuid;
    *(toCopy + 48) |= 1u;
  }

  if ([(RTPModelTile *)self hashedApMappingsCount])
  {
    [toCopy clearHashedApMappings];
    hashedApMappingsCount = [(RTPModelTile *)self hashedApMappingsCount];
    if (hashedApMappingsCount)
    {
      v13 = hashedApMappingsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(RTPModelTile *)self hashedApMappingAtIndex:k];
        [toCopy addHashedApMapping:v15];
      }
    }
  }

  if (self->_hashSalt)
  {
    [toCopy setHashSalt:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_models;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v35 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addModel:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_apMappings;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v31 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addApMapping:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    *(v5 + 1) = self->_singlePoiMuid;
    *(v5 + 48) |= 1u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_hashedApMappings;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v27 + 1) + 8 * v22) copyWithZone:{zone, v27}];
        [v5 addHashedApMapping:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v20);
  }

  v24 = [(NSData *)self->_hashSalt copyWithZone:zone];
  v25 = *(v5 + 3);
  *(v5 + 3) = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  models = self->_models;
  if (models | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)models isEqual:?])
    {
      goto LABEL_15;
    }
  }

  apMappings = self->_apMappings;
  if (apMappings | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)apMappings isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_singlePoiMuid != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  hashedApMappings = self->_hashedApMappings;
  if (hashedApMappings | *(equalCopy + 4) && ![(NSMutableArray *)hashedApMappings isEqual:?])
  {
    goto LABEL_15;
  }

  hashSalt = self->_hashSalt;
  if (hashSalt | *(equalCopy + 3))
  {
    v10 = [(NSData *)hashSalt isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_models hash];
  v4 = [(NSMutableArray *)self->_apMappings hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_singlePoiMuid;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_hashedApMappings hash];
  return v6 ^ [(NSData *)self->_hashSalt hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(RTPModelTile *)self addModel:*(*(&v28 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = *(fromCopy + 2);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(RTPModelTile *)self addApMapping:*(*(&v24 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 48))
  {
    self->_singlePoiMuid = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(fromCopy + 4);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(RTPModelTile *)self addHashedApMapping:*(*(&v20 + 1) + 8 * k), v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }

  if (*(fromCopy + 3))
  {
    [(RTPModelTile *)self setHashSalt:?];
  }
}

@end