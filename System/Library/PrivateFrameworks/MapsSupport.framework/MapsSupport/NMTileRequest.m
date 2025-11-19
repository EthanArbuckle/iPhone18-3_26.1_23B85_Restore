@interface NMTileRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBaseHeaders:(id)a3;
- (void)addLocalizationHeaders:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NMTileRequest

- (void)addBaseHeaders:(id)a3
{
  v4 = a3;
  baseHeaders = self->_baseHeaders;
  v8 = v4;
  if (!baseHeaders)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_baseHeaders;
    self->_baseHeaders = v6;

    v4 = v8;
    baseHeaders = self->_baseHeaders;
  }

  [(NSMutableArray *)baseHeaders addObject:v4];
}

- (void)addLocalizationHeaders:(id)a3
{
  v4 = a3;
  localizationHeaders = self->_localizationHeaders;
  v8 = v4;
  if (!localizationHeaders)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_localizationHeaders;
    self->_localizationHeaders = v6;

    v4 = v8;
    localizationHeaders = self->_localizationHeaders;
  }

  [(NSMutableArray *)localizationHeaders addObject:v4];
}

- (void)setHasPriority:(BOOL)a3
{
  if (a3)
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
  v7.receiver = self;
  v7.super_class = NMTileRequest;
  v3 = [(NMTileRequest *)&v7 description];
  v4 = [(NMTileRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  tileKey = self->_tileKey;
  if (tileKey)
  {
    [v3 setObject:tileKey forKey:@"tileKey"];
  }

  cachedETag = self->_cachedETag;
  if (cachedETag)
  {
    [v4 setObject:cachedETag forKey:@"cachedETag"];
  }

  baseURL = self->_baseURL;
  if (baseURL)
  {
    [v4 setObject:baseURL forKey:@"baseURL"];
  }

  if ([(NSMutableArray *)self->_baseHeaders count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_baseHeaders, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = self->_baseHeaders;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"baseHeaders"];
  }

  cachedBaseETag = self->_cachedBaseETag;
  if (cachedBaseETag)
  {
    [v4 setObject:cachedBaseETag forKey:@"cachedBaseETag"];
  }

  localizationURL = self->_localizationURL;
  if (localizationURL)
  {
    [v4 setObject:localizationURL forKey:@"localizationURL"];
  }

  if ([(NSMutableArray *)self->_localizationHeaders count])
  {
    v17 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_localizationHeaders, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = self->_localizationHeaders;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v29 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"localizationHeaders"];
  }

  cachedLocalizationETag = self->_cachedLocalizationETag;
  if (cachedLocalizationETag)
  {
    [v4 setObject:cachedLocalizationETag forKey:@"cachedLocalizationETag"];
  }

  has = self->_has;
  if (has)
  {
    v26 = [NSNumber numberWithInt:self->_checksumMethod];
    [v4 setObject:v26 forKey:@"checksumMethod"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v27 = [NSNumber numberWithUnsignedInt:self->_priority];
    [v4 setObject:v27 forKey:@"priority"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_tileKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_cachedETag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_baseURL)
  {
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_baseHeaders;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  if (self->_cachedBaseETag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizationURL)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_localizationHeaders;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  if (self->_cachedLocalizationETag)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    checksumMethod = self->_checksumMethod;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    priority = self->_priority;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v13 = a3;
  if (self->_tileKey)
  {
    [v13 setTileKey:?];
  }

  if (self->_cachedETag)
  {
    [v13 setCachedETag:?];
  }

  if (self->_baseURL)
  {
    [v13 setBaseURL:?];
  }

  if ([(NMTileRequest *)self baseHeadersCount])
  {
    [v13 clearBaseHeaders];
    v4 = [(NMTileRequest *)self baseHeadersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NMTileRequest *)self baseHeadersAtIndex:i];
        [v13 addBaseHeaders:v7];
      }
    }
  }

  if (self->_cachedBaseETag)
  {
    [v13 setCachedBaseETag:?];
  }

  if (self->_localizationURL)
  {
    [v13 setLocalizationURL:?];
  }

  if ([(NMTileRequest *)self localizationHeadersCount])
  {
    [v13 clearLocalizationHeaders];
    v8 = [(NMTileRequest *)self localizationHeadersCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NMTileRequest *)self localizationHeadersAtIndex:j];
        [v13 addLocalizationHeaders:v11];
      }
    }
  }

  if (self->_cachedLocalizationETag)
  {
    [v13 setCachedLocalizationETag:?];
  }

  has = self->_has;
  if (has)
  {
    *(v13 + 12) = self->_checksumMethod;
    *(v13 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v13 + 18) = self->_priority;
    *(v13 + 88) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_tileKey copyWithZone:a3];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSString *)self->_cachedETag copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_baseURL copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = self->_baseHeaders;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v36 + 1) + 8 * i) copyWithZone:a3];
        [v5 addBaseHeaders:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_cachedBaseETag copyWithZone:a3];
  v19 = v5[3];
  v5[3] = v18;

  v20 = [(NSString *)self->_localizationURL copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = self->_localizationHeaders;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v32 + 1) + 8 * j) copyWithZone:{a3, v32}];
        [v5 addLocalizationHeaders:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v24);
  }

  v28 = [(NSString *)self->_cachedLocalizationETag copyWithZone:a3];
  v29 = v5[5];
  v5[5] = v28;

  has = self->_has;
  if (has)
  {
    *(v5 + 12) = self->_checksumMethod;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 18) = self->_priority;
    *(v5 + 88) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  tileKey = self->_tileKey;
  if (tileKey | *(v4 + 10))
  {
    if (![(NSData *)tileKey isEqual:?])
    {
      goto LABEL_27;
    }
  }

  cachedETag = self->_cachedETag;
  if (cachedETag | *(v4 + 4))
  {
    if (![(NSString *)cachedETag isEqual:?])
    {
      goto LABEL_27;
    }
  }

  baseURL = self->_baseURL;
  if (baseURL | *(v4 + 2))
  {
    if (![(NSString *)baseURL isEqual:?])
    {
      goto LABEL_27;
    }
  }

  baseHeaders = self->_baseHeaders;
  if (baseHeaders | *(v4 + 1))
  {
    if (![(NSMutableArray *)baseHeaders isEqual:?])
    {
      goto LABEL_27;
    }
  }

  cachedBaseETag = self->_cachedBaseETag;
  if (cachedBaseETag | *(v4 + 3))
  {
    if (![(NSString *)cachedBaseETag isEqual:?])
    {
      goto LABEL_27;
    }
  }

  localizationURL = self->_localizationURL;
  if (localizationURL | *(v4 + 8))
  {
    if (![(NSString *)localizationURL isEqual:?])
    {
      goto LABEL_27;
    }
  }

  localizationHeaders = self->_localizationHeaders;
  if (localizationHeaders | *(v4 + 7))
  {
    if (![(NSMutableArray *)localizationHeaders isEqual:?])
    {
      goto LABEL_27;
    }
  }

  cachedLocalizationETag = self->_cachedLocalizationETag;
  if (cachedLocalizationETag | *(v4 + 5))
  {
    if (![(NSString *)cachedLocalizationETag isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_checksumMethod != *(v4 + 12))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 88))
  {
LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v13 = (*(v4 + 88) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_priority != *(v4 + 18))
    {
      goto LABEL_27;
    }

    v13 = 1;
  }

LABEL_28:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_tileKey hash];
  v4 = [(NSString *)self->_cachedETag hash];
  v5 = [(NSString *)self->_baseURL hash];
  v6 = [(NSMutableArray *)self->_baseHeaders hash];
  v7 = [(NSString *)self->_cachedBaseETag hash];
  v8 = [(NSString *)self->_localizationURL hash];
  v9 = [(NSMutableArray *)self->_localizationHeaders hash];
  v10 = [(NSString *)self->_cachedLocalizationETag hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_checksumMethod;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 2654435761 * self->_priority;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 10))
  {
    [(NMTileRequest *)self setTileKey:?];
  }

  if (*(v4 + 4))
  {
    [(NMTileRequest *)self setCachedETag:?];
  }

  if (*(v4 + 2))
  {
    [(NMTileRequest *)self setBaseURL:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NMTileRequest *)self addBaseHeaders:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (*(v4 + 3))
  {
    [(NMTileRequest *)self setCachedBaseETag:?];
  }

  if (*(v4 + 8))
  {
    [(NMTileRequest *)self setLocalizationURL:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v4 + 7);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NMTileRequest *)self addLocalizationHeaders:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(v4 + 5))
  {
    [(NMTileRequest *)self setCachedLocalizationETag:?];
  }

  v15 = *(v4 + 88);
  if (v15)
  {
    self->_checksumMethod = *(v4 + 12);
    *&self->_has |= 1u;
    v15 = *(v4 + 88);
  }

  if ((v15 & 2) != 0)
  {
    self->_priority = *(v4 + 18);
    *&self->_has |= 2u;
  }
}

@end