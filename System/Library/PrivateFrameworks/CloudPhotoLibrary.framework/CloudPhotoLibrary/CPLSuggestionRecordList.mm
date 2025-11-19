@interface CPLSuggestionRecordList
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAsset:(id)a3;
- (void)addMemory:(id)a3;
- (void)addPerson:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLSuggestionRecordList

- (void)mergeFrom:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CPLSuggestionRecordList *)self addAsset:*(*(&v29 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  if (*(v4 + 36))
  {
    self->_version = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CPLSuggestionRecordList *)self addPerson:*(*(&v25 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(v4 + 2);
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(CPLSuggestionRecordList *)self addMemory:*(*(&v21 + 1) + 8 * v19++), v21];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_assets hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSMutableArray *)self->_persons hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_memorys hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  assets = self->_assets;
  if (assets | *(v4 + 1))
  {
    if (![(NSMutableArray *)assets isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_version != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  persons = self->_persons;
  if (persons | *(v4 + 3) && ![(NSMutableArray *)persons isEqual:?])
  {
    goto LABEL_13;
  }

  memorys = self->_memorys;
  if (memorys | *(v4 + 2))
  {
    v9 = [(NSMutableArray *)memorys isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = self->_assets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v34 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addAsset:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 1u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_persons;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addPerson:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_memorys;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{a3, v26}];
        [v5 addMemory:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v16 = a3;
  if ([(CPLSuggestionRecordList *)self assetsCount])
  {
    [v16 clearAssets];
    v4 = [(CPLSuggestionRecordList *)self assetsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CPLSuggestionRecordList *)self assetAtIndex:i];
        [v16 addAsset:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v16 + 8) = self->_version;
    *(v16 + 36) |= 1u;
  }

  if ([(CPLSuggestionRecordList *)self personsCount])
  {
    [v16 clearPersons];
    v8 = [(CPLSuggestionRecordList *)self personsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(CPLSuggestionRecordList *)self personAtIndex:j];
        [v16 addPerson:v11];
      }
    }
  }

  if ([(CPLSuggestionRecordList *)self memorysCount])
  {
    [v16 clearMemorys];
    v12 = [(CPLSuggestionRecordList *)self memorysCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(CPLSuggestionRecordList *)self memoryAtIndex:k];
        [v16 addMemory:v15];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_assets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_persons;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_memorys;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_assets count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_assets, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = self->_assets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"asset"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
    [v3 setObject:v11 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_persons count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_persons, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_persons;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"person"];
  }

  if ([(NSMutableArray *)self->_memorys count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_memorys, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_memorys;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"memory"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLSuggestionRecordList;
  v4 = [(CPLSuggestionRecordList *)&v8 description];
  v5 = [(CPLSuggestionRecordList *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addMemory:(id)a3
{
  v4 = a3;
  memorys = self->_memorys;
  v8 = v4;
  if (!memorys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_memorys;
    self->_memorys = v6;

    v4 = v8;
    memorys = self->_memorys;
  }

  [(NSMutableArray *)memorys addObject:v4];
}

- (void)addPerson:(id)a3
{
  v4 = a3;
  persons = self->_persons;
  v8 = v4;
  if (!persons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_persons;
    self->_persons = v6;

    v4 = v8;
    persons = self->_persons;
  }

  [(NSMutableArray *)persons addObject:v4];
}

- (void)addAsset:(id)a3
{
  v4 = a3;
  assets = self->_assets;
  v8 = v4;
  if (!assets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_assets;
    self->_assets = v6;

    v4 = v8;
    assets = self->_assets;
  }

  [(NSMutableArray *)assets addObject:v4];
}

@end