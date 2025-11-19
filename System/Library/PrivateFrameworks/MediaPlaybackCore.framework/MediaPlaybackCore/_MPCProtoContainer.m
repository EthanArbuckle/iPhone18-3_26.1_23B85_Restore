@interface _MPCProtoContainer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addItem:(uint64_t)a1;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoContainer

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_containerType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MPCProtoContainerIdentifierSet *)self->_identifierSet hash]^ v3;
  v5 = [(NSMutableArray *)self->_items hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_playActivityFeatureName hash];
  return v6 ^ [(NSString *)self->_playActivityQueueGroupingID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_containerType != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  identifierSet = self->_identifierSet;
  if (identifierSet | *(v4 + 2) && ![(_MPCProtoContainerIdentifierSet *)identifierSet isEqual:?])
  {
    goto LABEL_15;
  }

  items = self->_items;
  if (items | *(v4 + 3))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
      goto LABEL_15;
    }
  }

  playActivityFeatureName = self->_playActivityFeatureName;
  if (playActivityFeatureName | *(v4 + 4))
  {
    if (![(NSString *)playActivityFeatureName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  playActivityQueueGroupingID = self->_playActivityQueueGroupingID;
  if (playActivityQueueGroupingID | *(v4 + 5))
  {
    v9 = [(NSString *)playActivityQueueGroupingID isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_containerType;
    *(v5 + 48) |= 1u;
  }

  v7 = [(_MPCProtoContainerIdentifierSet *)self->_identifierSet copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_items;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * v13) copyWithZone:{a3, v20}];
        [(_MPCProtoContainer *)v6 addItem:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [(NSString *)self->_playActivityFeatureName copyWithZone:a3];
  v16 = v6[4];
  v6[4] = v15;

  v17 = [(NSString *)self->_playActivityQueueGroupingID copyWithZone:a3];
  v18 = v6[5];
  v6[5] = v17;

  return v6;
}

- (uint64_t)addItem:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      v5 = *(a1 + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_identifierSet)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_playActivityFeatureName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_playActivityQueueGroupingID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_containerType];
    [v3 setObject:v4 forKey:@"containerType"];
  }

  identifierSet = self->_identifierSet;
  if (identifierSet)
  {
    v6 = [(_MPCProtoContainerIdentifierSet *)identifierSet dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"identifierSet"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_items;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"item"];
  }

  playActivityFeatureName = self->_playActivityFeatureName;
  if (playActivityFeatureName)
  {
    [v3 setObject:playActivityFeatureName forKey:@"playActivityFeatureName"];
  }

  playActivityQueueGroupingID = self->_playActivityQueueGroupingID;
  if (playActivityQueueGroupingID)
  {
    [v3 setObject:playActivityQueueGroupingID forKey:@"playActivityQueueGroupingID"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoContainer;
  v4 = [(_MPCProtoContainer *)&v8 description];
  v5 = [(_MPCProtoContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end