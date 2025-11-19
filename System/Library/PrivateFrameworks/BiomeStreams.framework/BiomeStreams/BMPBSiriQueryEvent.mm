@interface BMPBSiriQueryEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addResults:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSiriQueryEvent

- (void)addResults:(id)a3
{
  v4 = a3;
  results = self->_results;
  v8 = v4;
  if (!results)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_results;
    self->_results = v6;

    v4 = v8;
    results = self->_results;
  }

  [(NSMutableArray *)results addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSiriQueryEvent;
  v4 = [(BMPBSiriQueryEvent *)&v8 description];
  v5 = [(BMPBSiriQueryEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v4 forKey:@"absoluteTimestamp"];
  }

  query = self->_query;
  if (query)
  {
    [v3 setObject:query forKey:@"query"];
  }

  if ([(NSMutableArray *)self->_results count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_results, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_results;
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

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"results"];
  }

  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v3 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v3 setObject:personaId forKey:@"personaId"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_query)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_results;
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

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 56) |= 1u;
  }

  v10 = v4;
  if (self->_query)
  {
    [v4 setQuery:?];
  }

  if ([(BMPBSiriQueryEvent *)self resultsCount])
  {
    [v10 clearResults];
    v5 = [(BMPBSiriQueryEvent *)self resultsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBSiriQueryEvent *)self resultsAtIndex:i];
        [v10 addResults:v8];
      }
    }
  }

  if (self->_uniqueId)
  {
    [v10 setUniqueId:?];
  }

  v9 = v10;
  if (self->_contentProtection)
  {
    [v10 setContentProtection:?];
    v9 = v10;
  }

  if (self->_personaId)
  {
    [v10 setPersonaId:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_query copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = self->_results;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v23 + 1) + 8 * v13) copyWithZone:{a3, v23}];
        [v6 addResults:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v15 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v16 = v6[6];
  v6[6] = v15;

  v17 = [(NSString *)self->_contentProtection copyWithZone:a3];
  v18 = v6[2];
  v6[2] = v17;

  v19 = [(NSString *)self->_personaId copyWithZone:a3];
  v20 = v6[3];
  v6[3] = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  query = self->_query;
  if (query | *(v4 + 4) && ![(NSString *)query isEqual:?])
  {
    goto LABEL_17;
  }

  results = self->_results;
  if (results | *(v4 + 5))
  {
    if (![(NSMutableArray *)results isEqual:?])
    {
      goto LABEL_17;
    }
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 6))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(v4 + 2))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_17;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(v4 + 3))
  {
    v11 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_query hash]^ v5;
  v10 = [(NSMutableArray *)self->_results hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_uniqueId hash];
  v12 = [(NSString *)self->_contentProtection hash];
  return v11 ^ v12 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_absoluteTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(BMPBSiriQueryEvent *)self setQuery:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5[5];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBSiriQueryEvent *)self addResults:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v5[6])
  {
    [(BMPBSiriQueryEvent *)self setUniqueId:?];
  }

  if (v5[2])
  {
    [(BMPBSiriQueryEvent *)self setContentProtection:?];
  }

  if (v5[3])
  {
    [(BMPBSiriQueryEvent *)self setPersonaId:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end