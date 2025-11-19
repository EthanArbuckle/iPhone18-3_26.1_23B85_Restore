@interface BMPBEntityRelationshipEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttributes:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBEntityRelationshipEvent

- (void)addAttributes:(id)a3
{
  v4 = a3;
  attributes = self->_attributes;
  v8 = v4;
  if (!attributes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attributes;
    self->_attributes = v6;

    v4 = v8;
    attributes = self->_attributes;
  }

  [(NSMutableArray *)attributes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBEntityRelationshipEvent;
  v4 = [(BMPBEntityRelationshipEvent *)&v8 description];
  v5 = [(BMPBEntityRelationshipEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  clientId = self->_clientId;
  if (clientId)
  {
    [v3 setObject:clientId forKey:@"clientId"];
  }

  relationship = self->_relationship;
  if (relationship)
  {
    [v4 setObject:relationship forKey:@"relationship"];
  }

  sourceId = self->_sourceId;
  if (sourceId)
  {
    [v4 setObject:sourceId forKey:@"sourceId"];
  }

  sourceEntity = self->_sourceEntity;
  if (sourceEntity)
  {
    v9 = [(BMPBEntity *)sourceEntity dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"sourceEntity"];
  }

  targetEntity = self->_targetEntity;
  if (targetEntity)
  {
    v11 = [(BMPBEntity *)targetEntity dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"targetEntity"];
  }

  if ([(NSMutableArray *)self->_attributes count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_attributes, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_attributes;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKey:@"attributes"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_relationship)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceEntity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_targetEntity)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_attributes;
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

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_clientId)
  {
    [v8 setClientId:?];
  }

  if (self->_relationship)
  {
    [v8 setRelationship:?];
  }

  if (self->_sourceId)
  {
    [v8 setSourceId:?];
  }

  if (self->_sourceEntity)
  {
    [v8 setSourceEntity:?];
  }

  if (self->_targetEntity)
  {
    [v8 setTargetEntity:?];
  }

  if ([(BMPBEntityRelationshipEvent *)self attributesCount])
  {
    [v8 clearAttributes];
    v4 = [(BMPBEntityRelationshipEvent *)self attributesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBEntityRelationshipEvent *)self attributesAtIndex:i];
        [v8 addAttributes:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_relationship copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_sourceId copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(BMPBEntity *)self->_sourceEntity copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(BMPBEntity *)self->_targetEntity copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_attributes;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{a3, v24}];
        [v5 addAttributes:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((clientId = self->_clientId, !(clientId | v4[2])) || -[NSString isEqual:](clientId, "isEqual:")) && ((relationship = self->_relationship, !(relationship | v4[3])) || -[NSString isEqual:](relationship, "isEqual:")) && ((sourceId = self->_sourceId, !(sourceId | v4[5])) || -[NSString isEqual:](sourceId, "isEqual:")) && ((sourceEntity = self->_sourceEntity, !(sourceEntity | v4[4])) || -[BMPBEntity isEqual:](sourceEntity, "isEqual:")) && ((targetEntity = self->_targetEntity, !(targetEntity | v4[6])) || -[BMPBEntity isEqual:](targetEntity, "isEqual:")))
  {
    attributes = self->_attributes;
    if (attributes | v4[1])
    {
      v11 = [(NSMutableArray *)attributes isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientId hash];
  v4 = [(NSString *)self->_relationship hash]^ v3;
  v5 = [(NSString *)self->_sourceId hash];
  v6 = v4 ^ v5 ^ [(BMPBEntity *)self->_sourceEntity hash];
  v7 = [(BMPBEntity *)self->_targetEntity hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_attributes hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(BMPBEntityRelationshipEvent *)self setClientId:?];
  }

  if (*(v4 + 3))
  {
    [(BMPBEntityRelationshipEvent *)self setRelationship:?];
  }

  if (*(v4 + 5))
  {
    [(BMPBEntityRelationshipEvent *)self setSourceId:?];
  }

  sourceEntity = self->_sourceEntity;
  v6 = *(v4 + 4);
  if (sourceEntity)
  {
    if (v6)
    {
      [(BMPBEntity *)sourceEntity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BMPBEntityRelationshipEvent *)self setSourceEntity:?];
  }

  targetEntity = self->_targetEntity;
  v8 = *(v4 + 6);
  if (targetEntity)
  {
    if (v8)
    {
      [(BMPBEntity *)targetEntity mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(BMPBEntityRelationshipEvent *)self setTargetEntity:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v4 + 1);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(BMPBEntityRelationshipEvent *)self addAttributes:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end