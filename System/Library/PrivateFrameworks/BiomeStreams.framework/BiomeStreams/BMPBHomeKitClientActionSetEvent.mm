@interface BMPBHomeKitClientActionSetEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAssociatedAccessoryUniqueIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBHomeKitClientActionSetEvent

- (void)addAssociatedAccessoryUniqueIdentifiers:(id)a3
{
  v4 = a3;
  associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers;
  v8 = v4;
  if (!associatedAccessoryUniqueIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_associatedAccessoryUniqueIdentifiers;
    self->_associatedAccessoryUniqueIdentifiers = v6;

    v4 = v8;
    associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers;
  }

  [(NSMutableArray *)associatedAccessoryUniqueIdentifiers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBHomeKitClientActionSetEvent;
  v4 = [(BMPBHomeKitClientActionSetEvent *)&v8 description];
  v5 = [(BMPBHomeKitClientActionSetEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  base = self->_base;
  if (base)
  {
    v5 = [(BMPBHomeKitClientBase *)base dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"base"];
  }

  actionSetUniqueIdentifier = self->_actionSetUniqueIdentifier;
  if (actionSetUniqueIdentifier)
  {
    [v3 setObject:actionSetUniqueIdentifier forKey:@"actionSetUniqueIdentifier"];
  }

  actionSetType = self->_actionSetType;
  if (actionSetType)
  {
    [v3 setObject:actionSetType forKey:@"actionSetType"];
  }

  associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers;
  if (associatedAccessoryUniqueIdentifiers)
  {
    [v3 setObject:associatedAccessoryUniqueIdentifiers forKey:@"associatedAccessoryUniqueIdentifiers"];
  }

  actionSetName = self->_actionSetName;
  if (actionSetName)
  {
    [v3 setObject:actionSetName forKey:@"actionSetName"];
  }

  homeName = self->_homeName;
  if (homeName)
  {
    [v3 setObject:homeName forKey:@"homeName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_base)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_actionSetUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionSetType)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_associatedAccessoryUniqueIdentifiers;
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
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_actionSetName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_base)
  {
    [v9 setBase:?];
  }

  if (self->_actionSetUniqueIdentifier)
  {
    [v9 setActionSetUniqueIdentifier:?];
  }

  if (self->_actionSetType)
  {
    [v9 setActionSetType:?];
  }

  if ([(BMPBHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiersCount])
  {
    [v9 clearAssociatedAccessoryUniqueIdentifiers];
    v4 = [(BMPBHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiersAtIndex:i];
        [v9 addAssociatedAccessoryUniqueIdentifiers:v7];
      }
    }
  }

  if (self->_actionSetName)
  {
    [v9 setActionSetName:?];
  }

  v8 = v9;
  if (self->_homeName)
  {
    [v9 setHomeName:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BMPBHomeKitClientBase *)self->_base copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_actionSetUniqueIdentifier copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_actionSetType copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_associatedAccessoryUniqueIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * v16) copyWithZone:{a3, v24}];
        [v5 addAssociatedAccessoryUniqueIdentifiers:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_actionSetName copyWithZone:a3];
  v19 = v5[1];
  v5[1] = v18;

  v20 = [(NSString *)self->_homeName copyWithZone:a3];
  v21 = v5[6];
  v5[6] = v20;

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((base = self->_base, !(base | v4[5])) || -[BMPBHomeKitClientBase isEqual:](base, "isEqual:")) && ((actionSetUniqueIdentifier = self->_actionSetUniqueIdentifier, !(actionSetUniqueIdentifier | v4[3])) || -[NSString isEqual:](actionSetUniqueIdentifier, "isEqual:")) && ((actionSetType = self->_actionSetType, !(actionSetType | v4[2])) || -[NSString isEqual:](actionSetType, "isEqual:")) && ((associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers, !(associatedAccessoryUniqueIdentifiers | v4[4])) || -[NSMutableArray isEqual:](associatedAccessoryUniqueIdentifiers, "isEqual:")) && ((actionSetName = self->_actionSetName, !(actionSetName | v4[1])) || -[NSString isEqual:](actionSetName, "isEqual:")))
  {
    homeName = self->_homeName;
    if (homeName | v4[6])
    {
      v11 = [(NSString *)homeName isEqual:?];
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
  v3 = [(BMPBHomeKitClientBase *)self->_base hash];
  v4 = [(NSString *)self->_actionSetUniqueIdentifier hash]^ v3;
  v5 = [(NSString *)self->_actionSetType hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_associatedAccessoryUniqueIdentifiers hash];
  v7 = [(NSString *)self->_actionSetName hash];
  return v6 ^ v7 ^ [(NSString *)self->_homeName hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  base = self->_base;
  v6 = *(v4 + 5);
  if (base)
  {
    if (v6)
    {
      [(BMPBHomeKitClientBase *)base mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BMPBHomeKitClientActionSetEvent *)self setBase:?];
  }

  if (*(v4 + 3))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setActionSetUniqueIdentifier:?];
  }

  if (*(v4 + 2))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setActionSetType:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 4);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BMPBHomeKitClientActionSetEvent *)self addAssociatedAccessoryUniqueIdentifiers:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(v4 + 1))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setActionSetName:?];
  }

  if (*(v4 + 6))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setHomeName:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end