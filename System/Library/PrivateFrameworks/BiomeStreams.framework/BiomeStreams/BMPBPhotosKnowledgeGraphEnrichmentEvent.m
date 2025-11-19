@interface BMPBPhotosKnowledgeGraphEnrichmentEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEntities:(id)a3;
- (void)addLocations:(id)a3;
- (void)addTopics:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBPhotosKnowledgeGraphEnrichmentEvent

- (void)addTopics:(id)a3
{
  v4 = a3;
  topics = self->_topics;
  v8 = v4;
  if (!topics)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_topics;
    self->_topics = v6;

    v4 = v8;
    topics = self->_topics;
  }

  [(NSMutableArray *)topics addObject:v4];
}

- (void)addEntities:(id)a3
{
  v4 = a3;
  entities = self->_entities;
  v8 = v4;
  if (!entities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_entities;
    self->_entities = v6;

    v4 = v8;
    entities = self->_entities;
  }

  [(NSMutableArray *)entities addObject:v4];
}

- (void)addLocations:(id)a3
{
  v4 = a3;
  locations = self->_locations;
  v8 = v4;
  if (!locations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_locations;
    self->_locations = v6;

    v4 = v8;
    locations = self->_locations;
  }

  [(NSMutableArray *)locations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPhotosKnowledgeGraphEnrichmentEvent;
  v4 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)&v8 description];
  v5 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v4 forKey:@"absoluteTimestamp"];
  }

  if ([(NSMutableArray *)self->_topics count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_topics, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = self->_topics;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"topics"];
  }

  if ([(NSMutableArray *)self->_entities count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_entities, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = self->_entities;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"entities"];
  }

  if ([(NSMutableArray *)self->_locations count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_locations, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = self->_locations;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"locations"];
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

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_topics;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_entities;
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
  v18 = self->_locations;
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

  v24 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 64) |= 1u;
  }

  v18 = v4;
  if ([(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self topicsCount])
  {
    [v18 clearTopics];
    v5 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self topicsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self topicsAtIndex:i];
        [v18 addTopics:v8];
      }
    }
  }

  if ([(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self entitiesCount])
  {
    [v18 clearEntities];
    v9 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self entitiesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self entitiesAtIndex:j];
        [v18 addEntities:v12];
      }
    }
  }

  if ([(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self locationsCount])
  {
    [v18 clearLocations];
    v13 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self locationsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self locationsAtIndex:k];
        [v18 addLocations:v16];
      }
    }
  }

  if (self->_uniqueId)
  {
    [v18 setUniqueId:?];
  }

  v17 = v18;
  if (self->_contentProtection)
  {
    [v18 setContentProtection:?];
    v17 = v18;
  }

  if (self->_personaId)
  {
    [v18 setPersonaId:?];
    v17 = v18;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 64) |= 1u;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = self->_topics;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v41 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addTopics:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v9);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = self->_entities;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v37 + 1) + 8 * v17) copyWithZone:a3];
        [v6 addEntities:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v15);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = self->_locations;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v33 + 1) + 8 * v23) copyWithZone:{a3, v33}];
        [v6 addLocations:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v21);
  }

  v25 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v26 = v6[7];
  v6[7] = v25;

  v27 = [(NSString *)self->_contentProtection copyWithZone:a3];
  v28 = v6[2];
  v6[2] = v27;

  v29 = [(NSString *)self->_personaId copyWithZone:a3];
  v30 = v6[5];
  v6[5] = v29;

  v31 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  topics = self->_topics;
  if (topics | *(v4 + 6) && ![(NSMutableArray *)topics isEqual:?])
  {
    goto LABEL_19;
  }

  entities = self->_entities;
  if (entities | *(v4 + 3))
  {
    if (![(NSMutableArray *)entities isEqual:?])
    {
      goto LABEL_19;
    }
  }

  locations = self->_locations;
  if (locations | *(v4 + 4))
  {
    if (![(NSMutableArray *)locations isEqual:?])
    {
      goto LABEL_19;
    }
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 7))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(v4 + 2))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_19;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(v4 + 5))
  {
    v12 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
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

  v9 = [(NSMutableArray *)self->_topics hash]^ v5;
  v10 = [(NSMutableArray *)self->_entities hash];
  v11 = v9 ^ v10 ^ [(NSMutableArray *)self->_locations hash];
  v12 = [(NSString *)self->_uniqueId hash];
  v13 = v12 ^ [(NSString *)self->_contentProtection hash];
  return v11 ^ v13 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 64))
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = *(v4 + 6);
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self addTopics:*(*(&v30 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v5[3];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self addEntities:*(*(&v26 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v5[4];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self addLocations:*(*(&v22 + 1) + 8 * k), v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  if (v5[7])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self setUniqueId:?];
  }

  if (v5[2])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self setContentProtection:?];
  }

  if (v5[5])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentEvent *)self setPersonaId:?];
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end